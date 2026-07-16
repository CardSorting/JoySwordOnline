@echo off
title JoySword Stop Services
echo Stopping all JoySword services...
taskkill /f /im node.exe 2>nul
taskkill /f /im cloudflared.exe 2>nul
taskkill /f /im CenterServer.exe 2>nul
taskkill /f /im ChannelServer.exe 2>nul
taskkill /f /im GlobalServer.exe 2>nul
taskkill /f /im LoginServer.exe 2>nul
taskkill /f /im GameServer.exe 2>nul
echo.
echo All services stopped successfully!
pause
