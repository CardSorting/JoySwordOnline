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
SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.gup_create_unit'));
"""

cmd_env = os.environ.copy()
cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/fetch.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -y 0 -i /tmp/fetch.sql"""
r = subprocess.run(["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env, errors="replace")
Path(ROOT / "scratch/gup_create_unit_fetched.txt").write_text(r.stdout, encoding="utf-8", errors="replace")
print("Saved to scratch/gup_create_unit_fetched.txt")
