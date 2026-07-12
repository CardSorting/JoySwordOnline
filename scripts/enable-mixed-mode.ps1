# enable-mixed-mode.ps1
# Configures SQL Server on VM for Mixed Mode Authentication and sets the sa
# password. Run post-deploy with the password sourced from Key Vault, e.g.:
#
#   $env:JOYSWORD_SA_PASSWORD = (az keyvault secret show --vault-name <kv> `
#       --name db-password --query value -o tsv)
#   .\enable-mixed-mode.ps1 -FromEnv
#
# or pass it explicitly:  .\enable-mixed-mode.ps1 -SaPassword '<secret>'

[CmdletBinding()]
param(
    # sa password. If omitted, falls back to $env:JOYSWORD_SA_PASSWORD.
    [string]$SaPassword,

    # Convenience switch: read the password from $env:JOYSWORD_SA_PASSWORD.
    [switch]$FromEnv
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Resolve the password: explicit parameter wins, then environment variable.
if (-not $SaPassword -and ($FromEnv -or $env:JOYSWORD_SA_PASSWORD)) {
    $SaPassword = $env:JOYSWORD_SA_PASSWORD
}
if ([string]::IsNullOrWhiteSpace($SaPassword)) {
    Write-Error "No sa password provided. Pass -SaPassword '<secret>' or set `$env:JOYSWORD_SA_PASSWORD (see script header)."
    exit 1
}
if ($SaPassword.Length -lt 16 -or $SaPassword.Contains("'")) {
    Write-Error 'sa password must be at least 16 characters and must not contain a single quote.'
    exit 1
}

# 1. Enable Mixed Mode in Registry for SQLEXPRESS
$RegPaths = Get-ChildItem -Path "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL*.SQLEXPRESS\MSSQLServer" -ErrorAction SilentlyContinue
if (-not $RegPaths) {
    Write-Error "Could not find SQLEXPRESS registry path."
    exit 1
}

$RegPath = $RegPaths[0].Name -replace "HKEY_LOCAL_MACHINE", "HKLM:"
Write-Host "Found SQL Server Registry Path: $RegPath"

Write-Host "Setting LoginMode to 2 (Mixed Mode)..."
Set-ItemProperty -Path $RegPath -Name "LoginMode" -Value 2

# 2. Restart SQL Server Service
Write-Host "Restarting MSSQL`$SQLEXPRESS service..."
Restart-Service -Name "MSSQL`$SQLEXPRESS" -Force

# 3. Configure sa login using Windows Authentication.
# The password is passed via a scalar variable (-v) so it never appears in the
# query text / command line, and single quotes are already rejected above.
Write-Host "Configuring sa login password and enabling sa..."
$Query = "ALTER LOGIN sa WITH PASSWORD = N'`$(SaPwd)'; ALTER LOGIN sa ENABLE;"

& sqlcmd.exe -S "localhost\SQLEXPRESS" -E -b -v "SaPwd=$SaPassword" -Q $Query
if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to alter sa login settings."
    exit 1
}

Write-Host "SQL Server configured successfully for Mixed Mode Authentication and sa login active!"
