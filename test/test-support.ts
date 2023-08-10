import { setViewport, resetMouse, sendMouse } from '@web/test-runner-commands';

function timeout(ms: number) {
  return new Promise(res => {
    setTimeout(res, ms);
  });
}

export async function setViewPort(): Promise<void> {
  // target 1920x1080 screen-resolution, giving typical browser size of...
  await setViewport({ width: 1745, height: 845 });
}

export function midEl(element: Element): [number, number] {
  const { x, y, width, height } = element.getBoundingClientRect();

  return [
    Math.floor(x + window.pageXOffset + width / 2),
    Math.floor(y + window.pageYOffset + height / 2),
  ];
}

/**
 * Avoids mouse being focussed or hovering over items during snapshots
 * As this appears to make screenshots inconsistent between browsers and environments
 */
export async function resetMouseState(): Promise<void> {
  await timeout(70);
  await resetMouse();
  await sendMouse({ type: 'click', position: [0, 0] });
}
