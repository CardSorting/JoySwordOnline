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
DECLARE @els BIGINT = (SELECT TOP 1 G.UnitUID FROM Game01.dbo.GUnit G JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID WHERE U.UserID=N'admin' AND G.UnitClass=8 AND G.Deleted=0);
DECLARE @es BIGINT = (SELECT TOP 1 G.UnitUID FROM Game01.dbo.GUnit G JOIN Account.dbo.MUser U ON U.UserUID=G.UserUID WHERE U.UserID=N'admin' AND G.UnitClass=1 AND G.Deleted=0);
SELECT 'GUnit' tbl, @es es_uid, @els els_uid;
SELECT 'es' who, * FROM Game01.dbo.GUnit WHERE UnitUID=@es;
SELECT 'el' who, * FROM Game01.dbo.GUnit WHERE UnitUID=@els;
SELECT 'es_items' who, ItemID, InventoryCategory, SlotID FROM Game01.dbo.GItem WHERE UnitUID=@es;
SELECT 'el_items' who, ItemID, InventoryCategory, SlotID FROM Game01.dbo.GItem WHERE UnitUID=@els;
SELECT 'es_deny' who, COUNT(*) cnt FROM Game01.dbo.GDenyOption WHERE UnitUID=@es;
SELECT 'el_deny' who, COUNT(*) cnt FROM Game01.dbo.GDenyOption WHERE UnitUID=@els;
"""
cmd_env = os.environ.copy(); cmd_env["MSSQL_SA_PASSWORD"]=env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/cmp.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -W -s'|' -i /tmp/cmp.sql"""
r=subprocess.run(["docker","compose","exec","-T","-e","MSSQL_SA_PASSWORD","mssql","bash","-c",bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env)
print(r.stdout)
if r.stderr: print(r.stderr)
