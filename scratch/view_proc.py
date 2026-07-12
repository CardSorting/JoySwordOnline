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

def run_sql(env: dict[str, str], query: str):
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
      database: 'ES_BILLING',
      options: { encrypt: false, trustServerCertificate: true }
    });
    const result = await pool.request().batch(batch);
    if (result.recordset && result.recordset[0]) {
      console.log(Object.values(result.recordset[0])[0]);
    }
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
        encoding="utf-8",
        errors="replace",
        env=command_env,
        timeout=30
    )
    return res.stdout

def main():
    env = load_env()
    procs = ["EBI_Cash_UseRealCashOnly", "EBI_Cash_UseBonusCashOnly", "EBI_Cash_UseFirstCash"]
    for proc in procs:
        print(f"\n==================== {proc} ====================")
        query = f"SELECT OBJECT_DEFINITION(OBJECT_ID('dbo.{proc}'));"
        out = run_sql(env, query)
        if out:
            safe_out = out.encode('ascii', errors='replace').decode('ascii')
            print(safe_out)
        else:
            print("None")

if __name__ == "__main__":
    main()
