# azure_image_bootstrap.ps1
# Packer provisioner (stage 1): prepare the base Windows Server image for the
# JoySword game-server stack. Installs the runtime toolchain, opens the game
# firewall ports, and applies light OS tuning. Idempotent and safe to re-run.
#
# Runs during `packer build` against the temporary build VM. Persistent game
# data lives on the D: data disk which is attached at VM-creation time, NOT at
# image-build time, so this script only touches C: / machine-wide settings.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'  # speeds up Invoke-WebRequest substantially

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

function Invoke-WithRetry {
    param(
        [Parameter(Mandatory)] [scriptblock] $Script,
        [string] $Activity = 'operation',
        [int]    $MaxAttempts = 5,
        [int]    $DelaySeconds = 10
    )
    for ($attempt = 1; $attempt -le $MaxAttempts; $attempt++) {
        try {
            return & $Script
        } catch {
            if ($attempt -eq $MaxAttempts) {
                throw "Failed $Activity after $MaxAttempts attempts: $($_.Exception.Message)"
            }
            $wait = $DelaySeconds * $attempt
            Write-Host "  $Activity failed (attempt $attempt/$MaxAttempts): $($_.Exception.Message). Retrying in ${wait}s..."
            Start-Sleep -Seconds $wait
        }
    }
}

function Get-RemoteFile {
    param([Parameter(Mandatory)] [string] $Uri, [Parameter(Mandatory)] [string] $OutFile)
    Invoke-WithRetry -Activity "download $(Split-Path $Uri -Leaf)" -Script {
        Invoke-WebRequest -Uri $Uri -OutFile $OutFile -UseBasicParsing -TimeoutSec 600
    }
    if (-not (Test-Path $OutFile) -or (Get-Item $OutFile).Length -eq 0) {
        throw "Downloaded file is missing or empty: $OutFile"
    }
}

$WorkDir = Join-Path $env:TEMP 'joysword-bootstrap'
New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null

Write-Host '==> [1/5] Python 3.11 runtime...'
$python = Get-Command python -ErrorAction SilentlyContinue
if ($python -and (& python --version 2>&1) -match '3\.1[1-9]') {
    Write-Host "  Python already present: $(& python --version 2>&1)"
} else {
    $PyVersion = '3.11.9'
    $PyInstaller = Join-Path $WorkDir "python-$PyVersion-amd64.exe"
    Get-RemoteFile -Uri "https://www.python.org/ftp/python/$PyVersion/python-$PyVersion-amd64.exe" -OutFile $PyInstaller
    Write-Host "  Installing Python $PyVersion (all users, on PATH)..."
    $proc = Start-Process -FilePath $PyInstaller -Wait -PassThru -ArgumentList @(
        '/quiet', 'InstallAllUsers=1', 'PrependPath=1', 'Include_test=0', 'Include_launcher=1'
    )
    if ($proc.ExitCode -ne 0) { throw "Python installer exited with code $($proc.ExitCode)" }
    $env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')
}

Write-Host '==> [2/5] Verifying native tar.exe (used for fast workspace extraction)...'
if (-not (Get-Command tar.exe -ErrorAction SilentlyContinue)) {
    throw 'tar.exe not found. Windows Server 2019+ is required for native archive extraction.'
}

Write-Host '==> [3/5] Windows Firewall rules for public game ports...'
# TCP connection gates + secondary TCP/UDP sync ports. SQL (1433), RDP, WinRM
# are intentionally NOT opened here; the Azure NSG is the authoritative boundary.
$GameTcpPorts = 9200, 9201, 9300, 9301, 9400, 9401
$GameUdpPorts = 9201, 9301, 9401
if (-not (Get-NetFirewallRule -DisplayName 'JoySword Public Game TCP' -ErrorAction SilentlyContinue)) {
    New-NetFirewallRule -DisplayName 'JoySword Public Game TCP' -Direction Inbound -Action Allow `
        -Protocol TCP -LocalPort $GameTcpPorts -Profile Any | Out-Null
    Write-Host "  Created TCP rule for ports: $($GameTcpPorts -join ', ')"
} else {
    Write-Host '  TCP rule already present.'
}
if (-not (Get-NetFirewallRule -DisplayName 'JoySword Public Game UDP' -ErrorAction SilentlyContinue)) {
    New-NetFirewallRule -DisplayName 'JoySword Public Game UDP' -Direction Inbound -Action Allow `
        -Protocol UDP -LocalPort $GameUdpPorts -Profile Any | Out-Null
    Write-Host "  Created UDP rule for ports: $($GameUdpPorts -join ', ')"
} else {
    Write-Host '  UDP rule already present.'
}

Write-Host '==> [4/5] Light OS tuning for a long-running game host...'
# Keep the server responsive: high-performance power plan, no interactive
# shutdown-reason prompt, and generous ephemeral port range for many sockets.
& powercfg.exe /setactive SCHEME_MIN 2>&1 | Out-Null
& netsh int ipv4 set dynamicport tcp start=10000 num=55535 2>&1 | Out-Null

Write-Host '==> [5/5] Cleaning up bootstrap workdir...'
Remove-Item -Recurse -Force $WorkDir -ErrorAction SilentlyContinue

Write-Host 'JoySword image bootstrap completed successfully.'
