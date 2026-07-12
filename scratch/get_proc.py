import subprocess
import os
import time
from pathlib import Path

ROOT = Path("c:/Users/media/Downloads/JoySwordOffline")

def load_env() -> dict[str, str]:
    values = {
        "DB_HOST": "127.0.0.1",
        "DB_PORT": "1433",
        "DB_USER": "sa",
        "DB_PASSWORD": "JoySword!Offline123",
    }
    path = ROOT / "Elsword" / "offline" / "offline.env"
    if path.exists():
        for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            key, value = line.split("=", 1)
            values[key.strip()] = value.strip()
    return values

def run_query(query: str) -> str:
    node_script = """
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
      database: 'Account',
      options: { encrypt: false, trustServerCertificate: true }
    });
    const result = await pool.request().query(batch);
    if (result.recordsets) {
      console.log(JSON.stringify(result.recordsets, null, 2));
    }
    await pool.close();
  } catch (error) {
    console.error(error.message);
    process.exitCode = 1;
  }
});
"""
    env = load_env()
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
    )
    out = res.stdout
    if res.stderr:
        out += "\nSTDERR:\n" + res.stderr
    return out

query = """
USE Account;
SET NOCOUNT ON;

-- Clean up any test users
DELETE FROM dbo.MUser WHERE UserID LIKE 'test_rate_%';
DELETE FROM ES_BILLING.dbo.EB_Cash WHERE ST_USERID LIKE 'test_rate_%';
DELETE FROM dbo.RegistrationHistory;

PRINT '1. Registering 3 accounts with different passwords (no delay expected)...';
DECLARE @Start DATETIME = GETDATE();
EXEC dbo.mup_create_user @strUserID_ = 'test_rate_1', @strPassword_ = 'SecurePass1!', @strUserName_ = 'r1', @iGuestUser_ = 0;
EXEC dbo.mup_create_user @strUserID_ = 'test_rate_2', @strPassword_ = 'SecurePass2!', @strUserName_ = 'r2', @iGuestUser_ = 0;
EXEC dbo.mup_create_user @strUserID_ = 'test_rate_3', @strPassword_ = 'SecurePass3!', @strUserName_ = 'r3', @iGuestUser_ = 0;
DECLARE @End DATETIME = GETDATE();
SELECT DATEDIFF(millisecond, @Start, @End) AS BaseElapsedMs;

PRINT '2. Registering 4th account with same password as account 3 (should trigger 3s password reuse penalty)...';
DECLARE @PenaltyStart DATETIME = GETDATE();
EXEC dbo.mup_create_user @strUserID_ = 'test_rate_4', @strPassword_ = 'SecurePass3!', @strUserName_ = 'r4', @iGuestUser_ = 0;
DECLARE @PenaltyEnd DATETIME = GETDATE();
SELECT DATEDIFF(millisecond, @PenaltyStart, @PenaltyEnd) AS PenaltyElapsedMs;

PRINT '3. Verify that the table is natively memory-optimized and compiled:';
SELECT name, is_memory_optimized, durability_desc FROM sys.tables WHERE name = 'RegistrationHistory';
SELECT name, uses_native_compilation FROM sys.sql_modules m JOIN sys.procedures p ON m.object_id = p.object_id WHERE p.name = 'mup_check_and_record_rate_limit';

-- Cleanup
DELETE FROM dbo.MUser WHERE UserID LIKE 'test_rate_%';
DELETE FROM ES_BILLING.dbo.EB_Cash WHERE ST_USERID LIKE 'test_rate_%';
DELETE FROM dbo.RegistrationHistory;
"""

print("Running dynamic in-memory natively compiled tarpit tests...")
start_time = time.time()
result = run_query(query)
elapsed = time.time() - start_time

with open(r"scratch\verify_out.txt", "w", encoding="utf-8") as f:
    f.write(result + f"\nPython Wrapper Elapsed Time: {elapsed:.2f} seconds\n")
print("Done writing to scratch\\verify_out.txt")
