#!/usr/bin/env python3
"""Install the JoySword daily Cash allowance policy and claim ledger."""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SQL_FILE = ROOT / "database" / "install-cash-allowance.sql"
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
    "CASH_ALLOWANCE_BASE": "12000",
    "CASH_ALLOWANCE_WEEKLY_BONUS": "5000",
    "CASH_ALLOWANCE_MONTHLY_BONUS": "20000",
    "CASH_STARTER_TARGET": "36000",
    "CASH_ALLOWANCE_CAP": "450000",
    "CASH_ALLOWANCE_TIME_ZONE": "Mountain Standard Time",
}


def load_env() -> dict[str, str]:
    values = dict(DEFAULTS)
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if path.exists():
        for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            values[key.strip()] = value.strip()
    return values


def render_sql(env: dict[str, str]) -> str:
    numeric_keys = (
        "CASH_ALLOWANCE_BASE",
        "CASH_ALLOWANCE_WEEKLY_BONUS",
        "CASH_ALLOWANCE_MONTHLY_BONUS",
        "CASH_STARTER_TARGET",
        "CASH_ALLOWANCE_CAP",
    )
    for key in numeric_keys:
        try:
            value = int(env[key])
        except ValueError as exc:
            raise ValueError(f"{key} must be an integer.") from exc
        if value < 0 or (key in {"CASH_ALLOWANCE_BASE", "CASH_STARTER_TARGET", "CASH_ALLOWANCE_CAP"} and value == 0):
            raise ValueError(f"{key} has an invalid value: {value}")

    time_zone = env["CASH_ALLOWANCE_TIME_ZONE"].strip()
    if not time_zone or "'" in time_zone or len(time_zone) > 128:
        raise ValueError("CASH_ALLOWANCE_TIME_ZONE is invalid.")

    sql = SQL_FILE.read_text(encoding="utf-8")
    for key in (*numeric_keys, "CASH_ALLOWANCE_TIME_ZONE"):
        sql = sql.replace(f"$({key})", env[key].strip())
    return sql


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
cat > /tmp/joysword-cash-allowance.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-cash-allowance.sql
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
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="print only failures")
    args = parser.parse_args()

    if not SQL_FILE.exists():
        print(f"Missing allowance installer: {SQL_FILE}", file=sys.stderr)
        return 2

    env = load_env()
    try:
        sql = render_sql(env)
        result = run_docker(env, sql) if shutil.which("docker") else run_native(env, sql)
    except (OSError, subprocess.TimeoutExpired, ValueError) as exc:
        print(f"Cash allowance install failed: {exc}", file=sys.stderr)
        return 1

    if result is None:
        print("Neither the Docker SQL service nor sqlcmd is available.", file=sys.stderr)
        return 1
    if result.returncode != 0:
        print("Cash allowance install failed.", file=sys.stderr)
        if result.stdout:
            print(result.stdout.strip(), file=sys.stderr)
        if result.stderr:
            print(result.stderr.strip(), file=sys.stderr)
        return result.returncode or 1
    if not args.quiet:
        print((result.stdout or "Cash allowance installed.").strip())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
