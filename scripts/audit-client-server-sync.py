#!/usr/bin/env python3
"""Cross-audit client configuration archives and server Lua manifests for endpoint alignment."""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    values: dict[str, str] = {}
    if not path.exists():
        return values
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, val = line.split("=", 1)
        values[key.strip()] = val.strip()
    return values


def audit_client_server_sync() -> list[str]:
    env = load_env()
    expected_channel_ip = env.get("CHANNEL_SERVER_IP", "127.0.0.1").strip().lower()
    profile = env.get("SERVER_PROFILE", "US_SERVICE").strip()
    issues: list[str] = []

    client_config = ELSWORD / "ClientScript" / "Major" / f"Config_{profile}.lua"
    if not client_config.exists():
        client_config = ELSWORD / "ClientScript" / "Major" / "Config.lua"

    if client_config.exists():
        text = client_config.read_text(encoding="utf-8", errors="replace")
        channel_ips = re.findall(r'AddChannelServerIP_LUA\(\s*"([^"]+)"', text, re.I)
        create_ips = re.findall(r'AddGameServerIPForCreateID_LUA\(\s*"([^"]+)"', text, re.I)

        allowed = {"127.0.0.1", "localhost", expected_channel_ip}
        for ip in channel_ips:
            if ip.strip().lower() not in allowed:
                issues.append(f"{client_config.name}: Channel IP '{ip}' does not match target '{expected_channel_ip}'")
        for ip in create_ips:
            if ip.strip().lower() not in allowed:
                issues.append(f"{client_config.name}: CreateID GameServer IP '{ip}' does not match target '{expected_channel_ip}'")
    else:
        issues.append(f"Missing client configuration file for profile {profile}: {client_config}")

    gs_config = ELSWORD / "GameServer" / f"config_gs_{profile}.lua"
    if gs_config.exists():
        text = gs_config.read_text(encoding="utf-8", errors="replace")
        if "SetBillingFlag" in text and "BF_FREE_SERVICE" not in text and "BF_GLOBAL_SERVICE" in text:
            issues.append(f"{gs_config.name}: Active global billing flag may block offline gameplay")

    return issues


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="suppress success output")
    args = parser.parse_args()

    issues = audit_client_server_sync()
    if issues:
        print(f"FAILED: Found {len(issues)} client-server sync issue(s):", file=sys.stderr)
        for issue in issues:
            print(f"  - {issue}", file=sys.stderr)
        return 1

    if not args.quiet:
        print("OK: Client-server configuration endpoints and Lua manifests are fully synchronized.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
