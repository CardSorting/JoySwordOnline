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
if errorlevel 1 (
  echo ERROR: Python is required to validate the PvP matchmaking configuration.
  exit /b 1
)
python scripts\apply-pvp-profile.py %PVP_PROFILE%
if errorlevel 1 exit /b 1
python scripts\validate-pvp-matchmaking.py
if errorlevel 1 exit /b 1

cd /d "%~dp0CenterServer"
start "CenterServer" CenterServer.exe %PROFILE% 0
