#!/usr/bin/env python3
"""Shared client config patching utilities for local and cloud play."""

from __future__ import annotations

import os
import re
import stat
import struct
import xml.etree.ElementTree as ET
import zlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CLIENT_SCRIPT_DIR = ROOT / "Elsword" / "ClientScript" / "Major"
WINDOWS_CLIENT_ARCHIVE = ROOT / "data" / "data036.kom"

KOM_XOR_KEY = bytes.fromhex("02aaf8c6dcab4726efbb0098")
IP_PATTERN = re.compile(
    rb"(?<![a-zA-Z0-9\.\-])(?:(?:\d{1,3}\.){3}\d{1,3}|(?:[a-zA-Z0-9\-]+\.)*onjoysword\.top|localhost)(?![a-zA-Z0-9\.\-])",
    re.IGNORECASE,
)


def patch_client_config(file_path: Path, ip: str, channel_port: int = 9400, game_port: int = 9300) -> bool:
    if not file_path.exists():
        return False
    
    print(f"Patching client config: {file_path}")
    original = file_path.read_text(encoding="utf-8", errors="replace")
    text = original
    
    # Replace channel server IP
    text = re.sub(
        r'g_pMain:AddChannelServerIP_LUA\(\s*"[^"]*"(?:\s*,\s*\d+)?\s*\)',
        f'g_pMain:AddChannelServerIP_LUA( "{ip}", {channel_port} )',
        text,
    )
    text = re.sub(
        r"g_pMain:SetChannelServerPort\(\s*\d+\s*\)",
        f"g_pMain:SetChannelServerPort( {channel_port} )",
        text,
    )
    
    # Replace game server IP
    text = re.sub(
        r'g_pMain:AddGameServerIPForCreateID_LUA\(\s*"[^"]*"\s*\)',
        f'g_pMain:AddGameServerIPForCreateID_LUA( "{ip}" )',
        text,
    )
    text = re.sub(
        r"g_pMain:SetGameServerPortForCreateID\(\s*\d+\s*\)",
        f"g_pMain:SetGameServerPortForCreateID( {game_port} )",
        text,
    )
    
    if text == original:
        print(f"Client config already points to {ip}:{channel_port}.")
        return False

    try:
        os.chmod(file_path, stat.S_IWRITE)
    except Exception:
        pass
    file_path.write_text(text, encoding="utf-8")
    print(f"Successfully pointed client config to {ip}:{channel_port}.")
    return True


def xor_payload(payload: bytes) -> bytes:
    return bytes(byte ^ KOM_XOR_KEY[index % len(KOM_XOR_KEY)] for index, byte in enumerate(payload))


def patch_lua_bytecode_ip_constants(bytecode: bytes, ip: str) -> tuple[bytes, list[str]]:
    """Patch IPv4 string constants in Lua 5.1 bytecode."""
    new_ip = ip.encode("ascii")
    updated = bytearray(bytecode)
    replacements: list[str] = []

    for match in reversed(list(IP_PATTERN.finditer(bytecode))):
        old_ip = match.group()
        start, end = match.span()
        length_pos = start - 4
        nul_pos = end
        if length_pos < 0 or nul_pos >= len(updated):
            continue
        stored_length = struct.unpack("<I", updated[length_pos:start])[0]
        if stored_length != len(old_ip) + 1 or updated[nul_pos] != 0:
            continue
        if old_ip == new_ip:
            continue

        updated[length_pos:nul_pos + 1] = struct.pack("<I", len(new_ip) + 1) + new_ip + b"\0"
        replacements.append(old_ip.decode("ascii"))

    replacements.reverse()
    return bytes(updated), replacements


def patch_windows_client_archive(archive_path: Path, ip: str) -> int:
    if not archive_path.exists():
        print(f"Warning: Windows client archive not found: {archive_path}")
        return 0

    print(f"Patching packed Windows client config archive: {archive_path}")
    blob = archive_path.read_bytes()
    xml_start = blob.find(b"<?xml")
    xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")
    if xml_start < 0 or xml_end < len(b"</Files>"):
        print(f"Warning: Could not locate KOM XML table in {archive_path}")
        return 0

    backup_path = archive_path.with_name(archive_path.name + ".bak")
    if not backup_path.exists():
        backup_path.write_bytes(blob)
        print(f"Created backup: {backup_path}")

    header = bytearray(blob[:xml_start])
    root = ET.fromstring(blob[xml_start:xml_end])
    pos = xml_end
    new_entries: list[bytes] = []
    patched_files = 0

    for elem in root:
        name = elem.attrib["Name"]
        compressed_size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos:pos + compressed_size]
        pos += compressed_size
        payload = zlib.decompress(compressed)

        if name.startswith("Config") and name.endswith(".lua"):
            decrypted = xor_payload(payload)
            patched_bytecode, replacements = patch_lua_bytecode_ip_constants(decrypted, ip)
            if replacements:
                payload = xor_payload(patched_bytecode)
                compressed = zlib.compress(payload, level=9)
                elem.set("Size", str(len(payload)))
                elem.set("CompressedSize", str(len(compressed)))
                elem.set("CheckSum", f"{zlib.crc32(compressed) & 0xffffffff:08x}")
                patched_files += 1
                print(f"  {name}: {', '.join(replacements)} -> {ip}")

        new_entries.append(compressed)

    if pos != len(blob):
        print(f"Warning: Unexpected trailing data in {archive_path}: {len(blob) - pos} bytes")
        return patched_files

    xml_parts = [b'<?xml version="1.0" ?><Files>']
    for elem in root:
        attrs = elem.attrib
        xml_parts.append(
            (
                f'<File Algorithm="{attrs["Algorithm"]}" CheckSum="{attrs["CheckSum"]}" '
                f'CompressedSize="{attrs["CompressedSize"]}" FileTime="{attrs["FileTime"]}" '
                f'Name="{attrs["Name"]}" Size="{attrs["Size"]}"/>'
            ).encode("utf-8")
        )
    xml_parts.append(b"</Files>")
    new_xml = b"".join(xml_parts)

    try:
        os.chmod(archive_path, stat.S_IWRITE)
    except Exception:
        pass
    header[xml_start - 4:xml_start] = struct.pack("<I", len(new_xml))
    archive_path.write_bytes(bytes(header) + new_xml + b"".join(new_entries))
    return patched_files
