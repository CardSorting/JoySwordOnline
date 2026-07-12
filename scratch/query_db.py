import subprocess
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"

def load_env():
    env = {}
    for line in ENV_FILE.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if line and not line.startswith("#") and "=" in line:
            key, val = line.split("=", 1)
            env[key.strip()] = val.strip()
    return env

def main():
    if len(sys.argv) < 2:
        print("Usage: python query_db.py <sql_query>")
        sys.exit(1)
    
    sql = sys.argv[1]
    env = load_env()
    cmd_env = os.environ.copy()
    cmd_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    
    bash = """
if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
  CMD=/opt/mssql-tools18/bin/sqlcmd
  EXTRA=(-C)
else
  CMD=/opt/mssql-tools/bin/sqlcmd
  EXTRA=()
fi
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -d Game01 -Q "SQL_PLACEHOLDER" -y 0
"""
    bash = bash.replace("SQL_PLACEHOLDER", sql.replace('"', '\\"'))

    res = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        capture_output=True,
        text=True,
        env=cmd_env,
        encoding="utf-8",
        errors="replace"
    )
    
    # Write output to file if it contains weird encodings or is large, or just print
    try:
        print(res.stdout)
    except UnicodeEncodeError:
        print(res.stdout.encode("utf-8", errors="replace").decode("cp1252", errors="replace"))
        
    if res.stderr:
        print("STDERR:", res.stderr)

if __name__ == "__main__":
    main()
