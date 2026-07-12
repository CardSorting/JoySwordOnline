# prepare-vm.ps1
# Post-deploy orchestrator for the JoySword Azure Windows VM. Run once (as
# Administrator) after Terraform creates the VM from the managed image. Chains
# the previously-standalone prep steps into a single idempotent flow:
#
#   1. Initialize + mount the data disk as D: and create the folder layout
#   2. Download and extract the workspace payload from blob storage
#   3. Restore the databases (native SQLEXPRESS)
#   4. Register the server's public/private IPs (DB + offline.env)
#   5. Patch the server-side Lua config to the runtime layout
#   6. Launch the five-server stack (supervised)
#
# Every stage shells the existing, individually-tested scripts; this file only
# sequences them and fails fast with a clear stage marker.
#
#   .\prepare-vm.ps1                              # auto: IMDS public IP
#   .\prepare-vm.ps1 -PublicIp 52.238.194.187
#   .\prepare-vm.ps1 -SkipDataDisk -SkipDownload  # re-run app steps only

[CmdletBinding()]
param(
    [string]$PublicIp,
    [string]$PrivateIp = '127.0.0.1',
    [string]$SaPassword,
    [switch]$SkipDataDisk,
    [switch]$SkipDownload,
    [switch]$SkipOverlay,
    [switch]$SkipRestore,
    [switch]$NoStart
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$ServerDir  = 'D:\JoySword\Server'

# Require elevation: disk init and SQL service control both need admin.
$principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Error 'prepare-vm.ps1 must run in an elevated (Administrator) PowerShell session.'
    exit 1
}

function Invoke-Stage {
    param([string]$Name, [scriptblock]$Body)
    Write-Host "==========================================================" -ForegroundColor Cyan
    Write-Host " STAGE: $Name" -ForegroundColor Cyan
    Write-Host "==========================================================" -ForegroundColor Cyan
    & $Body
    Write-Host "STAGE OK: $Name`n" -ForegroundColor Green
}

function Invoke-Script {
    param([string]$Relative, [string[]]$Arguments = @())
    $path = Join-Path $ScriptRoot $Relative
    if (-not (Test-Path $path)) { throw "Missing script: $path" }
    & $path @Arguments
    if ($LASTEXITCODE -ne $null -and $LASTEXITCODE -ne 0) {
        throw "$Relative exited with code $LASTEXITCODE"
    }
}

if (-not $SkipDataDisk) {
    Invoke-Stage 'Initialize data disk (D:)' { Invoke-Script 'initialize-data-disk.ps1' }
} else { Write-Host 'Skipping data-disk init (-SkipDataDisk).' -ForegroundColor Gray }

if (-not $SkipDownload) {
    Invoke-Stage 'Download + extract workspace' { Invoke-Script 'download-and-extract-workspace.ps1' }
} else { Write-Host 'Skipping workspace download (-SkipDownload).' -ForegroundColor Gray }

# Overlay current code (scripts / SQL / env templates) over the bulk workspace.
# The bulk blob changes rarely and can lag source; this guarantees the VM runs
# current code and never regresses removed traces. Runs from the freshly
# overlaid copy on re-invocation, so it self-updates.
if (-not $SkipOverlay) {
    Invoke-Stage 'Apply code overlay (current scripts/SQL over bulk workspace)' {
        $overlay = Join-Path $ServerDir 'scripts\apply-code-overlay.ps1'
        if (-not (Test-Path $overlay)) { $overlay = Join-Path $ScriptRoot 'apply-code-overlay.ps1' }
        & $overlay
        if ($LASTEXITCODE -ne $null -and $LASTEXITCODE -ne 0) {
            throw "apply-code-overlay.ps1 exited with code $LASTEXITCODE"
        }
    }
} else { Write-Host 'Skipping code overlay (-SkipOverlay).' -ForegroundColor Gray }

if (-not $SkipRestore) {
    Invoke-Stage 'Restore databases (native)' { Invoke-Script 'restore-databases-native.ps1' }
} else { Write-Host 'Skipping database restore (-SkipRestore).' -ForegroundColor Gray }

Invoke-Stage 'Register server IPs (DB + offline.env)' {
    $ipArgs = @('-PrivateIp', $PrivateIp)
    if ($PublicIp)   { $ipArgs += @('-PublicIp', $PublicIp) }
    if ($SaPassword) { $ipArgs += @('-SaPassword', $SaPassword) }
    Invoke-Script 'sync-server-ip.ps1' $ipArgs
}

Invoke-Stage 'Apply server-side configuration' {
    & python (Join-Path $ScriptRoot 'configure-offline.py')
    if ($LASTEXITCODE -ne 0) { throw "configure-offline.py exited with code $LASTEXITCODE" }
}

if (-not $NoStart) {
    Invoke-Stage 'Launch server stack (supervised, headless)' {
        & python (Join-Path $ScriptRoot 'start-offline.py') '--headless' '--supervise'
        if ($LASTEXITCODE -ne 0) { throw "start-offline.py exited with code $LASTEXITCODE" }
    }
} else {
    Write-Host 'Skipping server launch (-NoStart). Run scripts\start-offline.py when ready.' -ForegroundColor Gray
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host " JoySword VM preparation complete." -ForegroundColor Green
Write-Host " Players can now connect to the registered public endpoint." -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
