#!/usr/bin/env python3
"""Idempotent auto-repair script for JoySword databases."""

from __future__ import annotations

import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

def run_cmd(cmd: list[str], description: str) -> bool:
    print(f"==> {description}...")
    res = subprocess.run(cmd, cwd=ROOT, text=True, capture_output=True)
    if res.returncode != 0:
        print(f"Warning: {description} returned code {res.returncode}:\n{res.stderr.strip()}", file=sys.stderr)
        return False
    return True

def auto_repair() -> bool:
    python_exe = sys.executable

    steps = [
        ([python_exe, "scripts/run_sql_file.py", "database/init-databases.sql"], "Ensuring database existence"),
        ([python_exe, "scripts/configure-offline.py"], "Applying offline configuration"),
        ([python_exe, "scripts/install-creation-fixes.py"], "Installing character creation database fixes"),
        ([python_exe, "scripts/install-cash-allowance.py"], "Installing daily Cash allowance policy"),
        ([python_exe, "scripts/run_sql_file.py", "database/setup-public-users.sql"], "Seeding public multi-user admin account"),
        ([python_exe, "scripts/run_sql_file.py", "database/install-hotpath-account-creation.sql"], "Installing hotpath account creation procedures"),
        ([python_exe, "scripts/run_sql_file.py", "database/fix-cashshop-billing-transactions.sql"], "Fixing Cash Shop billing transactions"),
        ([python_exe, "scripts/run_sql_file.py", "database/fix-cash-deduction.sql"], "Fixing Cash deduction flow"),
        ([python_exe, "scripts/run_sql_file.py", "database/fix-credit-sync.sql"], "Fixing Cash credit sync"),
        ([python_exe, "scripts/run_sql_file.py", "database/disable-class-change-mail-rewards.sql"], "Disabling class-change mail rewards"),
        ([python_exe, "scripts/run_sql_file.py", "database/enforce-enhancement-integrity.sql"], "Enforcing enhancement integrity"),
        ([python_exe, "scripts/restore-iceburner-sets.py"], "Restoring Ice Burner costume sets"),
        ([python_exe, "scripts/restore-cashshop.py"], "Restoring Cash Shop items"),
    ]

    for cmd, desc in steps:
        run_cmd(cmd, desc)

    # Validate health
    print("==> Running database health check...")
    hc = subprocess.run([python_exe, "scripts/db-healthcheck.py"], cwd=ROOT, text=True, capture_output=True)
    if hc.returncode == 0:
        print("Database health repair completed successfully!")
        return True
    else:
        print(f"Database health repair finished with warnings:\n{hc.stdout}\n{hc.stderr}", file=sys.stderr)
        return False

if __name__ == "__main__":
    success = auto_repair()
    sys.exit(0 if success else 1)
