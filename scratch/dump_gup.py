import subprocess
import os
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
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -d Game01 -Q "SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.gup_create_unit'))" -y 0
"""
    res = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-c", bash],
        capture_output=True,
        text=True,
        env=cmd_env,
        encoding="utf-8",
        errors="replace"
    )
    
    out_file = ROOT / "scratch" / "gup_create_unit_definition.sql"
    out_file.write_text(res.stdout, encoding="utf-8")
    print(f"Wrote definition to {out_file}")
    if res.stderr:
        print("STDERR:", res.stderr)

if __name__ == "__main__":
    main()
