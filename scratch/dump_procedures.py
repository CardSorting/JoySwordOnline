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
        print("Usage: python dump_procedures.py <proc_name>")
        sys.exit(1)
        
    proc_name = sys.argv[1]
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
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -d Game01 -Q "SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.PROC_NAME_PLACEHOLDER'))" -y 0
"""
    bash = bash.replace("PROC_NAME_PLACEHOLDER", proc_name)

    res = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        capture_output=True,
        text=True,
        env=cmd_env,
        encoding="utf-8",
        errors="replace"
    )
    
    out_file = ROOT / "scratch" / f"{proc_name}.sql"
    out_file.write_text(res.stdout, encoding="utf-8")
    print(f"Wrote procedure definition to {out_file}")

if __name__ == "__main__":
    main()
