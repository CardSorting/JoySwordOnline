@echo off
setlocal EnableExtensions DisableDelayedExpansion

cd /d "%~dp0"

call :FindPython
if errorlevel 1 (
  pause
  exit /b 1
)

"%PYTHON_EXE%" %PYTHON_ARGS% "%~dp0..\scripts\configure-offline.py"
if errorlevel 1 (
  echo.
  echo Copy offline\offline.env.example to offline\offline.env and edit paths first.
  pause
  exit /b 1
)
pause
exit /b 0

:FindPython
where python >nul 2>&1
if not errorlevel 1 (
  set "PYTHON_EXE=python"
  set "PYTHON_ARGS="
  exit /b 0
)

where py >nul 2>&1
if not errorlevel 1 (
  set "PYTHON_EXE=py"
  set "PYTHON_ARGS=-3"
  exit /b 0
)

echo Python 3 was not found in PATH. Install Python 3, then run this again.
exit /b 1
