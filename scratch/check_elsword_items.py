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
    cmd_env = {"MSSQL_SA_PASSWORD": env["DB_PASSWORD"]}
    bash = r"""
set -e
CMD=/opt/mssql-tools18/bin/sqlcmd
"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -y 0 -Q "USE Game01; SELECT * FROM dbo.GItem WHERE UnitUID = 10146;"
"""
    result = subprocess.run(
        ["docker", "exec", "-i", "-e", "MSSQL_SA_PASSWORD", "joysword-mssql", "bash", "-lc", bash],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
        env=cmd_env,
    )
    print(result.stdout)

if __name__ == "__main__":
    main()
