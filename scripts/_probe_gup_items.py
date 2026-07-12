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
DECLARE @UserUID BIGINT;
SELECT @UserUID = UserUID FROM Account.dbo.MUser WHERE UserID = N'admin';

DELETE FROM Game01.dbo.GItem WHERE UnitUID IN (
  SELECT UnitUID FROM Game01.dbo.GUnitNickName WHERE NickName = N'__probe_es__'
);

DELETE FROM Game01.dbo.GUnitNickName WHERE NickName = N'__probe_es__';
DELETE FROM Game01.dbo.GUnit WHERE UnitUID IN (
  SELECT UnitUID FROM Game01.dbo.GUnitNickName WHERE NickName = N'__probe_es__'
);

-- Hard cleanup any partial probe unit
DECLARE @old BIGINT;
SELECT @old = G.UnitUID FROM Game01.dbo.GUnit G
JOIN Game01.dbo.GUnitNickName N ON N.UnitUID = G.UnitUID
WHERE N.NickName = N'__probe_es__';
IF @old IS NOT NULL
BEGIN
  DELETE FROM Game01.dbo.GItem WHERE UnitUID = @old;
  DELETE FROM Game01.dbo.GUnitNickName WHERE UnitUID = @old;
  DELETE FROM Game01.dbo.GUnit WHERE UnitUID = @old;
END

DECLARE @ok INT = 0;
DECLARE @unit BIGINT = 0;
EXEC Game01.dbo.gup_create_unit @iUserUID_ = @UserUID, @strNickName_ = N'__probe_es__', @iUnitClass_ = 1, @iOK = @ok, @iUnitUID = @unit;

SELECT TOP 1 @unit = G.UnitUID FROM Game01.dbo.GUnit G
JOIN Game01.dbo.GUnitNickName N ON N.UnitUID = G.UnitUID
WHERE N.NickName = N'__probe_es__'
ORDER BY G.UnitUID DESC;

SELECT @ok AS gup_ok, @unit AS unit_uid;
SELECT ItemID, InventoryCategory, SlotID, UsageType, Endurance FROM Game01.dbo.GItem WHERE UnitUID = @unit ORDER BY SlotID;
SELECT UnitClass, BaseHP, AtkPhysic, Level FROM Game01.dbo.GUnit WHERE UnitUID = @unit;
"""
cmd_env = os.environ.copy(); cmd_env["MSSQL_SA_PASSWORD"]=env["DB_PASSWORD"]
bash = r"""set -e; CMD=/opt/mssql-tools18/bin/sqlcmd; cat > /tmp/probe.sql; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -W -s'|' -i /tmp/probe.sql"""
r=subprocess.run(["docker","compose","exec","-T","-e","MSSQL_SA_PASSWORD","mssql","bash","-c",bash], cwd=ROOT, input=sql, capture_output=True, text=True, env=cmd_env)
print(r.stdout)
print(r.stderr)
