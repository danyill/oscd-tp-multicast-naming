/* eslint-disable no-return-assign */
import { css, html, LitElement, TemplateResult } from 'lit';
import { property, query } from 'lit/decorators.js';

import '@material/mwc-button';
import '@material/mwc-checkbox';
import '@material/mwc-formfield';
import '@material/mwc-icon-button';
import '@material/mwc-list/mwc-list-item';
import '@material/mwc-menu';

import '@vaadin/grid';
import '@vaadin/checkbox';

import '@vaadin/grid/theme/material/vaadin-grid.js';
import '@vaadin/grid/theme/material/vaadin-grid-filter-column.js';
import '@vaadin/grid/theme/material/vaadin-grid-selection-column.js';

import { columnBodyRenderer } from '@vaadin/grid/lit.js';

import type { Button } from '@material/mwc-button';
import type { List, MWCListIndex } from '@material/mwc-list';
import type { Menu } from '@material/mwc-menu';
import type { Grid, GridSelectedItemsChangedEvent } from '@vaadin/grid';

import { Edit, newEditEvent } from '@openscd/open-scd-core';
import { ListItemBase } from '@material/mwc-list/mwc-list-item-base.js';
import { identity } from './foundation/identities/identity.js';
import { selector } from './foundation/identities/selector.js';
// import { gooseIcon, smvIcon } from './foundation/icons/icons.js';
// import { compareNames } from './src/foundation/foundation.js';

type MacObject = {
  [key: string]: {
    [key: string]: () => string;
  };
};

type AppObject = {
  [key: string]: {
    [key: string]: () => string;
  };
};

const GSEMAC = {
  P1: { min: 0x010ccd010000, max: 0x010ccd0100ff },
  P2: { min: 0x010ccd010100, max: 0x010ccd0101ff },
};

const SMVMAC = {
  P1: { min: 0x010ccd040000, max: 0x010ccd0400ff },
  P2: { min: 0x010ccd040100, max: 0x010ccd0401ff },
};

const GSEAPPID = {
  P1: { min: 0x8001, max: 0x8fff },
  P2: { min: 0x9001, max: 0x9fff },
  N: { min: 0x0001, max: 0x4fff },
};

const SMVAPPID = {
  P1: { min: 0x5000, max: 0x5fff },
  P2: { min: 0x6000, max: 0x6fff },
};

const VLAN_GSE_P1 = 1000;
const VLAN_GSE_P2 = 1006;
const VLAN_SMV_P1 = 1001;
const VLAN_SMV_P2 = 1007;

function convertToMac(mac: number): string {
  const str = 0 + mac.toString(16).toUpperCase();
  const arr = str.match(/.{1,2}/g)!;
  return arr?.join('-');
}

function macRange(min: number, max: number): string[] {
  return Array(max - min)
    .fill(1)
    .map((_, i) => convertToMac(min + i));
}

function appIdRange(min: number, max: number): string[] {
  return Array(max - min)
    .fill(1)
    .map((_, i) => (min + i).toString(16).toUpperCase().padStart(4, '0'));
}

/**
 * @param doc - project xml document
 * @param serviceType - SampledValueControl (SMV) or GSEControl (GSE)
 * @returns a function generating increasing unused `MAC-Address` within `doc` on subsequent invocations
 */
export function macAddressGenerator(
  doc: XMLDocument,
  serviceType: 'SMV' | 'GSE',
  protectionType: '1' | '2',
  ignoreMACs: string[]
): () => string {
  const macs = new Set(
    Array.from(
      doc.querySelectorAll(`${serviceType} > Address > P[type="MAC-Address"]`)
    ).map(mac => mac.textContent!)
  );

  let range: string[] = [];
  if (serviceType === 'GSE')
    range =
      protectionType === '1'
        ? macRange(GSEMAC.P1.min, GSEMAC.P1.max)
        : macRange(GSEMAC.P2.min, GSEMAC.P2.max);
  else if (serviceType === 'SMV')
    range =
      protectionType === '1'
        ? macRange(SMVMAC.P1.min, SMVMAC.P1.max)
        : macRange(SMVMAC.P2.min, SMVMAC.P2.max);

  range = range.filter(mac => !ignoreMACs.includes(mac));

  return () => {
    const uniqueMAC = range.find(mac => !macs.has(mac));
    if (uniqueMAC) macs.add(uniqueMAC);
    return uniqueMAC ?? '';
  };
}

/**
 * @param doc - project xml document
 * @param serviceType - SampledValueControl (SMV) or GSEControl (GSE)
 * @param type - whether the GOOSE is a Trip GOOSE resulting in different APPID range - default false
 * @returns a function generating increasing unused `APPID` within `doc` on subsequent invocations
 */
export function appIdGenerator(
  doc: XMLDocument,
  serviceType: 'SMV' | 'GSE',
  protectionType: '1' | '2' | 'N',
  ignoreAppIds: string[]
): () => string {
  const appIds = new Set(
    Array.from(
      doc.querySelectorAll(`${serviceType} > Address > P[type="APPID"]`)
    ).map(appId => appId.textContent!)
  );

  let range: string[] = [];
  if (serviceType === 'GSE') {
    if (protectionType === '1') {
      range = appIdRange(GSEAPPID.P1.min, GSEAPPID.P1.max);
    } else if (protectionType === '2') {
      range = appIdRange(GSEAPPID.P2.min, GSEAPPID.P2.max);
    } else {
      range = appIdRange(GSEAPPID.N.min, GSEAPPID.N.max);
    }
  } else if (serviceType === 'SMV') {
    range =
      protectionType === '1'
        ? appIdRange(SMVAPPID.P1.min, SMVAPPID.P1.max)
        : appIdRange(SMVAPPID.P2.min, SMVAPPID.P2.max);
  }

  range = range.filter(appId => !ignoreAppIds.includes(appId));

  return () => {
    const uniqueAppId = range.find(appId => !appIds.has(appId));
    if (uniqueAppId) appIds.add(uniqueAppId);
    return uniqueAppId ?? '';
  };
}

function isEven(num: number): boolean {
  return num % 2 === 0;
}

function getProtectionNumber(iedName: string): string {
  const protectionNumber = iedName.split('_')?.slice(-1)[0] ?? 'None';
  if (isEven(parseInt(protectionNumber[1], 10))) {
    return '2';
  }
  return '1';
}

function getCommAddress(ctrlBlock: Element): Element {
  const doc = ctrlBlock.ownerDocument;

  const ctrlLdInst = ctrlBlock.closest('LDevice')!.getAttribute('inst');
  const addressTag = ctrlBlock.tagName === 'GSEControl' ? 'GSE' : 'SMV';
  const cbName = ctrlBlock.getAttribute('name');
  return doc.querySelector(
    `${addressTag}[ldInst="${ctrlLdInst}"][cbName="${cbName}"]`
  )!;
}

export default class TPMulticastNaming extends LitElement {
  /** The document being edited as provided to plugins by [[`OpenSCD`]]. */
  @property({ attribute: false })
  doc!: XMLDocument;

  @property({ attribute: false })
  docName!: string;

  @property({ attribute: false })
  editCount!: number;

  @query('#grid')
  grid!: Grid;

  @property()
  gridItems: Array<unknown> = [];

  @property()
  selectedItems: Array<unknown> = [];

  @property()
  publisherGOOSE = true;

  @property()
  publisherSMV = true;

  @property()
  protection1 = true;

  @property()
  protection2 = true;

  @property()
  selectedBus: string = '';

  // TODO: Refactor for performance.
  @property({ type: Map })
  get busConnections(): Map<string, string> {
    if (!this.doc) return new Map();
    const bcs = new Map<string, string>();
    Array.from(
      this.doc.querySelectorAll(
        'Substation > VoltageLevel > Bay > Function[name="BusPhysConnection"]'
      )
    ).forEach(physConn => {
      const bayName = physConn.closest('Bay')?.getAttribute('name')!;
      physConn.querySelectorAll('LNode').forEach(lNode => {
        const iedName = lNode.getAttribute('iedName')!;
        bcs.set(iedName, bayName);
      });
    });
    return bcs;
  }

  @property({ attribute: false })
  selectedControlItems: MWCListIndex | [] = [];

  @property({ type: Array })
  commElements: Element[] | [] = [];

  @query('.selection-list')
  cbList: List | undefined;

  @query('#busConnectionMenuButton')
  busConnectionMenuButtonUI?: Button;

  @query('#busConnectionMenu')
  busConnectionMenuUI?: Menu;

  renderFilterButtons(): TemplateResult {
    return html`<div id="filterSelector">
      <mwc-formfield label="GOOSE" alignEnd
        ><mwc-checkbox
          value="GOOSE"
          ?checked=${this.publisherGOOSE}
          @change=${() => {
            this.publisherGOOSE = !this.publisherGOOSE;
            this.gridItems = [];
            this.updateContent();
          }}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield label="Sampled Value" alignEnd
        ><mwc-checkbox
          value="SampledValue"
          ?checked=${this.publisherSMV}
          @change=${() => {
            this.publisherSMV = !this.publisherSMV;
            this.gridItems = [];
            this.updateContent();
          }}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield label="Prot 1" alignEnd
        ><mwc-checkbox
          ?checked=${this.protection1}
          @change=${() => {
            this.protection1 = !this.protection1;
            this.gridItems = [];
            this.updateContent();
          }}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield label="Prot 2" alignEnd
        ><mwc-checkbox
          ?checked=${this.protection2}
          @change=${() => {
            this.protection2 = !this.protection2;
            this.gridItems = [];
            this.updateContent();
          }}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield
        id="busConnectionMenuButton"
        label="${this.selectedBus === '' ? 'Select a Bus' : this.selectedBus}"
        ?disabled=${Array.from(this.busConnections.keys()).length === 0}
        alignEnd
        ><mwc-icon-button
          icon="expand_more"
          ?disabled=${Array.from(this.busConnections.keys()).length === 0}
          @click=${() => {
            if (!(Array.from(this.busConnections.keys()).length === 0))
              this.busConnectionMenuUI!.show();
          }}
        ></mwc-icon-button>
      </mwc-formfield>
      <mwc-menu id="busConnectionMenu" corner="BOTTOM_RIGHT" menuCorner="END">
        ${[...new Set(this.busConnections.values())].map(
          busName => html`<mwc-list-item
            graphic="icon"
            left
            ?selected=${this.selectedBus === busName}
            value="${busName}"
          >
            <span>${busName}</span>
            <mwc-icon slot="graphic">check</mwc-icon>
          </mwc-list-item> `
        )}
      </mwc-menu>
    </div>`;
  }

  protected updateContent(): void {
    if (!this.doc) return;

    const protections = `${this.protection1 ? '1' : ''}${
      this.protection2 ? '2' : ''
    }`;

    Array.from(this.doc.querySelectorAll('GSEControl, SampledValueControl'))
      .filter(control => {
        const iedName =
          control.closest('IED')?.getAttribute('name') ?? 'Unknown IED';

        return (
          ((control.tagName === 'GSEControl' && this.publisherGOOSE) ||
            (control.tagName === 'SampledValueControl' && this.publisherSMV)) &&
          protections.includes(getProtectionNumber(iedName)) &&
          (this.selectedBus === this.busConnections.get(iedName) ||
            this.selectedBus === '')
        );
      })
      .forEach(control => {
        const address = getCommAddress(control);
        const ied = control.closest('IED');
        const iedName = ied!.getAttribute('name')!;
        const rowItem = {
          iedName,
          iedType: ied!.getAttribute('type')!,
          busRef: this.busConnections.get(iedName) ?? '',
          type: address?.tagName,
          cbName: control.getAttribute('name'),
          appOrSmvId:
            control.tagName === 'GSEControl'
              ? control.getAttribute('appID') ?? ''
              : control.getAttribute('smvID') ?? '',
          mac:
            address?.querySelector('Address > P[type="MAC-Address"]')
              ?.textContent ?? '',
          appId:
            address?.querySelector('Address > P[type="APPID"]')?.textContent ??
            '',
          vlanId:
            address?.querySelector('Address > P[type="VLAN-ID"]')
              ?.textContent ?? '',
          vlanPriority:
            address?.querySelector('Address > P[type="VLAN-PRIORITY"]')
              ?.textContent ?? '',
          minTime: address?.querySelector('MinTime')?.textContent ?? '',
          maxTime: address?.querySelector('MaxTime')?.textContent ?? '',
          controlIdentity: identity(control),
          addressIdentity: identity(address),
        };

        if (this.gridItems) {
          this.gridItems.push({ ...rowItem });
        } else {
          this.gridItems = [{ ...rowItem }];
        }
      });
  }

  async firstUpdated(): Promise<void> {
    this.busConnectionMenuUI!.anchor = <HTMLElement>(
      this.busConnectionMenuButtonUI
    );

    this.busConnectionMenuUI!.addEventListener('closed', () => {
      const busListItem =
        (<ListItemBase>this.busConnectionMenuUI?.selected).value ?? '';
      if (this.selectedBus === busListItem) {
        this.selectedBus = '';
      } else {
        this.selectedBus = busListItem;
      }

      this.gridItems = [];
      this.updateContent();
    });

    // if (!this.doc) return;
    // ${Array.from(
    //   noSelectedComms
    //     ? this.doc.querySelectorAll('XYZZY')
    //     : this.doc.querySelectorAll('ConnectedAP')
    // )
    //   .filter(ap => ap.querySelector(selectorString) !== null)
    //   .filter(ap =>
    //     selectProtections(ap.getAttribute('iedName')!, protectionSelection)
    //   )
    //   .sort(compareNames)
    //   .flatMap(ap => {
    //     const apItem = {
    //       name: ap.getAttribute('iedName'),
    //       apName: ap.getAttribute('apName'),
    //     };
    //     const currentComElements = Array.from(
    //       ap.querySelectorAll(selectorString)
    //     );
    //     this.commElements = [...this.commElements, ...currentComElements];
    // const commUiElements = currentComElements.map(
    //   comm =>
    //     html`<mwc-check-list-item
    //       hasMeta
    //       twoline
    //       value="${comm.getAttribute(
    //         'cbName'
    //       )} ${comm.parentElement!.getAttribute(
    //         'iedName'
    //       )} ${comm.parentElement!.getAttribute('apName')} "
    //       graphic="icon"
    //     >
    //       <span>${comm.getAttribute('cbName')}</span
    //       ><span slot="secondary"
    //         >${(<string>identity(comm))
    //           .split(' ')
    //           .slice(0, -1)
    //           .join('')}</span
    //       >
    //       <mwc-icon slot="graphic"
    //         >${comm.tagName === 'GSE' ? gooseIcon : smvIcon}</mwc-icon
    //       >
    //       <mwc-icon-button slot="meta" icon="edit"></mwc-icon-button>
    //     </mwc-check-list-item>`
    // );
    // return [apItem, ...commUiElements];
    // })}
    //   const noSelectedComms =
    //   this.publisherGOOSE === false && this.publisherSMV === false;
    // const selectorString = selectControlBlockTypes(
    //   this.publisherGOOSE,
    //   this.publisherSMV
    // );
    // const protectionSelection = `${this.protection1 ? '1' : ''}${
    //   this.protection2 ? '2' : ''
    // }`;
    // this.commElements = [];
    // this.updateContent();
  }

  // protected updated(
  //   _changedProperties: PropertyValueMap<any> | Map<PropertyKey, unknown>
  // ): void {
  //   console.log(this.busConnectionMenuButtonUI, this.busConnectionMenuUI)
  // }

  renderSelectionList(): TemplateResult {
    if (!this.doc) return html``;

    if (!(this.gridItems.length > 0)) this.updateContent();
    // frozen
    return html`
      <vaadin-grid
        id="grid"
        column-reordering-allowed
        overflow="bottom"
        theme="compact row-stripes"
        .items=${this.gridItems}
        @selected-items-changed="${(
          event: GridSelectedItemsChangedEvent<any>
        ) => {
          this.selectedItems = event.target
            ? [...event.detail.value]
            : this.selectedItems;
        }}"
      >
        <vaadin-grid-selection-column
          auto-select
          frozen
        ></vaadin-grid-selection-column>
        <vaadin-grid-filter-column
          frozen
          path="iedName"
          header="IED Name"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          path="iedType"
          header="IED Type"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          path="type"
          header="Type"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="busRef"
          path="busRef"
          header="Bus Reference"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="cb"
          path="cbName"
          header="Control Name"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="cb"
          path="appOrSmvId"
          header="App or SMV Id"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          ${columnBodyRenderer<any>(
            ({ mac }) =>
              html`<span class="lighter">${(<string>mac).slice(0, 12)}</span
                ><span>${mac.slice(12)}</span>`,
            []
          )}
          id="mac"
          path="mac"
          header="mac"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="appId"
          path="appId"
          header="APP ID"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="vlanId"
          path="vlanId"
          header="vlanId"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="vlanPriority"
          path="vlanPriority"
          header="vlanPriority"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="minTime"
          path="minTime"
          header="minTime"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="maxTime"
          path="maxTime"
          header="maxTime"
        ></vaadin-grid-filter-column>
      </vaadin-grid>
    `;
  }

  updateCommElements(selectedCommElements: Element[]): void {
    // MAC Addresses
    const ignoreMACs = selectedCommElements.map(
      elem =>
        elem
          .querySelector('Address > P[type="MAC-Address"]')!
          .textContent?.toUpperCase() ?? ''
    );

    const nextMac: MacObject = {
      GSE: {
        '1': macAddressGenerator(this.doc, 'GSE', '1', ignoreMACs),
        '2': macAddressGenerator(this.doc, 'GSE', '2', ignoreMACs),
      },
      SMV: {
        '1': macAddressGenerator(this.doc, 'SMV', '1', ignoreMACs),
        '2': macAddressGenerator(this.doc, 'SMV', '2', ignoreMACs),
      },
    };

    // APP IDs
    const ignoreAppIds = selectedCommElements.map(
      elem =>
        elem
          .querySelector('Address > P[type="APPID"]')!
          .textContent?.toUpperCase() ?? ''
    );

    const nextAppId: AppObject = {
      GSE: {
        '1': appIdGenerator(this.doc, 'GSE', '1', ignoreAppIds),
        '2': appIdGenerator(this.doc, 'GSE', '2', ignoreAppIds),
        N: appIdGenerator(this.doc, 'GSE', 'N', ignoreAppIds),
      },
      SMV: {
        '1': appIdGenerator(this.doc, 'SMV', '1', ignoreAppIds),
        '2': appIdGenerator(this.doc, 'SMV', '2', ignoreAppIds),
      },
    };

    const edits: Edit[] = [];

    selectedCommElements.forEach(element => {
      // for comparison to detect changes
      const newElement = <Element>element.cloneNode(true);

      const protNum = getProtectionNumber(
        element.closest('ConnectedAP')!.getAttribute('iedName')!
      );
      const newMac = nextMac[element.tagName][protNum]();
      newElement.querySelector(`Address > P[type="MAC-Address"]`)!.textContent =
        newMac;

      if (element.tagName === 'GSE') {
        // MinTime and MaxTime for GSE
        const hasMinTime = element.querySelector('MinTime')?.textContent;
        const hasMaxTime = element.querySelector('MaxTime')?.textContent;

        if (hasMinTime) {
          if (
            element.getAttribute('cbName')?.toUpperCase().includes('CTL') ||
            element.getAttribute('cbName')?.toUpperCase().includes('TRIP')
          ) {
            newElement.querySelector('MinTime')!.textContent = '4';
          } else {
            newElement.querySelector('MinTime')!.textContent = '100';
          }
        }

        if (hasMaxTime) {
          newElement.querySelector('MaxTime')!.textContent = '1000';
        }
      }

      // APPIDs
      let protType: string = protNum;
      // if it is not protection it is in a different range
      if (
        element.tagName === 'GSE' &&
        !(
          element.getAttribute('cbName')?.toUpperCase().includes('CTL') ||
          element.getAttribute('cbName')?.toUpperCase().includes('TRIP')
        )
      ) {
        protType = 'N';
      }

      const newAppId = nextAppId[element.tagName][protType]();
      newElement.querySelector(`Address > P[type="APPID"]`)!.textContent =
        newAppId;

      // PRIORITY
      if (element.tagName === 'GSE') {
        newElement.querySelector(
          `Address > P[type="VLAN-PRIORITY"]`
        )!.textContent = '4';
      } else if (element.tagName === 'SMV') {
        newElement.querySelector(
          `Address > P[type="VLAN-PRIORITY"]`
        )!.textContent = '5';
      }

      // VLAN ID
      if (element.tagName === 'GSE') {
        newElement.querySelector(`Address > P[type="VLAN-ID"]`)!.textContent =
          protNum === '2'
            ? VLAN_GSE_P2.toString(16).toUpperCase()
            : VLAN_GSE_P1.toString(16).toUpperCase();
      } else if (element.tagName === 'SMV') {
        newElement.querySelector(`Address > P[type="VLAN-ID"]`)!.textContent =
          protNum === '2'
            ? VLAN_SMV_P2.toString(16).toUpperCase()
            : VLAN_SMV_P1.toString(16).toUpperCase();
      }

      if (!element.isEqualNode(newElement)) {
        // add new elements
        edits.push({ parent: element.parentElement!, node: newElement });

        // remove old elements
        edits.push({ node: element });
      }

      /**
       * TODO: NOT IMPLEMENTED YET - DO WE WANT THIS?
       * GOOSE Id (SCD parameter appID)
       * This should be the IED name, delimited with _ in the following manner e.g. XAT_232_P1, f
       * followed by the GSEControl name with a $ delimiter, e.g. XAT_232_P1$Status_0
       *
       */
    });

    if (edits) {
      this.dispatchEvent(newEditEvent(edits));
    }
  }

  renderButtons(): TemplateResult {
    const sizeSelectedItems = this.selectedItems.length;
    return html`<mwc-button
      outlined
      icon="drive_file_rename_outline"
      class="rename-button"
      label="Address GOOSE and SMV (${sizeSelectedItems || '0'})"
      slot="primaryAction"
      ?disabled=${sizeSelectedItems === 0}
      @click=${() => {
        const selectedCommElements = (<any>this.selectedItems).map(
          (item: { addressTag: string; addressIdentity: string | number }) => {
            const gSEorSMV = this.doc.querySelector(
              selector(item.addressTag, item.addressIdentity)
            )!;
            return gSEorSMV;
          }
        );
        this.updateCommElements(selectedCommElements);
        this.updateContent();
      }}
    >
    </mwc-button>`;
  }

  render(): TemplateResult {
    return html`<section>
      ${this.renderFilterButtons()} ${this.renderSelectionList()}
      ${this.renderButtons()}
    </section> `;
  }

  static styles = css`
    #grid {
      width: auto;
      margin: 1rem;
      margin-right: 2rem;
      height: calc(100vh - 250px);
    }

    /* ensures with material theme scrolling doesn't cut through header */
    vaadin-grid::part(header-cell) {
      background-color: white;
    }

    .lighter {
      font-weight: lighter;
      color: darkgray;
    }

    #filterSelector {
      position: relative;
      max-width: fit-content;
    }

    #filterSelector > mwc-formfield {
      padding-right: 20px;
    }

    section {
      padding: 15px;
    }

    /* Hide the icon of unselected menu items that are in a group */
    #busConnectionMenu > [mwc-list-item]:not([selected]) [slot='graphic'] {
      display: none;
    }

    /* matching vaadin-grid material themes with open-scd themes */
    * {
      --material-body-text-color: var(--base00, black);
      --material-secondary-text-color: var(--base00, gray);
      --material-primary-text-color: var(--base01, black);
      --material-error-text-color: var(--red, red);
      --material-primary-color: var(--primary, purple);
      --material-error-color: var(--red, red);
      --material-background-color: var(--base3, white);
    }
  `;
}
