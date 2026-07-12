#!/usr/bin/env python3
import os, subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
env = {}
for line in (ROOT / "Elsword/offline/offline.env").read_text(encoding="utf-8").splitlines():
    if line.strip() and not line.strip().startswith("#") and "=" in line:
        k,v = line.split("=", 1)
        env[k.strip()] = v.strip()

sql = """
USE Game01;
SET NOCOUNT ON;
PRINT '--- GDenyOption Columns ---';
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'GDenyOption';

PRINT '--- GDenyCode Columns ---';
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'GDenyCode';

PRINT '--- GDenyCode Rows ---';
SELECT * FROM GDenyCode;

PRINT '--- Sample GDenyOption Rows ---';
SELECT TOP 20 * FROM GDenyOption;
"""

cmd_env = os.environ.copy()
cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/inspect.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -W -s'|' -i /tmp/inspect.sql"""
r = subprocess.run(["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env)
print("STDOUT:")
print(r.stdout)
print("STDERR:")
print(r.stderr)
