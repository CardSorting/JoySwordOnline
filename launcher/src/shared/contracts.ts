export type LauncherPhase = 'checking' | 'ready' | 'server-warning' | 'launching' | 'running' | 'error';

export type ServiceStatus = {
  id: string;
  name: string;
  host: string;
  port: number;
  online: boolean;
};

export type LauncherSettings = {
  resolution: '1024x768' | '1280x720' | '1600x900' | '1920x1080' | '2560x1440';
  fullscreen: boolean;
  closeOnLaunch: boolean;
  gameRoot: string | null;
  customServerEnabled: boolean;
  customServerIp: string;
};

export type LauncherStatus = {
  phase: LauncherPhase;
  gameRoot: string | null;
  rootValid: boolean;
  clientInstalled: boolean;
  clientRunning: boolean;
  services: ServiceStatus[];
  allRequiredOnline: boolean;
  checkedAt: string;
};

export type DiagnosticCheck = {
  id: string;
  label: string;
  detail: string;
  state: 'pass' | 'warn' | 'fail';
  repairable: boolean;
};

export type LaunchResult = {
  ok: boolean;
  focused: boolean;
  message: string;
};

export type RepairResult = {
  ok: boolean;
  message: string;
  backupPath?: string;
};

export type LauncherContent = {
  schema: 'joysword.launcher-content/v1';
  eyebrow: string;
  title: string;
  summary: string;
  featured: { tag: string; title: string; description: string };
  notices: Array<{ id: string; category: string; title: string; date: string }>;
};

export type LauncherApi = {
  getStatus(): Promise<LauncherStatus>;
  launchClient(settings: LauncherSettings): Promise<LaunchResult>;
  verifyInstallation(): Promise<DiagnosticCheck[]>;
  repairClientSettings(settings: LauncherSettings): Promise<RepairResult>;
  getSettings(): Promise<LauncherSettings>;
  saveSettings(settings: LauncherSettings): Promise<LauncherSettings>;
  chooseGameRoot(): Promise<string | null>;
  openLogs(): Promise<string>;
  openDataFolder(): Promise<string>;
  getContent(): Promise<LauncherContent>;
  getLauncherVersion(): Promise<string>;
  windowMinimize(): Promise<void>;
  windowToggleMaximize(): Promise<void>;
  windowClose(): Promise<void>;
};
