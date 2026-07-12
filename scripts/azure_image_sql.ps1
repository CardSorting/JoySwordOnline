# azure_image_sql.ps1
# Packer provisioner (stage 2): install and pre-configure SQL Server Express on
# the image. Enables TCP/IP on 1433 and Mixed Mode auth so the game servers can
# connect via `sa` after deployment.
#
# SECURITY: no `sa` password is set here. Baking a credential into a shared image
# is a leak. The sa login stays DISABLED in the image; the real password is
# injected post-deploy from Key Vault (see `scripts/azure_deploy.py secrets` and
# `scripts/enable-mixed-mode.ps1 -FromEnv`). SQL binds to loopback / the private
# NIC only; 1433 is never exposed publicly (Azure NSG enforces this).

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

function Invoke-WithRetry {
    param([Parameter(Mandatory)] [scriptblock] $Script, [string] $Activity = 'operation',
          [int] $MaxAttempts = 5, [int] $DelaySeconds = 10)
    for ($attempt = 1; $attempt -le $MaxAttempts; $attempt++) {
        try { return & $Script }
        catch {
            if ($attempt -eq $MaxAttempts) { throw "Failed $Activity after $MaxAttempts attempts: $($_.Exception.Message)" }
            $wait = $DelaySeconds * $attempt
            Write-Host "  $Activity failed (attempt $attempt/$MaxAttempts): $($_.Exception.Message). Retrying in ${wait}s..."
            Start-Sleep -Seconds $wait
        }
    }
}

$WorkDir = Join-Path $env:TEMP 'joysword-sql'
New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null

Write-Host '==> [1/4] Detecting existing SQL Server Express instance...'
$sqlService = Get-Service -Name 'MSSQL$SQLEXPRESS' -ErrorAction SilentlyContinue
if ($sqlService) {
    Write-Host '  SQLEXPRESS already installed; skipping installer.'
} else {
    Write-Host '  Downloading SQL Server 2022 Express bootstrapper...'
    $BootUrl = 'https://download.microsoft.com/download/3/8/d/38de7036-2433-4207-8eae-06e247e17b25/SQLEXPR_x64_ENU.exe'
    $BootExe = Join-Path $WorkDir 'SQLEXPR_x64_ENU.exe'
    Invoke-WithRetry -Activity 'download SQL Express' -Script {
        Invoke-WebRequest -Uri $BootUrl -OutFile $BootExe -UseBasicParsing -TimeoutSec 1800
    }
    if (-not (Test-Path $BootExe) -or (Get-Item $BootExe).Length -eq 0) {
        throw "SQL Express installer download failed or is empty: $BootExe"
    }

    Write-Host '  Extracting installer media...'
    $Media = Join-Path $WorkDir 'media'
    $proc = Start-Process -FilePath $BootExe -Wait -PassThru -ArgumentList @('/q', "/x:$Media")
    if ($proc.ExitCode -ne 0) { throw "SQL Express extraction failed (exit $($proc.ExitCode))" }

    Write-Host '  Installing SQLEXPRESS (Mixed Mode, no sa password baked in)...'
    # SECURITYMODE=SQL enables Mixed Mode; sa is created but left DISABLED with no
    # usable password until post-deploy configuration runs. SQLSVCACCOUNT runs as
    # the built-in virtual service account.
    $setup = Join-Path $Media 'setup.exe'
    $proc = Start-Process -FilePath $setup -Wait -PassThru -ArgumentList @(
        '/q', '/ACTION=Install', '/FEATURES=SQLENGINE', '/INSTANCENAME=SQLEXPRESS',
        '/SECURITYMODE=SQL', '/SQLSYSADMINACCOUNTS=BUILTIN\Administrators',
        '/SQLSVCACCOUNT=NT Service\MSSQL$SQLEXPRESS', '/TCPENABLED=1', '/NPENABLED=0',
        '/IACCEPTSQLSERVERLICENSETERMS'
    )
    if ($proc.ExitCode -ne 0) { throw "SQL Express install failed (exit $($proc.ExitCode))" }
    Write-Host '  SQLEXPRESS installed.'
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Write-Host '==> [2/4] Enabling TCP/IP on static port 1433...'
& (Join-Path $ScriptDir 'enable-tcp-port.ps1')
if ($LASTEXITCODE -ne $null -and $LASTEXITCODE -ne 0) { throw 'enable-tcp-port.ps1 failed.' }

Write-Host '==> [3/4] Ensuring Mixed Mode auth (LoginMode=2); sa stays disabled...'
$RegPaths = Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL*.SQLEXPRESS\MSSQLServer' -ErrorAction SilentlyContinue
if (-not $RegPaths) { throw 'Could not find SQLEXPRESS registry path after install.' }
$RegPath = $RegPaths[0].Name -replace 'HKEY_LOCAL_MACHINE', 'HKLM:'
Set-ItemProperty -Path $RegPath -Name 'LoginMode' -Value 2
Restart-Service -Name 'MSSQL$SQLEXPRESS' -Force

Write-Host '==> [4/4] Setting SQLEXPRESS service to start automatically and cleaning up...'
Set-Service -Name 'MSSQL$SQLEXPRESS' -StartupType Automatic
Remove-Item -Recurse -Force $WorkDir -ErrorAction SilentlyContinue

Write-Host 'JoySword SQL image preparation completed. Set the sa password post-deploy from Key Vault.'
