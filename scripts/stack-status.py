#!/usr/bin/env python3
"""Inspect real-time telemetry and health status of the JoySword Elsword server stack."""

from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
STATUS_FILE = ELSWORD / "offline" / "stack-status.json"
PID_FILE = ELSWORD / "offline" / "server-pids.json"


def load_telemetry() -> dict[str, object] | None:
    if not STATUS_FILE.exists():
        return None
    try:
        return json.loads(STATUS_FILE.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return None


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", action="store_true", help="output raw JSON telemetry")
    parser.add_argument("--check", action="store_true", help="exit with code 0 if healthy, non-zero if degraded/unhealthy")
    args = parser.parse_args()

    telemetry = load_telemetry()
    if not telemetry:
        if args.json:
            print(json.dumps({"status": "NOT_RUNNING", "health_score": 0}))
        else:
            print("No active stack telemetry found. (Is start-offline.py running with --supervise?)")
        return 1 if args.check else 0

    if args.json:
        print(json.dumps(telemetry, indent=2))
        return 0 if telemetry.get("status") == "HEALTHY" else 1

    updated_at = telemetry.get("updated_at", "Unknown")
    status = str(telemetry.get("status", "UNKNOWN"))
    score = telemetry.get("health_score", 0)
    profile = telemetry.get("profile", "US_SERVICE")
    servers = telemetry.get("servers", {})

    print("==========================================================")
    print("           JoySword Offline - Stack Telemetry             ")
    print("==========================================================")
    print(f" Status       : {status} ({score}% Health Score)")
    print(f" Updated      : {updated_at}")
    print(f" Profile      : {profile}")
    print("----------------------------------------------------------")
    print(f" {'Server':<15} {'PID':<8} {'Status':<15} {'Primary Port':<14} {'RAM (MiB)':<10}")
    print("----------------------------------------------------------")

    if isinstance(servers, dict):
        for name, data in servers.items():
            if not isinstance(data, dict):
                continue
            pid = str(data.get("pid") or "-")
            srv_status = str(data.get("status", "UNKNOWN"))
            primary_port = data.get("primary_port")
            primary_open = data.get("primary_open")
            port_str = f"{primary_port} ({'OPEN' if primary_open else 'CLOSED'})" if primary_port else "-"
            rss_mib = f"{data.get('rss_mib'):.1f}" if data.get("rss_mib") is not None else "-"
            print(f" {name:<15} {pid:<8} {srv_status:<15} {port_str:<14} {rss_mib:<10}")

    print("==========================================================")

    if args.check:
        return 0 if status == "HEALTHY" else 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
