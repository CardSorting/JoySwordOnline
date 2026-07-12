# JoySword Windows container entrypoint.
$ErrorActionPreference = "Stop"

$AppRoot = "C:\app"
$EnvFile = "$AppRoot\Elsword\offline\offline.env"

function Set-DefaultEnv([string]$Name, [string]$Value) {
    if ([string]::IsNullOrEmpty([Environment]::GetEnvironmentVariable($Name))) {
        [Environment]::SetEnvironmentVariable($Name, $Value, "Process")
    }
}

function Reset-EphemeralServerDirs {
    Write-Host "==> Resetting ephemeral log/statistics directories..."
    $servers = @("CenterServer", "ChannelServer", "GlobalServer", "LoginServer", "GameServer")
    foreach ($name in $servers) {
        foreach ($subdir in @("log", "logs", "Log", "Logs", "Statistics")) {
            $dir = Join-Path "$AppRoot\Elsword\$name" $subdir
            if (Test-Path $dir) {
                Remove-Item $dir -Recurse -Force -ErrorAction SilentlyContinue
            }
        }
    }
}

Set-DefaultEnv "ELSWORD_ROOT" "C:\app\Elsword"
Set-DefaultEnv "SERVER_PROFILE" "US_SERVICE"
Set-DefaultEnv "LOGIN_MODE" "PUBLIC"
Set-DefaultEnv "OFFLINE_AUTH" "INTERNAL"
Set-DefaultEnv "DB_HOST" "host.docker.internal"
Set-DefaultEnv "DB_PORT" "1433"
Set-DefaultEnv "DB_USER" "sa"
Set-DefaultEnv "DB_PASSWORD" "JoySword!Offline123"
Set-DefaultEnv "CHANNEL_SERVER_IP" "0.0.0.0"
Set-DefaultEnv "CHANNEL_SERVER_PORT" "9400"
Set-DefaultEnv "LOGIN_SERVER_PORT" "9200"
Set-DefaultEnv "CENTER_SERVER_PORT" "9100"
Set-DefaultEnv "GLOBAL_SERVER_PORT" "9500"
Set-DefaultEnv "GAME_SERVER_PORT" "9300"
Set-DefaultEnv "START_DELAY_SECONDS" "5"
Set-DefaultEnv "SERVER_READINESS_MODE" "strict"
Set-DefaultEnv "JOYSWORD_PVP_PROFILE" "default"
Set-DefaultEnv "JOY_SWORD_LOG_BUDGET_MIB" "50"

$lines = @(
    "ELSWORD_ROOT=$($env:ELSWORD_ROOT)",
    "SERVER_PROFILE=$($env:SERVER_PROFILE)",
    "LOGIN_MODE=$($env:LOGIN_MODE)",
    "OFFLINE_AUTH=$($env:OFFLINE_AUTH)",
    "DB_HOST=$($env:DB_HOST)",
    "DB_PORT=$($env:DB_PORT)",
    "DB_USER=$($env:DB_USER)",
    "DB_PASSWORD=$($env:DB_PASSWORD)",
    "CHANNEL_SERVER_IP=$($env:CHANNEL_SERVER_IP)",
    "CHANNEL_SERVER_PORT=$($env:CHANNEL_SERVER_PORT)",
    "LOGIN_SERVER_PORT=$($env:LOGIN_SERVER_PORT)",
    "CENTER_SERVER_PORT=$($env:CENTER_SERVER_PORT)",
    "GLOBAL_SERVER_PORT=$($env:GLOBAL_SERVER_PORT)",
    "GAME_SERVER_PORT=$($env:GAME_SERVER_PORT)",
    "START_DELAY_SECONDS=$($env:START_DELAY_SECONDS)",
    "SERVER_READINESS_MODE=$($env:SERVER_READINESS_MODE)",
    "JOYSWORD_PVP_PROFILE=$($env:JOYSWORD_PVP_PROFILE)",
    "JOY_SWORD_LOG_BUDGET_MIB=$($env:JOY_SWORD_LOG_BUDGET_MIB)"
)
New-Item -ItemType Directory -Force -Path (Split-Path $EnvFile) | Out-Null
Set-Content -Path $EnvFile -Value $lines -Encoding UTF8

Set-Location $AppRoot
Reset-EphemeralServerDirs

$manifestPath = Join-Path $AppRoot ".joysword-manifest.json"
if (Test-Path $manifestPath) {
    $manifest = Get-Content -Raw -Path $manifestPath | ConvertFrom-Json
    Write-Host "==> Payload manifest: $($manifest.files) files, $([math]::Round($manifest.bytes/1MB,1)) MiB, profile=$($manifest.package_profile)"
}

Write-Host "==> Applying runtime configuration (secrets/endpoints only)..."
& python "$AppRoot\scripts\configure-offline.py" --repo-root $AppRoot --runtime-only
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }


Write-Host "==> Database healthcheck..."
& python "$AppRoot\scripts\db-healthcheck.py" --quiet --allow-tcp-only --timeout 90
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "==> Starting JoySword server stack (headless)..."
& python "$AppRoot\scripts\start-offline.py" --headless --supervise --allow-existing-ports
exit $LASTEXITCODE
