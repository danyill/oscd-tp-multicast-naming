/* eslint-disable no-return-assign */
import { css, html, LitElement, PropertyValueMap, TemplateResult } from 'lit';
import { property, query } from 'lit/decorators.js';

import '@material/mwc-button';
import '@material/mwc-checkbox';
import '@material/mwc-dialog';
import '@material/mwc-formfield';
import '@material/mwc-icon-button';
import '@material/mwc-list/mwc-list-item';
import '@material/mwc-list/mwc-check-list-item';
import '@material/mwc-menu';
import '@material/mwc-snackbar';

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
import type { List, MultiSelectedEvent } from '@material/mwc-list';
import type { ListItemBase } from '@material/mwc-list/mwc-list-item-base.js';
import type { Menu } from '@material/mwc-menu';
import type { Grid, GridSelectedItemsChangedEvent } from '@vaadin/grid';
import type { Snackbar } from '@material/mwc-snackbar';

import { Edit, newEditEvent } from '@openscd/open-scd-core';

import { identity } from './foundation/identities/identity.js';
import { selector } from './foundation/identities/selector.js';

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

type VlanPair = {
  prot1Id: string;
  prot2Id: string;
};

type VlanAllocation = {
  [key: string]: {
    [key: string]: () => VlanPair | null;
  };
};

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
  serviceType: string;
  useCase: string;
  prot1Id: string;
  prot2Id: string;
  busName?: string;
};

type AllocatedVlans = {
  stationVlans: Vlan[] | null;
  busVlans: Vlan[] | null;
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

function vlanRange(min: number, max: number): number[] {
  return Array(max - min)
    .fill(1)
    .map((_, i) => min + i);
}

/**
 * @param doc - project xml document
 * @param serviceType - SampledValueControl (SMV) or GSEControl (GSE)
 * @returns a function generating increasing unused `MAC-Address` within `doc` on subsequent invocations
 */
function macAddressGenerator(
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

function getAllocatedVlans(doc: XMLDocument): AllocatedVlans {
  const vlanContainer = doc.querySelector(
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
      return Array.from(container[0].getElementsByTagNameNS(TPNS, 'VLAN')).map(
        vlan => ({
          serviceName: vlan.getAttribute('serviceName') ?? '',
          serviceType: vlan.getAttribute('serviceType') ?? '',
          useCase: vlan.getAttribute('useCase') ?? '',
          prot1Id: vlan.getAttribute('prot1Id') ?? '',
          prot2Id: vlan.getAttribute('prot2Id') ?? '',
          busName: vlan.getAttribute('busName') ?? '',
        })
      );
    }
    return null;
  };

  stationVlans = getVlans(stationVlanContainer);
  busVlans = getVlans(busVlanContainer);

  return { stationVlans, busVlans };
}

const vlanRanges = {
  Station: {
    InterProt: { min: 1050, max: 1099, offsetToP2: 0 },
    GSE: { min: 1000, max: 1049, offsetToP2: 1000 },
    SMV: { min: 1050, max: 1099, offsetToP2: 1000 },
  },
  Bus: {
    InterProt: { min: 50, max: 99, offsetToP2: 0 },
    GSE: { min: 104, max: 149, offsetToP2: 96 },
    SMV: { min: 150, max: 199, offsetToP2: 100 },
  },
};

/**
 * @param doc - project xml document
 * @param serviceType - SampledValueControl (SMV) or GSEControl (GSE)
 * @param type - whether the GOOSE is a Trip GOOSE resulting in different APPID range - default false
 * @returns a function generating increasing unused `APPID` within `doc` on subsequent invocations
 */
export function vlanIdRangeGenerator(
  doc: XMLDocument,
  serviceType: 'SMV' | 'GSE' | 'InterProt',
  useCase: 'Station' | 'Bus',
  ignoreValues: string[]
): () => VlanPair | null {
  const { stationVlans, busVlans } = getAllocatedVlans(doc);
  const vlans = useCase === 'Station' ? stationVlans : busVlans;

  const ignoreNumbers = ignoreValues.map(vlan => parseInt(vlan, 16));
  const usedVlanNumbers = new Set(
    vlans
      ? vlans
          .map(vlan => parseInt(vlan.prot1Id, 16))
          .filter(vlan => !ignoreNumbers.includes(vlan))
      : []
  );

  const range = vlanRange(
    vlanRanges[useCase][serviceType].min,
    vlanRanges[useCase][serviceType].max
  );

  const p2Offset = vlanRanges[useCase][serviceType].offsetToP2;

  return () => {
    const uniqueVlan = range.find(vlan => !usedVlanNumbers.has(vlan));
    if (uniqueVlan) {
      usedVlanNumbers.add(uniqueVlan);
      return {
        prot1Id: uniqueVlan?.toString(16).padStart(3, '0').toUpperCase(),
        prot2Id:
          (uniqueVlan + p2Offset)
            ?.toString(16)
            .padStart(3, '0')
            .toUpperCase() ?? '',
      };
    }
    return null;
  };
}

function isEven(num: number): boolean {
  return num % 2 === 0;
}

function getProtectionNumber(iedName: string): string {
  const protectionNumber = iedName.split('_')?.slice(-1)[0] ?? 'None';
  if (isEven(parseInt(protectionNumber.slice(-1), 10))) {
    return '2';
  }
  return '1';
}

/** @returns the cartesian product of `arrays` */
export function crossProduct<T>(...arrays: T[][]): T[][] {
  return arrays.reduce<T[][]>(
    (a, b) => <T[][]>a.flatMap(d => b.map(e => [d, e].flat())),
    [[]]
  );
}

function getCommAddress(ctrlBlock: Element): Element {
  const doc = ctrlBlock.ownerDocument;

  const ctrlLdInst = ctrlBlock.closest('LDevice')!.getAttribute('inst');
  const addressTag = ctrlBlock.tagName === 'GSEControl' ? 'GSE' : 'SMV';
  const ied = ctrlBlock.closest('IED')!;
  const iedName = ied.getAttribute('name');
  const apName = ctrlBlock.closest('AccessPoint')?.getAttribute('name');

  const cbName = ctrlBlock.getAttribute('name');

  let apNames = [];
  const serverAts = ied.querySelectorAll(
    `AccessPoint > ServerAt[apName="${apName}"`
  );
  if (serverAts) {
    const serverAtNames = Array.from(serverAts).map(ap =>
      ap.closest('AccessPoint')!.getAttribute('name')
    );
    apNames = [apName, ...serverAtNames];
  } else {
    apNames = [apName];
  }

  const connectedAps = `Communication > SubNetwork > ConnectedAP[iedName="${iedName}"]`;
  const connectedApNames = apNames.map(ap => `[apName="${ap}"]`);
  const addressElement = `${addressTag}[ldInst="${ctrlLdInst}"][cbName="${cbName}"]`;

  return doc.querySelector(
    crossProduct([connectedAps], connectedApNames, ['>'], [addressElement])
      .map(strings => strings.join(''))
      .join(',')
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

// eslint-disable-next-line @typescript-eslint/no-unused-vars
function writeVlan(doc: XMLDocument, vlan: Vlan, dispatchElement: Element) {
  // TODO: Handle lack of Communication container
  const communicationContainer = doc.querySelector('Communication');

  const vlanContainer = doc.querySelector(
    'Private[type="Transpower-VLAN-Allocation"]'
  );

  if (!vlanContainer) {
    const vlanAllocation = doc.createElementNS(
      'http://www.iec.ch/61850/2003/SCL',
      'Private'
    );
    vlanAllocation.setAttribute('type', 'Transpower-VLAN-Allocation');
    vlanAllocation.appendChild(doc.createElementNS(TPNS, 'Station'));
    vlanAllocation.appendChild(doc.createElementNS(TPNS, 'Bus'));
    const edit = {
      node: vlanAllocation,
      parent: communicationContainer!,
      reference: communicationContainer!.firstElementChild,
    };
    dispatchElement.dispatchEvent(newEditEvent(edit));
  }

  const instantiatedVlanContainer = doc.querySelector(
    'Private[type="Transpower-VLAN-Allocation"]'
  );

  const vlanUseCaseContainer =
    vlan.useCase === 'Station'
      ? instantiatedVlanContainer?.getElementsByTagNameNS(TPNS, 'Station')[0]
      : instantiatedVlanContainer?.getElementsByTagNameNS(TPNS, 'Bus')[0];

  const newVlan = doc.createElementNS(TPNS, 'VLAN');
  // TODO: Fix my types
  (<any>Object.keys(vlan)).forEach((attrName: keyof Vlan) => {
    const attrValue = vlan[attrName]!;
    if (!(attrName === 'busName' && vlan.useCase === 'Station'))
      newVlan.setAttribute(attrName, attrValue);
  });

  const edit = {
    node: newVlan,
    parent: vlanUseCaseContainer!,
    reference: null,
  };
  dispatchElement.dispatchEvent(newEditEvent(edit));
}

function getBusConnections(doc: XMLDocument) {
  if (!doc) return new Map();
  const bcs = new Map<string, string>();
  Array.from(
    doc.querySelectorAll(
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

function getCurrentDateTimeWithTimeZone(): string {
  const now = new Date();

  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, '0');
  const day = String(now.getDate()).padStart(2, '0');

  const hours = String(now.getHours()).padStart(2, '0');
  const minutes = String(now.getMinutes()).padStart(2, '0');
  const seconds = String(now.getSeconds()).padStart(2, '0');

  const timeZoneOffset = now.getTimezoneOffset();
  const timeZoneHours = Math.abs(Math.floor(timeZoneOffset / 60))
    .toString()
    .padStart(2, '0');
  const timeZoneMinutes = (Math.abs(timeZoneOffset) % 60)
    .toString()
    .padStart(2, '0');
  const timeZoneSign = timeZoneOffset < 0 ? '+' : '-';

  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds} ${timeZoneSign}${timeZoneHours}:${timeZoneMinutes}`;
}

function formatXml(xml: string, tab?: string) {
  let formatted = '';
  let indent = '';

  // eslint-disable-next-line no-param-reassign
  if (!tab) tab = '\t';
  xml.split(/>\s*</).forEach(node => {
    if (node.match(/^\/\w/)) indent = indent.substring(tab!.length);
    formatted += `${indent}<${node}>\r\n`;
    if (node.match(/^<?\w[^>]*[^/]$/)) indent += tab;
  });
  return formatted.substring(1, formatted.length - 3);
}

export default class TPMulticastNaming extends LitElement {
  /** The document being edited as provided to plugins by [[`OpenSCD`]]. */
  @property({ attribute: false })
  doc!: XMLDocument;

  @property({ attribute: false })
  docName!: string;

  @property({ attribute: false })
  editCount: number = -1;

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
  resultMessageText = '';

  @property({ attribute: false })
  showMissingAddresses = true;

  @property({ attribute: false })
  selectedBus: string = '';

  @property({ attribute: false })
  selectedVlansForRemoval: number = 0;

  @query('#grid')
  gridUI!: Grid;

  @query('#vlanList')
  vlanListUI!: Dialog;

  // TODO: Refactor for performance.
  @property({ type: Map })
  busConnections: Map<string, string> = new Map();

  @property({ type: Array })
  commElements: Element[] | [] = [];

  @query('.selection-list')
  cbList: List | undefined;

  @query('#busConnectionMenuButton')
  busConnectionMenuButtonUI?: Button;

  @query('#busConnectionMenu')
  busConnectionMenuUI?: Menu;

  @query('#file-input') fileInputUI!: HTMLInputElement;

  @query('#resultMessage')
  resultMessageUI!: Snackbar;

  @query('#removableVlanList')
  removableVlanListUI!: List;

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
      <mwc-formfield label="Hide Unmatched Control Blocks" alignEnd
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
        id="busConnectionField"
        label="${this.selectedBus === '' ? 'Select a Bus' : this.selectedBus}"
        ?disabled=${Array.from(this.busConnections.keys()).length === 0}
        alignEnd
        ><mwc-icon-button
          icon="expand_more"
          id="busConnectionMenuButton"
          ?disabled=${Array.from(this.busConnections.keys()).length === 0}
          @click=${() => {
            if (!(Array.from(this.busConnections.keys()).length === 0))
              this.busConnectionMenuUI!.show();
          }}
        ></mwc-icon-button>
        <mwc-menu id="busConnectionMenu" corner="BOTTOM_RIGHT" menuCorner="END">
          <mwc-list-item
            graphic="icon"
            left
            ?selected=${this.selectedBus === ''}
            value="None"
            ><span>None</span>
          </mwc-list-item>
          ${[...new Set(this.busConnections.values())]
            .sort((a, b) => a.localeCompare(b))
            .map(
              busName => html`<mwc-list-item
                graphic="icon"
                left
                ?selected=${this.selectedBus === busName}
                value="${busName}"
              >
                <span>${busName}</span>
                <mwc-icon slot="graphic">check</mwc-icon>
              </mwc-list-item>`
            )}
        </mwc-menu>
      </mwc-formfield>
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

  protected updated(
    changedProperties: PropertyValueMap<any> | Map<PropertyKey, unknown>
  ): void {
    super.updated(changedProperties);

    // When a new document is loaded or we do a subscription/we will reset the Map to clear old entries.
    // TODO: Be able to detect the same document loaded twice, currently lack a way to check for this
    // https://github.com/openscd/open-scd-core/issues/92
    if (changedProperties.has('doc')) {
      this.busConnections = getBusConnections(this.doc);
      this.gridItems = [];
      this.selectedItems = [];
      this.updateContent();
    }

    if (this.busConnectionMenuUI) {
      this.busConnectionMenuUI!.anchor = <HTMLElement>(
        this.busConnectionMenuButtonUI
      );

      this.busConnectionMenuUI!.addEventListener('closed', () => {
        const busListItem = (<ListItemBase>this.busConnectionMenuUI?.selected)
          ?.value;

        if (!busListItem) return;

        this.selectedBus =
          !busListItem || busListItem === 'None' ? '' : busListItem;

        this.gridItems = [];
        this.updateContent();
      });
    }
  }

  protected firstUpdated(): void {
    this.busConnections = getBusConnections(this.doc);
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
    const allCommElements = Array.from(
      this.doc.querySelectorAll(
        `:root > Communication > SubNetwork > ConnectedAP > GSE, :root > Communication > SubNetwork > ConnectedAP > SMV`
      )
    );

    const unselectedMacs = allCommElements
      .filter(comm => !selectedCommElements.includes(comm))
      .map(
        elem =>
          elem
            ?.querySelector('Address > P[type="MAC-Address"]')
            ?.textContent?.toUpperCase() ?? ''
      );

    const reallocatableMACs = selectedCommElements
      .map(
        elem =>
          elem
            ?.querySelector('Address > P[type="MAC-Address"]')
            ?.textContent?.toUpperCase() ?? ''
      )
      .filter(mac => !unselectedMacs.includes(mac));

    const nextMac: MacObject = {
      GSE: {
        '1': macAddressGenerator(this.doc, 'GSE', '1', reallocatableMACs),
        '2': macAddressGenerator(this.doc, 'GSE', '2', reallocatableMACs),
      },
      SMV: {
        '1': macAddressGenerator(this.doc, 'SMV', '1', reallocatableMACs),
        '2': macAddressGenerator(this.doc, 'SMV', '2', reallocatableMACs),
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

    // VLANs
    const ignoreVlanIds = selectedCommElements.map(
      elem =>
        elem
          ?.querySelector('Address > P[type="VLAN-ID"]')!
          ?.textContent?.toUpperCase() ?? ''
    );

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const nextVlan: VlanAllocation = {
      Station: {
        InterProt: vlanIdRangeGenerator(
          this.doc,
          'InterProt',
          'Station',
          ignoreVlanIds
        ),
        GSE: vlanIdRangeGenerator(this.doc, 'GSE', 'Station', ignoreVlanIds),
        SMV: vlanIdRangeGenerator(this.doc, 'SMV', 'Station', ignoreVlanIds),
      },
      Bus: {
        InterProt: vlanIdRangeGenerator(
          this.doc,
          'InterProt',
          'Bus',
          ignoreVlanIds
        ),
        GSE: vlanIdRangeGenerator(this.doc, 'GSE', 'Bus', ignoreVlanIds),
        SMV: vlanIdRangeGenerator(this.doc, 'SMV', 'Bus', ignoreVlanIds),
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
      const iedName = control.closest('IED')!.getAttribute('name')!;

      if (type === 'GSEControl') {
        const cbName = control.getAttribute('name') ?? 'Unknown';
        const update = {
          element: control,
          attributes: { appID: `${iedName}_${cbName}` },
        };
        edits.push(update);
      }

      if (type === 'SampledValueControl') {
        const smvID = control.getAttribute('smvID') ?? 'Unknown';
        if (!smvID.startsWith(iedName)) {
          const update = {
            element: control,
            attributes: {
              smvID:
                smvID === 'TEMPLATE' ? `${iedName}` : `${iedName}_${smvID}`,
            },
          };
          edits.push(update);
        }
      }
    });

    if (edits) {
      this.dispatchEvent(newEditEvent(edits));
      edits = [];
    }

    const busConnections = getBusConnections(this.doc);
    const busToIed = new Map<string, string[]>();

    Array.from(busConnections.keys()).forEach(iedName => {
      const busName = busConnections.get(iedName);
      if (!busToIed.has(busName)) {
        busToIed.set(busName, [iedName]);
      } else {
        busToIed.set(busName, [...busToIed.get(busName)!, iedName]);
      }
    });

    // todo, tidy this
    let vlanAllocated = false;
    Array.from([...busToIed.keys(), 'NOBUSES']).forEach(busName => {
      selectedControlElements
        .filter(ctrl => {
          const iedName = ctrl.closest('IED')!.getAttribute('name');
          return (
            busConnections.get(iedName!) === busName ||
            (busName === 'NOBUSES' && !busConnections.has(iedName))
          );
        })
        .forEach(control => {
          const iedName = control.closest('IED')!.getAttribute('name')!;
          const addr = getCommAddress(control);

          if (!addr) return;

          let smvIDFunction: string | undefined;
          if (addr)
            smvIDFunction = control
              .getAttribute('smvID')
              ?.replace(`${iedName}`, '')
              .replace('_', '');

          const controlName = control.getAttribute('name')!;

          let useCase: 'Bus' | 'Station' | undefined;
          let serviceType: 'GSE' | 'SMV' | 'InterProt';

          serviceType = control.tagName === 'GSEControl' ? 'GSE' : 'SMV';

          let serviceName: string | undefined;
          if (
            controlName.startsWith('Ind') ||
            controlName.startsWith('Test') ||
            controlName.startsWith('SPSBus') ||
            controlName.startsWith('TCh')
          ) {
            serviceName = 'Bus/Bay GOOSE Slow';
            useCase = 'Bus';
          } else if (controlName.startsWith('Ctl')) {
            serviceName = 'Bus/Bay GOOSE Fast';
            useCase = 'Bus';
          } else if (
            controlName.startsWith('ARecl') ||
            controlName.startsWith('SwgrPos')
          ) {
            serviceName = 'P1 to P2 ARecl/SwgrPos';
            serviceType = 'InterProt';
            useCase = 'Bus';
          } else if (
            serviceType === 'SMV' &&
            (smvIDFunction === '' ||
              smvIDFunction === 'Phase' ||
              smvIDFunction === 'NCT_UB_ET')
          ) {
            serviceName = 'Bus/Bay SV';
            useCase = 'Bus';
          }

          // Allocate if adequate definition is not available
          if (
            serviceName &&
            serviceType &&
            useCase === 'Bus' &&
            busName !== 'NOBUSES'
          ) {
            const { busVlans } = getAllocatedVlans(this.doc);
            const existingVlans = busVlans;

            const existingVlan = existingVlans?.find(
              vlan =>
                (vlan.busName === busName || busName === 'NOBUSES') &&
                vlan.serviceName === serviceName
            );

            const vlanId =
              getProtectionNumber(iedName) === '1'
                ? existingVlan?.prot1Id
                : existingVlan?.prot2Id;

            if (vlanId) {
              // update the vlan
              edits.push(
                ...updateTextContent(
                  addr.querySelector('Address > P[type="VLAN-ID"]'),
                  vlanId
                )
              );
            } else {
              // allocate VLAN
              const newVlanIds = nextVlan[useCase][serviceType]();

              const chosenVlanId =
                getProtectionNumber(iedName) === '1'
                  ? newVlanIds?.prot1Id
                  : newVlanIds?.prot2Id;

              if (newVlanIds) {
                const vlan: Vlan = {
                  serviceName,
                  serviceType,
                  useCase,
                  ...newVlanIds!,
                  ...(busName !== 'NOBUSES' && { busName }),
                };

                writeVlan(this.doc, vlan, this);
                vlanAllocated = true;
                // TODO: Parameterise 3E7.
                edits.push(
                  ...updateTextContent(
                    addr.querySelector('Address > P[type="VLAN-ID"]'),
                    chosenVlanId ?? '3E7'
                  )
                );
                // console.log('New VLAN:', vlan);
              }
            }
          }
        });
    });

    selectedControlElements.forEach(control => {
      const iedName = control.closest('IED')!.getAttribute('name')!;
      const addr = getCommAddress(control);

      if (!addr) return;

      let smvIDFunction: string | undefined;
      if (addr)
        smvIDFunction = control
          .getAttribute('smvID')
          ?.replace(`${iedName}`, '')
          .replace('_', '');

      const controlName = control.getAttribute('name')!;

      let useCase: 'Bus' | 'Station' | undefined;

      const serviceType = control.tagName === 'GSEControl' ? 'GSE' : 'SMV';

      let serviceName: string | undefined;
      if (
        controlName.startsWith('ILock') ||
        controlName.startsWith('TripCBFail') ||
        controlName.startsWith('SPSStn') ||
        controlName.startsWith('VReg')
      ) {
        serviceName = 'Station GOOSE';
        useCase = 'Station';
      } else if (serviceType === 'SMV' && smvIDFunction === 'VTSelStn') {
        serviceName = 'Station SV';
        useCase = 'Station';
      }

      // Allocate if adequate definition is not available
      if (serviceName && serviceType && useCase === 'Station') {
        const { stationVlans } = getAllocatedVlans(this.doc);
        const existingVlans = stationVlans;

        const existingVlan = existingVlans?.find(
          vlan => vlan.serviceName === serviceName
        );

        const vlanId =
          getProtectionNumber(iedName) === '1'
            ? existingVlan?.prot1Id
            : existingVlan?.prot2Id;

        if (vlanId) {
          // update the vlan
          edits.push(
            ...updateTextContent(
              addr.querySelector('Address > P[type="VLAN-ID"]'),
              vlanId
            )
          );
        } else {
          // allocate VLAN
          const newVlanIds = nextVlan[useCase][serviceType]();

          const chosenVlanId =
            getProtectionNumber(iedName) === '1'
              ? newVlanIds?.prot1Id
              : newVlanIds?.prot2Id;

          if (newVlanIds) {
            const vlan: Vlan = {
              serviceName,
              serviceType,
              useCase,
              ...newVlanIds!,
            };

            writeVlan(this.doc, vlan, this);
            vlanAllocated = true;
            // TODO: Parameterise 3E7.
            edits.push(
              ...updateTextContent(
                addr.querySelector('Address > P[type="VLAN-ID"]'),
                chosenVlanId ?? '3E7'
              )
            );
            // console.log('New VLAN:', vlan);
          }
        }
      }
    });

    if (vlanAllocated) {
      const vlanContainer = this.doc.querySelector(
        'Private[type="Transpower-VLAN-Allocation"]'
      );

      if (vlanContainer) {
        edits.push({
          element: vlanContainer,
          attributes: {
            updated: {
              value: getCurrentDateTimeWithTimeZone(),
              namespaceURI: TPNS,
            },
          },
        });
      }
    }

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
            element.getAttribute('cbName')?.toUpperCase().startsWith('CTL') ||
            element.getAttribute('cbName')?.toUpperCase().startsWith('TRIP') ||
            element.getAttribute('cbName')?.toUpperCase().startsWith('TEST')
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
          element.getAttribute('cbName')?.toUpperCase().startsWith('CTL') ||
          element.getAttribute('cbName')?.toUpperCase().startsWith('TRIP')
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
      let priority: string = '5';
      if (
        element.tagName === 'SMV' ||
        (element.tagName === 'GSE' &&
          (element.getAttribute('cbName')?.toUpperCase().startsWith('CTL') ||
            element.getAttribute('cbName')?.toUpperCase().startsWith('TRIP')))
      ) {
        priority = '6';
      }

      edits.push(
        ...updateTextContent(
          element.querySelector('Address > P[type="VLAN-PRIORITY"]'),
          priority
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
    // TODO: Why is this.docName not working?
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

  getUsedVlansCount(): number {
    const { stationVlans, busVlans } = getAllocatedVlans(this.doc);
    return (stationVlans ?? []).length + (busVlans ?? []).length;
  }

  transferVlanAllocation(): void {
    this.fileInputUI.click();
  }

  async updateVlanAllocationInFile(event: Event): Promise<void> {
    const file =
      (<HTMLInputElement | null>event.target)?.files?.item(0) ?? false;
    if (!file) return;

    const text = await file.text();
    const transferDocName = file.name;
    const transferDoc = new DOMParser().parseFromString(
      text,
      'application/xml'
    );

    // set namespace on header if not present
    if (!transferDoc.documentElement.hasAttribute('xmlns:etpc'))
      transferDoc.documentElement.setAttributeNS(
        'http://www.w3.org/2000/xmlns/',
        'xmlns:etpc',
        TPNS
      );

    const vlanAllocation = this.doc.querySelector(
      'Private[type="Transpower-VLAN-Allocation"]'
    );

    const transferCommunication = transferDoc.querySelector('Communication');
    if (!(vlanAllocation && transferDoc && transferCommunication)) {
      this.resultMessageText =
        'VLAN allocation not transferred, no Communication section in file';
      this.resultMessageUI.show();
      return;
    }

    // remove old VLAN allocation
    const transferVlanAllocation = transferDoc.querySelector(
      'Private[type="Transpower-VLAN-Allocation"]'
    );
    if (transferVlanAllocation) {
      this.resultMessageText = `Removed existing VLAN allocations in '${transferDocName} and transferred new VLAN allocations.`;
      transferCommunication.removeChild(transferVlanAllocation);
    } else {
      this.resultMessageText = `Transferred VLAN allocations to '${transferDocName}.`;
    }

    // transfer new VLAN allocation
    const copyNode = this.doc.importNode(vlanAllocation, true);
    transferCommunication.insertBefore(
      copyNode,
      transferCommunication.firstElementChild
    );

    // now format and save document
    let documentAsString = formatXml(
      new XMLSerializer().serializeToString(transferDoc)
    );

    // Add XML declaration/prolog if it's been stripped
    // TODO: This can be removed once the improved OpenSCD core edit API is present
    documentAsString = documentAsString.startsWith('<?xml')
      ? documentAsString
      : `<?xml version="1.0" encoding="UTF-8"?>\n${documentAsString}`;

    const blob = new Blob([documentAsString], {
      type: 'application/xml',
    });

    const a = document.createElement('a');
    // TODO: Improve naming...
    a.download = transferDocName;
    a.href = URL.createObjectURL(blob);
    a.dataset.downloadurl = ['application/xml', a.download, a.href].join(':');
    a.style.display = 'none';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(() => {
      URL.revokeObjectURL(a.href);
    }, 5000);

    this.resultMessageUI.show();
  }

  removeVlans(): void {
    if (!this.removableVlanListUI.selected) return;

    const edits: Edit[] = [];
    const vlanContainer = this.doc.querySelector(
      'Private[type="Transpower-VLAN-Allocation"]'
    );
    const vlans = vlanContainer?.getElementsByTagNameNS(TPNS, 'VLAN');

    if (!vlans) return;

    (<ListItemBase[]>this.removableVlanListUI.selected).forEach(item => {
      const { servicename, servicetype, usecase, prot1id, prot2id, busname } =
        item.dataset;

      const removableVlan = Array.from(vlans).filter(
        element =>
          element.getAttribute('useCase') === usecase &&
          element.getAttribute('serviceName') === servicename &&
          element.getAttribute('serviceType') === servicetype &&
          element.getAttribute('prot1Id') === prot1id &&
          element.getAttribute('prot2Id') === prot2id &&
          (!element.getAttribute('busName') ||
            element.getAttribute('busName') === busname)
      );
      if (removableVlan && removableVlan.length === 1) {
        edits.push({ node: removableVlan[0] });
      }
    });
    this.dispatchEvent(newEditEvent(edits));
    this.resultMessageText = `Removed ${edits.length} VLAN allocations`;
    this.resultMessageUI.show();
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
            label="Show Used VLANs (${this.getUsedVlansCount()})"
            ?disabled=${this.getUsedVlansCount() === 0}
            @click=${() => {
              this.vlanListUI.show();
            }}
          >
          </mwc-button>
          <mwc-button
            outlined
            icon="sync_alt"
            class="spaced-button"
            label="Transfer VLAN Allocation To File"
            ?disabled=${this.getUsedVlansCount() === 0}
            @click=${() => {
              this.transferVlanAllocation();
            }}
          >
          </mwc-button>
          <!-- TODO: Feature to add network-data extension in here -->
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
            // this.gridUI.clearCache();
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

  // TODO remove checked/selected for mwc component.
  // eslint-disable-next-line class-methods-use-this
  renderVlan(vlan: Vlan, type: string): TemplateResult {
    return html`<mwc-check-list-item
      twoline
      data-serviceName="${vlan.serviceName}"
      data-serviceType="${vlan.serviceType}"
      data-useCase="${vlan.useCase}"
      data-prot1Id="${vlan.prot1Id}"
      data-prot2Id="${vlan.prot2Id}"
      data-busName="${vlan.busName ? vlan.busName : ''}"
      value="${type}"
      >${vlan.serviceName}
      ${vlan.serviceType}${vlan.busName && vlan.busName !== ''
        ? ` - ${vlan.busName}`
        : ''}<span slot="secondary"
        >Prot1: ${displayVlan(vlan.prot1Id)} Prot2:
        ${displayVlan(vlan.prot2Id)}</span
      ></mwc-check-list-item
    >`;
  }

  deselectVlanItems(): void {
    (<ListItemBase[]>this.removableVlanListUI.selected).forEach(item => {
      // eslint-disable-next-line no-param-reassign
      item.selected = false;
    });
  }

  renderVlanList(): TemplateResult {
    const { stationVlans, busVlans } = getAllocatedVlans(this.doc);

    const vlanCompare = (vlan1: Vlan, vlan2: Vlan) => {
      const vlan1Desc = `${vlan1.busName} ${vlan1.serviceName}`;
      const vlan2Desc = `${vlan2.busName} ${vlan2.serviceName}`;
      return vlan1Desc.localeCompare(vlan2Desc);
    };

    const updated = this.doc
      .querySelector('Private[type="Transpower-VLAN-Allocation"]')
      ?.getAttributeNS(TPNS, 'updated');

    return html`<mwc-dialog id="vlanList" heading="VLAN List">
      <oscd-filtered-list
        id="removableVlanList"
        multi
        @selected=${(ev: MultiSelectedEvent) => {
          this.selectedVlansForRemoval =
            (<ListItemBase[]>(<unknown>(<List>ev.target).selected))!.length ??
            0;
        }}
      >
        <p>Last updated: <em>${updated ?? 'No VLAN data present'}</em></p>
        <h3>Station VLANs</h3>
        ${stationVlans
          ? stationVlans
              .sort(vlanCompare)
              .map(vlan => this.renderVlan(vlan, 'Station'))
          : html`<mwc-list-item>No VLANs present</mwc-list-item>`}
        <h3>Bus VLANs</h3>
        ${busVlans
          ? busVlans.sort(vlanCompare).map(vlan => this.renderVlan(vlan, 'Bus'))
          : html`<mwc-list-item>No VLANs present</mwc-list-item>`}
      </oscd-filtered-list>
      <mwc-button
        dialogAction="ok"
        slot="primaryAction"
        @click="${() => this.deselectVlanItems()}"
        >OK</mwc-button
      >
      <mwc-button
        dialogAction="removeVlans"
        id="removeVlansButtons"
        slot="secondaryAction"
        icon="delete"
        ?disabled=${this.selectedVlansForRemoval === 0}
        @click="${() => {
          this.removeVlans();
          this.deselectVlanItems();
        }}"
      >
        Remove VLAN Allocation
      </mwc-button>
    </mwc-dialog>`;
  }

  renderFileInput(): TemplateResult {
    return html`<input @click=${(event: MouseEvent) => {
      // eslint-disable-next-line no-param-reassign
      (<HTMLInputElement>event.target).value = '';
    }} @change=${
      this.updateVlanAllocationInFile
    } id="file-input" accept=".sed,.scd,.ssd,.iid,.cid,.icd" type="file"></input>`;
  }

  // eslint-disable-next-line class-methods-use-this
  renderResultMessage(): TemplateResult {
    return html`<mwc-snackbar
      id="resultMessage"
      leading
      labelText="${this.resultMessageText}"
    >
    </mwc-snackbar>`;
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
      ${this.renderVlanList()} ${this.renderFileInput()}
      ${this.renderResultMessage()}
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

    #file-input {
      width: 0;
      height: 0;
      opacity: 0;
    }

    fileInputUI #filterSelector {
      position: relative;
      max-width: fit-content;
    }

    #filterSelector > mwc-formfield {
      padding-right: 20px;
    }

    .lighter {
      font-weight: lighter;
      color: darkgray;
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

    #busConnectionField {
      position: relative;
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
