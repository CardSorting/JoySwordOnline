import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { describe, expect, it } from 'vitest';
import {
  DEFAULT_SETTINGS,
  gameOptionEdits,
  normalizeSettings,
  parseEnv,
  parsePort,
  rootCandidates,
  safeContent,
  getOfflineConfig,
} from './core';

describe('launcher core', () => {
  it('parses env values without losing equals signs', () => {
    expect(parseEnv('# comment\nDB_PORT=1433\nTOKEN=a=b\n')).toEqual({ DB_PORT: '1433', TOKEN: 'a=b' });
  });

  it('rejects invalid ports', () => {
    expect(parsePort('9400', 1)).toBe(9400);
    expect(parsePort('70000', 9400)).toBe(9400);
    expect(parsePort('nope', 9400)).toBe(9400);
  });

  it('normalizes untrusted settings', () => {
    expect(normalizeSettings({ resolution: '999x999', fullscreen: 'yes', gameRoot: 'relative' })).toEqual(DEFAULT_SETTINGS);
    const root = path.parse(os.tmpdir()).root;
    expect(normalizeSettings({ resolution: '1920x1080', fullscreen: true, closeOnLaunch: true, gameRoot: root })).toEqual({
      resolution: '1920x1080', fullscreen: true, closeOnLaunch: true, gameRoot: path.normalize(root),
      customServerEnabled: false, customServerIp: '',
    });
  });

  it('walks candidate locations toward their roots', () => {
    const location = path.join(os.tmpdir(), 'a', 'b', 'c');
    const candidates = rootCandidates([location]);
    expect(candidates[0]).toBe(path.resolve(location));
    expect(candidates).toContain(path.dirname(path.resolve(location)));
  });

  it('accepts only the versioned local content shape', () => {
    expect(safeContent({ schema: 'other' })).toBeNull();
    expect(safeContent({
      schema: 'joysword.launcher-content/v1',
      eyebrow: 'A', title: 'B', summary: 'C',
      featured: { tag: 'D', title: 'E', description: 'F' },
      notices: [{ id: '1', category: 'SYSTEM', title: 'Ready', date: 'LOCAL' }],
    })?.notices).toHaveLength(1);
  });

  it('edits only supported display fields', () => {
    const original = 'RESOLUTION_X = 800\nRESOLUTION_Y = 600\nFULLSCREEN = TRUE\nKEEP = 7';
    const edited = gameOptionEdits(original, '1600x900', false);
    expect(edited).toContain('RESOLUTION_X\t\t= 1600');
    expect(edited).toContain('RESOLUTION_Y\t\t= 900');
    expect(edited).toContain('FULLSCREEN\t\t\t= FALSE');
    expect(edited).toContain('KEEP = 7');
  });

  it('parses offline.env when it exists, and falls back to defaults', () => {
    const root = fs.mkdtempSync(path.join(os.tmpdir(), 'joysword-core-test-'));
    try {
      // Test fallback/default
      expect(getOfflineConfig(root)).toEqual({
        host: '136.36.127.72',
        loginPort: 9200,
        gamePort: 9300,
        channelPort: 9400,
      });

      // Test parsing offline.env
      fs.mkdirSync(path.join(root, 'Elsword', 'offline'), { recursive: true });
      fs.writeFileSync(
        path.join(root, 'Elsword', 'offline', 'offline.env'),
        'CHANNEL_SERVER_IP=192.168.1.100\n' +
        'LOGIN_SERVER_PORT=9201\n' +
        'GAME_SERVER_PORT=9301\n' +
        'CHANNEL_SERVER_PORT=9401\n',
        'utf8'
      );

      expect(getOfflineConfig(root)).toEqual({
        host: '192.168.1.100',
        loginPort: 9201,
        gamePort: 9301,
        channelPort: 9401,
      });
    } finally {
      fs.rmSync(root, { recursive: true, force: true });
    }
  });
});
