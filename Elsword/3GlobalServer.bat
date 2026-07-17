@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "PROFILE=US_SERVICE"
if exist "%~dp0offline\offline.env" (
  for /f "usebackq tokens=1,* delims==" %%A in ("%~dp0offline\offline.env") do (
    if /i "%%A"=="SERVER_PROFILE" set "PROFILE=%%B"
  )
)

cd /d "%~dp0.."
where python >nul 2>&1
if errorlevel 1 (
  echo ERROR: Python is required to apply the solo PvP matchmaking patch.
  exit /b 1
)
python scripts\patch-globalserver-solo-pvp.py
if errorlevel 1 exit /b 1

cd /d "%~dp0GlobalServer"
start "GlobalServer" GlobalServer.exe %PROFILE% 0
