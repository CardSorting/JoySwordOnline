import os
import subprocess
from pathlib import Path

ROOT = Path("c:/Users/monst/Downloads/JoySwordOffline")

def try_pwd(pwd):
    cmd_env = os.environ.copy()
    cmd_env["MSSQL_SA_PASSWORD"] = pwd
    bash = f'/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "SELECT 1"'
    result = subprocess.run(
        ["docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql", "bash", "-lc", bash],
        cwd=ROOT,
        env=cmd_env,
        capture_output=True,
        text=True
    )
    return result.returncode == 0, result.stdout, result.stderr

def main():
    print("Trying JoySwordDb2026!...")
    ok1, out1, err1 = try_pwd("JoySwordDb2026!")
    print("Success:", ok1)
    if not ok1:
        print("Err:", err1 or out1)

    print("Trying JoySword!Offline123...")
    ok2, out2, err2 = try_pwd("JoySword!Offline123")
    print("Success:", ok2)
    if not ok2:
        print("Err:", err2 or out2)

if __name__ == "__main__":
    main()
