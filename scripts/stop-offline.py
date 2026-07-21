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

    supervisor_pid = payload.get("supervisor_pid")
    if isinstance(supervisor_pid, int):
        print(f"Stopping supervisor (PID {supervisor_pid})...")
        # Stop the parent first so it cannot respawn children while we shut down.
        taskkill("/PID", str(supervisor_pid), "/T", "/F")

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


PORTS = (9100, 9200, 9300, 9400, 9500)


def tcp_open(host: str, port: int, timeout: float = 0.25) -> bool:
    import socket
    try:
        with socket.create_connection((host, port), timeout=timeout):
            return True
    except OSError:
        return False


def verify_ports_released(timeout: float = 5.0) -> None:
    deadline = sys.modules["time"].monotonic() + timeout if "time" in sys.modules else 0
    import time
    deadline = time.monotonic() + timeout
    print("Verifying server network ports are released...")
    for port in PORTS:
        bound = True
        while time.monotonic() < deadline:
            if not tcp_open("127.0.0.1", port):
                bound = False
                break
            time.sleep(0.5)

        if bound and tcp_open("127.0.0.1", port):
            print(f"Warning: Port {port} is still bound after shutdown. Attempting orphan handle cleanup...")
            try:
                out = subprocess.run(["netstat", "-ano"], capture_output=True, text=True).stdout
                for line in out.splitlines():
                    if f":{port} " in line and "LISTENING" in line:
                        parts = line.strip().split()
                        pid = parts[-1]
                        if pid.isdigit() and int(pid) > 0:
                            print(f"Force killing orphaned PID {pid} bound to port {port}...")
                            taskkill("/PID", pid, "/F", "/T")
            except Exception as exc:
                print(f"Failed orphan cleanup for port {port}: {exc}", file=sys.stderr)


def main() -> int:
    if os.name != "nt":
        print("The Elsword server binaries are Windows .exe files. Run this stopper on Windows.")
        return 2

    print("Stopping JoySword offline server processes...")
    stop_from_pid_file()
    stop_by_image_name()
    verify_ports_released(timeout=5.0)
    print("Done.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
