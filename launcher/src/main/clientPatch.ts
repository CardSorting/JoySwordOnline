/// <reference types="node" />
import fs from 'node:fs';
import path from 'node:path';
import { inflateSync, deflateSync } from 'node:zlib';

export const DEFAULT_SERVER_HOST = '52.238.194.187';
export const DEFAULT_SERVER_PORTS = {
  login: 9200,
  game: 9300,
  channel: 9400,
} as const;

const KOM_XOR_KEY = Buffer.from('02aaf8c6dcab4726efbb0098', 'hex');
type KomEntry = {
  attributes: Record<string, string>;
  compressed: Buffer;
};

export type ClientPatchResult = {
  looseFiles: number;
  packedFiles: number;
  changedLooseFiles: number;
  changedPackedFiles: number;
  backupPath: string | null;
};

export type ClientEndpointInspection = {
  ok: boolean;
  detail: string;
  looseFiles: number;
  packedFiles: number;
};

function isIpv4(value: string): boolean {
  const octets = value.split('.');
  return octets.length === 4 && octets.every((part) => {
    const number = Number(part);
    return /^\d{1,3}$/.test(part) && number >= 0 && number <= 255;
  });
}

function isValidHost(value: string): boolean {
  if (isIpv4(value)) return true;
  if (value.toLowerCase() === 'localhost') return true;
  return /^[a-zA-Z0-9\-]+(?:\.[a-zA-Z0-9\-]+)+$/i.test(value);
}

function isSupportedClientHost(value: string): boolean {
  return isIpv4(value) || value.toLowerCase() === 'localhost';
}

function luaStringIpMatches(bytecode: Buffer, targetHost?: string): Array<{ start: number; end: number; value: string }> {
  const text = bytecode.toString('latin1');
  const matches: Array<{ start: number; end: number; value: string }> = [];
  
  let patternSource = '(?:(?:\\d{1,3}\\.){3}\\d{1,3})|(?:(?:[a-zA-Z0-9\\-]+\\.)*onjoysword\\.top)|localhost';
  if (targetHost && isValidHost(targetHost)) {
    const escaped = targetHost.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&');
    patternSource += `|${escaped}`;
  }
  const pattern = new RegExp(patternSource, 'gi');

  for (const match of text.matchAll(pattern)) {
    const start = match.index!;
    const end = start + match[0].length;
    const previous = start > 0 ? text[start - 1] : '';
    const next = end < text.length ? text[end] : '';
    if (/[a-zA-Z0-9\.\-]/.test(previous) || /[a-zA-Z0-9\.\-]/.test(next) || !isValidHost(match[0])) continue;
    const lengthPosition = start - 4;
    if (lengthPosition < 0 || end >= bytecode.length) continue;
    if (bytecode.readUInt32LE(lengthPosition) !== match[0].length + 1 || bytecode[end] !== 0) continue;
    matches.push({ start, end, value: match[0] });
  }
  return matches;
}

export function xorPayload(payload: Buffer): Buffer {
  const output = Buffer.allocUnsafe(payload.length);
  for (let index = 0; index < payload.length; index += 1) {
    output[index] = payload[index] ^ KOM_XOR_KEY[index % KOM_XOR_KEY.length];
  }
  return output;
}

export function patchLuaBytecodeIpConstants(
  bytecode: Buffer,
  host = DEFAULT_SERVER_HOST,
): { bytecode: Buffer; endpoints: string[]; replacements: string[] } {
  if (!isSupportedClientHost(host)) {
    throw new Error(`Legacy client endpoints must be numeric IPv4 addresses; got ${host}.`);
  }
  let output: Buffer = Buffer.from(bytecode);
  const matches = luaStringIpMatches(bytecode, host);
  const replacements: string[] = [];
  for (const match of [...matches].reverse()) {
    if (match.value === host) continue;
    const lengthPosition = match.start - 4;
    const encodedHost = Buffer.from(host, 'ascii');
    const encodedLength = Buffer.alloc(4);
    encodedLength.writeUInt32LE(encodedHost.length + 1);
    output = Buffer.concat([
      output.subarray(0, lengthPosition),
      encodedLength,
      encodedHost,
      Buffer.from([0]),
      output.subarray(match.end + 1),
    ]);
    replacements.unshift(match.value);
  }
  return {
    bytecode: output,
    endpoints: matches.map(() => host),
    replacements,
  };
}

export function crc32(payload: Buffer): number {
  let crc = 0xffffffff;
  for (const byte of payload) {
    crc ^= byte;
    for (let bit = 0; bit < 8; bit += 1) {
      crc = (crc >>> 1) ^ (crc & 1 ? 0xedb88320 : 0);
    }
  }
  return (crc ^ 0xffffffff) >>> 0;
}

function parseAttributes(source: string): Record<string, string> {
  const attributes: Record<string, string> = {};
  for (const match of source.matchAll(/(\w+)="([^"]*)"/g)) attributes[match[1]] = match[2];
  return attributes;
}

function readKomArchive(blob: Buffer): { header: Buffer; entries: KomEntry[] } {
  const xmlStart = blob.indexOf(Buffer.from('<?xml'));
  const closing = Buffer.from('</Files>');
  const closingStart = blob.indexOf(closing, xmlStart);
  if (xmlStart < 4 || closingStart < 0) throw new Error('Could not locate the data036.kom XML table.');
  const xmlEnd = closingStart + closing.length;
  const xml = blob.subarray(xmlStart, xmlEnd).toString('utf8');
  const attributes = [...xml.matchAll(/<File\s+([^>]*?)\/>/g)].map((match) => parseAttributes(match[1]));
  if (attributes.length === 0) throw new Error('data036.kom contains no file entries.');

  let position = xmlEnd;
  const entries = attributes.map((item) => {
    const compressedSize = Number(item.CompressedSize);
    if (!Number.isInteger(compressedSize) || compressedSize < 0 || position + compressedSize > blob.length) {
      throw new Error(`Invalid compressed size for ${item.Name ?? 'unknown KOM entry'}.`);
    }
    const compressed = Buffer.from(blob.subarray(position, position + compressedSize));
    position += compressedSize;
    return { attributes: item, compressed };
  });
  if (position !== blob.length) throw new Error(`Unexpected trailing data in data036.kom (${blob.length - position} bytes).`);
  return { header: Buffer.from(blob.subarray(0, xmlStart)), entries };
}

function serializeKomArchive(headerInput: Buffer, entries: KomEntry[]): Buffer {
  const xmlParts = ['<?xml version="1.0" ?><Files>'];
  for (const entry of entries) {
    const item = entry.attributes;
    xmlParts.push(
      `<File Algorithm="${item.Algorithm}" CheckSum="${item.CheckSum}" ` +
      `CompressedSize="${item.CompressedSize}" FileTime="${item.FileTime}" ` +
      `Name="${item.Name}" Size="${item.Size}"/>`,
    );
  }
  xmlParts.push('</Files>');
  const xml = Buffer.from(xmlParts.join(''), 'utf8');
  const header = Buffer.from(headerInput);
  header.writeUInt32LE(xml.length, header.length - 4);
  return Buffer.concat([header, xml, ...entries.map((entry) => entry.compressed)]);
}

function patchLooseConfig(
  text: string,
  host: string,
  channelPort: number = DEFAULT_SERVER_PORTS.channel,
  gamePort: number = DEFAULT_SERVER_PORTS.game
): string {
  return text
    .replace(
      /g_pMain:AddChannelServerIP_LUA\(\s*"[^"]*"(?:\s*,\s*\d+)?\s*\)/g,
      `g_pMain:AddChannelServerIP_LUA( "${host}", ${channelPort} )`,
    )
    .replace(
      /g_pMain:SetChannelServerPort\(\s*\d+\s*\)/g,
      `g_pMain:SetChannelServerPort( ${channelPort} )`,
    )
    .replace(
      /g_pMain:AddGameServerIPForCreateID_LUA\(\s*"[^"]*"\s*\)/g,
      `g_pMain:AddGameServerIPForCreateID_LUA( "${host}" )`,
    )
    .replace(
      /g_pMain:SetGameServerPortForCreateID\(\s*\d+\s*\)/g,
      `g_pMain:SetGameServerPortForCreateID( ${gamePort} )`,
    );
}

function looseConfigPaths(root: string): string[] {
  const directory = path.join(root, 'Elsword', 'ClientScript', 'Major');
  if (!fs.existsSync(directory)) return [];
  return fs.readdirSync(directory)
    .filter((name: string) => /^Config.*\.lua$/i.test(name))
    .map((name: string) => path.join(directory, name));
}

function patchPackedArchive(archivePath: string, host: string): {
  packedFiles: number;
  changedPackedFiles: number;
  backupPath: string | null;
} {
  if (!fs.existsSync(archivePath)) throw new Error(`Missing packed client archive: ${archivePath}`);
  const original = fs.readFileSync(archivePath);
  const archive = readKomArchive(original);
  let packedFiles = 0;
  let changedPackedFiles = 0;

  for (const entry of archive.entries) {
    const name = entry.attributes.Name ?? '';
    if (!/^Config.*\.lua$/i.test(name)) continue;
    packedFiles += 1;
    const payload = inflateSync(entry.compressed);
    const patched = patchLuaBytecodeIpConstants(xorPayload(payload), host);
    if (patched.replacements.length === 0) continue;
    const encrypted = xorPayload(patched.bytecode);
    const compressed = deflateSync(encrypted, { level: 9 });
    entry.compressed = compressed;
    entry.attributes.Size = String(encrypted.length);
    entry.attributes.CompressedSize = String(compressed.length);
    entry.attributes.CheckSum = crc32(compressed).toString(16).padStart(8, '0');
    changedPackedFiles += 1;
  }

  let backupPath: string | null = null;
  if (changedPackedFiles > 0) {
    backupPath = `${archivePath}.azure-backup`;
    if (!fs.existsSync(backupPath)) fs.copyFileSync(archivePath, backupPath);
    try {
      fs.chmodSync(archivePath, 0o666);
    } catch {}
    fs.writeFileSync(archivePath, serializeKomArchive(archive.header, archive.entries));
  }
  return { packedFiles, changedPackedFiles, backupPath };
}

export function ensureClientPatched(
  root: string,
  host = DEFAULT_SERVER_HOST,
  channelPort: number = DEFAULT_SERVER_PORTS.channel,
  gamePort: number = DEFAULT_SERVER_PORTS.game
): ClientPatchResult {
  if (!isSupportedClientHost(host)) {
    throw new Error(`Legacy client endpoints must be numeric IPv4 addresses; got ${host}.`);
  }
  let looseFiles = 0;
  let changedLooseFiles = 0;
  for (const configPath of looseConfigPaths(root)) {
    const original = fs.readFileSync(configPath, 'utf8');
    if (!original.includes('AddChannelServerIP_LUA')) continue;
    looseFiles += 1;
    const patched = patchLooseConfig(original, host, channelPort, gamePort);
    if (patched !== original) {
      try {
        fs.chmodSync(configPath, 0o666);
      } catch {}
      fs.writeFileSync(configPath, patched, 'utf8');
      changedLooseFiles += 1;
    }
  }
  const packed = patchPackedArchive(path.join(root, 'data', 'data036.kom'), host);
  return { looseFiles, changedLooseFiles, ...packed };
}

export function inspectClientEndpoints(
  root: string,
  host = DEFAULT_SERVER_HOST,
  channelPort: number = DEFAULT_SERVER_PORTS.channel,
  resolvedIp?: string
): ClientEndpointInspection {
  if (!isSupportedClientHost(host)) {
    throw new Error(`Legacy client endpoints must be numeric IPv4 addresses; got ${host}.`);
  }
  let looseFiles = 0;
  let validLooseFiles = 0;
  for (const configPath of looseConfigPaths(root)) {
    const text = fs.readFileSync(configPath, 'utf8');
    if (!text.includes('AddChannelServerIP_LUA')) continue;
    looseFiles += 1;
    const declarations = [...text.matchAll(/AddChannelServerIP_LUA\(\s*"([^"]+)"\s*(?:,\s*(\d+))?\s*\)/g)];
    if (declarations.length > 0 && declarations.every((match) => {
      const matchIp = match[1];
      const matchPort = match[2] ? Number(match[2]) : null;
      return (matchIp === host || (resolvedIp && matchIp === resolvedIp)) && (matchPort === null || matchPort === channelPort);
    })) {
      validLooseFiles += 1;
    }
  }

  const archivePath = path.join(root, 'data', 'data036.kom');
  if (!fs.existsSync(archivePath)) {
    return { ok: false, detail: 'data\\data036.kom is missing', looseFiles, packedFiles: 0 };
  }
  const archive = readKomArchive(fs.readFileSync(archivePath));
  let packedFiles = 0;
  let validPackedFiles = 0;
  for (const entry of archive.entries) {
    if (!/^Config.*\.lua$/i.test(entry.attributes.Name ?? '')) continue;
    packedFiles += 1;
    const endpoints = luaStringIpMatches(xorPayload(inflateSync(entry.compressed)), host).map((match) => match.value);
    if (endpoints.length > 0 && endpoints.every((endpoint) => endpoint === host || (resolvedIp && endpoint === resolvedIp))) validPackedFiles += 1;
  }
  const ok = packedFiles > 0 && validPackedFiles === packedFiles && validLooseFiles === looseFiles;
  return {
    ok,
    detail: ok
      ? `${looseFiles} loose and ${packedFiles} packed configs target ${host}:${channelPort}`
      : `${validLooseFiles}/${looseFiles} loose and ${validPackedFiles}/${packedFiles} packed configs target Azure`,
    looseFiles,
    packedFiles,
  };
}
