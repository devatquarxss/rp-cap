import { registerPlugin } from '@capacitor/core';

import type { rpPlugin } from './definitions';

const rp = registerPlugin<rpPlugin>('rp', {
  web: () => import('./web').then(m => new m.rpWeb()),
});

export * from './definitions';
export { rp };
