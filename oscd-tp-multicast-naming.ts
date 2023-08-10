/* eslint-disable no-return-assign */
import { css, html, LitElement, TemplateResult } from 'lit';
import { property, query } from 'lit/decorators.js';

import { Dialog } from '@material/mwc-dialog';

import '@material/mwc-formfield';
import '@material/mwc-button';
import '@material/mwc-icon-button';
import '@openscd/oscd-filtered-list';
import '@material/mwc-list/mwc-list-item';

import type { List, MWCListIndex } from '@material/mwc-list';
import { Edit, newEditEvent } from '@openscd/open-scd-core';

import { identity } from './foundation/identities/identity.js';
import { gooseIcon, smvIcon } from './foundation/icons/icons.js';
import { compareNames } from './src/foundation/foundation.js';

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

function selectProtections(iedName: string, protection: string): boolean {
  const protectionNumber = iedName.slice(-1);
  if (protection.includes('1') && !isEven(parseInt(protectionNumber, 10))) {
    return true;
  }
  if (protection.includes('2') && isEven(parseInt(protectionNumber, 10))) {
    return true;
  }
  return false;
}

function selectControlBlockTypes(goose: boolean, smv: boolean): string {
  return `${goose ? 'GSE' : ''}${goose && smv ? ',' : ''}${smv ? 'SMV' : ''}`;
}

function translate(str: string): string {
  return str;
}

export default class TPMulticastNaming extends LitElement {
  /** The document being edited as provided to plugins by [[`OpenSCD`]]. */
  @property({ attribute: false })
  doc!: XMLDocument;

  @property({ attribute: false })
  docName!: string;

  @property({ attribute: false })
  editCount!: number;

  @query('mwc-dialog')
  dialog!: Dialog;

  @property()
  publisherGOOSE = true;

  @property()
  publisherSMV = true;

  @property()
  protection1 = true;

  @property()
  protection2 = true;

  @property({ attribute: false })
  selectedControlItems: MWCListIndex | [] = [];

  @property({ type: Array })
  commElements: Element[] | [] = [];

  @query('.selection-list')
  cbList: List | undefined;

  async run(): Promise<void> {
    this.dialog.open = true;
    this.cbList?.addEventListener('selected', () => {
      this.selectedControlItems = this.cbList!.index;
    });
  }

  // eslint-disable-next-line class-methods-use-this
  private onClosed(ae: CustomEvent<{ action: string } | null>): void {
    // eslint-disable-next-line no-useless-return
    if (!(ae.target instanceof Dialog && ae.detail?.action)) return;
  }

  renderFilterButtons(): TemplateResult {
    return html`<div class="multicast-naming-type-selector">
      <mwc-formfield label="GOOSE"
        ><mwc-checkbox
          value="GOOSE"
          ?checked=${this.publisherGOOSE}
          @change=${() => (this.publisherGOOSE = !this.publisherGOOSE)}
        ></mwc-checkbox></mwc-formfield
      ><mwc-formfield label="Sampled Value"
        ><mwc-checkbox
          value="SampledValue"
          ?checked=${this.publisherSMV}
          @change=${() => (this.publisherSMV = !this.publisherSMV)}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield label="Prot 1"
        ><mwc-checkbox
          ?checked=${this.protection1}
          @change=${() => (this.protection1 = !this.protection1)}
        ></mwc-checkbox
      ></mwc-formfield>
      <mwc-formfield label="Prot 2"
        ><mwc-checkbox
          ?checked=${this.protection2}
          @change=${() => (this.protection2 = !this.protection2)}
        ></mwc-checkbox
      ></mwc-formfield>
    </div>`;
  }

  renderSelectionList(): TemplateResult {
    if (!this.doc) return html``;
    const noSelectedComms =
      this.publisherGOOSE === false && this.publisherSMV === false;

    const selectorString = selectControlBlockTypes(
      this.publisherGOOSE,
      this.publisherSMV
    );
    const protectionSelection = `${this.protection1 ? '1' : ''}${
      this.protection2 ? '2' : ''
    }`;
    this.commElements = [];
    return html`<oscd-filtered-list multi class="selection-list"
      >${Array.from(
        noSelectedComms
          ? this.doc.querySelectorAll('XYZZY')
          : this.doc.querySelectorAll('ConnectedAP')
      )
        .filter(ap => ap.querySelector(selectorString) !== null)
        .filter(ap =>
          selectProtections(ap.getAttribute('iedName')!, protectionSelection)
        )
        .sort(compareNames)
        .flatMap(ap => {
          const apItem = html`<mwc-list-item
              class="listitem header"
              noninteractive
              graphic="icon"
              value="${Array.from(ap.querySelectorAll(selectorString))
                .map(comm => {
                  const id = `${identity(comm)}` as string;
                  return typeof id === 'string' ? id : '';
                })
                .join(' ')}"
            >
              <span>${ap.getAttribute('iedName')} > ${ap.getAttribute(
            'apName'
          )}</span>
              <mwc-icon slot="graphic">developer_board</mwc-icon>
            </mwc-icon-button>
            </mwc-list-item>
            <li divider role="separator"></li>`;

          const currentComElements = Array.from(
            ap.querySelectorAll(selectorString)
          );
          this.commElements = [...this.commElements, ...currentComElements];
          const commUiElements = currentComElements.map(
            comm =>
              html`<mwc-check-list-item
                hasMeta
                twoline
                value="${comm.getAttribute(
                  'cbName'
                )} ${comm.parentElement!.getAttribute(
                  'iedName'
                )} ${comm.parentElement!.getAttribute('apName')} "
                graphic="icon"
              >
                <span>${comm.getAttribute('cbName')}</span
                ><span slot="secondary"
                  >${(<string>identity(comm))
                    .split(' ')
                    .slice(0, -1)
                    .join('')}</span
                >
                <mwc-icon slot="graphic"
                  >${comm.tagName === 'GSE' ? gooseIcon : smvIcon}</mwc-icon
                >
                <mwc-icon-button slot="meta" icon="edit"></mwc-icon-button>
              </mwc-check-list-item>`
          );

          return [apItem, ...commUiElements];
        })}</oscd-filtered-list
    >`;
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
    const sizeSelectedItems = (<Set<number>>this.selectedControlItems).size;
    return html`<mwc-button
        outlined
        icon="drive_file_rename_outline"
        class="rename-button"
        label="Rename GOOSE and SMV (${sizeSelectedItems || '0'})"
        slot="primaryAction"
        ?disabled=${(<Set<number>>this.selectedControlItems).size === 0 ||
        (Array.isArray(this.selectedControlItems) &&
          !this.selectedControlItems.length)}
        @click=${() => {
          const selectedCommElements = Array.from(
            (<Set<number>>this.selectedControlItems).values()
          ).map(index => this.commElements[index]);
          this.updateCommElements(selectedCommElements);
          this.dialog.open = false;
        }}
      >
      </mwc-button>
      <mwc-button
        slot="secondaryAction"
        dialogAction="close"
        label="${translate('close')}"
        style="--mdc-theme-primary: var(--mdc-theme-error)"
      ></mwc-button>`;
  }

  render(): TemplateResult {
    return html`
      ${this.renderFilterButtons()} ${this.renderSelectionList()}
      ${this.renderButtons()}
    `;
  }

  static styles = css`
    mwc-dialog {
      --mdc-dialog-max-height: 80vh;
    }

    .publishertypeselector {
      margin: 4px 8px 8px;
      background-color: var(--mdc-theme-surface);
      width: calc(100% - 16px);
      justify-content: space-around;
    }

    .content {
      max-width: 800px;
      max-height: 60vh;
    }

    .selectionlist {
      flex: 35%;
      margin: 4px 4px 4px 8px;
      background-color: var(--mdc-theme-surface);
      overflow-y: scroll;
    }

    .listitem.header {
      font-weight: 500;
    }

    @media (max-width: 599px) {
      .content {
        height: 100%;
      }

      .selectionlist {
        position: absolute;
        width: calc(100% - 32px);
        height: auto;
        top: 110px;
        left: 8px;
        background-color: var(--mdc-theme-surface);
        z-index: 1;
        box-shadow: 0 8px 10px 1px rgba(0, 0, 0, 0.14),
          0 3px 14px 2px rgba(0, 0, 0, 0.12), 0 5px 5px -3px rgba(0, 0, 0, 0.2);
      }

      mwc-button {
        display: flex;
        margin: 4px 8px 8px;
      }
    }
  `;
}
