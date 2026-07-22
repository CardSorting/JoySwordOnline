@echo off
setlocal EnableExtensions DisableDelayedExpansion

set "ROOT=%~dp0.."
cd /d "%ROOT%"

set "ENV_FILE=Elsword\offline\offline.env"
set "ENV_EXAMPLE=Elsword\offline\offline.env.example"

call :FindPython
if errorlevel 1 exit /b 1

echo ==^> Pruning runtime logs and backup artifacts
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\joysword.py" prune
if errorlevel 1 exit /b 1

if not exist "%ENV_FILE%" (
  copy "%ENV_EXAMPLE%" "%ENV_FILE%" >nul
  echo Created %ENV_FILE% from example.
)

echo ==^> Applying offline configuration
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\configure-offline.py"
if errorlevel 1 exit /b 1

where docker >nul 2>&1
if errorlevel 1 (
  echo Docker not found - skipped database setup.
  echo Install Docker and run: scripts\start-database.bat ^&^& scripts\restore-databases.bat
  goto VerifyOffline
)

echo ==^> Starting SQL Server
call "%ROOT%\scripts\start-database.bat"
if errorlevel 1 exit /b 1

echo ==^> Restoring databases
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\restore_db_tcp.py"
if errorlevel 1 exit /b 1


echo ==^> Applying login mode
call :ApplyLoginMode
if errorlevel 1 exit /b 1


echo ==^> Installing character creation database fixes
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\install-creation-fixes.py"
if errorlevel 1 exit /b 1

echo ==^> Installing daily Cash allowance
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\install-cash-allowance.py"
if errorlevel 1 exit /b 1
echo ==^> Installing Cash Shop credit sync and deduction fixes
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\fix-cashshop-billing-transactions.sql
if errorlevel 1 exit /b 1
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\fix-cash-deduction.sql
if errorlevel 1 exit /b 1
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\fix-credit-sync.sql
if errorlevel 1 exit /b 1
echo ==^> Disabling unsafe class-change mailbox rewards
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\disable-class-change-mail-rewards.sql
if errorlevel 1 exit /b 1

echo ==^> Enforcing equipment enhancement integrity
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\enforce-enhancement-integrity.sql
if errorlevel 1 exit /b 1



echo ==^> Restoring rare Ice Burner costume sets
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\restore-iceburner-sets.py"
if errorlevel 1 exit /b 1

echo ==^> Restoring Cash Shop items
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\restore-cashshop.py"
if errorlevel 1 (
  echo Failed to restore Cash Shop items
  exit /b 1
)




echo ==^> Checking database health
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\db-healthcheck.py"
if errorlevel 1 exit /b 1

:VerifyOffline
echo ==^> Verifying offline settings
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\verify-offline.py"
if errorlevel 1 (
  echo.
  echo Setup finished with warnings - review verify-offline output above.
  exit /b 0
)

echo.
echo Offline setup complete.
echo On Windows, launch: Elsword\Start-Offline.bat
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

:LoadLoginMode
set "LOGIN_MODE=PUBLIC"
if exist "%ENV_FILE%" (
  for /f "usebackq tokens=1,* delims==" %%A in ("%ENV_FILE%") do (
    if /i "%%A"=="LOGIN_MODE" set "LOGIN_MODE=%%B"
  )
)
exit /b 0

:ApplyLoginMode
call :LoadLoginMode
echo Login mode: %LOGIN_MODE%

if /i "%LOGIN_MODE%"=="PUBLIC" (
  call :SetupPublicUsers
  if errorlevel 1 exit /b 1
  exit /b 0
)

if /i "%LOGIN_MODE%"=="SINGLE_ADMIN" (
  call :RefactorLogin
  if errorlevel 1 exit /b 1
  exit /b 0
)

echo Unsupported LOGIN_MODE: %LOGIN_MODE%
echo Use PUBLIC or SINGLE_ADMIN in Elsword\offline\offline.env.
exit /b 1

:RefactorLogin
echo Refactoring login system (single-admin development mode)...
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\refactor-login.sql
if errorlevel 1 (
  echo Failed to refactor login system
  exit /b 1
)
exit /b 0

:SetupPublicUsers
echo Seeding public multi-user admin/operator account...
"%PYTHON_EXE%" %PYTHON_ARGS% "%ROOT%\scripts\run_sql_file.py" database\setup-public-users.sql
if errorlevel 1 (
  echo Failed to apply public user setup
  exit /b 1
)
exit /b 0

