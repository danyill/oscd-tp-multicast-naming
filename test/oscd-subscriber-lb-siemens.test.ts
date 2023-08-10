// /* eslint-disable func-names */
// /* eslint-disable prefer-arrow-callback */

// import { visualDiff } from '@web/test-runner-visual-regression';

// import { sendMouse, resetMouse } from '@web/test-runner-commands';

// import { expect, fixture, html } from '@open-wc/testing';

// import '@openscd/open-scd-core/open-scd.js';

// import { LitElement } from 'lit';

// import type SubscriberLaterBindingSiemens from '../oscd-tp-multicast-naming.js';
// import { midEl, setViewPort } from './test-support.js';

// const factor = window.process && process.env.CI ? 4 : 2;

// function timeout(ms: number) {
//   return new Promise(res => {
//     setTimeout(res, ms * factor);
//   });
// }

// mocha.timeout(14000 * factor);
// // const standardWait = 350;

// function testName(test: any): string {
//   return test.test!.fullTitle();
// }

// type OpenSCD = LitElement & {
//   editor: string;
//   docName: string;
//   docs: Record<string, XMLDocument>;
// };

// let openSCD: OpenSCD;
// let doc: XMLDocument;

// const plugins = {
//   menu: [
//     {
//       name: 'Subscriber Later Binding - Siemens',
//       translations: {
//         de: 'Kommunikationsexport',
//         pt: 'Exportação de Comunicações',
//       },
//       icon: 'autorenew',
//       active: true,
//       requireDoc: true,
//       src: '/dist/oscd-tp-multicast-naming.js',
//     },
//   ],
// };

// const script = document.createElement('script');
// script.type = 'module';

// script.textContent = `
//       const _customElementsDefine = window.customElements.define;
//       window.customElements.define = (name, cl, conf) => {
//         if (!customElements.get(name)) {
//           try {
//             _customElementsDefine.call(
//               window.customElements,
//               name,
//               cl,
//               conf
//             );
//           } catch (e) {
//             console.warn(e);
//           }
//         }
//       };
//     `;
// document.head.appendChild(script);

// // TODO: remove <any> type when possible
// // See https://github.com/openscd/open-scd-core/issues/128
// const ed = await fixture(
//   html`<open-scd language="en" .plugins=${<any>plugins}></open-scd>`
// );
// document.body.prepend(ed);

// openSCD = document.querySelector<OpenSCD>('open-scd')!;
// const plugin: SubscriberLaterBindingSiemens = document
//   .querySelector('open-scd')!
//   .shadowRoot!.querySelector<SubscriberLaterBindingSiemens>(
//     'aside > :last-child'
//   )!;

// await timeout(600); // plugin loading
// await document.fonts.ready;

// localStorage.clear();
// await setViewPort();
// resetMouse();

// describe('configure the plugin', () => {
//   beforeEach(async () => {
//     const docPath = '/test/fixtures/SV_and_GOOSE.scd';
//     doc = await fetch(docPath)
//       .then(response => response.text())
//       .then(str => new DOMParser().parseFromString(str, 'application/xml'));

//     // eslint-disable-next-line prefer-destructuring
//     openSCD.docName = docPath.split('/').slice(-1)[0];
//     openSCD.docs[openSCD.docName] = doc;

//     await openSCD.updateComplete;
//     await plugin.updateComplete;

//     await timeout(600); // plugin loading and initial render?
//   });

//   it('is initially disabled', async function () {
//     const menu = openSCD.shadowRoot!.querySelector(
//       '#menu > mwc-top-app-bar-fixed > mwc-icon-button[slot="navigationIcon"]'
//     );
//     await sendMouse({
//       type: 'click',
//       position: midEl(menu!),
//     });

//     await timeout(300); // plugin loading and initial render?

//     const menuPlugin = openSCD.shadowRoot!.querySelector(
//       '#menu > mwc-list > mwc-list-item:nth-child(2)'
//     );
//     await sendMouse({
//       type: 'click',
//       position: midEl(menuPlugin!),
//     });

//     await timeout(300); // open dialog

//     await visualDiff(openSCD, testName(this));
//     const closeButton = plugin
//       .shadowRoot!.querySelector('mwc-dialog')!
//       .querySelector('mwc-button[slot="primaryAction"]')!;
//     await sendMouse({
//       type: 'click',
//       position: midEl(closeButton!),
//     });

//     await sendMouse({
//       type: 'click',
//       position: midEl(document.body),
//     });

//     expect(plugin.enabled).to.be.false;
//   });

//   it('can be enabled', async function () {
//     openSCD = document.querySelector<OpenSCD>('open-scd')!;
//     const menu = openSCD.shadowRoot!.querySelector(
//       '#menu > mwc-top-app-bar-fixed > mwc-icon-button[slot="navigationIcon"]'
//     );
//     await sendMouse({
//       type: 'click',
//       position: midEl(menu!),
//     });
//     await timeout(300); // open menu

//     const menuPlugin = openSCD.shadowRoot!.querySelector(
//       '#menu > mwc-list > mwc-list-item:nth-child(2)'
//     );
//     await sendMouse({
//       type: 'click',
//       position: midEl(menuPlugin!),
//     });
//     await timeout(300); // open plugin

//     const enabledSwitch = plugin
//       .shadowRoot!.querySelector('mwc-dialog')!
//       .querySelector('mwc-formfield')!
//       .querySelector('mwc-switch');

//     await sendMouse({
//       type: 'click',
//       position: midEl(enabledSwitch!),
//     });

//     await enabledSwitch?.updateComplete;
//     await timeout(300); // enable plugin

//     await visualDiff(openSCD, testName(this));

//     const closeButton = plugin
//       .shadowRoot!.querySelector('mwc-dialog')!
//       .querySelector('mwc-button[slot="primaryAction"]')!;
//     await sendMouse({
//       type: 'click',
//       position: midEl(closeButton!),
//     });

//     expect(plugin.enabled).to.be.true;
//   });
// });
