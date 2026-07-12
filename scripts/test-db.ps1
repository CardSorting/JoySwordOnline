# test-db.ps1
Write-Host "Testing connection via TCP loopback (127.0.0.1)..."
sqlcmd.exe -S 127.0.0.1 -E -Q "SELECT Name FROM sys.databases"
