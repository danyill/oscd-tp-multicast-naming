// import { css, html, LitElement, TemplateResult } from 'lit';

// import { property } from 'lit/decorators.js';

// import { subscribe, unsubscribe } from '@openenergytools/scl-lib';

// import '@material/mwc-fab';
// import '@material/mwc-icon-button-toggle';
// import '@material/mwc-menu';
// import '@material/mwc-textfield';

// import { Edit, newEditEvent } from '@openscd/open-scd-core';

// import { identity } from './foundation/identities/identity.js';
// import { selector } from './foundation/identities/selector.js';
// import {
//   findControlBlock,
//   instantiateSubscriptionSupervision,
//   isPartiallyConfigured,
//   isSubscribed,
//   canRemoveSubscriptionSupervision,
//   removeSubscriptionSupervision,
// } from '../foundation/subscription/subscription.js';

// /**
//  * A plugin to allow subscriptions of GOOSE and SV using the
//  * later binding method as described in IEC 61850-6 Ed 2.1 providing
//  * both a publisher and subscriber-oriented view.
//  */
// export default class MockSubscriberLaterBinding extends LitElement {
//   @property({ attribute: false })
//   doc!: XMLDocument;

//   @property() docName!: string;

//   @property() editCount!: number;

//   @property({ type: String, reflect: true })
//   identity = 'danyill.oscd-subscriber-later-binding';

//   @property({ type: Boolean, reflect: true })
//   allowExternalPlugins = true;

//   @property({ type: Boolean, reflect: true })
//   ignoreSupervision: boolean = false;

//   /**
//    * Unsubscribing means removing a list of attributes from the ExtRef Element.
//    * Supervisions are handled independently as this is a setting option.
//    *
//    * @param extRef - The Ext Ref Element to clean from attributes.
//    */
//   private unsubscribeExtRef(extRef: Element): void {
//     const editActions: Edit[] = [];

//     editActions.push(...unsubscribe([extRef], { ignoreSupervision: true }));

//     const controlBlock = findControlBlock(extRef);

//     if (
//       !this.ignoreSupervision &&
//       canRemoveSubscriptionSupervision(extRef) &&
//       controlBlock
//     ) {
//       const subscriberIed = extRef.closest('IED')!;
//       editActions.push(
//         ...removeSubscriptionSupervision(controlBlock, subscriberIed)
//       );
//     }

//     this.dispatchEvent(newEditEvent(editActions));
//   }

//   /**
//    * Subscribing means copying a list of attributes from the FCDA Element (and others) to the ExtRef Element.
//    *
//    * @param extRef - The ExtRef Element to add the attributes to.
//    */
//   private subscribe(
//     extRef: Element,
//     controlBlock: Element,
//     fcda: Element
//   ): void {
//     // need to remove invalid existing subscription
//     if (isSubscribed(extRef) || isPartiallyConfigured(extRef))
//       this.dispatchEvent(
//         newEditEvent(unsubscribe([extRef], { ignoreSupervision: true }))
//       );

//     const subscribeEdits: Edit[] = [];
//     let supEdits: Edit[] = [];

//     subscribeEdits.push(
//       subscribe({ sink: extRef, source: { fcda, controlBlock } })
//     );

//     if (!this.ignoreSupervision) {
//       const subscriberIed = extRef.closest('IED')!;
//       supEdits = instantiateSubscriptionSupervision(
//         controlBlock,
//         subscriberIed
//       );
//     }

//     this.dispatchEvent(newEditEvent([subscribeEdits, ...supEdits]));
//   }

//   render(): TemplateResult {
//     return html``;
//   }

//   static styles = css``;
// }
