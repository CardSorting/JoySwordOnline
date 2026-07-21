@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "PROFILE=US_SERVICE"
if exist "%~dp0offline\offline.env" (
  for /f "usebackq tokens=1,* delims==" %%A in ("%~dp0offline\offline.env") do (
    if /i "%%A"=="SERVER_PROFILE" set "PROFILE=%%B"
  )
)

cd /d "%~dp0LoginServer"
if not exist "LoginServer.exe" (
  echo ERROR: LoginServer.exe was not found in %CD%.
  pause
  exit /b 1
)
start "LoginServer" LoginServer.exe %PROFILE% 0
