$Content = @'
#!/usr/bin/env python3
"""Install post-character-creation database fixes and deduplicate database records."""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SQL_FILE = ROOT / "database" / "fix-post-character-creation.sql"
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

DEFAULTS = {
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "DB_USER": "sa",
    "DB_PASSWORD": "JoySword!Offline123",
}


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


def docker_mssql_running() -> bool:
    return shutil.which("docker") is not None


def run_docker(env: dict[str, str], sql: str) -> subprocess.CompletedProcess[str]:
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
cat > /tmp/joysword-creation-fixes.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -b -i /tmp/joysword-creation-fixes.sql
"""
    return subprocess.run(
        [
            "docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD",
            "mssql", "bash", "-c", bash,
        ],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        env=command_env,
        timeout=60,
    )


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


def run_native(env: dict[str, str]) -> subprocess.CompletedProcess[str] | None:
    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        return None
    command = [
        sqlcmd,
        "-S", f"tcp:{env['DB_HOST']},{env['DB_PORT']}",
        "-U", env["DB_USER"],
        "-P", env["DB_PASSWORD"],
        "-C", "-b", "-i", str(SQL_FILE),
    ]
    result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=60)
    if result.returncode != 0 and "unknown option" in (result.stderr or "").lower():
        command.remove("-C")
        result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=60)
    return result


def run_sql_content(env: dict[str, str], sql: str) -> subprocess.CompletedProcess[str]:
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
cat > /tmp/temp-query.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -y 0 -b -i /tmp/temp-query.sql
"""
        return subprocess.run(
            [
                "docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD",
                "mssql", "bash", "-c", bash,
            ],
            cwd=ROOT,
            input=sql,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            env=command_env,
            timeout=60,
        )
    # Native execution
    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        raise RuntimeError("sqlcmd not found")
    import tempfile
    with tempfile.NamedTemporaryFile(mode="w", suffix=".sql", encoding="utf-8", delete=False) as tf:
        tf.write(sql)
        temp_name = tf.name
    try:
        command = [
            sqlcmd,
            "-S", f"tcp:{env['DB_HOST']},{env['DB_PORT']}",
            "-U", env["DB_USER"],
            "-P", env["DB_PASSWORD"],
            "-C", "-y", "0", "-b", "-i", temp_name,
        ]
        result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=60)
        if result.returncode != 0 and "unknown option" in (result.stderr or "").lower():
            command.remove("-C")
            result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace", timeout=60)
        return result
    finally:
        try:
            os.unlink(temp_name)
        except OSError:
            pass


def patch_gup_procedure(env: dict[str, str]) -> None:
    # 1. Fetch current definition
    get_def_sql = "USE Game01; SET NOCOUNT ON; SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.gup_create_unit'));"
    res = run_sql_content(env, get_def_sql)
    if res.returncode != 0 or not res.stdout.strip():
        raise RuntimeError(f"Failed to fetch gup_create_unit definition: {res.stderr or res.stdout}")
        
    definition = res.stdout.strip()
    # Strip database context message if present
    definition = re.sub(r"^Changed database context to.*\n?", "", definition, flags=re.IGNORECASE).strip()
    
    validation_old = "IF @iUnitClass_ not in (1, 2, 3, 4, 5, 6, 7)"
    validation_new = "IF @iUnitClass_ not in (1, 2, 3, 4, 5, 6, 7, 8)"
    
    # Remove existing Elesis block if present to allow clean update
    definition = re.sub(r"----엘리시스\s*\n\tIF @iUnitClass_ = 8\s*\n\tBEGIN\s*\n.*?\n\tEND\s*\n", "", definition, flags=re.DOTALL)

    if validation_new not in definition:
        if validation_old not in definition:
            raise RuntimeError("Could not find validation check in procedure!")
        definition = definition.replace(validation_old, validation_new)

    elesis_block = """
	----엘리시스
	IF @iUnitClass_ = 8
	BEGIN
		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)
			SELECT  @iUnitUID, 8001, 1, 0 UNION ALL
			SELECT  @iUnitUID, 8200, 1, 0
			IF @@ERROR <> 0 OR @@ROWCOUNT <> 2
					BEGIN    SELECT @iOK = -31    GOTO FAIL_TRAN    END

		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )
			SELECT  @iUnitUID, 8001, 8200, 0, 0
				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
					BEGIN    SELECT @iOK = -32    GOTO FAIL_TRAN    END

		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)
			SELECT @iUnitUID, 10040800, 9, 9, 1, 0, 10000, 125, @sdtNow
			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END
	END
"""
    gspirit_pattern = re.compile(
        r"(\s*INSERT\s+INTO\s+dbo\.GSpirit\s*\(\s*UnitUID,\s*Spirit,\s*RegDate\s*\))",
        re.IGNORECASE
    )
    
    if "IF @iUnitClass_ = 8" not in definition:
        if not gspirit_pattern.search(definition):
            raise RuntimeError("Could not find GSpirit insertion anchor in procedure!")
        definition = gspirit_pattern.sub(elesis_block + "\n\\1", definition, count=1)

    create_pattern = re.compile(r"^\s*CREATE\s+PROCEDURE", re.IGNORECASE)
    if create_pattern.search(definition):
        definition = create_pattern.sub("ALTER PROCEDURE", definition, count=1)
    elif not definition.strip().startswith("ALTER PROCEDURE"):
        raise RuntimeError("Procedure definition does not start with CREATE PROCEDURE/ALTER PROCEDURE!")

    alter_sql = f"USE Game01;\nGO\n{definition}\nGO"
    alter_res = run_sql_content(env, alter_sql)
    if alter_res.returncode != 0:
        raise RuntimeError(f"Failed to alter gup_create_unit: {alter_res.stderr or alter_res.stdout}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--quiet", action="store_true", help="print only failures")
    args = parser.parse_args()

    if not SQL_FILE.exists():
        print(f"Missing creation fixes script: {SQL_FILE}", file=sys.stderr)
        return 2

    env = load_env()
    sql = SQL_FILE.read_text(encoding="utf-8")
    try:
        result = run_docker(env, sql) if docker_mssql_running() else run_native(env)
    except (OSError, subprocess.TimeoutExpired) as exc:
        print(f"Post-character-creation database fixes failed: {exc}", file=sys.stderr)
        return 1

    if result is None:
        print("Neither the Docker SQL service nor sqlcmd is available.", file=sys.stderr)
        return 1
    if result.returncode != 0:
        print("Post-character-creation database fixes failed.", file=sys.stderr)
        if result.stdout:
            print(result.stdout.strip(), file=sys.stderr)
        if result.stderr:
            print(result.stderr.strip(), file=sys.stderr)
        return result.returncode or 1

    # Run gup_create_unit Elesis patch
    try:
        patch_gup_procedure(env)
    except Exception as exc:
        print(f"Failed to patch gup_create_unit procedure: {exc}", file=sys.stderr)
        return 1

    if not args.quiet:
        print((result.stdout or "Post-character-creation database fixes and Elesis unit creation patch installed.").strip())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

'@
Set-Content -Path D:\JoySword\Server\scripts\install-creation-fixes.py -Value $Content -Force
