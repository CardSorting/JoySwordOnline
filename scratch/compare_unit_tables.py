import os
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
    cmd_env = os.environ.copy()
    cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    
    # We will run a script inside the SQL container to query all table names containing 'UnitUID' column,
    # then check which ones have rows for 10138 but not for 10145.
    bash = r"""
set -e
CMD=/opt/mssql-tools18/bin/sqlcmd
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -y 0 -Q "
USE Game01;
DECLARE @table_name NVARCHAR(256);
DECLARE @sql NVARCHAR(MAX);
DECLARE @has_elsword INT;
DECLARE @has_elesis INT;

DECLARE table_cursor CURSOR FOR
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE COLUMN_NAME = 'UnitUID' AND TABLE_SCHEMA = 'dbo';

OPEN table_cursor;
FETCH NEXT FROM table_cursor INTO @table_name;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Check for Elsword
    SET @sql = N'SELECT @cnt = COUNT(*) FROM dbo.' + QUOTENAME(@table_name) + N' WHERE UnitUID = 10138;';
    EXEC sp_executesql @sql, N'@cnt INT OUTPUT', @has_elsword OUTPUT;
    
    -- Check for Elesis
    SET @sql = N'SELECT @cnt = COUNT(*) FROM dbo.' + QUOTENAME(@table_name) + N' WHERE UnitUID = 10145;';
    EXEC sp_executesql @sql, N'@cnt INT OUTPUT', @has_elesis OUTPUT;
    
    IF @has_elsword > 0 AND @has_elesis = 0
    BEGIN
        PRINT 'Table ' + @table_name + ' has ' + CAST(@has_elsword AS VARCHAR) + ' rows for Elsword but 0 for Elesis';
    END
    ELSE IF @has_elsword = 0 AND @has_elesis > 0
    BEGIN
        PRINT 'Table ' + @table_name + ' has 0 rows for Elsword but ' + CAST(@has_elesis AS VARCHAR) + ' rows for Elesis';
    END

    FETCH NEXT FROM table_cursor INTO @table_name;
END;

CLOSE table_cursor;
DEALLOCATE table_cursor;
"
"""
    subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash],
        cwd=ROOT,
        env=cmd_env
    )

if __name__ == "__main__":
    main()
