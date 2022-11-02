import { WebPlugin } from '@capacitor/core';

import type { rpPlugin } from './definitions';

export class rpWeb extends WebPlugin implements rpPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
