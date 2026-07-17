import path from 'node:path';
import fs from 'node:fs';
import type { LauncherContent, LauncherSettings } from '../shared/contracts';

export const DEFAULT_SETTINGS: LauncherSettings = {
  resolution: '1280x720',
  fullscreen: false,
  closeOnLaunch: false,
  gameRoot: null,
  customServerEnabled: false,
  customServerIp: '',
};

export const RESOLUTIONS = new Set<LauncherSettings['resolution']>([
  '1024x768',
  '1280x720',
  '1600x900',
  '1920x1080',
  '2560x1440',
]);

export const DEFAULT_PORTS = {
  database: 1433,
  center: 9100,
  login: 9200,
  game: 9300,
  channel: 9400,
  global: 9500,
} as const;

export function parseEnv(text: string): Record<string, string> {
  const result: Record<string, string> = {};
  for (const raw of text.split(/\r?\n/)) {
    const line = raw.trim();
    if (!line || line.startsWith('#') || !line.includes('=')) continue;
    const [key, ...rest] = line.split('=');
    result[key.trim()] = rest.join('=').trim();
  }
  return result;
}

export function parsePort(value: string | undefined, fallback: number): number {
  const parsed = Number(value);
  return Number.isInteger(parsed) && parsed > 0 && parsed <= 65535 ? parsed : fallback;
}

export function normalizeSettings(value: unknown): LauncherSettings {
  if (!value || typeof value !== 'object') return { ...DEFAULT_SETTINGS };
  const input = value as Partial<LauncherSettings>;
  return {
    resolution: RESOLUTIONS.has(input.resolution as LauncherSettings['resolution'])
      ? (input.resolution as LauncherSettings['resolution'])
      : DEFAULT_SETTINGS.resolution,
    fullscreen: input.fullscreen === true,
    closeOnLaunch: input.closeOnLaunch === true,
    gameRoot: typeof input.gameRoot === 'string' && path.isAbsolute(input.gameRoot)
      ? path.normalize(input.gameRoot)
      : null,
    customServerEnabled: input.customServerEnabled === true,
    customServerIp: typeof input.customServerIp === 'string' ? input.customServerIp.trim() : '',
  };
}

export function isJoySwordRoot(root: string): boolean {
  return fs.existsSync(path.join(root, 'data', 'x2.exe'));
}

export function rootCandidates(locations: string[]): string[] {
  const found = new Set<string>();
  for (const location of locations.filter(Boolean)) {
    let current = path.resolve(location);
    for (let depth = 0; depth < 6; depth += 1) {
      found.add(current);
      const parent = path.dirname(current);
      if (parent === current) break;
      current = parent;
    }
  }
  return [...found];
}

export function safeContent(value: unknown): LauncherContent | null {
  if (!value || typeof value !== 'object') return null;
  const content = value as Partial<LauncherContent>;
  if (
    content.schema !== 'joysword.launcher-content/v1' ||
    typeof content.eyebrow !== 'string' ||
    typeof content.title !== 'string' ||
    typeof content.summary !== 'string' ||
    !content.featured ||
    typeof content.featured.title !== 'string' ||
    !Array.isArray(content.notices)
  ) return null;
  const notices = content.notices.filter((notice) =>
    notice && typeof notice.id === 'string' && typeof notice.category === 'string' &&
    typeof notice.title === 'string' && typeof notice.date === 'string',
  ).slice(0, 6);
  return { ...content, notices } as LauncherContent;
}

export function gameOptionEdits(text: string, resolution: LauncherSettings['resolution'], fullscreen: boolean): string {
  const [width, height] = resolution.split('x');
  return text
    .replace(/RESOLUTION_X\s*=\s*\d+/i, `RESOLUTION_X\t\t= ${width}`)
    .replace(/RESOLUTION_Y\s*=\s*\d+/i, `RESOLUTION_Y\t\t= ${height}`)
    .replace(/FULLSCREEN\s*=\s*(TRUE|FALSE)/i, `FULLSCREEN\t\t\t= ${fullscreen ? 'TRUE' : 'FALSE'}`);
}

export interface OfflineConfig {
  host: string;
  loginPort: number;
  gamePort: number;
  channelPort: number;
}

export function getOfflineConfig(root: string): OfflineConfig {
  const envPath = path.join(root, 'Elsword', 'offline', 'offline.env');
  let host = '136.36.127.72';
  let loginPort = 9200;
  let gamePort = 9300;
  let channelPort = 9400;

  try {
    if (fs.existsSync(envPath)) {
      const content = fs.readFileSync(envPath, 'utf8');
      const env = parseEnv(content);
      if (env.CHANNEL_SERVER_IP) {
        host = env.CHANNEL_SERVER_IP;
      }
      if (env.LOGIN_SERVER_PORT) {
        const p = Number(env.LOGIN_SERVER_PORT);
        if (Number.isInteger(p) && p > 0 && p <= 65535) loginPort = p;
      }
      if (env.GAME_SERVER_PORT) {
        const p = Number(env.GAME_SERVER_PORT);
        if (Number.isInteger(p) && p > 0 && p <= 65535) gamePort = p;
      }
      if (env.CHANNEL_SERVER_PORT) {
        const p = Number(env.CHANNEL_SERVER_PORT);
        if (Number.isInteger(p) && p > 0 && p <= 65535) channelPort = p;
      }
    }
  } catch (err) {
    // Ignore, use defaults
  }

  return { host, loginPort, gamePort, channelPort };
}
