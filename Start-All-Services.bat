@echo off
title JoySword One-Click Bootstrapper
echo ==========================================================
echo           JoySword One-Click Server Bootstrapper
echo ==========================================================
echo.
echo Starting game servers (in Supervise mode)...
start "JoySword Game Servers" cmd /k "powershell.exe -ExecutionPolicy Bypass -File .\Start-Server-Automatic.ps1 -SkipFirewall -Supervise"

echo.
echo Starting Web Portal API...
start "JoySword Web API" cmd /k "Start-Web-Portal.bat"

echo.
echo Starting Cloudflare Tunnel...
start "JoySword Cloudflare Tunnel" cmd /k "Start-Cloudflare-Tunnel.bat"

echo.
echo ==========================================================
echo All services have been launched in separate windows!
echo Keep those windows open to keep the servers online.
echo ==========================================================
pause
