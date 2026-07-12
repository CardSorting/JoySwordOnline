#!/usr/bin/env python3
"""Run rollback-safe SQL integration tests for the daily Cash allowance."""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SQL_FILE = ROOT / "database" / "test-cash-allowance.sql"
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"


def load_env() -> dict[str, str]:
    values = {
        "DB_HOST": "127.0.0.1",
        "DB_PORT": "1433",
        "DB_USER": "sa",
        "DB_PASSWORD": "JoySword!Offline123",
    }
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if path.exists():
        for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            key = key.strip()
            if key in values:
                values[key] = value.strip()
    return values


def run_direct(env: dict[str, str], sql_text: str) -> subprocess.CompletedProcess[str]:
    node_script = r"""
const sql = require('./web/node_modules/mssql');
let batch = '';
process.stdin.setEncoding('utf8');
process.stdin.on('data', chunk => { batch += chunk; });
process.stdin.on('end', async () => {
  try {
    batch = batch.replace(/^\s*GO\s*$/gmi, '');
    const pool = await sql.connect({
      server: process.env.DB_HOST,
      port: Number(process.env.DB_PORT),
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: 'master',
      options: { encrypt: false, trustServerCertificate: true }
    });
    const result = await pool.request().batch(batch);
    for (const recordset of result.recordsets ?? []) {
      for (const row of recordset) console.log(Object.values(row).join(' | '));
    }
    await pool.close();
  } catch (error) {
    console.error(error instanceof Error ? error.message : String(error));
    process.exitCode = 1;
  }
});
"""
    command_env = os.environ.copy()
    command_env.update(env)
    return subprocess.run(
        ["node", "-e", node_script],
        cwd=ROOT,
        input=sql_text,
        capture_output=True,
        text=True,
        env=command_env,
        timeout=90,
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--direct", action="store_true", help="connect over local TCP instead of Docker exec")
    args = parser.parse_args()

    if not SQL_FILE.exists():
        print(f"Missing Cash allowance test: {SQL_FILE}", file=sys.stderr)
        return 2

    env = load_env()
    sql_text = SQL_FILE.read_text(encoding="utf-8")
    if args.direct or not shutil.which("docker"):
        try:
            result = run_direct(env, sql_text)
        except (OSError, subprocess.TimeoutExpired) as exc:
            print(f"Cash allowance verification failed: {exc}", file=sys.stderr)
            return 1
        if result.stdout:
            print(result.stdout.strip())
        if result.returncode != 0 and result.stderr:
            print(result.stderr.strip(), file=sys.stderr)
        return result.returncode or 0

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
cat > /tmp/joysword-cash-allowance-test.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-cash-allowance-test.sql
"""
    try:
        result = subprocess.run(
            ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
            cwd=ROOT,
            input=sql_text,
            capture_output=True,
            text=True,
            env=command_env,
            timeout=90,
        )
    except (OSError, subprocess.TimeoutExpired) as exc:
        print(f"Cash allowance verification failed: {exc}", file=sys.stderr)
        return 1

    if result.stdout:
        print(result.stdout.strip())
    if result.returncode != 0:
        if result.stderr:
            print(result.stderr.strip(), file=sys.stderr)
        return result.returncode or 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
