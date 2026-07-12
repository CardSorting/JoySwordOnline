import subprocess
import os
import sys
from pathlib import Path

ROOT = Path("c:/Users/media/Downloads/JoySwordOffline")
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"
ENV_EXAMPLE = ROOT / "Elsword" / "offline" / "offline.env.example"

def load_env() -> dict[str, str]:
    values = {
        "DB_HOST": "127.0.0.1",
        "DB_PORT": "1433",
        "DB_USER": "sa",
        "DB_PASSWORD": "JoySword!Offline123",
    }
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if path.exists():
        for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            key = key.strip()
            if key in values:
                values[key] = value.strip()
    return values

def run_sql(env: dict[str, str], query: str) -> str:
    node_script = r"""
const sql = require('./web/node_modules/mssql');
let batch = '';
process.stdin.setEncoding('utf8');
process.stdin.on('data', chunk => { batch += chunk; });
process.stdin.on('end', async () => {
  try {
    const pool = await sql.connect({
      server: process.env.DB_HOST,
      port: Number(process.env.DB_PORT),
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: 'master',
      options: { encrypt: false, trustServerCertificate: true }
    });
    const result = await pool.request().batch(batch);
    console.log(JSON.stringify(result.recordsets));
    await pool.close();
  } catch (error) {
    console.error(error instanceof Error ? error.message : String(error));
    process.exitCode = 1;
  }
});
"""
    command_env = os.environ.copy()
    command_env.update(env)
    res = subprocess.run(
        ["node", "-e", node_script],
        cwd=ROOT,
        input=query,
        capture_output=True,
        text=True,
        env=command_env,
        timeout=120
    )
    if res.returncode != 0:
        print(f"Error executing query:\nSTDOUT:\n{res.stdout}\nSTDERR:\n{res.stderr}", file=sys.stderr)
        raise RuntimeError("SQL execution failed")
    return res.stdout.strip()

def main():
    env = load_env()
    databases = ["Account", "ES_BILLING", "Game01", "Statistics"]
    
    import json
    
    for db in databases:
        print(f"Restoring database: {db}...")
        
        # 1. Get logical file list
        filelist_query = f"RESTORE FILELISTONLY FROM DISK = N'/backups/{db}.bak';"
        try:
            out = run_sql(env, filelist_query)
            recordsets = json.loads(out)
        except Exception as e:
            print(f"Failed to get filelist for {db}: {e}", file=sys.stderr)
            sys.exit(1)
            
        rows = recordsets[0]
        data_logical = None
        log_logical = None
        for row in rows:
            logical_name = row.get("LogicalName") or row.get("logicalname")
            type_val = row.get("Type") or row.get("type")
            if type_val == "D":
                data_logical = logical_name
            elif type_val == "L":
                log_logical = logical_name
                
        if not data_logical:
            data_logical = rows[0].get("LogicalName") or rows[0].get("logicalname")
        if not log_logical:
            log_logical = rows[1].get("LogicalName") or rows[1].get("logicalname") if len(rows) > 1 else f"{data_logical}_log"
            
        print(f"  Logical Data: {data_logical}, Logical Log: {log_logical}")
        
        # 2. Run restore command
        restore_query = f"""
        IF DB_ID(N'{db}') IS NOT NULL
        BEGIN
            ALTER DATABASE [{db}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
            DROP DATABASE [{db}];
        END;
        RESTORE DATABASE [{db}]
            FROM DISK = N'/backups/{db}.bak'
            WITH MOVE N'{data_logical}' TO N'/var/opt/mssql/data/{db}.mdf',
                 MOVE N'{log_logical}' TO N'/var/opt/mssql/data/{db}_log.ldf',
                 REPLACE,
                 RECOVERY,
                 STATS = 10;
        """
        try:
            run_sql(env, restore_query)
            print(f"  Successfully restored database {db}.")
        except Exception as e:
            print(f"Failed to restore {db}: {e}", file=sys.stderr)
            sys.exit(1)
            
    print("All databases restored successfully via TCP!")

if __name__ == "__main__":
    main()
