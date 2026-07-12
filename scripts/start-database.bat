@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "ROOT=%~dp0.."
cd /d "%ROOT%"

set "DB_PASSWORD=JoySword!Offline123"
set "DB_PORT=1433"

if exist "Elsword\offline\offline.env" (
  for /f "usebackq tokens=1,* delims==" %%A in ("Elsword\offline\offline.env") do (
    if /i "%%A"=="DB_PASSWORD" set "DB_PASSWORD=%%B"
    if /i "%%A"=="DB_PORT" set "DB_PORT=%%B"
  )
)

set "MSSQL_SA_PASSWORD=%DB_PASSWORD%"
set "MSSQL_PORT=%DB_PORT%"

echo Starting SQL Server (Docker) on port %MSSQL_PORT%...
docker compose up -d mssql
if errorlevel 1 (
  echo Failed to start SQL Server container.
  exit /b 1
)

echo Waiting for SQL Server to become healthy...
for /L %%i in (1,1,60) do (
  docker compose exec -T -e MSSQL_SA_PASSWORD mssql bash -c "/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P \"$MSSQL_SA_PASSWORD\" -C -Q \"SELECT 1\" >/dev/null 2>&1 || /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P \"$MSSQL_SA_PASSWORD\" -Q \"SELECT 1\" >/dev/null 2>&1" >nul 2>&1
  if not errorlevel 1 (
    echo SQL Server is ready.
    exit /b 0
  )
  timeout /t 2 /nobreak >nul
)

echo SQL Server did not become ready in time.
echo.
echo Container status:
docker compose ps mssql
echo.
echo Recent SQL Server logs:
docker compose logs --tail=80 mssql
echo.
echo If this started after changing DB_PASSWORD, the existing Docker volume may still
echo contain the old sa password. Stop the container and recreate the database volume
echo only if you are ready to restore the .bak files again.
exit /b 1
