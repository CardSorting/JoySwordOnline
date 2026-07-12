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
SELECT G.UnitUID, G.UnitClass, G.Deleted, N.NickName
FROM Game01.dbo.GUnit G
JOIN Account.dbo.MUser U ON U.UserUID = G.UserUID
LEFT JOIN Game01.dbo.GUnitNickName N ON N.UnitUID = G.UnitUID
WHERE U.UserID = N'admin'
ORDER BY G.UnitClass, G.Deleted, G.UnitUID;
"""
cmd_env = os.environ.copy(); cmd_env["MSSQL_SA_PASSWORD"]=env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/nicks.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -W -s'|' -i /tmp/nicks.sql"""
r=subprocess.run(["docker","compose","exec","-T","-e","MSSQL_SA_PASSWORD","mssql","bash","-c",bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env)
print(r.stdout)
