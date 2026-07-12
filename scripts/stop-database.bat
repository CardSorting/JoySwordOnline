@echo off
set "ROOT=%~dp0.."
cd /d "%ROOT%"

echo Stopping SQL Server container...
docker compose down
