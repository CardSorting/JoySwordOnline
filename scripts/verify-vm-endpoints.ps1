# Verifies the VM-side game endpoint, SQL health, and channel/server rows.
# Run on the Azure VM, or upload through:
# az vm run-command invoke ... --scripts "@scripts\verify-vm-endpoints.ps1"

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$Root = 'D:\JoySword\Server'
$EnvFile = Join-Path $Root 'Elsword\offline\offline.env'
$EnvVars = @{}

foreach ($line in Get-Content -LiteralPath $EnvFile -ErrorAction Stop) {
    $trimmed = $line.Trim()
    if (-not $trimmed -or $trimmed.StartsWith('#') -or $trimmed.IndexOf('=') -lt 0) {
        continue
    }
    $parts = $trimmed.Split('=', 2)
    $EnvVars[$parts[0].Trim()] = $parts[1].Trim()
}

Write-Output "ENV CHANNEL_SERVER_IP=$($EnvVars['CHANNEL_SERVER_IP'])"
Write-Output "ENV DB_HOST=$($EnvVars['DB_HOST'])"
Write-Output "ENV DB_PORT=$($EnvVars['DB_PORT'])"

Set-Location -LiteralPath $Root
python scripts\db-healthcheck.py --quiet --allow-tcp-only --timeout 60
Write-Output "DB_HEALTHCHECK_EXIT=$LASTEXITCODE"

$SqlCmd = Get-Command sqlcmd.exe -ErrorAction SilentlyContinue
if ($SqlCmd) {
    $SqlCmdPath = $SqlCmd.Source
} else {
    $SqlCmdPath = @(
        'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe',
        'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe'
    ) | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
}

if (-not $SqlCmdPath) {
    throw 'sqlcmd.exe not found'
}

$Password = $env:JOYSWORD_SA_PASSWORD
if (-not $Password) {
    $Password = $EnvVars['DB_PASSWORD']
}
if (-not $Password) {
    throw 'DB password unavailable. Set JOYSWORD_SA_PASSWORD or DB_PASSWORD in offline.env.'
}

$Sql = @'
SET NOCOUNT ON;
SELECT name,state_desc FROM sys.databases WHERE name IN (N'Account',N'ES_BILLING',N'Game01',N'Statistics') ORDER BY name;
SELECT UID,[Name],IP,PrivateIP,PublicIP,Port1,Port2,[Enable] FROM [Statistics].dbo.LServerList ORDER BY UID;
SELECT UID,ChannelName,IP,Port1,Port2,OnOff FROM [Statistics].dbo.LChannelList ORDER BY UID;
'@

& $SqlCmdPath -S 'localhost\SQLEXPRESS' -U sa -P $Password -C -b -W -s '|' -Q $Sql
Write-Output "SQL_ROWS_EXIT=$LASTEXITCODE"
