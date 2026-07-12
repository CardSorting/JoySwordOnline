/// <reference types="vite/client" />

import type { LauncherApi } from '../shared/contracts';

declare global {
  interface Window {
    joySword: LauncherApi;
  }
}

export {};
