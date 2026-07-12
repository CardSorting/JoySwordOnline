import subprocess
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"

def load_env() -> dict[str, str]:
    env = {}
    for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            k, v = line.split("=", 1)
            env[k.strip()] = v.strip()
    return env

def main():
    env = load_env()
    cmd_env = {"MSSQL_SA_PASSWORD": env["DB_PASSWORD"]}
    bash = r"""
set -e
CMD=/opt/mssql-tools18/bin/sqlcmd
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -y 0 -Q "
USE Game01;
GO
ALTER PROCEDURE [dbo].[P_GUnit_Userinfo_GET]
	@iUserUID_ [bigint]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT  a.UnitUID
	,       a.UnitClass
	,       a.[Exp]
	,       a.[Level]
	,       a.GamePoint
	,       ISNULL(D.OfficialMatchCnt, 0) as OfficialMatchCnt
	,       ISNULL(D.Grade, 2) as Grade
	,       a.BaseHP
	,       a.AtkPhysic
	,       a.AtkMagic
	,       a.DefPhysic
	,       a.DefMagic
	,       a.SPoint
	,       CASE WHEN a.Deleted = 1 AND b.NickName LIKE '%[_]%' THEN '__DELETED__' ELSE b.NickName END as NickName
	,       a.LastPosition
	,		A.LastDate
	, 		A.Deleted
	, 		C.DelAbleDate
	, 		C.RestoreAbleDate
	FROM dbo.GUnit as a WITH(NOLOCK)
	LEFT OUTER JOIN dbo.GUnitWaitDelete AS C WITH(NOLOCK)
		ON A.UnitUID = C.UnitUID
	LEFT OUTER JOIN dbo.GUnitPVP_Season2 AS D WITH (NOLOCK) 
		ON a.UnitUID = D.UnitUID
	JOIN dbo.GUnitNickName as b WITH(NOLOCK)
		ON a.UserUID = @iUserUID_ 
		AND (
			A.Deleted = 0
			OR ( A.Deleted = 1 AND ISNULL(C.Deleted, 1) = 0)
		) 
		AND a.UnitUID = b.UnitUID;
END;
"
"""
    result = subprocess.run(
        ["docker", "exec", "-i", "-e", "MSSQL_SA_PASSWORD", "joysword-mssql", "bash", "-lc", bash],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
        env=cmd_env,
    )
    print(result.stdout)
    if "error" in result.stdout.lower() or "fail" in result.stdout.lower():
        print("Error patching procedure!")
    else:
        print("Successfully patched P_GUnit_Userinfo_GET stored procedure!")

if __name__ == "__main__":
    main()
