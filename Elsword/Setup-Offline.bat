@echo off
cd /d "%~dp0"
call "%~dp0..\scripts\setup-offline.bat"
if errorlevel 1 (
  echo.
  echo Setup failed. Review error output.
  pause
  exit /b 1
)
pause
