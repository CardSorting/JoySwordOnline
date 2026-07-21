@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "PROFILE=US_SERVICE"
set "PVP_PROFILE=default"
if exist "%~dp0offline\offline.env" (
  for /f "usebackq tokens=1,* delims==" %%A in ("%~dp0offline\offline.env") do (
    if /i "%%A"=="SERVER_PROFILE" set "PROFILE=%%B"
    if /i "%%A"=="JOYSWORD_PVP_PROFILE" set "PVP_PROFILE=%%B"
  )
)
if defined JOYSWORD_PVP_PROFILE set "PVP_PROFILE=%JOYSWORD_PVP_PROFILE%"

cd /d "%~dp0.."
where python >nul 2>&1
if not errorlevel 1 (
  python scripts\apply-pvp-profile.py "%PVP_PROFILE%"
  if errorlevel 1 (
    echo PvP profile apply failed: %PVP_PROFILE%
    pause
    exit /b 1
  )
) else (
  echo WARNING: python not found; PvP profile not applied
)

cd /d "%~dp0GameServer"
if not exist "GameServer.exe" (
  echo ERROR: GameServer.exe was not found in %CD%.
  pause
  exit /b 1
)
start "GameServer" GameServer.exe %PROFILE% 0
