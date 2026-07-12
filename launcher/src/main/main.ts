/// <reference types="node" />
import { app, BrowserWindow, dialog, ipcMain, shell } from 'electron';
import { execFile, execSync, spawn } from 'node:child_process';
import fs from 'node:fs';
import net from 'node:net';
import path from 'node:path';
import { promisify } from 'node:util';
import dns from 'node:dns';
import type {
  DiagnosticCheck,
  LaunchResult,
  LauncherContent,
  LauncherSettings,
  LauncherStatus,
  RepairResult,
  ServiceStatus,
} from '../shared/contracts';
import {
  DEFAULT_SETTINGS,
  isJoySwordRoot,
  normalizeSettings,
  rootCandidates,
  safeContent,
  getOfflineConfig,
  parseEnv,
  parsePort,
} from './core';
import {
  DEFAULT_SERVER_HOST,
  DEFAULT_SERVER_PORTS,
  ensureClientPatched,
  inspectClientEndpoints,
} from './clientPatch';

const execFileAsync = promisify(execFile);
let mainWindow: BrowserWindow | null = null;
let activeRoot: string | null = null;

const FALLBACK_CONTENT: LauncherContent = {
  schema: 'joysword.launcher-content/v1',
  eyebrow: 'THE SWORD AWAKENS',
  title: 'Enter the fracture.',
  summary: 'Launch the restored JoySword client and return to the archive.',
  featured: { tag: 'SYSTEM', title: 'Offline archive', description: 'Local launcher content is active.' },
  notices: [{ id: 'fallback', category: 'SYSTEM', title: 'Launcher ready', date: 'LOCAL' }],
};

function settingsPath(): string {
  return path.join(app.getPath('userData'), 'launcher-settings.json');
}

function readSettings(): LauncherSettings {
  try {
    return normalizeSettings(JSON.parse(fs.readFileSync(settingsPath(), 'utf8')));
  } catch {
    return { ...DEFAULT_SETTINGS };
  }
}

function writeSettings(input: unknown, allowRootChange = false): LauncherSettings {
  const current = readSettings();
  const normalized = normalizeSettings(input);
  const requestedRoot = normalized.gameRoot;
  const rootAllowed = requestedRoot && isJoySwordRoot(requestedRoot) && (allowRootChange || requestedRoot === activeRoot);
  const settings = {
    ...normalized,
    gameRoot: rootAllowed ? requestedRoot : current.gameRoot,
  };
  fs.mkdirSync(path.dirname(settingsPath()), { recursive: true });
  fs.writeFileSync(settingsPath(), `${JSON.stringify(settings, null, 2)}\n`, 'utf8');
  if (settings.gameRoot && isJoySwordRoot(settings.gameRoot)) activeRoot = settings.gameRoot;
  return settings;
}

function promoteRootIfClient(root: string): string {
  const parent = path.dirname(root);
  if (
    path.basename(root).toLowerCase() === 'client' &&
    fs.existsSync(path.join(parent, 'Elsword')) &&
    isJoySwordRoot(parent)
  ) {
    return parent;
  }
  return root;
}

function resolveRoot(): string | null {
  // ==========================================
  // LEVEL 1: Configuration & Env Fast Path (0ms)
  // ==========================================
  const saved = readSettings().gameRoot;
  const savedValid = saved && isJoySwordRoot(saved);
  if (savedValid) {
    activeRoot = saved;
    return saved;
  }

  const envRoot = process.env.JOYSWORD_ROOT;
  if (envRoot && isJoySwordRoot(envRoot)) {
    activeRoot = envRoot;
    // Auto-save to settings if saved is missing/invalid
    if (!savedValid) {
      try { writeSettings({ ...readSettings(), gameRoot: activeRoot }, true); } catch {}
    }
    return envRoot;
  }

  // ==========================================
  // LEVEL 2: Workspace, Active Process, & Registry (10-300ms)
  // ==========================================
  const localValidRoots = new Set<string>();
  const visited = new Set<string>();

  // Check directories and their subdirectories up to maxDepth
  function scanDir(dir: string, depth: number, maxDepth: number) {
    let resolved: string;
    try {
      resolved = path.resolve(dir);
    } catch {
      return;
    }
    const normalized = path.normalize(resolved);
    if (visited.has(normalized)) return;
    visited.add(normalized);

    if (isJoySwordRoot(normalized)) {
      localValidRoots.add(normalized);
    }

    if (depth >= maxDepth) return;

    try {
      if (!fs.existsSync(normalized)) return;
      const stat = fs.statSync(normalized);
      if (!stat.isDirectory()) return;

      const entries = fs.readdirSync(normalized, { withFileTypes: true });
      for (const entry of entries) {
        if (!entry.isDirectory()) continue;
        const subDir = path.join(normalized, entry.name);
        
        // Filter subdirectories at depth > 0 to maintain fast execution
        if (depth > 0) {
          const nameLower = entry.name.toLowerCase();
          const isInteresting =
            nameLower.includes('joysword') ||
            nameLower.includes('elsword') ||
            nameLower.includes('client') ||
            nameLower.includes('game') ||
            nameLower.includes('offline') ||
            nameLower.includes('sword') ||
            nameLower.includes('play');
          if (!isInteresting) continue;
        }

        scanDir(subDir, depth + 1, maxDepth);
      }
    } catch {
      // ignore permissions/read errors
    }
  }

  // 1. Check if client process (x2.exe) is active on Windows
  if (process.platform === 'win32') {
    try {
      const psCmd = 'Get-Process x2 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path';
      const output = execSync(`"${powershellPath()}" -NoProfile -NonInteractive -Command "${psCmd}"`, { windowsHide: true, timeout: 1000 }).toString();
      const exePath = output.trim();
      if (exePath && fs.existsSync(exePath)) {
        const root = path.dirname(path.dirname(exePath));
        if (isJoySwordRoot(root)) {
          localValidRoots.add(root);
        }
      }
    } catch {
      // ignore process inspection failures
    }

    // 2. Query Windows Registry for JoySword/Elsword paths
    try {
      const psCmd = `
        $uninstallKeys = @(
          'HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*',
          'HKLM:\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*',
          'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*'
        );
        foreach ($key in $uninstallKeys) {
          Get-ItemProperty $key -ErrorAction SilentlyContinue | Where-Object { $_.DisplayName -like '*JoySword*' -or $_.Publisher -like '*JoySword*' -or $_.DisplayName -like '*Elsword*' } | ForEach-Object {
            if ($_.InstallLocation) { $_.InstallLocation }
            elseif ($_.UninstallString) {
              $path = $_.UninstallString.Trim();
              if ($path.StartsWith([char]34)) { $path = $path.Substring(1).Split([char]34)[0] }
              else { $path = $path.Split(' ')[0] }
              Split-Path $path -ErrorAction SilentlyContinue
            }
          }
        }
      `.replace(/\n/g, ' ').trim();
      const output = execSync(`"${powershellPath()}" -NoProfile -NonInteractive -Command "${psCmd}"`, { windowsHide: true, timeout: 2000 }).toString();
      const regPaths = output.split(/\r?\n/).map(p => p.trim()).filter(Boolean);
      for (const p of regPaths) {
        if (fs.existsSync(p)) {
          scanDir(p, 0, 1);
        }
      }
    } catch {
      // ignore registry inspection failures
    }
  }

  // 3. Scan workspace candidates and parents
  const localPaths = [
    process.cwd(),
    app.getAppPath(),
    path.dirname(app.getPath('exe')),
    __dirname,
  ];

  // Add Downloads and Desktop paths to quickly scan common extraction targets in Level 2 (depth 1)
  try { localPaths.push(app.getPath('downloads')); } catch {}
  try { localPaths.push(app.getPath('desktop')); } catch {}

  const localCandidates = rootCandidates(localPaths);
  for (const candidate of localCandidates) {
    scanDir(candidate, 0, 1);
  }

  if (localValidRoots.size > 0) {
    const localRootsArray = [...localValidRoots];
    const bestRoot = localRootsArray.find(r => fs.existsSync(path.join(r, 'Elsword'))) || localRootsArray[0];
    activeRoot = promoteRootIfClient(bestRoot);
    
    // Auto-save/Auto-heal the detected path back to settings if it wasn't configured or was stale
    if (activeRoot && !savedValid) {
      try {
        writeSettings({ ...readSettings(), gameRoot: activeRoot }, true);
      } catch {
        // ignore write errors
      }
    }
    return activeRoot;
  }

  // ==========================================
  // LEVEL 3: Deep Scan Fallback (100-200ms)
  // ==========================================
  // Only executed if Level 1 and Level 2 failed.
  const baseCandidates: string[] = [];

  // Add common user directories
  const commonDirs = ['downloads', 'desktop', 'documents', 'home'] as const;
  for (const name of commonDirs) {
    try {
      baseCandidates.push(app.getPath(name));
    } catch {
      // ignore
    }
  }

  // Add common drive paths on Windows
  if (process.platform === 'win32') {
    const drives = ['C', 'D', 'E', 'F', 'G', 'H'];
    for (const drive of drives) {
      try {
        const driveRoot = `${drive}:\\`;
        if (fs.existsSync(driveRoot)) {
          baseCandidates.push(driveRoot);
          const gamesPath = path.join(driveRoot, 'Games');
          if (fs.existsSync(gamesPath)) {
            baseCandidates.push(gamesPath);
          }
        }
      } catch {
        // ignore
      }
    }
  }

  const deepCandidates = rootCandidates(baseCandidates);
  
  // Scan deep candidates up to depth 2
  for (const candidate of deepCandidates) {
    scanDir(candidate, 0, 2);
  }

  if (localValidRoots.size > 0) {
    const deepRootsArray = [...localValidRoots];
    const bestRoot = deepRootsArray.find(r => fs.existsSync(path.join(r, 'Elsword'))) || deepRootsArray[0];
    activeRoot = promoteRootIfClient(bestRoot);

    // Auto-save/Auto-heal the detected path back to settings if it wasn't configured or was stale
    if (activeRoot && !savedValid) {
      try {
        writeSettings({ ...readSettings(), gameRoot: activeRoot }, true);
      } catch {
        // ignore write errors
      }
    }
    return activeRoot;
  }

  activeRoot = null;
  return null;
}


interface Manifest {
  environment: 'development' | 'staging' | 'production';
  loginHost: string;
  loginPort: number;
  patchHost: string;
  apiBaseUrl: string;
  maintenance: boolean;
  message: string;
}

let cachedManifest: Manifest | null = null;
let lastManifestFetch = 0;

function directGameHost(host: string): string {
  const normalized = host.trim();
  if (net.isIP(normalized)) return normalized;
  if (normalized.toLowerCase() === 'localhost') return '127.0.0.1';
  return DEFAULT_SERVER_HOST;
}

async function fetchManifest(root: string | null): Promise<Manifest> {
  const now = Date.now();
  if (cachedManifest && (now - lastManifestFetch < 5000)) {
    return cachedManifest;
  }

  let env: Record<string, string> = {};
  if (root) {
    const envPath = path.join(root, 'Elsword', 'offline', 'offline.env');
    try {
      if (fs.existsSync(envPath)) {
        env = parseEnv(fs.readFileSync(envPath, 'utf8'));
      }
    } catch {
      // ignore
    }
  }

  const environment = env.JOYSWORD_ENV || 'production';

  if (environment === 'development') {
    cachedManifest = {
      environment: 'development',
      loginHost: directGameHost(env.DEVELOPMENT_LOGIN_HOST || 'localhost'),
      loginPort: parsePort(env.DEVELOPMENT_LOGIN_PORT, 9400),
      patchHost: env.DEVELOPMENT_PATCH_HOST || 'localhost',
      apiBaseUrl: env.DEVELOPMENT_API_URL || 'http://localhost:8080',
      maintenance: env.DEVELOPMENT_MAINTENANCE === 'true',
      message: env.DEVELOPMENT_MESSAGE || 'Development Server',
    };
    lastManifestFetch = now;
    return cachedManifest;
  }

  let manifestUrl = 'https://manifest.onjoysword.top/server.json';
  if (environment === 'staging') {
    manifestUrl = 'https://staging-manifest.onjoysword.top/server.json';
  }
  if (env.JOYSWORD_MANIFEST_URL) {
    manifestUrl = env.JOYSWORD_MANIFEST_URL;
  }

  try {
    const res = await fetch(manifestUrl, { signal: AbortSignal.timeout(3000) });
    if (!res.ok) {
      throw new Error(`HTTP ${res.status}`);
    }
    const data = await res.json() as Partial<Manifest>;
    if (!data.loginHost || !data.loginPort) {
      throw new Error('Invalid format');
    }
    cachedManifest = {
      environment: data.environment || (environment as any),
      loginHost: directGameHost(data.loginHost),
      loginPort: Number(data.loginPort),
      patchHost: data.patchHost || '',
      apiBaseUrl: data.apiBaseUrl || '',
      maintenance: Boolean(data.maintenance),
      message: data.message || 'Manifest loaded',
    };
    lastManifestFetch = now;
    return cachedManifest;
  } catch (error) {
    if (cachedManifest) {
      return cachedManifest;
    }
    if (env.CHANNEL_SERVER_IP) {
      const fallbackPort = Number(env.CHANNEL_SERVER_PORT) || 9400;
      cachedManifest = {
        environment: environment as any,
        loginHost: directGameHost(env.CHANNEL_SERVER_IP),
        loginPort: fallbackPort,
        patchHost: '',
        apiBaseUrl: '',
        maintenance: false,
        message: 'Offline Env Fallback (Manifest server offline)',
      };
      lastManifestFetch = now;
      return cachedManifest;
    }
    const msg = error instanceof Error ? error.message : String(error);
    throw new Error(`Manifest server unreachable: ${msg}`);
  }
}

async function resolveHost(host: string): Promise<string> {
  if (net.isIP(host)) return host;
  try {
    const addresses = await dns.promises.resolve4(host);
    if (addresses.length > 0) return addresses[0];
  } catch (error) {
    if (host.toLowerCase().includes('onjoysword.top')) {
      return DEFAULT_SERVER_HOST;
    }
  }
  return host;
}

async function probePort(host: string, port: number): Promise<boolean> {
  const resolvedIp = await resolveHost(host);
  return new Promise((resolve) => {
    const socket = net.createConnection({ host: resolvedIp, port });
    const finish = (online: boolean) => {
      socket.removeAllListeners();
      socket.destroy();
      resolve(online);
    };
    socket.setTimeout(450);
    socket.once('connect', () => finish(true));
    socket.once('timeout', () => finish(false));
    socket.once('error', () => finish(false));
  });
}

async function clientRunning(): Promise<boolean> {
  if (process.platform !== 'win32') return false;
  try {
    const { stdout } = await execFileAsync('tasklist.exe', ['/FI', 'IMAGENAME eq x2.exe', '/FO', 'CSV', '/NH'], { windowsHide: true });
    return stdout.toLowerCase().includes('x2.exe');
  } catch {
    return false;
  }
}

async function getStatus(): Promise<LauncherStatus> {
  const root = resolveRoot();
  let manifest: Manifest;
  try {
    manifest = await fetchManifest(root);
  } catch (err) {
    const errorMsg = err instanceof Error ? err.message : String(err);
    throw new Error(errorMsg);
  }

  if (manifest.maintenance) {
    throw new Error(`MAINTENANCE: ${manifest.message}`);
  }

  const channelPort = manifest.loginPort;
  const gamePort = manifest.loginPort === 9400 ? 9300 : (manifest.loginPort - 100);

  const services: ServiceStatus[] = [
    {
      id: 'login',
      name: 'Login Gateway',
      host: manifest.loginHost,
      port: manifest.loginPort,
      online: await probePort(manifest.loginHost, manifest.loginPort),
    },
    {
      id: 'game',
      name: 'Game Stream',
      host: manifest.loginHost,
      port: gamePort,
      online: await probePort(manifest.loginHost, gamePort),
    },
    {
      id: 'channel',
      name: 'Channel Portal',
      host: manifest.loginHost,
      port: channelPort,
      online: await probePort(manifest.loginHost, channelPort),
    },
  ];

  const running = await clientRunning();
  const installed = Boolean(root && fs.existsSync(path.join(root, 'data', 'x2.exe')));
  const allRequiredOnline = services.every((service) => service.online);
  return {
    phase: running ? 'running' : installed ? 'ready' : 'error',
    gameRoot: root,
    rootValid: installed,
    clientInstalled: installed,
    clientRunning: running,
    services,
    allRequiredOnline,
    checkedAt: new Date().toISOString(),
  };
}

function helperPath(root: string): string {
  return path.join(root, 'scripts', 'launch-client.ps1');
}

function powershellPath(): string {
  return process.env.SystemRoot
    ? path.join(process.env.SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')
    : 'powershell.exe';
}

async function runHelper(root: string, settings: LauncherSettings, repairOnly: boolean): Promise<LaunchResult | RepairResult> {
  try {
    if (repairOnly || !(await clientRunning())) {
      const manifest = await fetchManifest(root);
      if (manifest.maintenance) {
        return { ok: false, message: `Maintenance: ${manifest.message}` };
      }
      const channelPort = manifest.loginPort;
      const gamePort = manifest.loginPort === 9400 ? 9300 : (manifest.loginPort - 100);
      
      let targetHost = manifest.loginHost;
      targetHost = directGameHost(targetHost);
      ensureClientPatched(root, targetHost, channelPort, gamePort);
    }
  } catch (error) {
    return { ok: false, message: error instanceof Error ? error.message : 'Client patch failed.' };
  }
  return new Promise((resolve) => {
    const helper = helperPath(root);
    if (!fs.existsSync(helper)) {
      resolve({ ok: false, message: `Missing client helper: ${helper}` });
      return;
    }
    const args = [
      '-NoProfile', '-NonInteractive', '-ExecutionPolicy', 'Bypass', '-File', helper,
      '-RepositoryRoot', root,
      '-Resolution', settings.resolution,
      '-Fullscreen', settings.fullscreen ? 'true' : 'false',
      '-Json',
    ];
    if (repairOnly) args.push('-RepairOnly');
    const child = spawn(powershellPath(), args, { cwd: root, windowsHide: true });
    let stdout = '';
    let stderr = '';
    child.stdout.on('data', (chunk) => { stdout += String(chunk); });
    child.stderr.on('data', (chunk) => { stderr += String(chunk); });
    child.on('error', (error) => resolve({ ok: false, message: error.message }));
    child.on('close', (code) => {
      const lines = stdout.trim().split(/\r?\n/).filter(Boolean);
      try {
        const parsed = JSON.parse(lines.at(-1) ?? '{}') as LaunchResult | RepairResult;
        resolve(parsed);
      } catch {
        resolve({ ok: false, message: stderr.trim() || stdout.trim() || `Client helper exited with code ${code}` });
      }
    });
  });
}

async function verifyInstallation(): Promise<DiagnosticCheck[]> {
  const root = resolveRoot();
  if (!root) return [{ id: 'root', label: 'JoySword location', detail: 'Select the folder containing data\\x2.exe.', state: 'fail', repairable: false }];
  const paths = {
    client: path.join(root, 'data', 'x2.exe'),
    options: path.join(root, 'data', 'GameOptions.lua'),
    helper: helperPath(root),
  };
  const checks: DiagnosticCheck[] = [
    { id: 'root', label: 'JoySword location', detail: root, state: 'pass', repairable: false },
    { id: 'client', label: 'Game executable', detail: fs.existsSync(paths.client) ? 'data\\x2.exe found' : 'data\\x2.exe is missing', state: fs.existsSync(paths.client) ? 'pass' : 'fail', repairable: false },
    { id: 'helper', label: 'Launch integration', detail: fs.existsSync(paths.helper) ? 'Secure launch helper found' : 'scripts\\launch-client.ps1 is missing', state: fs.existsSync(paths.helper) ? 'pass' : 'fail', repairable: false },
  ];
  try {
    const manifest = await fetchManifest(root);
    const channelPort = manifest.loginPort;
    let resolvedIp: string | undefined;
    if (net.isIP(manifest.loginHost)) {
      resolvedIp = manifest.loginHost;
    }
    const endpoint = inspectClientEndpoints(root, manifest.loginHost, channelPort, resolvedIp);
    checks.push({
      id: 'endpoint',
      label: 'Azure client endpoint',
      detail: endpoint.detail,
      state: endpoint.ok ? 'pass' : 'warn',
      repairable: true,
    });
  } catch (error) {
    checks.push({
      id: 'endpoint',
      label: 'Azure client endpoint',
      detail: error instanceof Error ? error.message : 'Could not inspect data036.kom',
      state: 'fail',
      repairable: true,
    });
  }
  try {
    const text = fs.readFileSync(paths.options, 'utf8');
    const valid = /RESOLUTION_X\s*=\s*\d+/i.test(text) && /RESOLUTION_Y\s*=\s*\d+/i.test(text) && /FULLSCREEN\s*=\s*(TRUE|FALSE)/i.test(text);
    checks.push({ id: 'options', label: 'Display configuration', detail: valid ? 'GameOptions.lua is readable' : 'Display fields are missing or malformed', state: valid ? 'pass' : 'warn', repairable: valid });
  } catch {
    checks.push({ id: 'options', label: 'Display configuration', detail: 'GameOptions.lua is missing', state: 'fail', repairable: false });
  }
  const status = await getStatus();
  const onlineCount = status.services.filter((service) => service.online).length;
  checks.push({ id: 'services', label: 'Azure services', detail: `${onlineCount} of ${status.services.length} public endpoints online`, state: status.allRequiredOnline ? 'pass' : 'warn', repairable: false });
  return checks;
}

function contentPath(): string {
  return app.isPackaged
    ? path.join(process.resourcesPath, 'content', 'launcher-content.json')
    : path.join(app.getAppPath(), 'resources', 'content', 'launcher-content.json');
}

function getContent(): LauncherContent {
  try {
    return safeContent(JSON.parse(fs.readFileSync(contentPath(), 'utf8'))) ?? FALLBACK_CONTENT;
  } catch {
    return FALLBACK_CONTENT;
  }
}

function registerHandlers(): void {
  ipcMain.handle('launcher:get-status', getStatus);
  ipcMain.handle('launcher:get-settings', () => {
    const settings = readSettings();
    return { ...settings, gameRoot: settings.gameRoot ?? activeRoot };
  });
  ipcMain.handle('launcher:save-settings', (_event, value) => writeSettings(value));
  ipcMain.handle('launcher:get-content', () => getContent());
  ipcMain.handle('launcher:get-version', () => app.getVersion());
  ipcMain.handle('launcher:verify', verifyInstallation);
  ipcMain.handle('launcher:choose-root', async () => {
    const result = await dialog.showOpenDialog(mainWindow!, { title: 'Select the JoySword folder', properties: ['openDirectory'] });
    if (result.canceled || !result.filePaths[0]) return null;
    const selected = path.normalize(result.filePaths[0]);
    if (!isJoySwordRoot(selected)) {
      await dialog.showMessageBox(mainWindow!, { type: 'warning', title: 'JoySword not found', message: 'That folder does not contain data\\x2.exe.' });
      return null;
    }
    let target = selected;
    const parent = path.dirname(selected);
    if (path.basename(selected).toLowerCase() === 'client' && fs.existsSync(path.join(parent, 'Elsword')) && fs.existsSync(path.join(parent, 'data', 'x2.exe'))) {
      target = parent;
    }
    writeSettings({ ...readSettings(), gameRoot: target }, true);
    return target;
  });
  ipcMain.handle('launcher:launch', async (_event, value) => {
    const settings = writeSettings(value);
    const root = resolveRoot();
    if (!root) return { ok: false, focused: false, message: 'Select a valid JoySword folder first.' } satisfies LaunchResult;

    // Minimize launcher window to prevent it from blocking game launch/UAC/security dialogs
    const wasMinimized = mainWindow?.isMinimized();
    if (mainWindow && !wasMinimized) {
      mainWindow.minimize();
    }

    const result = await runHelper(root, settings, false) as LaunchResult;

    if (result.ok) {
      if (settings.closeOnLaunch) {
        setTimeout(() => mainWindow?.close(), 700);
      }
    } else {
      // If launch failed, restore/focus the launcher window so the user sees the error
      if (mainWindow && !wasMinimized) {
        mainWindow.restore();
        mainWindow.focus();
      }
    }
    return result;
  });
  ipcMain.handle('launcher:repair', async (_event, value) => {
    const settings = writeSettings(value);
    const root = resolveRoot();
    return root ? runHelper(root, settings, true) : { ok: false, message: 'Select a valid JoySword folder first.' };
  });
  ipcMain.handle('launcher:open-logs', async () => {
    const root = resolveRoot();
    if (!root) return 'JoySword folder is not configured.';
    return shell.openPath(path.join(root, 'Elsword'));
  });
  ipcMain.handle('launcher:open-data', async () => {
    const root = resolveRoot();
    if (!root) return 'JoySword folder is not configured.';
    return shell.openPath(path.join(root, 'data'));
  });
  ipcMain.handle('window:minimize', () => mainWindow?.minimize());
  ipcMain.handle('window:toggle-maximize', () => mainWindow?.isMaximized() ? mainWindow.unmaximize() : mainWindow?.maximize());
  ipcMain.handle('window:close', () => mainWindow?.close());
}

function createWindow(): void {
  mainWindow = new BrowserWindow({
    width: 1280,
    height: 720,
    minWidth: 1040,
    minHeight: 640,
    frame: false,
    show: false,
    backgroundColor: '#050806',
    autoHideMenuBar: true,
    webPreferences: {
      preload: path.join(__dirname, '../preload/preload.js'),
      contextIsolation: true,
      nodeIntegration: false,
      sandbox: true,
    },
  });
  mainWindow.once('ready-to-show', () => mainWindow?.show());
  mainWindow.webContents.setWindowOpenHandler(() => ({ action: 'deny' }));
  const devUrl = process.env.VITE_DEV_SERVER_URL;
  if (devUrl) void mainWindow.loadURL(devUrl);
  else void mainWindow.loadFile(path.join(__dirname, '../../dist/index.html'));
}

app.whenReady().then(() => {
  app.setAppUserModelId('dev.joysword.launcher');
  registerHandlers();
  resolveRoot();
  createWindow();
  app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
});

app.on('window-all-closed', () => app.quit());
