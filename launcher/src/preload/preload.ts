import { contextBridge, ipcRenderer } from 'electron';
import type { LauncherApi } from '../shared/contracts';

const api: LauncherApi = {
  getStatus: () => ipcRenderer.invoke('launcher:get-status'),
  launchClient: (settings) => ipcRenderer.invoke('launcher:launch', settings),
  verifyInstallation: () => ipcRenderer.invoke('launcher:verify'),
  repairClientSettings: (settings) => ipcRenderer.invoke('launcher:repair', settings),
  getSettings: () => ipcRenderer.invoke('launcher:get-settings'),
  saveSettings: (settings) => ipcRenderer.invoke('launcher:save-settings', settings),
  chooseGameRoot: () => ipcRenderer.invoke('launcher:choose-root'),
  openLogs: () => ipcRenderer.invoke('launcher:open-logs'),
  openDataFolder: () => ipcRenderer.invoke('launcher:open-data'),
  getContent: () => ipcRenderer.invoke('launcher:get-content'),
  getLauncherVersion: () => ipcRenderer.invoke('launcher:get-version'),
  windowMinimize: () => ipcRenderer.invoke('window:minimize'),
  windowToggleMaximize: () => ipcRenderer.invoke('window:toggle-maximize'),
  windowClose: () => ipcRenderer.invoke('window:close'),
};

contextBridge.exposeInMainWorld('joySword', api);
