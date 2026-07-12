#!/usr/bin/env python3
"""Repair GUnit rows with Level=0 by deriving level from ExpTable.lua."""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
EXP_TABLE = ROOT / "Elsword" / "Resources" / "ExpTable.lua"
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"


def load_env() -> dict[str, str]:
    env: dict[str, str] = {}
    for line in ENV_FILE.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            key, value = line.split("=", 1)
            env[key] = value
    return env


def parse_exp_table(path: Path) -> list[tuple[int, int]]:
    text = path.read_text(encoding="utf-8")
    rows: list[tuple[int, int]] = []
    for match in re.finditer(
        r"LEVEL\s*=\s*(\d+),\s*NEED_EXP\s*=\s*(\d+),\s*TOTAL_EXP\s*=\s*(\d+)",
        text,
    ):
        rows.append((int(match.group(1)), int(match.group(3))))
    if not rows:
        raise SystemExit(f"No exp rows parsed from {path}")
    return rows


def level_for_exp(exp: int, exp_table: list[tuple[int, int]]) -> int:
    level = 1
    for row_level, total_exp in exp_table:
        if total_exp <= exp:
            level = row_level
        else:
            break
    return max(level, 1)


def run_sql(sql: str, env: dict[str, str]) -> tuple[int, str, str]:
    cmd_env = os.environ.copy()
    cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    bash = r"""
set -e
if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
  CMD=/opt/mssql-tools18/bin/sqlcmd
  EXTRA=(-C)
else
  CMD=/opt/mssql-tools/bin/sqlcmd
  EXTRA=()
fi
cat > /tmp/repair-char-level.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -W -s'|' -i /tmp/repair-char-level.sql
"""
    result = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        env=cmd_env,
        timeout=60,
    )
    return result.returncode, result.stdout, result.stderr


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="Write fixes to the database")
    args = parser.parse_args()

    env = load_env()
    exp_table = parse_exp_table(EXP_TABLE)

    query = """
SET NOCOUNT ON;
SELECT U.UserID, G.UnitUID, G.UnitClass, G.Level, G.Exp
FROM Game01.dbo.GUnit G WITH (NOLOCK)
JOIN Account.dbo.MUser U WITH (NOLOCK) ON U.UserUID = G.UserUID
WHERE G.Deleted = 0 AND G.Level = 0;
"""
    code, out, err = run_sql(query, env)
    if code != 0:
        print(err or out, file=sys.stderr)
        return code

    rows: list[tuple[str, int, int, int, int]] = []
    for line in out.splitlines():
        if not line or line.startswith("UserID") or line.startswith("-"):
            continue
        parts = [p.strip() for p in line.split("|")]
        if len(parts) != 5:
            continue
        user_id, unit_uid, unit_class, level, exp = parts
        rows.append((user_id, int(unit_uid), int(unit_class), int(level), int(exp)))

    if not rows:
        print("No characters with Level=0 found.")
        return 0

    updates: list[str] = []
    for user_id, unit_uid, unit_class, _level, exp in rows:
        new_level = level_for_exp(exp, exp_table)
        print(f"{user_id} UnitUID={unit_uid} class={unit_class} exp={exp} -> level {new_level}")
        updates.append(
            f"UPDATE Game01.dbo.GUnit SET Level = {new_level} WHERE UnitUID = {unit_uid} AND Level = 0;"
        )

    if not args.apply:
        print("Dry run only. Re-run with --apply to update the database.")
        return 0

    apply_sql = "SET NOCOUNT ON;\n" + "\n".join(updates)
    code, out, err = run_sql(apply_sql, env)
    if out.strip():
        print(out.strip())
    if err.strip():
        print(err.strip(), file=sys.stderr)
    return code


if __name__ == "__main__":
    raise SystemExit(main())
