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
echo "=== GUnitPVP rows for admin ==="
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "USE Game01; SELECT * FROM dbo.GUnitPVP WHERE UnitUID BETWEEN 10138 AND 10145;"
echo "=== GUnitPVP_Season2 rows for admin ==="
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "USE Game01; SELECT * FROM dbo.GUnitPVP_Season2 WHERE UnitUID BETWEEN 10138 AND 10145;"
"""
    subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash],
        cwd=ROOT,
        env=cmd_env
    )

if __name__ == "__main__":
    main()
