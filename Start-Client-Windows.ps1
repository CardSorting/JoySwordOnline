# Backward-compatible entry point for the shared JoySword client launcher.
$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"
$ScriptRoot = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Definition }

# Unblock key folders and files to prevent Windows "Open File - Security Warning" and SmartScreen alerts,
# while avoiding slow recursion through node_modules or .git.
if (Get-Command Unblock-File -ErrorAction SilentlyContinue) {
    # Unblock this script itself
    if ($MyInvocation -and $MyInvocation.MyCommand -and $MyInvocation.MyCommand.Path) {
        Unblock-File -Path $MyInvocation.MyCommand.Path -ErrorAction SilentlyContinue
    }
    # Unblock specific target folders recursively to avoid scanning massive directories like launcher/node_modules or Elsword
    $DataDir = if (Test-Path (Join-Path $ScriptRoot "client\data")) { Join-Path $ScriptRoot "client\data" } else { Join-Path $ScriptRoot "data" }
    if (Test-Path -LiteralPath $DataDir) {
        Get-ChildItem -Path $DataDir -Recurse -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
    }
    $ScriptsDir = Join-Path $ScriptRoot "scripts"
    if (Test-Path -LiteralPath $ScriptsDir) {
        Get-ChildItem -Path $ScriptsDir -Recurse -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
    }
    # Unblock immediate files in the repository root
    Get-ChildItem -Path $ScriptRoot -File -ErrorAction SilentlyContinue | Unblock-File -ErrorAction SilentlyContinue
}

& (Join-Path $ScriptRoot "scripts\launch-client.ps1") -RepositoryRoot $ScriptRoot @args
exit $LASTEXITCODE
