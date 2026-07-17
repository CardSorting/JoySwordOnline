@echo off
cd /d "%~dp0"
title JoySword One-Click Bootstrapper
echo ==========================================================
echo           JoySword One-Click Server Bootstrapper
echo ==========================================================
echo.
echo Starting JoySword Server Stack (Database, Game, Web API, Tunnel)...
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\Start-Server-Automatic.ps1 -SkipFirewall -Supervise
echo.
echo ==========================================================
echo Server stack has stopped.
echo ==========================================================
pause
