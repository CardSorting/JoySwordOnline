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
    bash = r"""
set -e
CMD=/opt/mssql-tools18/bin/sqlcmd
echo "=== GBase_Item count by UnitClass ==="
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "SELECT UnitClass, COUNT(*) FROM Game01.dbo.GBase_Item GROUP BY UnitClass ORDER BY UnitClass;"
echo "=== GSkill_Default count by UnitClass ==="
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "SELECT UnitClass, COUNT(*) FROM Game01.dbo.GSkill_Default GROUP BY UnitClass ORDER BY UnitClass;"
"""
    subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash],
        cwd=ROOT,
        env=cmd_env
    )

if __name__ == "__main__":
    main()
