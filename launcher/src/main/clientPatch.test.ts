import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { deflateSync } from 'node:zlib';
import { afterEach, describe, expect, it } from 'vitest';
import {
  DEFAULT_SERVER_HOST,
  crc32,
  ensureClientPatched,
  inspectClientEndpoints,
  patchLuaBytecodeIpConstants,
  xorPayload,
} from './clientPatch';

const temporaryRoots: string[] = [];

afterEach(() => {
  for (const root of temporaryRoots.splice(0)) fs.rmSync(root, { recursive: true, force: true });
});

function luaIp(value: string): Buffer {
  const text = Buffer.from(value, 'ascii');
  const length = Buffer.alloc(4);
  length.writeUInt32LE(text.length + 1);
  return Buffer.concat([length, text, Buffer.from([0])]);
}

function fakeBytecode(...ips: string[]): Buffer {
  return Buffer.concat([
    Buffer.from([0x1b, 0x4c, 0x75, 0x61]),
    ...ips.flatMap((ip, index) => [luaIp(ip), Buffer.from([index + 1, 0, 0])]),
  ]);
}

function fakeKom(configs: Record<string, string[]>): Buffer {
  const header = Buffer.alloc(16, 0x4a);
  const entries = Object.entries(configs).map(([name, ips], index) => {
    const encrypted = xorPayload(fakeBytecode(...ips));
    const compressed = deflateSync(encrypted, { level: 9 });
    return {
      name,
      compressed,
      size: encrypted.length,
      checksum: crc32(compressed).toString(16).padStart(8, '0'),
      fileTime: String(index + 1),
    };
  });
  const xml = Buffer.from(
    '<?xml version="1.0" ?><Files>' +
    entries.map((entry) =>
      `<File Algorithm="0" CheckSum="${entry.checksum}" CompressedSize="${entry.compressed.length}" ` +
      `FileTime="${entry.fileTime}" Name="${entry.name}" Size="${entry.size}"/>`,
    ).join('') +
    '</Files>',
    'utf8',
  );
  header.writeUInt32LE(xml.length, header.length - 4);
  return Buffer.concat([header, xml, ...entries.map((entry) => entry.compressed)]);
}

function makeClientRoot(): string {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), 'joysword-launcher-'));
  temporaryRoots.push(root);
  fs.mkdirSync(path.join(root, 'data'), { recursive: true });
  fs.mkdirSync(path.join(root, 'Elsword', 'ClientScript', 'Major'), { recursive: true });
  fs.writeFileSync(
    path.join(root, 'data', 'data036.kom'),
    fakeKom({
      'Config.lua': ['192.168.1.1', '192.168.1.1'],
      'Config_US_Service.lua': ['159.203.165.171'],
    }),
  );
  fs.writeFileSync(
    path.join(root, 'Elsword', 'ClientScript', 'Major', 'Config.lua'),
    'g_pMain:AddChannelServerIP_LUA( "192.168.1.1", 9400 )\n' +
    'g_pMain:AddGameServerIPForCreateID_LUA( "192.168.1.1" )\n',
    'utf8',
  );
  return root;
}

describe('Offline client patching', () => {
  it('patches Lua 5.1 string constants with a different-length host', () => {
    const result = patchLuaBytecodeIpConstants(fakeBytecode('192.168.1.1', '159.203.165.171'));
    expect(result.replacements).toEqual(['192.168.1.1', '159.203.165.171']);
    expect(result.bytecode.includes(Buffer.from(DEFAULT_SERVER_HOST, 'ascii'))).toBe(true);
  });

  it('calculates the standard CRC-32 value', () => {
    expect(crc32(Buffer.from('123456789'))).toBe(0xcbf43926);
  });

  it('repairs loose and packed configs and is idempotent', () => {
    const root = makeClientRoot();
    const first = ensureClientPatched(root);
    expect(first).toMatchObject({
      looseFiles: 1,
      changedLooseFiles: 1,
      packedFiles: 2,
      changedPackedFiles: 2,
    });
    expect(first.backupPath && fs.existsSync(first.backupPath)).toBe(true);
    expect(inspectClientEndpoints(root)).toEqual({
      ok: true,
      detail: `1 loose and 2 packed configs target ${DEFAULT_SERVER_HOST}:9400`,
      looseFiles: 1,
      packedFiles: 2,
    });

    const second = ensureClientPatched(root);
    expect(second.changedLooseFiles).toBe(0);
    expect(second.changedPackedFiles).toBe(0);
  });

  it('repairs loose and packed configs with a custom host and channelPort', () => {
    const root = makeClientRoot();
    const customHost = '10.42.1.10';
    const customPort = 9800;
    const first = ensureClientPatched(root, customHost, customPort);
    expect(first).toMatchObject({
      looseFiles: 1,
      changedLooseFiles: 1,
      packedFiles: 2,
      changedPackedFiles: 2,
    });
    expect(inspectClientEndpoints(root, customHost, customPort)).toEqual({
      ok: true,
      detail: `1 loose and 2 packed configs target ${customHost}:${customPort}`,
      looseFiles: 1,
      packedFiles: 2,
    });
  });
});
