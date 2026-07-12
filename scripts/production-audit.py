#!/usr/bin/env python3
"""Audit JoySword settings before exposing a public multi-user server."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "LOGIN_MODE": "PUBLIC",
    "ADMIN_USER": "admin",
    "ADMIN_PASSWORD": "admin",
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
    "CHANNEL_SERVER_IP": "127.0.0.1",
    "CHANNEL_SERVER_PORT": "9400",
    "SERVER_READINESS_MODE": "warn",
}


def load_env() -> dict[str, str]:
    values = dict(DEFAULTS)
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if not path.exists():
        return values
    for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()
    return values


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--allow-localhost-client", action="store_true", help="allow 127.0.0.1/localhost as CHANNEL_SERVER_IP")
    args = parser.parse_args()

    env = load_env()
    failures: list[str] = []
    warnings: list[str] = []

    if env.get("LOGIN_MODE", "").upper() != "PUBLIC":
        failures.append("LOGIN_MODE must be PUBLIC for multi-user public service.")

    if env.get("ADMIN_PASSWORD") in {"", "admin"}:
        failures.append("ADMIN_PASSWORD is still the default; change it before public use.")

    if env.get("DB_PASSWORD") in {"", "JoySword!Offline123"}:
        failures.append("DB_PASSWORD is still the default; change it and recreate/restore the SQL volume before public use.")

    channel_ip = env.get("CHANNEL_SERVER_IP", "")
    if not args.allow_localhost_client and channel_ip.lower() in {"127.0.0.1", "localhost"}:
        failures.append("CHANNEL_SERVER_IP is local-only; set it to the server LAN/public IPv4 for external users.")

    if env.get("SERVER_READINESS_MODE", "").lower() != "strict":
        warnings.append("SERVER_READINESS_MODE is not strict; startup may continue after a server port fails to open.")

    if env.get("DB_HOST", "") not in {"127.0.0.1", "localhost"}:
        warnings.append("DB_HOST is not local. Keep SQL Server private and firewall it from public clients.")

    if env.get("ADMIN_USER", "admin").lower() == "admin":
        warnings.append("ADMIN_USER is the default name. This is acceptable only with a strong ADMIN_PASSWORD.")

    print("JoySword production audit")
    print(f"  LOGIN_MODE          : {env.get('LOGIN_MODE')}")
    print(f"  CHANNEL_SERVER_IP   : {channel_ip}:{env.get('CHANNEL_SERVER_PORT')}")
    print(f"  DB_HOST             : {env.get('DB_HOST')}:{env.get('DB_PORT')}")
    print(f"  SERVER_READINESS    : {env.get('SERVER_READINESS_MODE')}")
    print()

    for item in failures:
        print(f"FAIL: {item}")
    for item in warnings:
        print(f"WARN: {item}")

    if failures:
        return 1

    print("PASS: static production settings audit passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
