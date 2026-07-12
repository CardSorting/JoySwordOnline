#!/usr/bin/env python3
"""Manage JoySword public user accounts."""

from __future__ import annotations

import argparse
import csv
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))


ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
    "ADMIN_STARTING_CASH": "2000000000",
    "PLAYER_STARTING_CASH": "0",
}

USER_ID_PATTERN = re.compile(r"^[A-Za-z0-9_]{3,20}$")


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


def sql_nvarchar(value: str) -> str:
    return "N'" + value.replace("'", "''") + "'"


def validate_user_id(user_id: str) -> None:
    if not USER_ID_PATTERN.match(user_id):
        raise SystemExit(f"Invalid user id: {user_id}. Use 3-20 letters, numbers, or underscore.")


def validate_password(password: str) -> None:
    if len(password) < 1 or len(password) > 20:
        raise SystemExit("Password must be 1-20 characters for this legacy server build.")
    if "\n" in password or "\r" in password:
        raise SystemExit("Password cannot contain newlines.")


def validate_cash(cash: int) -> None:
    if cash < 0 or cash > 2_000_000_000:
        raise SystemExit("Cash must be between 0 and 2000000000.")


def validate_auth_level(auth_level: int) -> None:
    if auth_level < 0 or auth_level > 4:
        raise SystemExit("Auth level must be between 0 and 4.")


def create_user_sql(user_id: str, password: str, cash: int, auth_level: int) -> str:
    validate_user_id(user_id)
    validate_password(password)
    validate_cash(cash)
    validate_auth_level(auth_level)

    return f"""
USE Account;
SET NOCOUNT ON;

DECLARE @UserID NVARCHAR(20) = {sql_nvarchar(user_id)};
DECLARE @Password NVARCHAR(20) = {sql_nvarchar(password)};
DECLARE @Cash BIGINT = {cash};
DECLARE @AuthLevel INT = {auth_level};
DECLARE @UserUID BIGINT;

IF EXISTS (SELECT 1 FROM dbo.MUser WHERE UserID = @UserID)
    THROW 50000, 'User already exists.', 1;
IF EXISTS (SELECT 1 FROM Game01.dbo.users WHERE Login = @UserID)
    THROW 50001, 'Game profile already exists.', 1;

INSERT INTO dbo.MUser (
    UserID,
    Password,
    UserName,
    PublisherSN,
    Gender,
    Age,
    RegDate,
    DelDate,
    PlayDayCnt,
    PlayGuide,
    LastLogin,
    IsRecommend,
    GuestUser,
    IsLogin,
    SecurityType,
    ChannelCode
)
VALUES (
    @UserID,
    @Password,
    @UserID,
    7,
    1,
    0,
    GETDATE(),
    GETDATE(),
    0,
    1,
    GETDATE(),
    0,
    0,
    0,
    0,
    0
);

SELECT @UserUID = CONVERT(BIGINT, SCOPE_IDENTITY());

SET IDENTITY_INSERT Game01.dbo.users ON;

INSERT INTO Game01.dbo.users (
    Login,
    passwd,
    sex,
    LoginUID,
    firstLogin,
    lastConnect,
    lastLogin,
    playTime,
    gamePoint,
    IPAddress,
    Connecting,
    ModeLevel,
    Grade
)
VALUES (
    @UserID,
    @Password,
    '0',
    CONVERT(INT, @UserUID),
    GETDATE(),
    GETDATE(),
    GETDATE(),
    0,
    0,
    N'0.0.0.0',
    0,
    0x00000000,
    0
);

SET IDENTITY_INSERT Game01.dbo.users OFF;

IF @AuthLevel > 0
BEGIN
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel)
    VALUES (@UserUID, @AuthLevel);
END

INSERT INTO ES_BILLING.dbo.EB_Cash (
    CD_USERUID,
    ST_USERID,
    NO_TOTAL_CHARGE_CASH,
    NO_TOTAL_CHARGE_BONUS,
    NO_REMAIN_CASH,
    NO_REMAIN_BONUS,
    DT_FIRST_CHARGE_DATE,
    DT_RECHARGE_DATE
)
VALUES (
    @UserUID,
    @UserID,
    @Cash,
    0,
    @Cash,
    0,
    GETDATE(),
    GETDATE()
);

MERGE Game01.dbo.VCGAVirtualCash AS target
USING (
    SELECT CONVERT(INT, @UserUID) AS LoginUID,
           CONVERT(INT, @Cash) AS VCPoint
) AS source
ON target.LoginUID = source.LoginUID
WHEN MATCHED THEN
    UPDATE SET VCPoint = source.VCPoint
WHEN NOT MATCHED THEN
    INSERT (LoginUID, VCPoint)
    VALUES (source.LoginUID, source.VCPoint);
SELECT @UserUID AS UserUID, @UserID AS UserID, @AuthLevel AS AuthLevel, @Cash AS StartingCash;
"""


def list_users_sql(limit: int) -> str:
    if limit < 1 or limit > 1000:
        raise SystemExit("Limit must be between 1 and 1000.")
    return f"""
USE Account;
SET NOCOUNT ON;

SELECT TOP ({limit})
    U.UserUID,
    U.UserID,
    U.UserName,
    ISNULL(A.AuthLevel, 0) AS AuthLevel,
    ISNULL(C.NO_REMAIN_CASH, 0) AS Cash
FROM dbo.MUser AS U
LEFT JOIN dbo.MUserAuthority AS A ON A.UserUID = U.UserUID
LEFT JOIN ES_BILLING.dbo.EB_Cash AS C ON C.CD_USERUID = U.UserUID
ORDER BY U.UserUID;
"""


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


def run_sql(sql: str, timeout: int) -> int:
    env = load_env()
    if docker_mssql_running(timeout):
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
cat > /tmp/joysword-manage-users.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -i /tmp/joysword-manage-users.sql
"""
        result = subprocess.run(
            ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
            cwd=ROOT,
            input=sql,
            capture_output=True,
            text=True,
            env=command_env,
            timeout=timeout,
        )
    else:
        sqlcmd = find_sqlcmd()
        if not sqlcmd:
            print("Neither Docker mssql nor sqlcmd is available.", file=sys.stderr)
            return 1
        server = f"tcp:{env['DB_HOST']},{env['DB_PORT']}"
        result = subprocess.run(
            [sqlcmd, "-S", server, "-U", env["DB_USER"], "-P", env["DB_PASSWORD"], "-C", "-b", "-Q", sql],
            capture_output=True,
            text=True,
            timeout=timeout,
        )

    if result.stdout.strip():
        print(result.stdout.strip())
    if result.stderr.strip():
        print(result.stderr.strip(), file=sys.stderr)
    return result.returncode


def create_from_csv(path: Path, cash: int, auth_level: int) -> str:
    statements: list[str] = []
    with path.open(newline="", encoding="utf-8-sig") as handle:
        reader = csv.DictReader(handle)
        if not reader.fieldnames or "user_id" not in reader.fieldnames or "password" not in reader.fieldnames:
            raise SystemExit("CSV must include user_id and password columns.")
        for row in reader:
            user_id = (row.get("user_id") or "").strip()
            password = row.get("password") or ""
            row_cash = int((row.get("cash") or cash))
            row_auth = int((row.get("auth_level") or auth_level))
            statements.append(create_user_sql(user_id, password, row_cash, row_auth))
    if not statements:
        raise SystemExit("CSV did not contain any users.")
    return "\n".join(statements)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout", type=int, default=45, help="seconds before SQL execution times out")
    subparsers = parser.add_subparsers(dest="command", required=True)

    env = load_env()
    default_cash = int(env.get("PLAYER_STARTING_CASH", "0"))

    create = subparsers.add_parser("create", help="create one public user")
    create.add_argument("user_id")
    create.add_argument("password")
    create.add_argument("--cash", type=int, default=default_cash)
    create.add_argument("--auth-level", type=int, default=0)

    bulk = subparsers.add_parser("bulk", help="create users from CSV with user_id,password columns")
    bulk.add_argument("csv_path", type=Path)
    bulk.add_argument("--cash", type=int, default=default_cash)
    bulk.add_argument("--auth-level", type=int, default=0)

    list_cmd = subparsers.add_parser("list", help="list users")
    list_cmd.add_argument("--limit", type=int, default=100)



    args = parser.parse_args()

    try:
        if args.command == "create":
            sql = create_user_sql(args.user_id, args.password, args.cash, args.auth_level)
        elif args.command == "bulk":
            sql = create_from_csv(args.csv_path, args.cash, args.auth_level)

        else:
            sql = list_users_sql(args.limit)
        return run_sql(sql, args.timeout)
    except subprocess.TimeoutExpired:
        print(f"SQL execution timed out after {args.timeout} seconds.", file=sys.stderr)
        return 124


if __name__ == "__main__":
    raise SystemExit(main())
