# install-post-restore.ps1
# Script to run all post-restore database procedures and check database health.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

cd "D:\JoySword\Server"

Write-Host "1. Running install-creation-fixes.py..."
python scripts/install-creation-fixes.py
if ($LASTEXITCODE -ne 0) { throw "install-creation-fixes.py failed" }

Write-Host "2. Running install-hotpath-account-creation.ps1..."
& .\scripts\install-hotpath-account-creation.ps1
if ($LASTEXITCODE -ne 0) { throw "install-hotpath-account-creation.ps1 failed" }

Write-Host "3. Running install-cash-allowance.py..."
python scripts/install-cash-allowance.py
if ($LASTEXITCODE -ne 0) { throw "install-cash-allowance.py failed" }

Write-Host "4. Running fix-cashshop-billing-transactions.sql..."
python scripts/run_sql_file.py database/fix-cashshop-billing-transactions.sql
if ($LASTEXITCODE -ne 0) { throw "fix-cashshop-billing-transactions.sql failed" }

Write-Host "5. Running fix-cash-deduction.sql..."
python scripts/run_sql_file.py database/fix-cash-deduction.sql
if ($LASTEXITCODE -ne 0) { throw "fix-cash-deduction.sql failed" }

Write-Host "6. Running fix-credit-sync.sql..."
python scripts/run_sql_file.py database/fix-credit-sync.sql
if ($LASTEXITCODE -ne 0) { throw "fix-credit-sync.sql failed" }

Write-Host "7. Enforcing equipment enhancement integrity..."
python scripts/run_sql_file.py database/enforce-enhancement-integrity.sql
if ($LASTEXITCODE -ne 0) { throw "enforce-enhancement-integrity.sql failed" }

Write-Host "8. Running restore-iceburner-sets.py..."
python scripts/restore-iceburner-sets.py
if ($LASTEXITCODE -ne 0) { throw "restore-iceburner-sets.py failed" }

Write-Host "9. Running restore-cashshop.py..."
python scripts/restore-cashshop.py
if ($LASTEXITCODE -ne 0) { throw "restore-cashshop.py failed" }

Write-Host "10. Running db-healthcheck.py..."
python scripts/db-healthcheck.py
if ($LASTEXITCODE -ne 0) { throw "db-healthcheck.py failed" }

Write-Host "All post-restore database setups executed and verified successfully!"
