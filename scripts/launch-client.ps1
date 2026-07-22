[CmdletBinding()]
param(
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [ValidateSet("1024x768", "1280x720", "1600x900", "1920x1080", "2560x1440")]
    [string]$Resolution = "1280x720",
    [ValidateSet("true", "false")]
    [string]$Fullscreen = "false",
    [switch]$RepairOnly,
    [switch]$Json
)

$ErrorActionPreference = "Stop"
$ClientDirectory = if (Test-Path (Join-Path $RepositoryRoot "client\data")) { Join-Path $RepositoryRoot "client\data" } else { Join-Path $RepositoryRoot "data" }
$ClientExecutable = Join-Path $ClientDirectory "x2.exe"
$OptionsPath = Join-Path $ClientDirectory "GameOptions.lua"
$Token = "pxk19slammsu286nfha02kpqnf729ck"

function Write-Result {
    param([hashtable]$Value)
    if ($Json) {
        $Value | ConvertTo-Json -Compress
    } else {
        Write-Host $Value.message
    }
}

function Repair-ClientOptions {
    if (-not (Test-Path -LiteralPath $OptionsPath)) {
        throw "GameOptions.lua was not found in $ClientDirectory."
    }

    $Dimensions = $Resolution.Split("x")
    $DesiredFullscreen = if ($Fullscreen -eq "true") { "TRUE" } else { "FALSE" }
    $Original = Get-Content -LiteralPath $OptionsPath -Raw
    $Updated = $Original
    $Updated = $Updated -replace "RESOLUTION_X\s*=\s*\d+", "RESOLUTION_X`t`t= $($Dimensions[0])"
    $Updated = $Updated -replace "RESOLUTION_Y\s*=\s*\d+", "RESOLUTION_Y`t`t= $($Dimensions[1])"
    $Updated = $Updated -replace "FULLSCREEN\s*=\s*(TRUE|FALSE)", "FULLSCREEN`t`t`t= $DesiredFullscreen"

    if ($Updated -eq $Original) {
        return $null
    }

    $BackupPath = "$OptionsPath.joysword-backup"
    if (-not (Test-Path -LiteralPath $BackupPath)) {
        Copy-Item -LiteralPath $OptionsPath -Destination $BackupPath
    }
    $UTF8NoBOM = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($OptionsPath, $Updated, $UTF8NoBOM)
    return $BackupPath
}

function Show-ClientWindow {
    param([Parameter(Mandatory = $true)][System.Diagnostics.Process]$Process)

    if ($Process.MainWindowHandle -eq 0) {
        return $false
    }
    if (-not ("JoySword.WindowTools" -as [type])) {
        Add-Type @"
using System;
using System.Runtime.InteropServices;
namespace JoySword {
    public static class WindowTools {
        [DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        [DllImport("user32.dll")] public static extern bool SetForegroundWindow(IntPtr hWnd);
        [DllImport("user32.dll")] public static extern bool SetWindowPos(IntPtr hWnd, IntPtr after, int x, int y, int cx, int cy, uint flags);
    }
}
"@
    }
    [JoySword.WindowTools]::ShowWindow($Process.MainWindowHandle, 9) | Out-Null
    [JoySword.WindowTools]::SetWindowPos($Process.MainWindowHandle, [IntPtr]::Zero, 80, 80, 0, 0, 0x0005) | Out-Null
    [JoySword.WindowTools]::SetForegroundWindow($Process.MainWindowHandle) | Out-Null
    return $true
}

try {
    # Unblock key folders and files to prevent Windows "Open File - Security Warning" and SmartScreen alerts,
    # while avoiding slow recursion through node_modules or .git.
    if (Get-Command Unblock-File -ErrorAction SilentlyContinue) {
        # Unblock the script itself
        if ($MyInvocation -and $MyInvocation.MyCommand -and $MyInvocation.MyCommand.Path) {
            Unblock-File -Path $MyInvocation.MyCommand.Path -ErrorAction SilentlyContinue
        }
        # Unblock specific target folders recursively to avoid scanning massive directories like launcher/node_modules or Elsword
        $DataDir = Join-Path $RepositoryRoot "data"
        if (Test-Path -LiteralPath $DataDir) {
            Get-ChildItem -Path $DataDir -Recurse -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
        }
        $ScriptsDir = Join-Path $RepositoryRoot "scripts"
        if (Test-Path -LiteralPath $ScriptsDir) {
            Get-ChildItem -Path $ScriptsDir -Recurse -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
        }
        # Unblock immediate files in the repository root
        Get-ChildItem -Path $RepositoryRoot -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
    }

    if (-not (Test-Path -LiteralPath $ClientExecutable)) {
        throw "x2.exe was not found in $ClientDirectory."
    }

    $Existing = Get-Process x2 -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($Existing) {
        $Focused = Show-ClientWindow -Process $Existing
        Write-Result @{ ok = $true; focused = $Focused; message = if ($Focused) { "Existing client focused." } else { "Client is already starting." } }
        exit 0
    }

    $LocalConnectScript = Join-Path $RepositoryRoot "scripts\local_connect.py"
    if (Test-Path -LiteralPath $LocalConnectScript) {
        $HasPython = $false
        if (Get-Command python -ErrorAction SilentlyContinue) {
            try {
                $Check = Start-Process python -ArgumentList "-V" -NoNewWindow -PassThru -ErrorAction SilentlyContinue
                if ($Check) {
                    $Check | Wait-Process -Timeout 2 -ErrorAction SilentlyContinue
                    if ($Check.HasExited -and $Check.ExitCode -eq 0) {
                        $HasPython = $true
                    } else {
                        $Check | Stop-Process -Force -ErrorAction SilentlyContinue
                    }
                }
            } catch {}
        }

        if ($HasPython) {
            if (-not $Json) {
                Write-Host "Automatically patching client to offline server configuration..." -ForegroundColor Cyan
            }
            try {
                if ($Json) {
                    & python $LocalConnectScript --skip-repack *>$null
                } else {
                    & python $LocalConnectScript --skip-repack
                }
            } catch {
                if (-not $Json) {
                    Write-Warning "Could not execute local_connect.py: $_"
                }
            }
        } elseif (-not $Json) {
            Write-Warning "Python is not installed or not working. Skipping automatic client patching."
        }
    }

    $Backup = Repair-ClientOptions
    if ($RepairOnly) {
        Write-Result @{ ok = $true; message = "Client display settings verified and repaired."; backupPath = $Backup }
        exit 0
    }




    # Bypass UAC elevation prompts for x2.exe by running it with the invoker's privileges
    $env:__COMPAT_LAYER = "RunAsInvoker"

    Start-Process -FilePath $ClientExecutable -ArgumentList $Token -WorkingDirectory $ClientDirectory -RedirectStandardOutput "NUL" -RedirectStandardError "$env:TEMP\joysword-x2-stderr.log"
    Write-Result @{ ok = $true; focused = $false; message = "JoySword client launched." }
    exit 0
} catch {
    Write-Result @{ ok = $false; focused = $false; message = $_.Exception.Message }
    exit 1
}
