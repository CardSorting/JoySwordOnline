# sync-server-ip.ps1
# Register the game server's reachable address into the Statistics database and
# offline.env so clients connect to the right endpoint. Native sqlcmd (no Docker);
# intended to run on the Azure Windows VM after the databases are restored.
#
# The public IP defaults to the VM's Azure public IP discovered via the Instance
# Metadata Service (IMDS), so a freshly-deployed VM self-registers with no manual
# input. Override with -PublicIp for the existing Azure public IPv4 address.
# PrivateIP is what the servers advertise internally (loopback by default, since
# all five processes + SQL share the VM).
#
#   .\sync-server-ip.ps1                              # auto: IMDS public IP
#   .\sync-server-ip.ps1 -PublicIp 52.238.194.187
#   .\sync-server-ip.ps1 -PublicIp 20.9.53.101 -PrivateIp 127.0.0.1

[CmdletBinding()]
param(
    # Public endpoint advertised to clients (IPv4 only). Defaults to IMDS.
    [string]$PublicIp,

    # Address the servers advertise for intra-VM traffic.
    [string]$PrivateIp = '127.0.0.1',

    # sqlcmd password; falls back to DB_PASSWORD in offline.env, then env var.
    [string]$SaPassword
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$RootFolder = Split-Path -Parent -Path $ScriptRoot
$EnvFile    = Join-Path $RootFolder 'Elsword\offline\offline.env'

function Test-IPv4Address {
    param([Parameter(Mandatory = $true)][string]$Value)
    if ($Value -notmatch '^(?:\d{1,3}\.){3}\d{1,3}$') { return $false }
    foreach ($part in $Value.Split('.')) {
        $octet = 0
        if (-not [int]::TryParse($part, [ref]$octet)) { return $false }
        if ($octet -lt 0 -or $octet -gt 255) { return $false }
    }
    return $true
}

# --- Parse offline.env (used for DB password + writing back CHANNEL_SERVER_IP) --
$EnvVars = @{}
if (Test-Path $EnvFile) {
    Get-Content -Path $EnvFile -Encoding UTF8 | ForEach-Object {
        $line = $_.Trim()
        if ($line -and -not $line.StartsWith('#') -and $line -like '*=*') {
            $parts = $line -split '=', 2
            $EnvVars[$parts[0].Trim()] = $parts[1].Trim()
        }
    }
}

# --- Resolve the SQL password: param > env > offline.env ------------------------
if (-not $SaPassword) { $SaPassword = $env:JOYSWORD_SA_PASSWORD }
if (-not $SaPassword -and $EnvVars.ContainsKey('DB_PASSWORD')) { $SaPassword = $EnvVars['DB_PASSWORD'] }
if ([string]::IsNullOrWhiteSpace($SaPassword)) {
    Write-Error 'No SQL password. Pass -SaPassword, set $env:JOYSWORD_SA_PASSWORD, or define DB_PASSWORD in offline.env.'
    exit 1
}

# --- Resolve the public IP: param, else Azure IMDS ------------------------------
if (-not $PublicIp) {
    Write-Host 'Discovering VM public IP via Azure Instance Metadata Service...'
    try {
        $imds = Invoke-RestMethod -Headers @{ Metadata = 'true' } -TimeoutSec 10 `
            -Uri 'http://169.254.169.254/metadata/instance/network/interface/0/ipv4/ipAddress/0/publicIpAddress?api-version=2021-02-01&format=text'
        $PublicIp = "$imds".Trim()
    } catch {
        Write-Error "Could not read public IP from IMDS: $($_.Exception.Message). Pass -PublicIp explicitly."
        exit 1
    }
    if ([string]::IsNullOrWhiteSpace($PublicIp)) {
        Write-Error 'IMDS returned no public IP (VM may have no public address). Pass -PublicIp explicitly.'
        exit 1
    }
}
Write-Host "Public endpoint : $PublicIp"
Write-Host "Private address : $PrivateIp"

# The legacy game client and DB schemas require numeric IPv4 endpoints. Do not
# register CNAME/FQDN aliases here; patch clients directly to the Azure VM IP.
if (-not (Test-IPv4Address $PublicIp)) {
    Write-Error "PublicIp must be a numeric IPv4 address. CNAME/FQDN endpoints are not supported by the legacy client. Use the Azure VM public IP, for example 52.238.194.187."
    exit 1
}
if (-not (Test-IPv4Address $PrivateIp)) {
    Write-Error "PrivateIp must be a numeric IPv4 address."
    exit 1
}

# --- Locate sqlcmd --------------------------------------------------------------
$SqlCmd = 'sqlcmd.exe'
if (-not (Get-Command $SqlCmd -ErrorAction SilentlyContinue)) {
    $candidates = @(
        'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe',
        'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe'
    )
    $SqlCmd = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
    if (-not $SqlCmd) {
        Write-Error 'sqlcmd not found. Install the SQL Server command-line tools.'
        exit 1
    }
}

# --- Sync IPs in the Statistics database ----------------------------------------
# UID 1,2,3,4,6 = the five server rows; LChannelList advertises the public IP.
# Values are passed as sqlcmd scalar vars so they never sit in the query text.
Write-Host 'Updating LServerList / LChannelList...'
$query = @'
SET NOCOUNT ON;
SET XACT_ABORT ON;
BEGIN TRANSACTION;
UPDATE [Statistics].dbo.LServerList
    SET [IP] = N'$(PrivIp)', [PrivateIP] = N'$(PrivIp)', [PublicIP] = N'$(PubIp)'
    WHERE UID IN (1, 2, 3, 4, 6);
IF @@ROWCOUNT <> 5 THROW 50000, 'Expected exactly five LServerList rows.', 1;
UPDATE [Statistics].dbo.LChannelList SET [IP] = N'$(PubIp)' WHERE OnOff = 1;
IF @@ROWCOUNT < 1 THROW 50000, 'Expected at least one active LChannelList row.', 1;
COMMIT TRANSACTION;
'@

& $SqlCmd -S 'localhost\SQLEXPRESS' -U sa -P $SaPassword -C -b `
    -v PrivIp="$PrivateIp" PubIp="$PublicIp" -Q $query
if ($LASTEXITCODE -ne 0) {
    Write-Error 'Database IP sync failed.'
    exit 1
}
Write-Host 'Database IP sync complete.' -ForegroundColor Green

# --- Write the public endpoint back into offline.env ----------------------------
# Keeps configure-offline.py / local_connect.py in agreement with the DB.
if (Test-Path $EnvFile) {
    $content = Get-Content -Path $EnvFile -Raw -Encoding UTF8
    if ($content -match '(?m)^CHANNEL_SERVER_IP=') {
        $content = $content -replace '(?m)^CHANNEL_SERVER_IP=.*$', "CHANNEL_SERVER_IP=$PublicIp"
    } else {
        $content = $content.TrimEnd() + "`nCHANNEL_SERVER_IP=$PublicIp`n"
    }
    Set-Content -Path $EnvFile -Value $content -Encoding UTF8 -NoNewline
    Write-Host "offline.env CHANNEL_SERVER_IP set to $PublicIp." -ForegroundColor Green
}

Write-Host 'Server IP registration complete.' -ForegroundColor Green
