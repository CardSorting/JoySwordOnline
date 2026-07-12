#!/usr/bin/env python3
"""Fill GUnit combat stats from StatTable.lua when rows are still zeroed."""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STAT_TABLE = ROOT / "Elsword" / "ServerResource" / "StatTable.lua"
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
STAT_PATTERN = re.compile(
    r"StatTable:SetUnitStat\(\s*(\d+)\s*,\s*(\d+)\s*,\s*\{([^}]+)\}\s*\)"
)
STAT_FIELDS = ("AtkPhysic", "AtkMagic", "DefPhysic", "DefMagic", "HP")


def load_env() -> dict[str, str]:
    env: dict[str, str] = {}
    if not ENV_FILE.exists():
        return env
    for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            key, value = line.split("=", 1)
            env[key.strip()] = value.strip()
    return env


def parse_stat_table(path: Path = STAT_TABLE) -> dict[tuple[int, int], dict[str, int]]:
    stats: dict[tuple[int, int], dict[str, int]] = {}
    for match in STAT_PATTERN.finditer(path.read_text(encoding="utf-8", errors="replace")):
        unit_class = int(match.group(1))
        level = int(match.group(2))
        blob = match.group(3)
        row: dict[str, int] = {}
        for field in STAT_FIELDS:
            field_match = re.search(rf"{field}\s*=\s*([0-9.]+)", blob)
            if not field_match:
                raise RuntimeError(f"Missing {field} for class {unit_class} level {level}")
            row[field] = int(round(float(field_match.group(1))))
        stats[(unit_class, level)] = row
    if not stats:
        raise RuntimeError(f"No stat rows parsed from {path}")
    return stats


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
cat > /tmp/repair-char-stats.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -W -s'|' -i /tmp/repair-char-stats.sql
"""
    result = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        env=cmd_env,
        timeout=120,
    )
    return result.returncode, result.stdout, result.stderr


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="Write fixes to the database")
    parser.add_argument("--user", default="", help="Only repair characters for this UserID")
    args = parser.parse_args()

    env = load_env()
    if "DB_PASSWORD" not in env:
        raise SystemExit("DB_PASSWORD missing from offline.env")

    stat_table = parse_stat_table()
    user_filter = ""
    if args.user:
        escaped = args.user.replace("'", "''")
        user_filter = f" AND U.UserID = N'{escaped}'"

    query = f"""
SET NOCOUNT ON;
SELECT U.UserID, G.UnitUID, G.UnitClass, G.Level, G.BaseHP, G.AtkPhysic, G.AtkMagic, G.DefPhysic, G.DefMagic
FROM Game01.dbo.GUnit G WITH (NOLOCK)
JOIN Account.dbo.MUser U WITH (NOLOCK) ON U.UserUID = G.UserUID
WHERE G.Deleted = 0{user_filter}
ORDER BY U.UserID, G.UnitClass;
"""
    code, out, err = run_sql(query, env)
    if code != 0:
        print(err or out, file=sys.stderr)
        return code

    updates: list[str] = []
    for line in out.splitlines():
        if not line or line.startswith("UserID") or line.startswith("-"):
            continue
        parts = [p.strip() for p in line.split("|")]
        if len(parts) != 9:
            continue
        user_id, unit_uid, unit_class, level, base_hp, atk_p, atk_m, def_p, def_m = parts
        unit_uid_i = int(unit_uid)
        unit_class_i = int(unit_class)
        level_i = int(level)
        key = (unit_class_i, level_i)
        if key not in stat_table:
            print(f"SKIP {user_id} UnitUID={unit_uid} missing StatTable entry for class={unit_class_i} level={level_i}")
            continue
        row = stat_table[key]
        if all(int(value) == 0 for value in (base_hp, atk_p, atk_m, def_p, def_m)):
            reason = "zeroed stats"
        elif int(base_hp) == 0:
            reason = "BaseHP=0"
        else:
            continue
        print(
            f"{user_id} UnitUID={unit_uid} class={unit_class_i} level={level_i} "
            f"<- HP={row['HP']} Atk={row['AtkPhysic']}/{row['AtkMagic']}"
        )
        hp_cap = min(int(row['HP']), 30000)
        atk_p_cap = min(int(row['AtkPhysic']), 255)
        atk_m_cap = min(int(row['AtkMagic']), 255)
        def_p_cap = min(int(row['DefPhysic']), 255)
        def_m_cap = min(int(row['DefMagic']), 255)
        updates.append(
            f"""UPDATE Game01.dbo.GUnit
SET BaseHP = {hp_cap},
    AtkPhysic = {atk_p_cap},
    AtkMagic = {atk_m_cap},
    DefPhysic = {def_p_cap},
    DefMagic = {def_m_cap}
WHERE UnitUID = {unit_uid_i};"""
        )

    if not updates:
        print("No characters need stat repair.")
        return 0

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
