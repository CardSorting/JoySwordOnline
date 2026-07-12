@echo off
setlocal EnableExtensions

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Start-Client-Windows.ps1"
if errorlevel 1 (
    echo.
    echo Client startup failed. Review the diagnostics above.
    pause
    exit /b 1
)
