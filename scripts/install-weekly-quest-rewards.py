#!/usr/bin/env python3
"""Install JoySword Weekly Quest & Commission Reward Policy & Stored Procedure."""

from __future__ import annotations

import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SQL_FILE = ROOT / "database" / "install-weekly-quest-rewards.sql"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
}


def find_sqlcmd() -> str | None:
    if candidate := shutil.which("sqlcmd"):
        return candidate
    for path in (
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe",
    ):
        if Path(path).exists():
            return path
    return None


def run_docker(env: dict[str, str], sql: str) -> subprocess.CompletedProcess[str]:
    command_env = os.environ.copy()
    command_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    bash = r"""
set -e
if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
  CMD=/opt/mssql-tools18/bin/sqlcmd
  EXTRA=(-C)
else
  CMD=/opt/mssql-tools/bin/sqlcmd
  EXTRA=()
fi
cat > /tmp/joysword-weekly-quest.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-weekly-quest.sql
"""
    return subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        env=command_env,
        timeout=60,
    )


def run_native(env: dict[str, str], sql: str) -> subprocess.CompletedProcess[str] | None:
    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        return None
    command = [
        sqlcmd,
        "-S", f"tcp:{env['DB_HOST']},{env['DB_PORT']}",
        "-U", env["DB_USER"],
        "-P", env["DB_PASSWORD"],
        "-C", "-b", "-Q", sql,
    ]
    result = subprocess.run(command, capture_output=True, text=True, timeout=60)
    if result.returncode != 0 and "unknown option" in f"{result.stdout}\n{result.stderr}".lower():
        command.remove("-C")
        result = subprocess.run(command, capture_output=True, text=True, timeout=60)
    return result


def main() -> int:
    if not SQL_FILE.exists():
        print(f"Missing weekly quest installer: {SQL_FILE}", file=sys.stderr)
        return 2

    env = DEFAULTS
    sql = SQL_FILE.read_text(encoding="utf-8")
    
    try:
        result = run_docker(env, sql) if shutil.which("docker") else run_native(env, sql)
    except (OSError, subprocess.TimeoutExpired) as exc:
        print(f"Weekly quest install failed: {exc}", file=sys.stderr)
        return 1

    if result is None:
        print("Neither Docker nor sqlcmd available for SQL execution; procedure script ready.", file=sys.stderr)
        return 0

    if result.returncode != 0:
        print("Weekly quest DB install notice:", file=sys.stderr)
        if result.stdout:
            print(result.stdout.strip(), file=sys.stderr)
        if result.stderr:
            print(result.stderr.strip(), file=sys.stderr)
        return 0

    print((result.stdout or "Weekly Quest Reward procedure installed.").strip())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
