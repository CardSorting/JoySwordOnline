@echo off
setlocal EnableExtensions DisableDelayedExpansion
REM JoySword PvP diagnostic session — capture + log watch
REM Usage: scripts\start-pvp-session.bat lan_tournament test001 300

set "PROFILE=%~1"
set "TAG=%~2"
set "DURATION=%~3"
if "%PROFILE%"=="" set "PROFILE=lan_tournament"
if "%TAG%"=="" set "TAG=001"
if "%DURATION%"=="" set "DURATION=300"

cd /d "%~dp0.."

where python >nul 2>&1
if errorlevel 1 (
  echo Python 3 required.
  exit /b 1
)

echo Applying PvP profile: %PROFILE%
python scripts\apply-pvp-profile.py %PROFILE%
if errorlevel 1 exit /b 1

start "pvp-log-watch" python scripts\pvp-log-watch.py --session %TAG% --profile %PROFILE%
python scripts\pvp-netcode-capture.py session --profile %PROFILE% --tag %TAG% --duration %DURATION%

echo.
echo Session complete. See captures\session-%TAG%-* and Elsword\GameServer\log\pvp-diagnostics.log
