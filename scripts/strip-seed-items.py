#!/usr/bin/env python3
"""Remove seeded starter equipment so login works when Item.lua fails to load."""

from __future__ import annotations

import argparse
import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"


def load_env() -> dict[str, str]:
    env: dict[str, str] = {}
    for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            key, value = line.split("=", 1)
            env[key.strip()] = value.strip()
    return env


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
cat > /tmp/strip-seed-items.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -W -s'|' -i /tmp/strip-seed-items.sql
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
    parser.add_argument("--user", default="", help="Account UserID to strip (default: ADMIN_USER)")
    args = parser.parse_args()

    env = load_env()
    user = (args.user or env.get("ADMIN_USER", "admin")).replace("'", "''")
    sql = f"""
SET NOCOUNT ON;
DECLARE @UserUID BIGINT;
SELECT @UserUID = UserUID FROM Account.dbo.MUser WITH (NOLOCK) WHERE UserID = N'{user}';
IF @UserUID IS NULL
    THROW 50010, 'User not found.', 1;

DELETE FROM Game01.dbo.GItem
WHERE UnitUID IN (
    SELECT UnitUID FROM Game01.dbo.GUnit WITH (NOLOCK)
    WHERE UserUID = @UserUID AND Deleted = 0
);

SELECT COUNT(*) AS remaining_items
FROM Game01.dbo.GItem G
JOIN Game01.dbo.GUnit U ON U.UnitUID = G.UnitUID
WHERE U.UserUID = @UserUID AND U.Deleted = 0;
"""
    code, out, err = run_sql(sql, env)
    if out.strip():
        print(out.strip())
    if err.strip():
        print(err.strip(), file=sys.stderr)
    return code


if __name__ == "__main__":
    raise SystemExit(main())
