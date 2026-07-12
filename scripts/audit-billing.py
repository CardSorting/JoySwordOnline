#!/usr/bin/env python3
"""Audit offline cash-shop billing: configs, stubs, and ES_BILLING database state."""

from __future__ import annotations

import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"

SERVER_CONFIG_NAMES = {
    "CenterServer": "config_cn_{profile}.lua",
    "ChannelServer": "config_ch_{profile}.lua",
    "GlobalServer": "config_gb_{profile}.lua",
    "LoginServer": "config_lg_{profile}.lua",
    "GameServer": "config_gs_{profile}.lua",
}

CONFIG_CHECKS: list[tuple[str, re.Pattern[str], str]] = [
    ("publisher billing flag", re.compile(r"SetBillingFlag\(\s*BF_GLOBAL_SERVICE\s*\)", re.I), "Use BF_INTERNAL on GameServer"),
    ("payletter billing flag", re.compile(r"SetBillingFlag\(\s*BF_PAYLETTER_US\s*\)", re.I), "Use BF_INTERNAL on GameServer"),
    ("publisher billing transport", re.compile(r"SetPublisherBillingConnectType\s*\(\s*PBCT_NORMAL\s*\)", re.I), "Use PBCT_DB"),
    ("publisher coupon check", re.compile(r"SetCheckCouponByPublisher\s*\(\s*true\s*\)", re.I), "Set CheckCouponByPublisher to false"),
    ("missing KOG billing DB", re.compile(r"DC_KOG_BILLING", re.I), "Add DC_KOG_BILLING + Billing_*.dsn on GameServer"),
    ("active payletter manager", re.compile(r"^\s*PayletterBillingManager:", re.M), "Comment PayletterBillingManager calls"),
    ("active nexon billing tcp", re.compile(r"^\s*InitNexonBillingTCPInfo\s*\(", re.M), "Comment InitNexonBillingTCPInfo calls"),
]

DB_AUDIT_SQL = r"""
SET NOCOUNT ON;
DECLARE @AdminUser NVARCHAR(50) = {admin_user};

SELECT 'cash_rows' AS metric, COUNT(*) AS value
FROM ES_BILLING.dbo.EB_Cash;

SELECT 'product_rows' AS metric, COUNT(*) AS value
FROM ES_BILLING.dbo.EB_Product;

SELECT 'sale_products' AS metric, COUNT(*) AS value
FROM ES_BILLING.dbo.EB_Product
WHERE ISNULL(DI_ISSALE, 0) = 1;

SELECT 'admin_es_billing_cash' AS metric, ISNULL(C.NO_REMAIN_CASH, 0) AS value
FROM Account.dbo.MUser U
LEFT JOIN ES_BILLING.dbo.EB_Cash C ON C.CD_USERUID = U.UserUID
WHERE U.UserID = @AdminUser;

SELECT 'admin_virtual_cash' AS metric, ISNULL(V.VCPoint, 0) AS value
FROM Account.dbo.MUser U
LEFT JOIN Game01.dbo.VCGAVirtualCash V ON V.LoginUID = CONVERT(INT, U.UserUID)
WHERE U.UserID = @AdminUser;

SELECT 'users_missing_cash_row' AS metric, COUNT(*) AS value
FROM Account.dbo.MUser U
WHERE NOT EXISTS (
    SELECT 1 FROM ES_BILLING.dbo.EB_Cash C WHERE C.CD_USERUID = U.UserUID
);

SELECT 'users_missing_virtual_cash' AS metric, COUNT(*) AS value
FROM Account.dbo.MUser U
WHERE EXISTS (SELECT 1 FROM Game01.dbo.users GU WHERE GU.LoginUID = CONVERT(INT, U.UserUID))
  AND NOT EXISTS (
      SELECT 1 FROM Game01.dbo.VCGAVirtualCash V WHERE V.LoginUID = CONVERT(INT, U.UserUID)
  );
"""


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    env = {
        "SERVER_PROFILE": "US_SERVICE",
        "ADMIN_USER": "admin",
        "DB_HOST": "127.0.0.1",
        "DB_PORT": "1433",
        "DB_USER": "sa",
        "DB_PASSWORD": "JoySword!Offline123",
    }
    if not path.exists():
        return env
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        env[key.strip()] = value.strip()
    return env


def sql_nvarchar(value: str) -> str:
    return "N'" + value.replace("'", "''") + "'"


def is_commented_line(line: str) -> bool:
    stripped = line.lstrip()
    return stripped.startswith("--") or stripped.startswith("--[[")


def active_text(text: str) -> str:
    return "\n".join(line for line in text.splitlines() if not is_commented_line(line))


def config_path(server_dir: str, profile: str) -> Path:
    return ELSWORD / server_dir / SERVER_CONFIG_NAMES[server_dir].format(profile=profile)


def audit_configs(profile: str) -> list[str]:
    issues: list[str] = []
    for server_dir, pattern in SERVER_CONFIG_NAMES.items():
        path = ELSWORD / server_dir / pattern.format(profile=profile)
        if not path.exists():
            issues.append(f"[missing config] {path.relative_to(ROOT)}")
            continue

        text = path.read_text(encoding="utf-8", errors="replace")
        scanned = active_text(text)
        for label, pattern_re, fix in CONFIG_CHECKS:
            if label == "missing KOG billing DB":
                if server_dir != "GameServer":
                    continue
                if not pattern_re.search(scanned):
                    issues.append(f"[{label}] {path.relative_to(ROOT)} — {fix}")
                continue

            if server_dir != "GameServer" and label in {
                "publisher billing flag",
                "payletter billing flag",
            }:
                continue

            match = pattern_re.search(scanned)
            if match:
                line_no = text.count("\n", 0, match.start()) + 1
                issues.append(
                    f"[{label}] {path.relative_to(ROOT)}:{line_no} — {fix} ({match.group(0).strip()})"
                )
    return issues


def find_sqlcmd() -> str | None:
    import shutil

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
cat > /tmp/joysword-billing-audit.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-billing-audit.sql
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


def parse_metric_output(stdout: str) -> dict[str, int]:
    metrics: dict[str, int] = {}
    current: str | None = None
    for raw in stdout.splitlines():
        line = raw.strip()
        if not line:
            continue
        if line.startswith("metric"):
            current = None
            continue
        parts = re.split(r"\s{2,}|\t", line)
        if len(parts) >= 2 and parts[0] and parts[1].isdigit():
            metrics[parts[0].strip()] = int(parts[1].strip())
    return metrics


def audit_database(env: dict[str, str]) -> tuple[list[str], dict[str, int]]:
    issues: list[str] = []
    sql = DB_AUDIT_SQL.format(admin_user=sql_nvarchar(env.get("ADMIN_USER", "admin")))
    result: subprocess.CompletedProcess[str] | None = None
    try:
        if docker_mssql_running(45):
            result = run_docker_sql(env, 45, sql)
        else:
            result = run_native_sql(env, 45, sql)
    except (OSError, subprocess.TimeoutExpired) as exc:
        issues.append(f"[database] query failed: {exc}")
        return issues, {}

    if result is None:
        issues.append("[database] sqlcmd not available and Docker mssql is not running")
        return issues, {}

    if result.returncode != 0:
        detail = (result.stderr or result.stdout or "unknown sqlcmd error").strip()
        issues.append(f"[database] sqlcmd exit {result.returncode}: {detail}")
        return issues, {}

    metrics = parse_metric_output(result.stdout)
    if metrics.get("product_rows", 0) == 0:
        issues.append("[database] ES_BILLING.EB_Product is empty — run scripts\\restore-cashshop.py")
    if metrics.get("sale_products", 0) == 0 and metrics.get("product_rows", 0) > 0:
        issues.append("[database] no products marked for sale — rerun scripts\\restore-cashshop.py")
    if metrics.get("admin_es_billing_cash", -1) == 0:
        issues.append("[database] admin ES_BILLING cash is 0 — run scripts\\setup-offline.bat")
    if metrics.get("admin_virtual_cash", -1) == 0:
        issues.append("[database] admin Game01.VCGAVirtualCash is 0 — run scripts\\setup-offline.bat")
    if metrics.get("users_missing_cash_row", 0) > 0:
        issues.append(
            f"[database] {metrics['users_missing_cash_row']} account(s) missing ES_BILLING.EB_Cash rows"
        )
    if metrics.get("users_missing_virtual_cash", 0) > 0:
        issues.append(
            f"[database] {metrics['users_missing_virtual_cash']} game user(s) missing VCGAVirtualCash rows"
        )
    return issues, metrics


def main() -> int:
    env = load_env()
    profile = env.get("SERVER_PROFILE", "US_SERVICE")
    print(f"JoySword billing audit (profile: {profile})")
    print()

    config_issues = audit_configs(profile)
    db_issues, metrics = audit_database(env)
    issues = config_issues + db_issues

    if metrics:
        print("Database metrics:")
        for key in (
            "cash_rows",
            "product_rows",
            "sale_products",
            "admin_es_billing_cash",
            "admin_virtual_cash",
            "users_missing_cash_row",
            "users_missing_virtual_cash",
        ):
            if key in metrics:
                print(f"  {key}: {metrics[key]}")
        print()

    if not issues:
        print("Billing audit passed — local ES_BILLING path looks ready.")
        print("Restart GameServer after config changes, then open the cash shop.")
        return 0

    print(f"Found {len(issues)} billing issue(s):\n")
    for issue in issues:
        print(f"  - {issue}")
    print()
    print("Recommended fixes:")
    print("  1. python scripts\\configure-offline.py")
    print("  2. scripts\\setup-offline.bat")
    print("  3. python scripts\\audit-billing.py")
    return 1


if __name__ == "__main__":
    sys.exit(main())
