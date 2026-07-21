#!/usr/bin/env python3
"""Validate the local JoySword SQL Server state before starting game servers."""

from __future__ import annotations

import argparse
import os
import shutil
import socket
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
    "LOGIN_MODE": "PUBLIC",
    "ADMIN_USER": "admin",
}

REQUIRED_DATABASES = ("Account", "ES_BILLING", "Game01", "Statistics")

HEALTH_SQL_TEMPLATE = r"""
SET NOCOUNT ON;
USE [Account];

DECLARE @LoginMode NVARCHAR(20) = {login_mode};
DECLARE @AdminUser NVARCHAR(20) = {admin_user};

IF DB_ID(N'Account') IS NULL
    THROW 50000, 'Missing database: Account. Run scripts\restore-databases.bat.', 1;
IF DB_ID(N'ES_BILLING') IS NULL
    THROW 50000, 'Missing database: ES_BILLING. Run scripts\restore-databases.bat.', 1;
IF DB_ID(N'Game01') IS NULL
    THROW 50000, 'Missing database: Game01. Run scripts\restore-databases.bat.', 1;
IF DB_ID(N'Statistics') IS NULL
    THROW 50000, 'Missing database: Statistics. Run scripts\restore-databases.bat.', 1;

IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashAllowancePolicy', N'U') IS NULL
    THROW 50000, 'Missing Cash allowance policy. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashAllowanceClaim', N'U') IS NULL
    THROW 50000, 'Missing Cash allowance claim ledger. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashStarterClaim', N'U') IS NULL
    THROW 50000, 'Missing Starter Cache claim ledger. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashAllowance_GetStatus', N'P') IS NULL
    THROW 50000, 'Missing Cash allowance status procedure. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashAllowance_Claim', N'P') IS NULL
    THROW 50000, 'Missing Cash allowance claim procedure. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCashStarter_Claim', N'P') IS NULL
    THROW 50000, 'Missing Starter Cache claim procedure. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCollectorTier', N'U') IS NULL
    THROW 50000, 'Missing Collector Rank tiers. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCollectorReward', N'U') IS NULL
    THROW 50000, 'Missing Collector Rank reward ledger. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCollector_GetStatus', N'P') IS NULL
    THROW 50000, 'Missing Collector Rank status procedure. Run scripts\install-cash-allowance.py.', 1;
IF OBJECT_ID(N'ES_BILLING.dbo.JoySwordCollector_ClaimReward', N'P') IS NULL
    THROW 50000, 'Missing Collector Rank reward procedure. Run scripts\install-cash-allowance.py.', 1;
IF (SELECT COUNT(*) FROM ES_BILLING.dbo.JoySwordCollectorTier) <> 7
    THROW 50000, 'Collector Rank tier policy is incomplete. Run scripts\install-cash-allowance.py.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM ES_BILLING.dbo.JoySwordCashAllowancePolicy
    WHERE PolicyID = 1
      AND BaseReward > 0
      AND StarterTarget >= BaseReward
      AND CashCap >= StarterTarget
      AND CashCap >= ISNULL((SELECT MAX(NO_SALEPRICE) FROM ES_BILLING.dbo.EB_Product WHERE DI_ISSALE = 1), 0)
)
    THROW 50000, 'Cash allowance policy is invalid or cannot cover the current maximum catalog price.', 1;
IF EXISTS (
    SELECT 1 FROM ES_BILLING.dbo.EB_Product
    WHERE DI_ISSALE = 1 AND (NO_SALEPRICE < 500 OR NO_SALEPRICE > 60000)
)
    THROW 50000, 'Cash Shop contains prices outside the normalized 500-60000 economy range. Run scripts\restore-cashshop.py.', 1;
IF OBJECT_ID(N'Game01.dbo.P_GEvent_GateOfDarkness_UPD', N'P') IS NULL
    THROW 50000, 'Missing Gate of Darkness event procedure. Run scripts\install-creation-fixes.py.', 1;
IF NOT EXISTS (
    SELECT 1 FROM Game01.sys.indexes
     WHERE object_id = OBJECT_ID(N'Game01.dbo.GItemInventorySize')
       AND name = 'UIX_GItemInventorySize_UnitUID_Category'
)
    THROW 50000, 'Missing GItemInventorySize unique index. Run scripts\install-creation-fixes.py.', 1;

IF OBJECT_ID(N'dbo.mup_auth_user', N'P') IS NULL
    THROW 50000, 'Missing Account.dbo.mup_auth_user. The Account restore is incomplete.', 1;
IF OBJECT_ID(N'[Statistics].dbo.LServerList', N'U') IS NULL
    THROW 50000, 'Missing Statistics.dbo.LServerList table in Statistics database.', 1;
IF NOT EXISTS (SELECT 1 FROM [Statistics].dbo.LServerList WHERE Enable = 1)
    THROW 50000, 'No enabled servers registered in Statistics.dbo.LServerList. Run scripts\setup-offline.bat.', 1;
IF OBJECT_ID(N'dbo.mup_get_userinfo', N'P') IS NULL
    THROW 50000, 'Missing Account.dbo.mup_get_userinfo. The Account restore is incomplete.', 1;
IF OBJECT_ID(N'dbo.mup_auth_global_user', N'P') IS NULL
    THROW 50000, 'Missing Account.dbo.mup_auth_global_user. The Account restore is incomplete.', 1;
IF OBJECT_ID(N'dbo.JoySwordEnsurePublicIdentity', N'P') IS NULL
    THROW 50000, 'Missing hotpath account identity repair. Run scripts\install-hotpath-account-creation.ps1.', 1;

DECLARE @AuthUserDefinition NVARCHAR(MAX) = ISNULL(OBJECT_DEFINITION(OBJECT_ID(N'dbo.mup_auth_user')), N'');
DECLARE @GetUserDefinition NVARCHAR(MAX) = ISNULL(OBJECT_DEFINITION(OBJECT_ID(N'dbo.mup_get_userinfo')), N'');
DECLARE @GlobalAuthDefinition NVARCHAR(MAX) = ISNULL(OBJECT_DEFINITION(OBJECT_ID(N'dbo.mup_auth_global_user')), N'');
DECLARE @HotpathDefinition NVARCHAR(MAX) = ISNULL(OBJECT_DEFINITION(OBJECT_ID(N'dbo.JoySwordEnsurePublicIdentity')), N'');

IF @AuthUserDefinition NOT LIKE N'%JoySwordEnsurePublicIdentity%'
    THROW 50000, 'mup_auth_user is not wired to hotpath account creation. Run scripts\install-hotpath-account-creation.ps1.', 1;
IF @HotpathDefinition NOT LIKE N'%Game01.dbo.users%'
    THROW 50000, 'Hotpath account repair does not create Game01.dbo.users rows. Run scripts\install-hotpath-account-creation.ps1.', 1;
IF @HotpathDefinition NOT LIKE N'%Game01.dbo.VCGAVirtualCash%'
    THROW 50000, 'Hotpath account repair does not create Game01.dbo.VCGAVirtualCash rows. Run scripts\install-hotpath-account-creation.ps1.', 1;
IF @HotpathDefinition NOT LIKE N'%ES_BILLING.dbo.EB_Cash%'
    THROW 50000, 'Hotpath account repair does not create ES_BILLING cash rows. Run scripts\install-hotpath-account-creation.ps1.', 1;

IF @LoginMode = N'PUBLIC'
BEGIN
    IF @AuthUserDefinition LIKE N'%SET @strUserID_ = ''admin''%'
        THROW 50000, 'LOGIN_MODE=PUBLIC but mup_auth_user still forces every login to admin. Restore databases and rerun scripts\setup-offline.bat.', 1;
    IF @GetUserDefinition LIKE N'%SET @strUserID = ''admin''%'
        THROW 50000, 'LOGIN_MODE=PUBLIC but mup_get_userinfo still forces every login to admin. Restore databases and rerun scripts\setup-offline.bat.', 1;
    IF @GlobalAuthDefinition LIKE N'%SET @strUserID_ = ''admin''%'
        THROW 50000, 'LOGIN_MODE=PUBLIC but mup_auth_global_user still forces every login to admin. Restore databases and rerun scripts\setup-offline.bat.', 1;
END
ELSE IF @LoginMode = N'SINGLE_ADMIN'
BEGIN
    IF @AuthUserDefinition NOT LIKE N'%SET @strUserID_ = ''admin''%'
        THROW 50000, 'LOGIN_MODE=SINGLE_ADMIN but admin login bypass is not installed. Rerun scripts\setup-offline.bat.', 1;
END
ELSE
BEGIN
    THROW 50000, 'Unsupported LOGIN_MODE. Use PUBLIC or SINGLE_ADMIN.', 1;
END

IF NOT EXISTS (SELECT 1 FROM Account.dbo.MUser WHERE UserID = @AdminUser)
    THROW 50000, 'Missing admin account row. Run scripts\setup-offline.bat to apply account seed.', 1;
IF NOT EXISTS (SELECT 1 FROM Account.dbo.TUser WHERE ID = @AdminUser)
    THROW 50000, 'Missing admin TUser row. Run scripts\setup-offline.bat to apply admin tool seed.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM Account.dbo.MUser AS U
    JOIN Account.dbo.MUserAuthority AS A ON A.UserUID = U.UserUID
    WHERE U.UserID = @AdminUser
      AND A.AuthLevel >= 4
)
    THROW 50000, 'Admin account is missing GM authority. Run scripts\setup-offline.bat again.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM Account.dbo.MUser AS U
    JOIN ES_BILLING.dbo.EB_Cash AS C ON C.CD_USERUID = U.UserUID
    WHERE U.UserID = @AdminUser
)
    THROW 50000, 'Missing admin billing cash row. Run scripts\setup-offline.bat again.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM Account.dbo.MUser AS U
    JOIN ES_BILLING.dbo.EB_Cash AS C ON C.CD_USERUID = U.UserUID
    WHERE U.UserID = @AdminUser
      AND ISNULL(C.NO_REMAIN_CASH, 0) > 0
)
    THROW 50000, 'Admin ES_BILLING cash is 0. Run scripts\setup-offline.bat again.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM Account.dbo.MUser AS U
    JOIN Game01.dbo.VCGAVirtualCash AS V ON V.LoginUID = CONVERT(INT, U.UserUID)
    WHERE U.UserID = @AdminUser
)
    THROW 50000, 'Missing admin virtual cash row. Run scripts\setup-offline.bat again.', 1;
IF NOT EXISTS (
    SELECT 1
    FROM Account.dbo.MUser AS U
    JOIN Game01.dbo.VCGAVirtualCash AS V ON V.LoginUID = CONVERT(INT, U.UserUID)
    WHERE U.UserID = @AdminUser
      AND ISNULL(V.VCPoint, 0) > 0
)
    THROW 50000, 'Admin virtual cash is 0. Run scripts\setup-offline.bat again.', 1;

DECLARE @ProductCount INT;
SELECT @ProductCount = COUNT(*) FROM ES_BILLING.dbo.EB_Product;
IF ISNULL(@ProductCount, 0) = 0
    THROW 50000, 'ES_BILLING has no cash shop products. Run scripts\restore-cashshop.py.', 1;

DECLARE @WearableAttrMissing INT;
SELECT @WearableAttrMissing = COUNT(*)
FROM ES_BILLING.dbo.EB_Product AS P
WHERE P.CD_CATEGORYNO IN (11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27)
  AND NOT EXISTS (
      SELECT 1
      FROM ES_BILLING.dbo.EB_ProductAttribute AS A
      WHERE A.CD_PRODUCTNO = P.CD_PRODUCTNO
        AND A.NO_ATTRIBUTE1 IS NOT NULL
  );
IF ISNULL(@WearableAttrMissing, 0) > 0
    THROW 50000, 'Wearable cash shop products are missing default EB_ProductAttribute socket rows. Run scripts\restore-cashshop.py.', 1;

DECLARE @MultiSocketSkipWrong INT;
SELECT @MultiSocketSkipWrong = COUNT(*)
FROM ES_BILLING.dbo.EB_Product AS P
JOIN ES_BILLING.dbo.EB_ProductAttribute AS A ON A.CD_PRODUCTNO = P.CD_PRODUCTNO
WHERE P.CD_CATEGORYNO IN (11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27)
  AND A.NO_ATTRIBUTE2 IS NOT NULL
  AND ISNULL(P.DI_ISCASHINVENSKIP, 0) <> 0;
IF ISNULL(@MultiSocketSkipWrong, 0) > 0
    THROW 50000, 'Multi-socket wearables must keep DI_ISCASHINVENSKIP=0. Run scripts\restore-cashshop.py.', 1;

-- Self-Healing: Detect and terminate orphaned sessions holding blocking locks > 15s
DECLARE @BlockedSessionID INT;
SELECT TOP 1 @BlockedSessionID = blocking_session_id
FROM sys.dm_exec_requests
WHERE blocking_session_id > 0
  AND wait_time > 15000;

IF @BlockedSessionID IS NOT NULL AND @BlockedSessionID > 50
BEGIN
    DECLARE @KillSql NVARCHAR(50) = N'KILL ' + CAST(@BlockedSessionID AS NVARCHAR(10));
    EXEC sp_executesql @KillSql;
    PRINT 'Self-Healed: Terminated blocking SQL session ' + CAST(@BlockedSessionID AS NVARCHAR(10));
END

-- Self-Maintenance: Refresh table statistics for query performance
UPDATE STATISTICS Game01.dbo.GUnit;
UPDATE STATISTICS Account.dbo.MUser;

-- Self-Maintenance: Ensure Delayed Durability is enabled for high write throughput
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Game01' AND delayed_durability = 0)
    ALTER DATABASE [Game01] SET DELAYED_DURABILITY = FORCED;

-- Self-Maintenance: Pre-Warm Procedure Execution Plans for fast binary handshake
IF OBJECT_ID(N'dbo.lup_verify_server_connect', N'P') IS NOT NULL
    EXEC dbo.lup_verify_server_connect @iServerType = 0, @strServerIP = N'127.0.0.1', @iPort1 = 9100;
IF OBJECT_ID(N'dbo.P_LServerList_GET_verify_connect', N'P') IS NOT NULL
    EXEC dbo.P_LServerList_GET_verify_connect @iServerType = 0, @strServerIP = N'127.0.0.1', @iPort1 = 9100;

SELECT 'OK: JoySword database healthcheck passed for ' + @LoginMode + ' mode.' AS Result;
"""


def sql_nvarchar(value: str) -> str:
    return "N'" + value.replace("'", "''") + "'"


def login_mode(env: dict[str, str]) -> str:
    mode = env.get("LOGIN_MODE", "PUBLIC").strip().upper()
    if mode not in {"PUBLIC", "SINGLE_ADMIN"}:
        raise ValueError(f"Unsupported LOGIN_MODE: {mode}. Use PUBLIC or SINGLE_ADMIN.")
    return mode


def health_sql(env: dict[str, str]) -> str:
    admin_user = env.get("ADMIN_USER", "admin").strip() or "admin"
    return HEALTH_SQL_TEMPLATE.format(
        login_mode=sql_nvarchar(login_mode(env)),
        admin_user=sql_nvarchar(admin_user),
    )


def load_env() -> dict[str, str]:
    values = dict(DEFAULTS)
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if not path.exists():
        return values

    for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()
    return values


def tcp_open(host: str, port: int, timeout: float) -> bool:
    try:
        with socket.create_connection((host, port), timeout=timeout):
            return True
    except OSError:
        return False


def docker_mssql_running(timeout: int) -> bool:
    if not shutil.which("docker"):
        return False
    try:
        result = subprocess.run(
            ["docker", "compose", "ps", "mssql", "--status", "running"],
            cwd=ROOT,
            capture_output=True,
            text=True,
            timeout=timeout,
        )
    except (OSError, subprocess.TimeoutExpired):
        return False
    return result.returncode == 0 and "mssql" in result.stdout.lower()


def run_docker_sql(env: dict[str, str], timeout: int, sql: str) -> subprocess.CompletedProcess[str]:
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
cat > /tmp/joysword-db-healthcheck.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-db-healthcheck.sql
"""
    return subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        env=command_env,
        timeout=timeout,
    )


def find_sqlcmd() -> str | None:
    candidate = shutil.which("sqlcmd")
    if candidate:
        return candidate

    for path in (
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe",
    ):
        if Path(path).exists():
            return path
    return None


def run_native_sql(env: dict[str, str], timeout: int, sql: str) -> subprocess.CompletedProcess[str] | None:
    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        return None
    server = f"tcp:{env['DB_HOST']},{env['DB_PORT']}"
    base_cmd = [sqlcmd, "-S", server, "-U", env["DB_USER"], "-P", env["DB_PASSWORD"], "-b", "-Q", sql]
    result = subprocess.run(
        [*base_cmd[:7], "-C", *base_cmd[7:]],
        capture_output=True,
        text=True,
        timeout=timeout,
    )
    if result.returncode == 0:
        return result
    combined = f"{result.stdout}\n{result.stderr}".lower()
    if "unknown option" in combined and "-c" in combined:
        return subprocess.run(base_cmd, capture_output=True, text=True, timeout=timeout)
    return result


def print_result(result: subprocess.CompletedProcess[str], quiet: bool) -> int:
    output = (result.stdout or "").strip()
    error = (result.stderr or "").strip()
    if result.returncode == 0:
        if not quiet:
            print(output or "OK: JoySword offline database healthcheck passed.")
        return 0

    print("Database healthcheck failed.", file=sys.stderr)
    if output:
        print(output, file=sys.stderr)
    if error:
        print(error, file=sys.stderr)
    return result.returncode or 1


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="only print failures")
    parser.add_argument("--allow-tcp-only", action="store_true", help="pass with a warning when SQL is reachable but sqlcmd is unavailable")
    parser.add_argument("--timeout", type=int, default=45, help="seconds before SQL/Docker checks time out")
    args = parser.parse_args()

    env = load_env()
    try:
        db_port = int(env["DB_PORT"])
    except ValueError:
        print(f"Invalid DB_PORT: {env['DB_PORT']}", file=sys.stderr)
        return 2

    if not tcp_open(env["DB_HOST"], db_port, timeout=2.0):
        print(
            f"SQL Server is not accepting TCP connections at {env['DB_HOST']}:{db_port}. "
            "Run scripts\\start-database.bat or scripts\\setup-offline.bat.",
            file=sys.stderr,
        )
        return 1

    try:
        sql = health_sql(env)
        if docker_mssql_running(args.timeout):
            return print_result(run_docker_sql(env, args.timeout, sql), args.quiet)

        native_result = run_native_sql(env, args.timeout, sql)
        if native_result is not None:
            return print_result(native_result, args.quiet)
    except subprocess.TimeoutExpired:
        print(f"Database healthcheck timed out after {args.timeout} seconds.", file=sys.stderr)
        return 124
    except ValueError as exc:
        print(str(exc), file=sys.stderr)
        return 2

    message = "SQL is reachable, but neither Docker mssql nor sqlcmd is available for a deep database check."
    if args.allow_tcp_only:
        if not args.quiet:
            print(f"Warning: {message}")
        return 0
    print(message, file=sys.stderr)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
