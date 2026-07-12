#!/usr/bin/env python3
"""Stop the local JoySword Elsword server stack."""

from __future__ import annotations

import json
import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
PID_FILE = ELSWORD / "offline" / "server-pids.json"
PROCESS_NAMES = ("CenterServer.exe", "ChannelServer.exe", "GlobalServer.exe", "LoginServer.exe", "GameServer.exe")


def taskkill(*args: str) -> int:
    result = subprocess.run(["taskkill", *args], capture_output=True, text=True)
    if result.stdout.strip():
        print(result.stdout.strip())
    if result.stderr.strip():
        print(result.stderr.strip(), file=sys.stderr)
    return result.returncode


def stop_from_pid_file() -> None:
    if not PID_FILE.exists():
        return

    try:
        payload = json.loads(PID_FILE.read_text(encoding="utf-8"))
    except json.JSONDecodeError:
        payload = {}

    processes = payload.get("processes", {})
    for name, pid in processes.items():
        if not isinstance(pid, int):
            continue
        print(f"Stopping {name} (PID {pid})...")
        taskkill("/PID", str(pid), "/T", "/F")

    PID_FILE.unlink(missing_ok=True)


def stop_by_image_name() -> None:
    for process_name in PROCESS_NAMES:
        taskkill("/IM", process_name, "/T", "/F")


def main() -> int:
    if os.name != "nt":
        print("The Elsword server binaries are Windows .exe files. Run this stopper on Windows.")
        return 2

    print("Stopping JoySword offline server processes...")
    stop_from_pid_file()
    stop_by_image_name()
    print("Done.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
