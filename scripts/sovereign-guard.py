#!/usr/bin/env python3
"""Unified SRE Sovereign Guard master entry-point for JoySword Elsword server stack resilience."""

from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = ROOT / "scripts"


def run_sub(script_name: str, *args: str) -> tuple[int, str]:
    script = SCRIPTS / script_name
    if not script.exists():
        return 1, f"Missing script: {script}"
    cmd = [sys.executable, str(script), *args]
    try:
        res = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, timeout=60)
        out = (res.stdout or "") + ("\n" + res.stderr if res.stderr else "")
        return res.returncode, out.strip()
    except subprocess.TimeoutExpired:
        return 124, f"Script {script_name} timed out after 60s."
    except Exception as exc:
        return 1, f"Failed to execute {script_name}: {exc}"


def audit_stack() -> bool:
    print("==========================================================")
    print("       JoySword Sovereign SRE Guard - Full Audit          ")
    print("==========================================================")

    steps: list[tuple[str, str, list[str]]] = [
        ("1. Offline Configuration", "verify-offline.py", []),
        ("2. Lua Syntax & Integrity", "validate-lua-syntax.py", []),
        ("3. Database Health & Locks", "db-healthcheck.py", ["--allow-tcp-only"]),
        ("4. Startup Preflight Checks", "start-offline.py", ["--dry-run"]),
    ]

    all_passed = True
    for label, script_name, extra_args in steps:
        print(f"\n[AUDIT] {label}...")
        code, out = run_sub(script_name, *extra_args)
        if code == 0:
            print(f"  [PASS] {script_name}")
            if out:
                lines = out.splitlines()
                for line in lines[:3]:
                    print(f"    {line}")
        else:
            all_passed = False
            print(f"  [FAIL] {script_name} (exit {code})")
            if out:
                for line in out.splitlines():
                    print(f"    {line}")

    print("\n==========================================================")
    if all_passed:
        print(" SUCCESS: All SRE audit checks passed cleanly.")
    else:
        print(" WARNING: Audit detected issues. Run sovereign-guard.py --auto-heal")
    print("==========================================================")
    return all_passed


def auto_heal() -> bool:
    print("==========================================================")
    print("      JoySword Sovereign SRE Guard - Auto-Healing         ")
    print("==========================================================")

    print("\n[HEAL 1/4] Creating safety configuration snapshot...")
    code1, out1 = run_sub("config-snapshot.py", "--create", "auto_heal")
    print(f"  {out1}")

    print("\n[HEAL 2/4] Pruning bloat logs & runtime artifacts...")
    code2, out2 = run_sub("prune-runtime-artifacts.py")
    print(f"  {out2}")

    print("\n[HEAL 3/4] Releasing orphaned server ports & processes...")
    code3, out3 = run_sub("stop-offline.py")
    print(f"  {out3}")

    print("\n[HEAL 4/4] Executing database self-healing & statistics refresh...")
    code4, out4 = run_sub("db-healthcheck.py", "--allow-tcp-only")
    print(f"  {out4}")

    print("\n==========================================================")
    print(" Auto-healing cycle complete.")
    print("==========================================================")
    return True


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", action="store_true", help="run comprehensive SRE health and integrity audit")
    parser.add_argument("--auto-heal", action="store_true", help="run automated stack cleanup, self-healing, and port release")
    parser.add_argument("--status", action="store_true", help="inspect real-time stack status and telemetry")
    parser.add_argument("--rollback", action="store_true", help="rollback to last known-good configuration snapshot")
    args = parser.parse_args()

    if args.status:
        code, out = run_sub("stack-status.py")
        print(out)
        return code

    if args.rollback:
        code, out = run_sub("config-snapshot.py", "--rollback", "latest")
        print(out)
        return code

    if args.auto_heal:
        return 0 if auto_heal() else 1

    # Default action: run audit
    return 0 if audit_stack() else 1


if __name__ == "__main__":
    raise SystemExit(main())
