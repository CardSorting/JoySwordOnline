@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "ROOT=%~dp0.."
cd /d "%ROOT%"

set "DB_PASSWORD=JoySword!Offline123"

if exist "Elsword\offline\offline.env" (
  for /f "usebackq tokens=1,* delims==" %%A in ("Elsword\offline\offline.env") do (
    if /i "%%A"=="DB_PASSWORD" set "DB_PASSWORD=%%B"
  )
)

set "MSSQL_SA_PASSWORD=%DB_PASSWORD%"

docker compose ps mssql --status running >nul 2>&1
if %errorlevel% neq 0 (
  echo SQL Server container is not running. Run scripts\start-database.bat first.
  exit /b 1
)

for %%D in (Account ES_BILLING Game01 Statistics) do (
  call :RestoreDatabase "%%D"
  if errorlevel 1 exit /b 1
)

echo All databases restored.
exit /b 0

:RestoreDatabase
set "DB_NAME=%~1"
set "BAK_FILE=%ROOT%\database\%DB_NAME%.bak"

if not exist "%BAK_FILE%" (
  echo Missing backup: %BAK_FILE%
  exit /b 1
)

echo Restoring %DB_NAME% from %BAK_FILE%...

rem Execute sqlcmd command within container to restore the database.
docker compose exec -T -e MSSQL_SA_PASSWORD mssql bash -c "
    CMD=\"\"
    if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
      CMD=/opt/mssql-tools18/bin/sqlcmd
      EXTRA=(-C)
    else
      CMD=/opt/mssql-tools/bin/sqlcmd
      EXTRA=()
    fi
    
    # Get logical file names
    FILELIST=$(\"$CMD\" -S localhost -U sa -P \"$MSSQL_SA_PASSWORD\" \"${EXTRA[@]}\" -h -1 -W -Q \"SET NOCOUNT ON; RESTORE FILELISTONLY FROM DISK = N'/backups/%DB_NAME%.bak';\")
    NAMES=($(echo \"$FILELIST\" | awk 'NF && $1 !~ /^Logical/ { print $1 }' | head -2))
    DATA_LOGICAL=\"${NAMES[0]:-}\"
    LOG_LOGICAL=\"${NAMES[1]:-${DATA_LOGICAL}_log}\"
    
    if [[ -z \"$DATA_LOGICAL\" ]]; then
      echo \"Could not read logical file names for %DB_NAME%\" >&2
      exit 1
    fi
    
    DATA_FILE=\"/var/opt/mssql/data/%DB_NAME%.mdf\"
    LOG_FILE=\"/var/opt/mssql/data/%DB_NAME%_log.ldf\"
    
    \"$CMD\" -S localhost -U sa -P \"$MSSQL_SA_PASSWORD\" \"${EXTRA[@]}\" -Q \"
      IF DB_ID(N'%DB_NAME%') IS NOT NULL
      BEGIN
        ALTER DATABASE [%DB_NAME%] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE [%DB_NAME%];
      END;
      RESTORE DATABASE [%DB_NAME%]
        FROM DISK = N'/backups/%DB_NAME%.bak'
        WITH MOVE N'$DATA_LOGICAL' TO N'$DATA_FILE',
             MOVE N'$LOG_LOGICAL' TO N'$LOG_FILE',
             REPLACE,
             RECOVERY,
             STATS = 10;
    \"
"
if errorlevel 1 (
  echo Failed to restore database %DB_NAME%
  exit /b 1
)
exit /b 0
