#!/usr/bin/env python3
"""Non-mutating enhancement runtime canary.

This verifies the live GameServer process, executable, runtime table, invariant
receipt, and continued on-disk hash. The legacy binary exposes no safe test RPC
for a synthetic enhancement attempt, so this tool intentionally does not claim
to execute the native roll/persistence path or touch player equipment.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
RUNTIME = ROOT / "Elsword" / "GameServer" / "EnchantTable.lua"
SERVER = ROOT / "Elsword" / "GameServer" / "GameServer.exe"
RECEIPT = ROOT / "Elsword" / "offline" / "enhancement-validation.json"
CANARY = ROOT / "Elsword" / "offline" / "enhancement-canary.json"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def process_alive(pid: int) -> bool:
    if os.name == "nt":
        result = subprocess.run(
            ["tasklist.exe", "/FI", f"PID eq {pid}", "/FO", "CSV", "/NH"],
            capture_output=True,
            text=True,
            check=False,
        )
        return result.returncode == 0 and str(pid) in result.stdout and "GameServer.exe" in result.stdout
    try:
        os.kill(pid, 0)
        return True
    except OSError:
        return False


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pid", type=int, required=True)
    parser.add_argument("--watch-seconds", type=float, default=2.0)
    args = parser.parse_args()

    problems: list[str] = []
    receipt = json.loads(RECEIPT.read_text(encoding="utf-8"))
    runtime_hash = sha256(RUNTIME)
    build_hash = sha256(SERVER)
    if receipt.get("status") != "pass":
        problems.append("startup invariant receipt is not passing")
    if runtime_hash != receipt.get("canonical_file_sha256"):
        problems.append("runtime table hash differs from validated canonical hash")
    if build_hash != receipt.get("server_build_sha256"):
        problems.append("GameServer build differs from validation receipt")
    if not process_alive(args.pid):
        problems.append(f"GameServer PID {args.pid} is not alive")
    if args.watch_seconds > 0:
        time.sleep(min(args.watch_seconds, 30.0))
        if sha256(RUNTIME) != runtime_hash:
            problems.append("runtime table changed during canary watch")

    payload = {
        "schema": "joysword.enhancement-runtime-canary/v1",
        "checked_at": datetime.now(timezone.utc).isoformat(),
        "status": "fail" if problems else "pass",
        "game_server_pid": args.pid,
        "server_build_sha256": build_hash,
        "table_sha256": runtime_hash,
        "probability_section_sha256": receipt.get("probability_section_sha256"),
        "invariant_version": receipt.get("invariant_version"),
        "migration_id": receipt.get("migration_id"),
        "actual_native_attempt_exercised": False,
        "player_equipment_mutated": False,
        "limitations": [
            "The closed legacy GameServer exposes no isolated synthetic-enhancement RPC.",
            "Native RNG values, material debit, and commit acknowledgements are not exported.",
        ],
        "problems": problems,
    }
    CANARY.parent.mkdir(parents=True, exist_ok=True)
    CANARY.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, separators=(",", ":")))
    return 1 if problems else 0


if __name__ == "__main__":
    raise SystemExit(main())
