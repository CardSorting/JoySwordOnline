#!/usr/bin/env python3
from __future__ import annotations
import os, subprocess
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
env = {}
for line in (ROOT / "Elsword/offline/offline.env").read_text(encoding="utf-8").splitlines():
    if line.strip() and not line.strip().startswith("#") and "=" in line:
        k,v=line.split("=",1); env[k.strip()]=v.strip()
sql = """
SET NOCOUNT ON;
SELECT G.UnitClass, D.DenyCode FROM Game01.dbo.GDenyOption D
JOIN Game01.dbo.GUnit G ON G.UnitUID=D.UnitUID
JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID
WHERE U.UserID=N'admin' AND G.Deleted=0 ORDER BY G.UnitClass, D.DenyCode;
"""
cmd_env = os.environ.copy(); cmd_env["MSSQL_SA_PASSWORD"]=env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/deny.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -W -s'|' -i /tmp/deny.sql"""
r=subprocess.run(["docker","compose","exec","-T","-e","MSSQL_SA_PASSWORD","mssql","bash","-c",bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env)
print(r.stdout)
