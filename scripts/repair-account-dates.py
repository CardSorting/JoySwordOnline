#!/usr/bin/env python3
"""Repair missing account/character dates that break login character loading."""

from __future__ import annotations

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
cat > /tmp/repair-account-dates.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -W -s'|' -i /tmp/repair-account-dates.sql
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
    env = load_env()
    user = env.get("ADMIN_USER", "admin").replace("'", "''")
    sql = f"""
SET NOCOUNT ON;
DECLARE @Now DATETIME = GETDATE();

UPDATE Account.dbo.MUser
SET RegDate = COALESCE(NULLIF(RegDate, '1900-01-01'), @Now),
    LastLogin = COALESCE(NULLIF(LastLogin, '1900-01-01'), @Now),
    DelDate = COALESCE(NULLIF(DelDate, '1900-01-01'), @Now)
WHERE UserID = N'{user}';

UPDATE Game01.dbo.GUser
SET RegDate = COALESCE(NULLIF(RegDate, '1900-01-01'), @Now),
    DelDate = COALESCE(NULLIF(DelDate, '1900-01-01'), @Now)
WHERE UserID = N'{user}';

UPDATE G
SET RegDate = COALESCE(NULLIF(G.RegDate, '1900-01-01'), @Now),
    DelDate = COALESCE(NULLIF(G.DelDate, '1900-01-01'), @Now),
    LastDate = COALESCE(NULLIF(G.LastDate, '1900-01-01'), @Now)
FROM Game01.dbo.GUnit G
JOIN Account.dbo.MUser U ON U.UserUID = G.UserUID
WHERE U.UserID = N'{user}' AND G.Deleted = 0;

SELECT U.UserID, U.RegDate, U.LastLogin
FROM Account.dbo.MUser U
WHERE U.UserID = N'{user}';

SELECT G.UnitUID, G.UnitClass, G.Level, G.LastDate
FROM Game01.dbo.GUnit G
JOIN Account.dbo.MUser U ON U.UserUID = G.UserUID
WHERE U.UserID = N'{user}' AND G.Deleted = 0
ORDER BY G.UnitClass;
"""
    code, out, err = run_sql(sql, env)
    if out.strip():
        print(out.strip())
    if err.strip():
        print(err.strip(), file=sys.stderr)
    return code


if __name__ == "__main__":
    raise SystemExit(main())
