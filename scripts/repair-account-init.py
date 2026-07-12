#!/usr/bin/env python3
"""Detect and repair partially-initialized JoySword accounts.

Client-created accounts that predate the canonical registration fix authenticate
fine but are missing their downstream gameplay rows -- most importantly
Game01.dbo.users and Game01.dbo.VCGAVirtualCash -- so the GameServer resolves
their UID to 0 and channel entry fails.

This tool reports the exact missing rows per account (DRY RUN by default) and,
when run with --apply, backfills them idempotently by calling the canonical
stored procedure Account.dbo.JoySwordEnsurePublicIdentity. It NEVER rewrites
passwords, NEVER touches already-complete accounts, NEVER duplicates rows, and
NEVER runs a destructive statement.

Usage:
    python scripts/repair-account-init.py                 # dry run, all accounts
    python scripts/repair-account-init.py --user someUser # dry run, one account
    python scripts/repair-account-init.py --apply         # repair broken accounts
    python scripts/repair-account-init.py --apply --user someUser
"""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
}

# Row separator used to split the diagnostic result set into columns.
SEP = "|"


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


def diagnostic_sql(user_filter: str | None) -> str:
    """Return one row per account with a flag for each required companion row.

    Only accounts that fit the legacy Game01 32-bit LoginUID space are eligible
    for Game01 rows; accounts outside that range are reported but their Game01
    columns are marked N/A so we never claim a false 'broken' state.
    """
    where = ""
    if user_filter:
        where = f"AND U.UserID = {sql_nvarchar(user_filter)}"
    return f"""
SET NOCOUNT ON;
USE Account;

SELECT
    CONVERT(NVARCHAR(20), U.UserUID) + '{SEP}' +
    U.UserID + '{SEP}' +
    CASE WHEN EXISTS (SELECT 1 FROM dbo.MUserAuthority A WHERE A.UserUID = U.UserUID) THEN '1' ELSE '0' END + '{SEP}' +
    CASE WHEN EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash C WHERE C.CD_USERUID = U.UserUID) THEN '1' ELSE '0' END + '{SEP}' +
    CASE
        WHEN U.UserUID NOT BETWEEN 0 AND 2147483647 THEN 'x'
        WHEN EXISTS (SELECT 1 FROM Game01.dbo.users G WHERE G.LoginUID = CONVERT(INT, U.UserUID) OR G.Login = U.UserID) THEN '1'
        ELSE '0'
    END + '{SEP}' +
    CASE
        WHEN U.UserUID NOT BETWEEN 0 AND 2147483647 THEN 'x'
        -- Virtual cash is FK-tied to Game01.dbo.users.LoginUID, which for legacy
        -- accounts may differ from UserUID. Resolve through the users row (by the
        -- account's Login) so misaligned legacy accounts are not false-flagged.
        WHEN EXISTS (
            SELECT 1
            FROM Game01.dbo.users G
            JOIN Game01.dbo.VCGAVirtualCash V ON V.LoginUID = G.LoginUID
            WHERE G.Login = U.UserID OR G.LoginUID = CONVERT(INT, U.UserUID)
        ) THEN '1'
        ELSE '0'
    END
FROM dbo.MUser U
WHERE 1 = 1 {where}
ORDER BY U.UserUID;
"""


def repair_sql(user_id: str, password: str, publisher_sn: str) -> str:
    return f"""
SET NOCOUNT ON;
USE Account;

DECLARE @UID BIGINT = 0, @OK INT = 0;
EXEC dbo.JoySwordEnsurePublicIdentity
    @strUserID_ = {sql_nvarchar(user_id)},
    @strPassword_ = {sql_nvarchar(password)},
    @strUserName_ = {sql_nvarchar(user_id[:16])},
    @iPublisherSN_ = {int(publisher_sn) if str(publisher_sn).lstrip('-').isdigit() else 7},
    @bGender_ = 1,
    @iAge_ = 0,
    @iGuestUser_ = 0,
    @iChannelCode = 0,
    @iUserUID = @UID OUTPUT,
    @iOK = @OK OUTPUT;
SELECT CONVERT(NVARCHAR(20), @OK) + '{SEP}' + CONVERT(NVARCHAR(20), @UID);
"""


def account_context_sql(user_id: str) -> str:
    """Fetch Password + PublisherSN so the repair mirrors the existing account."""
    return f"""
SET NOCOUNT ON;
USE Account;
SELECT Password + '{SEP}' + CONVERT(NVARCHAR(20), ISNULL(PublisherSN, 7))
FROM dbo.MUser WITH (NOLOCK)
WHERE UserID = {sql_nvarchar(user_id)};
"""


def find_sqlcmd() -> str | None:
    if candidate := shutil.which("sqlcmd"):
        return candidate
    for path in (
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe",
    ):
        if Path(path).exists():
            return path
    return None


def docker_mssql_running() -> bool:
    if not shutil.which("docker"):
        return False
    try:
        result = subprocess.run(
            ["docker", "compose", "ps", "mssql", "--status", "running"],
            cwd=ROOT, capture_output=True, text=True, timeout=30,
        )
    except (OSError, subprocess.TimeoutExpired):
        return False
    return result.returncode == 0 and "mssql" in result.stdout.lower()


def run_sql(env: dict[str, str], sql: str, timeout: int = 60) -> subprocess.CompletedProcess[str]:
    if docker_mssql_running():
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
cat > /tmp/joysword-repair.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -h -1 -W -s "|" -b -i /tmp/joysword-repair.sql
"""
        return subprocess.run(
            ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
            cwd=ROOT, input=sql, capture_output=True, text=True, env=command_env, timeout=timeout,
        )

    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        raise RuntimeError("Neither Docker mssql nor sqlcmd is available.")
    with tempfile.NamedTemporaryFile(mode="w", suffix=".sql", encoding="utf-8", delete=False) as tf:
        tf.write(sql)
        temp_name = tf.name
    try:
        server = f"tcp:{env['DB_HOST']},{env['DB_PORT']}"
        command = [sqlcmd, "-S", server, "-U", env["DB_USER"], "-P", env["DB_PASSWORD"],
                   "-C", "-h", "-1", "-W", "-s", SEP, "-b", "-i", temp_name]
        result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=timeout)
        if result.returncode != 0 and "unknown option" in (result.stderr or "").lower():
            command.remove("-C")
            result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=timeout)
        return result
    finally:
        try:
            os.unlink(temp_name)
        except OSError:
            pass


def parse_rows(stdout: str) -> list[list[str]]:
    rows = []
    for line in stdout.splitlines():
        line = line.rstrip()
        if not line or SEP not in line:
            continue
        if line.lower().startswith("changed database context"):
            continue
        rows.append([c.strip() for c in line.split(SEP)])
    return rows


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--apply", action="store_true", help="apply repairs (default is a dry run)")
    parser.add_argument("--user", help="restrict to a single UserID")
    parser.add_argument("--timeout", type=int, default=60, help="seconds before SQL times out")
    args = parser.parse_args()

    env = load_env()

    try:
        diag = run_sql(env, diagnostic_sql(args.user), args.timeout)
    except (RuntimeError, OSError, subprocess.TimeoutExpired) as exc:
        print(f"Diagnostic query failed: {exc}", file=sys.stderr)
        return 1
    if diag.returncode != 0:
        print("Diagnostic query failed.", file=sys.stderr)
        print((diag.stdout or "").strip(), file=sys.stderr)
        print((diag.stderr or "").strip(), file=sys.stderr)
        return diag.returncode or 1

    rows = parse_rows(diag.stdout)
    if not rows:
        print("No matching accounts found.")
        return 0

    broken: list[tuple[str, str, list[str]]] = []
    for row in rows:
        if len(row) < 6:
            continue
        uid, user_id, has_auth, has_cash, has_g_users, has_g_vc = row[:6]
        missing = []
        if has_auth == "0":
            missing.append("MUserAuthority")
        if has_cash == "0":
            missing.append("EB_Cash")
        if has_g_users == "0":
            missing.append("Game01.users")
        if has_g_vc == "0":
            missing.append("Game01.VCGAVirtualCash")
        if missing:
            broken.append((uid, user_id, missing))

    total = len(rows)
    print(f"Scanned {total} account(s). {len(broken)} incomplete.\n")
    if not broken:
        print("All scanned accounts are fully initialized. Nothing to repair.")
        return 0

    print(f"{'UserUID':>10}  {'UserID':<20}  Missing rows")
    print(f"{'-'*10}  {'-'*20}  {'-'*40}")
    for uid, user_id, missing in broken:
        print(f"{uid:>10}  {user_id:<20}  {', '.join(missing)}")
    print()

    if not args.apply:
        print("DRY RUN -- no changes made. Re-run with --apply to backfill the missing rows.")
        return 0

    print("Applying idempotent repairs via Account.dbo.JoySwordEnsurePublicIdentity...\n")
    repaired = 0
    failed = 0
    for uid, user_id, missing in broken:
        ctx = run_sql(env, account_context_sql(user_id), args.timeout)
        ctx_rows = parse_rows(ctx.stdout)
        if ctx.returncode != 0 or not ctx_rows or len(ctx_rows[0]) < 2:
            print(f"  [skip] {user_id}: could not read current account context.")
            failed += 1
            continue
        password, publisher_sn = ctx_rows[0][0], ctx_rows[0][1]

        res = run_sql(env, repair_sql(user_id, password, publisher_sn), args.timeout)
        res_rows = parse_rows(res.stdout)
        ok = res_rows[0][0] if res_rows and res_rows[0] else "?"
        if res.returncode == 0 and ok == "0":
            print(f"  [ok]   {user_id}: backfilled {', '.join(missing)}")
            repaired += 1
        else:
            print(f"  [FAIL] {user_id}: proc returned @iOK={ok}. {(res.stderr or '').strip()}")
            failed += 1

    print(f"\nRepair complete. {repaired} repaired, {failed} failed.")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
