import os
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"

def read_db_password() -> str:
    db_password = "JoySwordDb2026!"
    if ENV_FILE.exists():
        for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
            if line.strip().startswith("DB_PASSWORD="):
                db_password = line.split("=", 1)[1].strip()
    return db_password

def run_proc_audit():
    db_password = read_db_password()
    cmd = [
        "docker", "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql",
        "bash", "-c",
        'if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then CMD=/opt/mssql-tools18/bin/sqlcmd; EXTRA=(-C); else CMD=/opt/mssql-tools/bin/sqlcmd; EXTRA=(); fi; "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -i /backups/view-cash-procs.sql'
    ]
    env = os.environ.copy()
    env["MSSQL_SA_PASSWORD"] = db_password
    res = subprocess.run(cmd, capture_output=True, text=False, env=env)
    out_file = ROOT / "database" / "cash-procs-definition.txt"
    out_file.write_bytes(res.stdout)
    print(f"Audit saved to {out_file}")
    if res.stderr:
        print("STDERR:")
        print(res.stderr.decode('cp949', errors='replace').encode('ascii', 'backslashreplace').decode('ascii'))

if __name__ == "__main__":
    run_proc_audit()
