/* eslint-disable no-return-assign */
import { css, html, LitElement, PropertyValueMap, TemplateResult } from 'lit';
import { property, query } from 'lit/decorators.js';

import '@material/mwc-button';
import '@material/mwc-checkbox';
import '@material/mwc-dialog';
import '@material/mwc-formfield';
import '@material/mwc-icon-button';
import '@material/mwc-list/mwc-list-item';
import '@material/mwc-menu';

import '@openscd/oscd-filtered-list';

import '@vaadin/grid';
import '@vaadin/checkbox';

import '@vaadin/grid/theme/material/vaadin-grid.js';
import '@vaadin/grid/theme/material/vaadin-grid-filter-column.js';
import '@vaadin/grid/theme/material/vaadin-grid-selection-column.js';

import { columnBodyRenderer } from '@vaadin/grid/lit.js';
import { registerStyles } from '@vaadin/vaadin-themable-mixin/register-styles.js';

import type { Button } from '@material/mwc-button';
import type { Dialog } from '@material/mwc-dialog';
import type { List } from '@material/mwc-list';
import type { ListItemBase } from '@material/mwc-list/mwc-list-item-base.js';
import type { Menu } from '@material/mwc-menu';
import type { Grid, GridSelectedItemsChangedEvent } from '@vaadin/grid';

import { Edit, newEditEvent } from '@openscd/open-scd-core';

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

const TPNS = 'https://transpower.co.nz/SCL/SCD/Communication/v1';

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
    )
      .map(mac => mac.textContent!)
      .filter(mac => !ignoreMACs.includes(mac))
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
    )
      .filter(appId => !ignoreAppIds.includes(appId.textContent ?? ''))
      .map(appId => appId.textContent!)
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
  const iedName = ctrlBlock.closest('IED')!.getAttribute('name');
  const apName = ctrlBlock.closest('AccessPoint')?.getAttribute('name');

  const cbName = ctrlBlock.getAttribute('name');
  return doc.querySelector(
    `Communication > SubNetwork > ConnectedAP[iedName="${iedName}"][apName="${apName}"] > ${addressTag}[ldInst="${ctrlLdInst}"][cbName="${cbName}"]`
  )!;
}

function updateTextContent(node: Element | null, newContent: string): Edit[] {
  if (!node) return [];
  const newElement = node.cloneNode(true);
  newElement.textContent = newContent;
  return [
    { node },
    {
      parent: node.parentElement!,
      node: newElement,
      reference: null,
    },
  ];
}

const FILE_EXTENSION_LENGTH = 3;

// eslint-disable-next-line @typescript-eslint/no-unused-vars
function stripExtensionFromName(docName: string): string {
  let name = docName;
  // Check if the name includes a file extension, if the case remove it.
  if (
    name.length > FILE_EXTENSION_LENGTH &&
    name.lastIndexOf('.') === name.length - (FILE_EXTENSION_LENGTH + 1)
  ) {
    name = name.substring(0, name.lastIndexOf('.'));
  }
  return name;
}

function displayVlan(vlanId: string): TemplateResult {
  return html`<code>0x${vlanId}</code> (<code>${parseInt(vlanId, 16).toString(
      10
    )}</code>)`;
}

type AddressItem = {
  iedName: string;
  iedType: string;
  busRef: string;
  type: string;
  cbName: string;
  appOrSmvId: string;
  mac: string;
  appId: string;
  vlanPriority: string;
  vlanId: string;
  minTime: string;
  maxTime: string;
  controlIdentity: string;
  addressIdentity: string;
};

type Vlan = {
  serviceName: string;
  prot1Id: string;
  prot2Id: string;
  busName?: string;
};

export default class TPMulticastNaming extends LitElement {
  /** The document being edited as provided to plugins by [[`OpenSCD`]]. */
  @property({ attribute: false })
  doc!: XMLDocument;

  @property({ attribute: false })
  docName!: string;

  @property({ attribute: false })
  editCount!: number;

  @property({ attribute: false })
  gridItems: AddressItem[] = [];

  @property({ attribute: false })
  selectedItems: AddressItem[] = [];

  @property({ attribute: false })
  publisherGOOSE = true;

  @property({ attribute: false })
  publisherSMV = true;

  @property({ attribute: false })
  protection1 = true;

  @property({ attribute: false })
  protection2 = true;

  @property({ attribute: false })
  showMissingAddresses = true;

  @property({ attribute: false })
  selectedBus: string = '';

  @query('#grid')
  gridUI!: Grid;

  @query('#vlanList')
  vlanListUI!: Dialog;

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
      <mwc-formfield label="Show Missing Addresses" alignEnd
        ><mwc-checkbox
          ?checked=${this.showMissingAddresses}
          @change=${() => {
            this.showMissingAddresses = !this.showMissingAddresses;
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
        const commAdd = getCommAddress(control);

        return (
          ((control.tagName === 'GSEControl' && this.publisherGOOSE) ||
            (control.tagName === 'SampledValueControl' && this.publisherSMV)) &&
          protections.includes(getProtectionNumber(iedName)) &&
          (this.selectedBus === this.busConnections.get(iedName) ||
            this.selectedBus === '') &&
          (!this.showMissingAddresses || (this.showMissingAddresses && commAdd))
        );
      })
      .sort((a: Element, b: Element) => {
        const aMac =
          getCommAddress(a)?.querySelector('Address > P[type="MAC-Address"]')
            ?.textContent ?? '';
        const bMac =
          getCommAddress(b)?.querySelector('Address > P[type="MAC-Address"]')
            ?.textContent ?? '';
        return aMac.localeCompare(bMac);
      })
      .forEach(control => {
        const address = getCommAddress(control);

        const ied = control.closest('IED');
        const iedName = ied!.getAttribute('name')!;
        const vlanId = address?.querySelector(
          'Address > P[type="VLAN-ID"]'
        )?.textContent;

        const rowItem: AddressItem = {
          iedName,
          iedType: ied!.getAttribute('type')!,
          busRef: this.busConnections.get(iedName) ?? '',
          type: address?.tagName,
          cbName: control.getAttribute('name') ?? '',
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
          vlanId: vlanId
            ? `0x${vlanId} (${parseInt(vlanId, 16).toString(10)})`
            : '',
          vlanPriority:
            address?.querySelector('Address > P[type="VLAN-PRIORITY"]')
              ?.textContent ?? '',
          minTime: address?.querySelector('MinTime')?.textContent ?? '',
          maxTime: address?.querySelector('MaxTime')?.textContent ?? '',
          controlIdentity: `${identity(control)}`,
          addressIdentity: `${identity(address)}`,
        };

        if (this.gridItems) {
          this.gridItems.push({ ...rowItem });
        } else {
          this.gridItems = [{ ...rowItem }];
        }
      });
  }

  async firstUpdated(): Promise<void> {
    if (this.busConnectionMenuUI) {
      this.busConnectionMenuUI!.anchor = <HTMLElement>(
        this.busConnectionMenuButtonUI
      );

      this.busConnectionMenuUI!.addEventListener('closed', () => {
        const busListItem =
          (<ListItemBase>this.busConnectionMenuUI?.selected)?.value ?? '';
        if (this.selectedBus === busListItem) {
          this.selectedBus = '';
        } else {
          this.selectedBus = busListItem;
        }

        this.gridItems = [];
        this.updateContent();
      });
    }
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

  protected updated(
    changedProperties: PropertyValueMap<any> | Map<PropertyKey, unknown>
  ): void {
    super.updated(changedProperties);

    // When a new document is loaded or we do a subscription/we will reset the Map to clear old entries.
    // TODO: Be able to detect the same document loaded twice, currently lack a way to check for this
    // https://github.com/openscd/open-scd-core/issues/92
    if (changedProperties.has('doc')) {
      this.gridItems = [];
      this.selectedItems = [];
      this.updateContent();
    }
  }

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
          width="40px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          path="type"
          header="Type"
          width="30px"
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
          width="140px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          ${columnBodyRenderer<any>(
            ({ mac }) =>
              html`<span class="lighter">${(<string>mac).slice(0, 9)}</span
                ><span>${mac.slice(9)}</span>`,
            []
          )}
          id="mac"
          path="mac"
          header="MAC Address"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="appId"
          path="appId"
          header="APP ID"
          width="40px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="vlanId"
          path="vlanId"
          header="VLAN Id"
          width="40px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="vlanPriority"
          path="vlanPriority"
          header="VLAN Priority"
          width="40px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="minTime"
          path="minTime"
          header="Min Time"
          width="40px"
        ></vaadin-grid-filter-column>
        <vaadin-grid-filter-column
          id="maxTime"
          path="maxTime"
          header="Max Time"
          width="40px"
        ></vaadin-grid-filter-column>
      </vaadin-grid>
    `;
  }

  updateCommElements(
    selectedCommElements: Element[],
    selectedControlElements: Element[]
  ): void {
    // MAC Addresses
    const ignoreMACs = selectedCommElements.map(
      elem =>
        elem
          ?.querySelector('Address > P[type="MAC-Address"]')
          ?.textContent?.toUpperCase() ?? ''
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
          ?.querySelector('Address > P[type="APPID"]')!
          ?.textContent?.toUpperCase() ?? ''
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

    let edits: Edit[] = [];

    // update namespaces
    const namespaceUpdate: Edit = {
      element: this.doc.documentElement,
      attributes: {},
    };

    if (!this.doc.documentElement.hasAttribute('xmlns:etpc'))
      namespaceUpdate.attributes = {
        ...namespaceUpdate.attributes,
        'xmlns:etpc': {
          value: TPNS,
          namespaceURI: 'http://www.w3.org/2000/xmlns/',
        },
      };

    if (!(Object.entries(namespaceUpdate.attributes).length === 0))
      edits.push(namespaceUpdate);

    // update appId for GSEControl and smvId for SampledValueControls
    selectedControlElements.forEach(control => {
      const type = control.tagName;
      const iedName = control.closest('IED')!.getAttribute('name');

      if (type === 'GSEControl') {
        const cbName = control.getAttribute('name') ?? 'Unknown';
        const update = {
          element: control,
          attributes: { appID: `${iedName}/${cbName}` },
        };
        edits.push(update);
      }

      if (type === 'SampledValueControl') {
        const smvID = control.getAttribute('smvID') ?? 'Unknown';
        const update = {
          element: control,
          attributes: {
            smvID: `${iedName}${smvID === 'TEMPLATE' ? '' : `/${smvID}`}`,
          },
        };
        edits.push(update);
      }
    });

    if (edits) {
      this.dispatchEvent(newEditEvent(edits));
      edits = [];
    }

    selectedCommElements.forEach(element => {
      const protNum = getProtectionNumber(
        element.closest('ConnectedAP')!.getAttribute('iedName')!
      );
      const newMac = nextMac[element.tagName][protNum]();

      edits.push(
        ...updateTextContent(
          element.querySelector('Address > P[type="MAC-Address"]'),
          newMac
        )
      );

      if (element.tagName === 'GSE') {
        // MinTime and MaxTime for GSE
        const minTime = element.querySelector('MinTime');
        const maxTime = element.querySelector('MaxTime');

        if (minTime) {
          if (
            element.getAttribute('cbName')?.toUpperCase().includes('CTL') ||
            element.getAttribute('cbName')?.toUpperCase().includes('TRIP')
          ) {
            edits.push(...updateTextContent(minTime, '4'));
          } else {
            edits.push(...updateTextContent(minTime, '100'));
          }
        }

        if (maxTime) {
          edits.push(...updateTextContent(maxTime, '1000'));
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
      edits.push(
        ...updateTextContent(
          element.querySelector('Address > P[type="APPID"]'),
          newAppId
        )
      );

      // PRIORITY
      const priority = element.tagName === 'GSE' ? '4' : '5';
      edits.push(
        ...updateTextContent(
          element.querySelector('Address > P[type="VLAN-PRIORITY"]'),
          priority
        )
      );

      // VLAN ID
      let vlan;
      if (element.tagName === 'GSE') {
        vlan =
          protNum === '2'
            ? VLAN_GSE_P2.toString(16).toUpperCase()
            : VLAN_GSE_P1.toString(16).toUpperCase();
      } else {
        vlan =
          protNum === '2'
            ? VLAN_SMV_P2.toString(16).toUpperCase()
            : VLAN_SMV_P1.toString(16).toUpperCase();
      }
      edits.push(
        ...updateTextContent(
          element.querySelector('Address > P[type="VLAN-ID"]'),
          vlan
        )
      );
    });

    if (edits) {
      this.dispatchEvent(newEditEvent(edits));
    }
  }

  downloadItems(): void {
    const csvLines: string[][] = [];
    // header
    csvLines.push([
      'IED Name',
      'IED Type',
      'Type',
      'Bus Reference',
      'Control Name',
      'App or SMV Id',
      'MAC Address',
      'APP ID',
      'VLAN Id',
      'VLAN Priority',
      'Min Time',
      'Max Time',
    ]);
    // content
    const items =
      this.selectedItems.length === 0 ? this.gridItems : this.selectedItems;
    items.forEach(item => {
      const rowValues = [
        item.iedName,
        item.iedType,
        item.type,
        item.busRef,
        item.cbName,
        item.appOrSmvId,
        item.mac,
        item.appId,
        item.vlanId,
        item.vlanPriority,
        item.minTime,
        item.maxTime,
      ];
      csvLines.push(rowValues);
    });

    const content: string[] = [];
    csvLines.forEach(lineData => content.push(lineData.join(',')));

    const fileContent = content.join('\n');

    const blob = new Blob([fileContent], {
      type: 'text/csv',
    });

    // Push the data back to the user.
    const a = document.createElement('a');
    // a.download = `${stripExtensionFromName(
    //   this.docName
    // )}-comms-addresses.csv`;

    a.download = 'comms-addresses.csv';

    a.href = URL.createObjectURL(blob);
    a.dataset.downloadurl = ['text/csv', a.download, a.href].join(':');
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(() => {
      URL.revokeObjectURL(a.href);
    }, 5000);
  }

  renderButtons(): TemplateResult {
    const sizeSelectedItems = this.selectedItems.length;
    return html`
      <div id="bottomMenu">
        <div>
          <mwc-button
            outlined
            icon="lan"
            class="spaced-button"
            label="Show Used VLANs (${sizeSelectedItems || '0'})"
            @click=${() => {
              this.vlanListUI.show();
            }}
          >
          </mwc-button>
          <mwc-button
            outlined
            icon="sync_alt"
            class="spaced-button"
            label="Enrich Communications Subscriptions"
            ?disabled=${sizeSelectedItems === 0}
            @click=${() => {
              console.log('also hi');
            }}
          >
          </mwc-button>
        </div>
        <mwc-button
          outlined
          icon="drive_file_rename_outline"
          class="button"
          label="Address GOOSE and SMV (${sizeSelectedItems || '0'})"
          ?disabled=${sizeSelectedItems === 0}
          @click=${() => {
            if (!this.doc) return;

            const selectedCommElements = (<any>this.selectedItems)
              .map(
                (item: { type: string; addressIdentity: string | number }) => {
                  const gSEorSMV = this.doc.querySelector(
                    selector(item.type, item.addressIdentity)
                  )!;
                  return gSEorSMV;
                }
              )
              .filter((e: Element | null) => e !== null);

            const selectedControlElements = (<any>this.selectedItems)
              .map(
                (item: { type: string; controlIdentity: string | number }) => {
                  const control = this.doc.querySelector(
                    selector(
                      item.type === 'GSE'
                        ? 'GSEControl'
                        : 'SampledValueControl',
                      item.controlIdentity
                    )
                  )!;
                  return control;
                }
              )
              .filter((e: Element | null) => e !== null);

            this.updateCommElements(
              selectedCommElements,
              selectedControlElements
            );

            this.gridItems = [];
            this.gridUI.selectedItems = [];
            this.selectedItems = [];

            this.updateContent();
            this.gridUI.clearCache();
          }}
        >
        </mwc-button>
      </div>
    `;
  }

  renderDownloadButton(): TemplateResult {
    return html`<mwc-icon-button
      icon="csv"
      label="Export to CSV (${this.selectedItems.length === 0
        ? this.gridItems.length
        : this.selectedItems.length})"
      ?disabled=${this.selectedItems.length === 0 &&
      this.gridItems.length === 0}
      @click="${() => this.downloadItems()}"
    ></mwc-icon-button>`;
  }

  // eslint-disable-next-line class-methods-use-this
  renderVlan(vlan: Vlan, type: string): TemplateResult {
    return html`<mwc-list-item twoline value="${type}"
      >${vlan.serviceName}${vlan.busName && vlan.busName !== ''
        ? ` (${vlan.busName})`
        : ''}<span slot="secondary"
        >Prot1: ${displayVlan(vlan.prot1Id)} Prot2:
        ${displayVlan(vlan.prot2Id)}</span
      ></mwc-list-item
    >`;
  }

  renderVlanList(): TemplateResult {
    const vlanContainer = this.doc.querySelector(
      'Private[type="Transpower-VLAN-Allocation"]'
    );
    const stationVlanContainer = vlanContainer?.getElementsByTagNameNS(
      TPNS,
      'Station'
    );
    const busVlanContainer = vlanContainer?.getElementsByTagNameNS(TPNS, 'Bus');

    let stationVlans: Vlan[] | null = [];
    let busVlans: Vlan[] | null = [];

    // eslint-disable-next-line no-undef
    const getVlans = (container: HTMLCollectionOf<Element> | undefined) => {
      if (container) {
        return Array.from(
          container[0].getElementsByTagNameNS(TPNS, 'VLAN')
        ).map(vlan => ({
          serviceName: vlan.getAttribute('serviceName') ?? '',
          prot1Id: vlan.getAttribute('prot1Id') ?? '',
          prot2Id: vlan.getAttribute('prot2Id') ?? '',
          busName: vlan.getAttribute('busName') ?? '',
        }));
      }
      return null;
    };

    stationVlans = getVlans(stationVlanContainer);
    busVlans = getVlans(busVlanContainer);

    // Array.from(this.doc.querySelectorAll(`[xmlns|etpc="${TPNS}"]`)).map(
    //   () =>
    return html`<mwc-dialog id="vlanList" heading="VLAN List">
      <oscd-filtered-list
        ><h3>Station VLANs</h3>
        ${stationVlans
          ? stationVlans.map(vlan => this.renderVlan(vlan, 'station'))
          : ''}
        <h3>Bus VLANs</h3>
        ${busVlans ? busVlans.map(vlan => this.renderVlan(vlan, 'bus')) : ''}
      </oscd-filtered-list>
    </mwc-dialog>`;
  }

  render(): TemplateResult {
    if (!this.doc)
      return html`<h2 class="emptyDocument">No document loaded</h2>`;
    return html`
      <section>
        <h2>Multicast GOOSE and SMV Messages</h2>
        <div id="topMenu">
          ${this.renderFilterButtons()} ${this.renderDownloadButton()}
        </div>
        ${this.renderSelectionList()} ${this.renderButtons()}
      </section>
      ${this.renderVlanList()}
    `;
  }

  static styles = css`
    .spaced-button {
      margin-right: 15px;
    }

    .emptyDocument {
      margin: 15px;
    }

    #grid {
      width: auto;
      /* margin: 1rem;
      margin-right: 2rem; */
      height: calc(100vh - 300px);
    }

    /* ensures with material theme scrolling doesn't cut through header */
    #grid::part(header-cell) {
      background-color: white;
    }

    #grid {
      margin-bottom: 15px;
    }

    h2 {
      color: var(--mdc-theme-on-surface);
      font-family: 'Roboto', sans-serif;
      font-weight: 300;
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
      margin: 0px;
      line-height: 48px;
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

    #topMenu,
    #bottomMenu {
      display: flex;
      align-items: center;
      justify-content: space-between;
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

registerStyles(
  'vaadin-grid',
  css`
    :host {
      --scrollbarBG: var(--mdc-theme-background, #cfcfcf00);
      --thumbBG: var(--mdc-button-disabled-ink-color, #996cd8cc);
      scrollbar-width: auto;
      scrollbar-color: var(--thumbBG) var(--scrollbarBG);
    }

    ::-webkit-scrollbar {
      width: 6px;
    }

    ::-webkit-scrollbar-track {
      background: var(--scrollbarBG);
    }

    ::-webkit-scrollbar-thumb {
      background: var(--thumbBG);
      border-radius: 6px;
    }
  `
);
