$Content = @'
# restore-databases-native.ps1
# Native database restorer for Windows Server VM without Docker.
# Restores Account, ES_BILLING, Game01, Statistics from backup files.
# Creates database files under D:\JoySword\Database.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$RootFolder = Split-Path -Parent -Path $ScriptRoot

$EnvFile = Join-Path $RootFolder "Elsword\offline\offline.env"
$DBPassword = "JoySwordDb2026!" # Default

if (Test-Path $EnvFile) {
    $EnvVars = @{}
    Get-Content -Path $EnvFile -Encoding UTF8 | ForEach-Object {
        $Line = $_.Trim()
        if ($Line -and -not $Line.StartsWith("#") -and $Line -like "*=*") {
            $Parts = $Line -split "=", 2
            $EnvVars[$Parts[0].Trim()] = $Parts[1].Trim()
        }
    }
    if ($EnvVars.ContainsKey("DB_PASSWORD")) {
        $DBPassword = $EnvVars["DB_PASSWORD"]
    }
}

$SqlCmd = "sqlcmd.exe"
# Verify sqlcmd is available
if (-not (Get-Command $SqlCmd -ErrorAction SilentlyContinue)) {
    # Check default paths
    $Paths = @(
        "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe"
    )
    foreach ($P in $Paths) {
        if (Test-Path $P) {
            $SqlCmd = $P
            break
        }
    }
}

Write-Host "Using sqlcmd: $SqlCmd"

# Create directories
$DataDir = "D:\JoySword\Database"
$BackupDir = "D:\JoySword\DatabaseBackups"

if (-not (Test-Path $DataDir)) {
    New-Item -ItemType Directory -Path $DataDir -Force | Out-Null
}
if (-not (Test-Path $BackupDir)) {
    New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null
}

# Copy backup files from repository folder to D:\JoySword\DatabaseBackups
$BackupSourceDir = Join-Path $RootFolder "database"
if (Test-Path $BackupSourceDir) {
    Write-Host "Copying database backup files to D:\JoySword\DatabaseBackups..."
    Get-ChildItem -Path $BackupSourceDir -Filter "*.bak" | ForEach-Object {
        $Dest = Join-Path $BackupDir $_.Name
        if (-not (Test-Path $Dest)) {
            Copy-Item -Path $_.FullName -Destination $Dest -Force
            Write-Host "Copied $_.Name to D:\JoySword\DatabaseBackups"
        }
    }
}

$Databases = @("Account", "ES_BILLING", "Game01", "Statistics")

foreach ($Db in $Databases) {
    $BakFile = Join-Path $BackupDir "$Db.bak"
    if (-not (Test-Path $BakFile)) {
        Write-Error "Backup file not found: $BakFile"
        continue
    }

    Write-Host "Restoring database $Db from $BakFile..." -ForegroundColor Green
    
    # Get logical file names
    $FileListQuery = "RESTORE FILELISTONLY FROM DISK = N'$BakFile';"
    $FileList = & $SqlCmd -S localhost -U sa -P $DBPassword -C -h -1 -W -Q $FileListQuery
    
    $Lines = $FileList -split "`r?`n"
    $LogicalNames = @()
    foreach ($Line in $Lines) {
        $Fields = @($Line -split "\s+" | Where-Object { $_ })
        if ($Fields.Count -ge 2 -and $Fields[0] -ne "LogicalName" -and $Fields[0] -notlike "-----*") {
            $LogicalNames += $Fields[0]
        }
    }
    
    if ($LogicalNames.Count -lt 2) {
        Write-Error "Could not read logical file names for database $Db"
        continue
    }
    
    $DataLogical = $LogicalNames[0]
    $LogLogical = $LogicalNames[1]
    
    $MdfFile = Join-Path $DataDir "$Db.mdf"
    $LdfFile = Join-Path $DataDir "${Db}_log.ldf"
    
    $RestoreQuery = @"
        IF DB_ID(N'$Db') IS NOT NULL
        BEGIN
            ALTER DATABASE [$Db] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
            DROP DATABASE [$Db];
        END;
        RESTORE DATABASE [$Db]
        FROM DISK = N'$BakFile'
        WITH MOVE '$DataLogical' TO '$MdfFile',
             MOVE '$LogLogical' TO '$LdfFile',
             REPLACE,
             RECOVERY,
             STATS = 10;
"@
    
    & $SqlCmd -S localhost -U sa -P $DBPassword -C -b -Q $RestoreQuery
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to restore database $Db"
        exit 1
    }
    Write-Host "Database $Db restored successfully!" -ForegroundColor Green
}

# Seed public admin user using sqlcmd and the script setup-public-users.sql
Write-Host "Seeding public admin/operator account..." -ForegroundColor Green
$SeedFile = Join-Path $RootFolder "database\setup-public-users.sql"
& $SqlCmd -S localhost -U sa -P $DBPassword -C -b -v ADMIN_USER="$($EnvVars['ADMIN_USER'])" ADMIN_PASSWORD="$($EnvVars['ADMIN_PASSWORD'])" ADMIN_STARTING_CASH="$($EnvVars['ADMIN_STARTING_CASH'])" -i $SeedFile
if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to seed public admin account."
    exit 1
}

# Alter stored procedures to bypass IP check
Write-Host "Bypassing Statistics IP checks in database stored procedures..." -ForegroundColor Green
$AlterQuery = @"
USE [Statistics];
GO
ALTER PROCEDURE [dbo].[lup_verify_server_on] @iServerType TINYINT, @strServerIP NVARCHAR(15) AS SET NOCOUNT ON; SELECT [UID], [Name], ServerSetID, ServerType, @strServerIP AS IP, Port1, Port2, MaxConcurrentUser, ConcurrentUser, [Enable], ServerRollType FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType;
GO
ALTER PROCEDURE [dbo].[P_LServerList_Verify_On_SEL] @iServerSetID TINYINT, @iServerType TINYINT, @strServerIP NVARCHAR(15) AS SET NOCOUNT ON; SELECT [UID], [Name], ServerSetID, ServerType, @strServerIP AS IP, Port1, Port2, MaxConcurrentUser, ConcurrentUser, [Enable], ServerRollType FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType;
GO
ALTER PROCEDURE [dbo].[P_LServerList_GET_verify_PublicIP] @iServerType TINYINT, @strServerIP NVARCHAR(15) AS SET NOCOUNT ON; SELECT [UID], [Name], ServerSetID, ServerType, PublicIP, PrivateIP, Port1, Port2, MaxConcurrentUser, ConcurrentUser, [Enable], ServerRollType FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType;
GO
ALTER PROCEDURE [dbo].[P_LServerList_Verify_Connect_SEL] @iServerSetID TINYINT = 0, @iServerType TINYINT, @strServerIP NVARCHAR(15), @iPort1 SMALLINT, @iInternal TINYINT AS SET NOCOUNT ON; IF @iServerType = 0 BEGIN SELECT [UID], ServerSetID, [Name], MaxConcurrentUser, ServerType, PublicIP, PrivateIP FROM dbo.LServerList WITH (NOLOCK) WHERE Port1 = @iPort1 END ELSE BEGIN SELECT [UID], ServerSetID, [Name], MaxConcurrentUser, ServerType, PublicIP, PrivateIP FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType AND Port1 = @iPort1 END;
GO
ALTER PROCEDURE [dbo].[lup_verify_server_connect] @iServerType TINYINT, @strServerIP NVARCHAR(15), @iPort1 SMALLINT AS SET NOCOUNT ON; SELECT [UID], ServerSetID, [Name], MaxConcurrentUser, IP FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType AND Port1 = @iPort1;
GO
ALTER PROCEDURE [dbo].[P_LServerList_GET_verify_connect] @iServerType TINYINT, @strServerIP NVARCHAR(15), @iPort1 SMALLINT AS SET NOCOUNT ON; SELECT [UID], ServerSetID, [Name], MaxConcurrentUser, PrivateIP FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType AND Port1 = @iPort1;
GO
ALTER PROCEDURE [dbo].[P_LServerList_By_PublicIP_SEL] @iServerSetID TINYINT, @iServerType TINYINT, @strServerIP NVARCHAR(15) AS SET NOCOUNT ON; SELECT [UID], [Name], ServerSetID, ServerType, PublicIP, PrivateIP, Port1, Port2, MaxConcurrentUser, ConcurrentUser, [Enable], ServerRollType FROM dbo.LServerList WITH (NOLOCK) WHERE ServerType = @iServerType;
GO
"@
& $SqlCmd -S localhost -U sa -P $DBPassword -C -b -Q $AlterQuery
if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to alter stored procedures."
    exit 1
}

Write-Host "Database restore and post-restore configurations completed successfully!" -ForegroundColor Green

'@
Set-Content -Path D:\JoySword\Server\scripts\restore-databases-native.ps1 -Value $Content -Force
