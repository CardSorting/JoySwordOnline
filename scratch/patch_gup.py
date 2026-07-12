import os
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"

def load_env() -> dict[str, str]:
    env = {}
    for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            k, v = line.split("=", 1)
            env[k.strip()] = v.strip()
    return env

def run_sql(sql: str, env: dict[str, str]) -> tuple[int, str, str]:
    cmd_env = os.environ.copy()
    cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    bash = r"""
set -e
CMD=/opt/mssql-tools18/bin/sqlcmd
cat > /tmp/exec_sql.sql
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -y 0 -i /tmp/exec_sql.sql
"""
    result = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash],
        cwd=ROOT,
        input=sql,
        capture_output=True,
        text=True,
        encoding="utf-8",
        env=cmd_env,
        timeout=120
    )
    return result.returncode, result.stdout, result.stderr

def main():
    env = load_env()
    
    # 1. Fetch current definition
    get_def_sql = "USE Game01; SET NOCOUNT ON; SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.gup_create_unit'));"
    code, out, err = run_sql(get_def_sql, env)
    if code != 0 or not out.strip():
        print("Failed to fetch procedure definition:", err or out)
        return 1
        
    definition = out.strip()
    # Strip database context message
    definition = re.sub(r"^Changed database context to.*\n?", "", definition, flags=re.IGNORECASE).strip()
    original_def = definition
    Path("scratch/fetched_gup.sql").write_text(original_def, encoding="utf-8")
    
    # 2. Modify validation check
    validation_old = "IF @iUnitClass_ not in (1, 2, 3, 4, 5, 6, 7)"
    validation_new = "IF @iUnitClass_ not in (1, 2, 3, 4, 5, 6, 7, 8)"
    if validation_old not in definition:
        # Check if already modified
        if validation_new not in definition:
            print("Could not find validation check in procedure!")
            return 1
    else:
        definition = definition.replace(validation_old, validation_new)
        print("Updated validation check in script.")

    # 3. Insert Elesis initialization block before GSpirit insert
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
			SELECT @iUnitUID, 77, 9, 2, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 71, 9, 6, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 72, 9, 7, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 73, 9, 8, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 74, 9, 9, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 75, 9, 10, 0, 0, -1, 125, @sdtNow union all
			SELECT @iUnitUID, 76, 9, 11, 0, 0, -1, 125, @sdtNow
			IF @@ERROR <> 0 OR @@ROWCOUNT <> 7
					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END
	END
"""
    # Regex to find "-- 근성도" and "INSERT INTO dbo.GSpirit"
    gspirit_pattern = re.compile(
        r"(--\s*근성도\s*\n\s*INSERT\s+INTO\s+dbo\.GSpirit\s*\(\s*UnitUID,\s*Spirit,\s*RegDate\s*\))",
        re.IGNORECASE
    )
    
    if "IF @iUnitClass_ = 8" in definition:
        print("Elesis block already present in procedure!")
    else:
        if not gspirit_pattern.search(definition):
            print("Could not find GSpirit insertion anchor in procedure!")
            return 1
        definition = gspirit_pattern.sub(elesis_block + "\n\\1", definition, count=1)
        print("Inserted Elesis skill/item initialization block.")

    # 4. Change CREATE PROCEDURE to ALTER PROCEDURE
    create_pattern = re.compile(r"^\s*CREATE\s+PROCEDURE", re.IGNORECASE)
    if create_pattern.search(definition):
        definition = create_pattern.sub("ALTER PROCEDURE", definition, count=1)
    else:
        # If it doesn't start with CREATE PROCEDURE, check if ALTER works
        if not definition.strip().startswith("ALTER PROCEDURE"):
            print("Procedure definition does not start with CREATE PROCEDURE/ALTER PROCEDURE!")
            return 1

    # 5. Execute the ALTER SQL
    alter_sql = f"USE Game01;\nGO\n{definition}\nGO"
    code, out, err = run_sql(alter_sql, env)
    if code != 0:
        print("Failed to alter gup_create_unit procedure:", err or out)
        # Dump to debug
        Path("scratch/failed_alter.sql").write_text(alter_sql, encoding="utf-8")
        return 1
    
    print("Successfully patched gup_create_unit to support Elesis!")
    return 0

if __name__ == "__main__":
    main()
