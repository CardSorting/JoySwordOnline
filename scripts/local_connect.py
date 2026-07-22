#!/usr/bin/env python3
"""Point the unpacked Windows client at a local JoySword server."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

from client_connect import (
    CLIENT_SCRIPT_DIR,
    WINDOWS_CLIENT_ARCHIVE,
    patch_client_config,
    patch_windows_client_archive,
)
import urllib.request
import json

ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "client" / "data" if (ROOT / "client" / "data").is_dir() else ROOT / "data"
PATCH_CLIENT_KOM = ROOT / "scripts" / "patch-client-kom.py"

if (ROOT.parent / "Elsword" / "offline" / "offline.env").exists():
    ENV_FILE = ROOT.parent / "Elsword" / "offline" / "offline.env"
elif (ROOT / "Elsword" / "offline" / "offline.env").exists():
    ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
else:
    ENV_FILE = ROOT / "offline.env"
IPV4_PATTERN = re.compile(r"^(?:\d{1,3}\.){3}\d{1,3}$")


def load_env() -> dict[str, str]:
    values: dict[str, str] = {}
    if not ENV_FILE.exists():
        return values
    for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()
    return values


def fetch_manifest_ip() -> str | None:
    try:
        url = "https://manifest.onjoysword.top/server.json"
        req = urllib.request.Request(url, headers={'User-Agent': 'JoySword-Client-Patcher'})
        with urllib.request.urlopen(req, timeout=3) as response:
            data = json.loads(response.read().decode('utf-8'))
            host = data.get("loginHost")
            if host:
                return host
    except Exception:
        pass
    return None


def default_ip(env: dict[str, str]) -> str:
    ip = env.get("CHANNEL_SERVER_IP", "").strip()
    if ip:
        return ip
    # Fallback to fetching cloud manifest IP
    cloud_ip = fetch_manifest_ip()
    if cloud_ip:
        print(f"Retrieved active server IP from cloud manifest: {cloud_ip}")
        return cloud_ip
    return "127.0.0.1"


def default_port(env: dict[str, str], key: str, fallback: int) -> int:
    value = env.get(key, str(fallback)).strip()
    try:
        port = int(value)
    except ValueError:
        sys.exit(f"Expected numeric {key}, got: {value}")
    validate_port(port, key)
    return port


def validate_ip(ip: str) -> None:
    if ip.lower() == "localhost":
        return
    if not IPV4_PATTERN.match(ip):
        sys.exit(
            "Expected a numeric IPv4 address for the legacy client "
            f"(or localhost for local play), got: {ip}"
        )

    octets = [int(part) for part in ip.split(".")]
    if any(part > 255 for part in octets):
        sys.exit(f"Invalid IPv4 address, got: {ip}")


def validate_port(port: int, label: str) -> None:
    if port < 1 or port > 65535:
        sys.exit(f"Invalid {label}, got: {port}")


def main() -> int:
    env = load_env()
    parser = argparse.ArgumentParser(
        description="Patch loose Config*.lua files and data\\data036.kom for local Windows play.",
    )
    parser.add_argument(
        "ip",
        nargs="?",
        default=default_ip(env),
        help="server IP for the Windows client; defaults to CHANNEL_SERVER_IP from offline.env, then 127.0.0.1",
    )
    parser.add_argument(
        "--channel-port",
        type=int,
        default=default_port(env, "CHANNEL_SERVER_PORT", 9400),
        help="channel server port; defaults to CHANNEL_SERVER_PORT from offline.env, then 9400",
    )
    parser.add_argument(
        "--game-port",
        type=int,
        default=default_port(env, "GAME_SERVER_PORT", 9300),
        help="game server port used for ID creation; defaults to GAME_SERVER_PORT from offline.env, then 9300",
    )
    parser.add_argument(
        "--skip-repack",
        action="store_true",
        help="Skip repacking client Lua into KOM archives",
    )
    args = parser.parse_args()
    ip = args.ip.strip()
    validate_ip(ip)

    if ip.lower() == "localhost":
        resolved_ip = "127.0.0.1"
    else:
        resolved_ip = ip

    validate_port(args.channel_port, "channel port")
    validate_port(args.game_port, "game port")

    print(f"Pointing Windows client at {resolved_ip}:{args.channel_port}")
    if args.channel_port != 9400 or args.game_port != 9300:
        print(
            "Warning: packed data\\data036.kom patching updates IP constants only; "
            "use the default 9400/9300 ports unless you know the client is loading loose Config*.lua files."
        )

    loose_patched = 0
    if CLIENT_SCRIPT_DIR.is_dir():
        for file_path in sorted(CLIENT_SCRIPT_DIR.glob("Config*.lua")):
            content = file_path.read_text(encoding="utf-8", errors="replace")
            if "AddChannelServerIP_LUA" in content:
                if patch_client_config(file_path, resolved_ip, args.channel_port, args.game_port):
                    loose_patched += 1

    archive_patched = patch_windows_client_archive(WINDOWS_CLIENT_ARCHIVE, resolved_ip)
    client_archive = ROOT / "client" / "data" / "data036.kom"
    if client_archive.exists() and WINDOWS_CLIENT_ARCHIVE.exists() and client_archive.resolve() != WINDOWS_CLIENT_ARCHIVE.resolve():
        import shutil
        shutil.copy2(WINDOWS_CLIENT_ARCHIVE, client_archive)

    print(f"Updated {loose_patched} loose config file(s).")
    if archive_patched > 0:
        print(f"Updated {archive_patched} packed Windows client config file(s).")

    if not args.skip_repack and PATCH_CLIENT_KOM.exists() and DATA.is_dir():
        print("Repacking client Lua (create UI, Enum/Config, UnitTemplet, Item.lua) into KOM archives...")
        result = subprocess.run(
            [sys.executable, str(PATCH_CLIENT_KOM), "--elesis-create-ui"],
            cwd=ROOT,
        )
        if result.returncode != 0:
            print("Warning: client KOM repack failed; font/Elesis create UI may be stale.", file=sys.stderr)

    print("Launch Start-Client-Windows.bat after the local server stack is running.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
