import subprocess
import os
import sys
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

def load_env() -> dict[str, str]:
    values = {
        "DB_HOST": "127.0.0.1",
        "DB_PORT": "1433",
        "DB_USER": "sa",
        "DB_PASSWORD": "JoySword!Offline123",
        "ADMIN_USER": "admin",
        "ADMIN_PASSWORD": "JoySwordAdmin2026!",
        "ADMIN_STARTING_CASH": "2000000",
    }
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if path.exists():
        for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            key = key.strip()
            if key in values or True: # Load everything to allow dynamic replacement
                values[key] = value.strip()
    return values

def find_sqlcmd() -> str | None:
    if candidate := shutil.which("sqlcmd"):
        return candidate
    for path in (
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe",
    ):
        if Path(path).exists():
            return path
    return None


def run_sql_in_docker(env: dict[str, str], query: str) -> None:
    """Use the SQL tools bundled in the local MSSQL container."""
    docker = shutil.which("docker")
    if not docker:
        raise RuntimeError("Neither host sqlcmd nor Docker is available")

    command_env = os.environ.copy()
    command_env["MSSQL_SA_PASSWORD"] = env["DB_PASSWORD"]
    shell = (
        "set -e; "
        "if [ -x /opt/mssql-tools18/bin/sqlcmd ]; then "
        "CMD=/opt/mssql-tools18/bin/sqlcmd; TLS=-C; "
        "else CMD=/opt/mssql-tools/bin/sqlcmd; TLS=; fi; "
        '"$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" $TLS -b -i /dev/stdin'
    )
    # Try docker compose exec mssql first (works across different folder/project prefixes)
    result = subprocess.run(
        [docker, "compose", "exec", "-i", "mssql", "bash", "-c", shell],
        cwd=str(ROOT),
        input=query,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        env=command_env,
    )
    if result.returncode != 0:
        container = env.get("MSSQL_CONTAINER", "joysword-mssql")
        result = subprocess.run(
            [docker, "exec", "-i", "-e", "MSSQL_SA_PASSWORD", container, "bash", "-c", shell],
            cwd=str(ROOT),
            input=query,
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            env=command_env,
        )
    if result.returncode != 0:
        print(f"Docker SQL error:\nSTDOUT:\n{result.stdout}\nSTDERR:\n{result.stderr}", file=sys.stderr)
        raise RuntimeError("SQL execution failed in Docker")
    print(result.stdout.strip())


def run_sql(env: dict[str, str], query: str):
    sqlcmd = find_sqlcmd()
    if not sqlcmd:
        run_sql_in_docker(env, query)
        return

    import tempfile
    fd, temp_name = tempfile.mkstemp(suffix=".sql", text=True)
    try:
        with os.fdopen(fd, 'w', encoding='utf-8') as f:
            f.write(query)
            
        server = f"tcp:{env['DB_HOST']},{env['DB_PORT']}"
        command = [
            sqlcmd,
            "-S", server,
            "-U", env["DB_USER"],
            "-P", env["DB_PASSWORD"],
            "-C", "-b", "-i", temp_name
        ]
        result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace")
        if result.returncode != 0 and "unknown option" in (result.stderr or "").lower():
            command.remove("-C")
            result = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace")
            
        if result.returncode != 0:
            try:
                run_sql_in_docker(env, query)
                return
            except Exception:
                print(f"Error executing SQL:\nSTDOUT:\n{result.stdout}\nSTDERR:\n{result.stderr}", file=sys.stderr)
                raise RuntimeError("SQL execution failed")
        print(result.stdout.strip())
    finally:
        try:
            os.unlink(temp_name)
        except OSError:
            pass


def main():
    if len(sys.argv) < 2:
        print("Usage: python run_sql_file.py <path_to_sql_file>", file=sys.stderr)
        sys.exit(1)
        
    sql_path = Path(sys.argv[1])
    if not sql_path.is_absolute():
        sql_path = ROOT / sql_path
        
    if not sql_path.exists():
        print(f"SQL file not found: {sql_path}", file=sys.stderr)
        sys.exit(1)
        
    env = load_env()
    sql_content = sql_path.read_text(encoding="utf-8")
    
    # Replace $(VAR) sqlcmd variables with env values
    def replace_var(match):
        var_name = match.group(1)
        return env.get(var_name, f"$({var_name})")
        
    sql_content = re.sub(r'\$\(([^)]+)\)', replace_var, sql_content)
    
    print(f"Executing SQL file: {sql_path.name}...")
    try:
        run_sql(env, sql_content)
    except Exception as e:
        print(f"Failed to execute SQL: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
