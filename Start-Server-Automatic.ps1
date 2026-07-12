# JoySword Public Server One-Click Automator

[CmdletBinding()]
param(
    [ValidatePattern('^(?:\d{1,3}\.){3}\d{1,3}$')]
    [string]$PublicIP,

    [ValidatePattern('^(?:\d{1,3}\.){3}\d{1,3}$')]
    [string]$PrivateIP = "127.0.0.1",

    [switch]$SkipFirewall,

    [switch]$Supervise,

    [switch]$ForceRebuild
)

$ErrorActionPreference = "Stop"
$ScriptRoot = if ($PSScriptRoot) {
    $PSScriptRoot
} else {
    Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
}
Set-Location -Path $ScriptRoot

# Update PATH env variable so python and winget are fully accessible in this session
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "           JoySword Public Server Automator               " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Resolve the public endpoint advertised to clients.
$EnvFile = Join-Path $ScriptRoot "Elsword\offline\offline.env"
$ExistingIP = $null
if (Test-Path $EnvFile) {
    $EnvContent = Get-Content -Path $EnvFile -Raw -Encoding UTF8
    if ($EnvContent -match "(?m)^CHANNEL_SERVER_IP=(.+)$") {
        $ExistingIP = $Matches[1].Trim()
    }
}

function Test-IPv4Address {
    param([Parameter(Mandatory = $true)][string]$Value)
    if ($Value -notmatch '^(?:\d{1,3}\.){3}\d{1,3}$') { return $false }
    foreach ($Part in $Value.Split('.')) {
        $Octet = 0
        if (-not [int]::TryParse($Part, [ref]$Octet)) { return $false }
        if ($Octet -lt 0 -or $Octet -gt 255) { return $false }
    }
    return $true
}

if ($PublicIP) {
    if (-not (Test-IPv4Address $PublicIP)) {
        throw "Invalid IPv4 address supplied with -PublicIP: $PublicIP"
    }
    Write-Host "Using configured public IPv4 endpoint: $PublicIP" -ForegroundColor Yellow
} elseif ($ExistingIP -and (Test-IPv4Address $ExistingIP)) {
    $PublicIP = $ExistingIP
    Write-Host "Using existing public IPv4 endpoint from offline.env: $PublicIP" -ForegroundColor Yellow
} else {
    if ($ExistingIP) {
        Write-Warning "Ignoring hostname endpoint from offline.env ($ExistingIP). Legacy clients require a numeric IPv4 address."
    }
    Write-Host "Detecting public IP address..." -ForegroundColor Green
    $IPProviders = @(
        "https://api.ipify.org",
        "https://ifconfig.me/ip",
        "https://icanhazip.com"
    )
    foreach ($Provider in $IPProviders) {
        try {
            $PublicIP = (Invoke-RestMethod -Uri $Provider -TimeoutSec 5).Trim()
            if ($PublicIP -match "^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$") {
                break
            }
        } catch {
            # Try next provider
        }
    }

    if (-not $PublicIP) {
        Write-Warning "Could not detect public IP automatically. Defaulting to loopback."
        $PublicIP = "127.0.0.1"
    } else {
        Write-Host "Detected Public IP: $PublicIP" -ForegroundColor Yellow
    }
}

# 2. Update offline.env dynamically
$EnvFile = Join-Path $ScriptRoot "Elsword\offline\offline.env"
$EnvExample = Join-Path $ScriptRoot "Elsword\offline\offline.env.example"

if (-not (Test-Path $EnvFile)) {
    Write-Host "Creating offline.env from example..." -ForegroundColor Yellow
    Copy-Item -Path $EnvExample -Destination $EnvFile
}

Write-Host "Updating offline.env configuration..." -ForegroundColor Green
$ElswordRootPath = (Join-Path $ScriptRoot "Elsword").Replace("/", "\")
$EnvContent = Get-Content -Path $EnvFile -Raw -Encoding UTF8

# Replace IP, Paths, and strict readiness settings
$EnvContent = $EnvContent -replace "(?m)^ELSWORD_ROOT=.*$", "ELSWORD_ROOT=$ElswordRootPath"
$EnvContent = $EnvContent -replace "(?m)^CHANNEL_SERVER_IP=.*$", "CHANNEL_SERVER_IP=$PublicIP"
$EnvContent = $EnvContent -replace "(?m)^SERVER_READINESS_MODE=.*$", "SERVER_READINESS_MODE=strict"

# Ensure we use strong production passwords if defaults are present
if ($EnvContent -match "ADMIN_PASSWORD=admin") {
    $EnvContent = $EnvContent -replace "ADMIN_PASSWORD=admin", "ADMIN_PASSWORD=JoySwordAdmin2026!"
    Write-Host "  -> Updated ADMIN_PASSWORD to secure default." -ForegroundColor Yellow
}
if ($EnvContent -match "DB_PASSWORD=JoySword!Offline123") {
    $EnvContent = $EnvContent -replace "DB_PASSWORD=JoySword!Offline123", "DB_PASSWORD=JoySwordDb2026!"
    Write-Host "  -> Updated DB_PASSWORD to secure default." -ForegroundColor Yellow
}

$UTF8NoBOM = New-Object System.Text.UTF8Encoding($false)
$CurrentContent = if (Test-Path $EnvFile) { [System.IO.File]::ReadAllText($EnvFile) } else { "" }
if ($CurrentContent -ne $EnvContent) {
    [System.IO.File]::WriteAllText($EnvFile, $EnvContent, $UTF8NoBOM)
}

# Extract environment settings and load them into the Process env for Docker Compose
$EnvVars = @{}
Get-Content -Path $EnvFile -Encoding UTF8 | ForEach-Object {
    $Line = $_.Trim()
    if ($Line -and -not $Line.StartsWith("#") -and $Line -like "*=*") {
        $Parts = $Line -split "=", 2
        $Key = $Parts[0].Trim()
        $Val = $Parts[1].Trim()
        $EnvVars[$Key] = $Val
        [System.Environment]::SetEnvironmentVariable($Key, $Val, "Process")
    }
}
$DBPassword = $EnvVars["DB_PASSWORD"]
$AdminUser = $EnvVars["ADMIN_USER"]
$AdminPassword = $EnvVars["ADMIN_PASSWORD"]
$AdminStartingCash = $EnvVars["ADMIN_STARTING_CASH"]

# Explicitly map SQL Server variables for Docker Compose
$env:MSSQL_SA_PASSWORD = $DBPassword
$env:MSSQL_PORT = $EnvVars["DB_PORT"]

# Helper to run bash commands in container via raw process stdin
function Invoke-BashInDocker ($BashScript) {
    # Replace Windows CRLF line endings with Unix LF to prevent trailing \r bugs in bash/sqlcmd
    $NormalizedScript = $BashScript.Replace("`r`n", "`n")
    
    $Psi = New-Object System.Diagnostics.ProcessStartInfo
    $Psi.FileName = "docker"
    $Psi.Arguments = "compose exec -i mssql bash"
    $Psi.WorkingDirectory = $ScriptRoot
    $Psi.RedirectStandardInput = $true
    $Psi.RedirectStandardOutput = $true
    $Psi.RedirectStandardError = $true
    $Psi.UseShellExecute = $false
    $Psi.CreateNoWindow = $true
    
    $Proc = New-Object System.Diagnostics.Process
    $Proc.StartInfo = $Psi
    $Proc.Start() | Out-Null
    
    # Write exact Unix-formatted script directly to process stdin stream without UTF-8 BOM
    $UTF8NoBOM = New-Object System.Text.UTF8Encoding($false)
    $Writer = New-Object System.IO.StreamWriter($Proc.StandardInput.BaseStream, $UTF8NoBOM)
    $Writer.Write($NormalizedScript)
    $Writer.Close()
    
    $Output = $Proc.StandardOutput.ReadToEnd()
    $ErrorOutput = $Proc.StandardError.ReadToEnd()
    $Proc.WaitForExit()
    
    if ($Proc.ExitCode -ne 0) {
        if ($ErrorOutput.Trim()) {
            Write-Error $ErrorOutput.Trim()
        }
    }
    
    $global:LASTEXITCODE = $Proc.ExitCode
    return $Output
}

# 2.5 Ensure the hardcoded loopback IP alias (159.203.165.171) is registered on the active network interface
Write-Host "Verifying hardcoded loopback IP alias (159.203.165.171)..." -ForegroundColor Green
$LoopbackIP = "159.203.165.171"
$IPExists = Get-NetIPAddress -IPAddress $LoopbackIP -ErrorAction SilentlyContinue
if (-not $IPExists) {
    Write-Host "IP alias $LoopbackIP not found. Attempting to register it..." -ForegroundColor Yellow
    try {
        $DefaultRoute = Get-NetRoute -DestinationPrefix "0.0.0.0/0" -ErrorAction SilentlyContinue | Sort-Object RouteMetric | Select-Object -First 1
        if ($DefaultRoute) {
            $Adapter = Get-NetAdapter -InterfaceIndex $DefaultRoute.InterfaceIndex -ErrorAction SilentlyContinue
            if ($Adapter) {
                $InterfaceAlias = $Adapter.Name
                Write-Host "Registering IP alias on interface '$InterfaceAlias'..." -ForegroundColor Yellow
                
                # Check for Administrator permissions
                $IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
                if ($IsAdmin) {
                    New-NetIPAddress -IPAddress $LoopbackIP -PrefixLength 32 -InterfaceAlias $InterfaceAlias -Confirm:$false | Out-Null
                    Write-Host "Successfully registered IP alias $LoopbackIP on interface '$InterfaceAlias'." -ForegroundColor Green
                } else {
                    Write-Host "Requesting Administrator rights to register IP alias..." -ForegroundColor Yellow
                    $RegisterCmd = "New-NetIPAddress -IPAddress '$LoopbackIP' -PrefixLength 32 -InterfaceAlias '$InterfaceAlias' -Confirm:`$false"
                    Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"$RegisterCmd`"" -Verb RunAs -Wait -WindowStyle Hidden
                    Write-Host "IP alias registered successfully!" -ForegroundColor Green
                }
            } else {
                Write-Warning "Could not identify active network adapter for default route."
            }
        } else {
            Write-Warning "Could not find active default route."
        }
    } catch {
        Write-Warning "Failed to automatically register IP alias: $_"
    }
} else {
    Write-Host "IP alias $LoopbackIP is already registered on interface '$($IPExists.InterfaceAlias)'." -ForegroundColor Gray
}

# 3. Check and update Windows Firewall Rules
if ($SkipFirewall) {
    Write-Host "Skipping firewall rule creation as requested (-SkipFirewall)." -ForegroundColor Gray
} else {
    Write-Host "Checking Windows Firewall configuration..." -ForegroundColor Green
    $FirewallRuleName = "JoySword Public Game Ports"
    $RuleExists = Get-NetFirewallRule -DisplayName $FirewallRuleName -ErrorAction SilentlyContinue

    if (-not $RuleExists) {
        Write-Host "Firewall rule not found. Requesting Administrator rights to create it..." -ForegroundColor Yellow
        try {
            $FirewallCmd = "New-NetFirewallRule -DisplayName '$FirewallRuleName' -Direction Inbound -Action Allow -Protocol TCP -LocalPort 9100-9500 -Profile Any"
            Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"$FirewallCmd`"" -Verb RunAs -Wait -WindowStyle Hidden
            Write-Host "Firewall rule created successfully!" -ForegroundColor Green
        } catch {
            Write-Warning "Could not create firewall rule. Please run the script or command as Administrator."
        }
    } else {
        Write-Host "Firewall rules for ports 9100-9500 are already in place." -ForegroundColor Gray
    }
}

# 4. Check and initialize Docker Desktop
Write-Host "Checking if Docker daemon is running..." -ForegroundColor Green
$DockerReady = $false
try {
    & docker ps > $null 2>&1
    if ($LASTEXITCODE -eq 0) { $DockerReady = $true }
} catch {}

if (-not $DockerReady) {
    Write-Host "Docker is not running. Attempting to launch Docker Desktop..." -ForegroundColor Yellow
    $DockerPath = "C:\Program Files\Docker\Docker\Docker Desktop.exe"
    if (Test-Path $DockerPath) {
        Start-Process -FilePath $DockerPath -WindowStyle Hidden
        Write-Host "Waiting for Docker daemon to initialize (this can take up to 2 minutes)..." -ForegroundColor Yellow
        $TimeoutSeconds = 120
        $CheckInterval = 5
        $ElapsedTime = 0
        while ($ElapsedTime -lt $TimeoutSeconds) {
            Start-Sleep -Seconds $CheckInterval
            $ElapsedTime += $CheckInterval
            try {
                & docker ps > $null 2>&1
                if ($LASTEXITCODE -eq 0) {
                    Write-Host "Docker is now responsive and ready!" -ForegroundColor Green
                    $DockerReady = $true
                    break
                }
            } catch {}
            Write-Host "  still waiting ($ElapsedTime seconds elapsed)..." -ForegroundColor Gray
        }
    } else {
        Write-Error "Docker Desktop is not installed at default path: $DockerPath"
    }
} else {
    Write-Host "Docker is already running and responsive." -ForegroundColor Gray
}

if (-not $DockerReady) {
    Write-Warning "Proceeding without a running Docker daemon. Note that database setup and game servers might fail to start if the database is unreachable."
}

# 5. Run configuration regeneration
Write-Host "Regenerating server and client configuration files..." -ForegroundColor Green
& python "$ScriptRoot\scripts\configure-offline.py"

# 6. Run Database Setup/Restore
if ($DockerReady) {
    # Check if the database container is already running and has mssql active
    $ContainerRunning = & docker compose ps --services --filter "status=running" | Select-String -Pattern "^mssql$"
    $ShouldRestoreDb = $ForceRebuild -or (-not $ContainerRunning)

    if (-not $ShouldRestoreDb) {
        Write-Host "SQL Server container is already running. Verifying database health..." -ForegroundColor Green
        & python "$ScriptRoot\scripts\db-healthcheck.py"
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "Database healthcheck failed! Automatically triggering database restore/repair..."
            $ShouldRestoreDb = $true
        } else {
            Write-Host "Database is healthy and ready!" -ForegroundColor Green
        }
    }

    if ($ShouldRestoreDb) {
        Write-Host "Database setup/restore is required." -ForegroundColor Yellow
        if ($ForceRebuild) {
            Write-Host "Tearing down old database containers/volumes and restarting SQL Server with secure password..." -ForegroundColor Green
            & docker compose down -v
        } else {
            Write-Host "Starting SQL Server container..." -ForegroundColor Green
            & docker compose down
        }
        & docker compose up -d mssql

        Write-Host "Waiting for SQL Server to become healthy..." -ForegroundColor Green
        $SQLCmdPath = ""
        $ExtraArgs = ""
        for ($i = 1; $i -le 60; $i++) {
            $SqlCmdCheck = docker compose exec -T mssql bash -c "if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then echo /opt/mssql-tools18/bin/sqlcmd; else echo /opt/mssql-tools/bin/sqlcmd; fi" 2>$null
            if ($SqlCmdCheck) {
                $SQLCmdPath = $SqlCmdCheck.Trim()
                $ExtraArgs = ""
                if ($SQLCmdPath -like "*tools18*") {
                    $ExtraArgs = "-C"
                }
                # Run test query with the secure password
                $CheckScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -Q "SELECT 1"
"@
                $CheckResult = Invoke-BashInDocker $CheckScript
                if ($global:LASTEXITCODE -eq 0) {
                    Write-Host "SQL Server is healthy and ready!" -ForegroundColor Green
                    break
                }
            }
            Start-Sleep -Seconds 2
        }

        if (-not $SQLCmdPath) {
            Write-Error "SQL Server did not become healthy in time."
            exit 1
        }

        # Restore the databases
        foreach ($DbName in @("Account", "ES_BILLING", "Game01", "Statistics")) {
            Write-Host "Restoring database $DbName..." -ForegroundColor Green
            
            $FileListQuery = "SET NOCOUNT ON; RESTORE FILELISTONLY FROM DISK = N'/backups/$DbName.bak';"
            $FileListScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -h -1 -W -Q "$FileListQuery"
"@
            $FileListRaw = Invoke-BashInDocker $FileListScript
            
            $Lines = $FileListRaw -split "`r?`n"
            $LogicalNames = @()
            foreach ($Line in $Lines) {
                $Fields = $Line -split "\s+" | Where-Object { $_ }
                if ($Fields.Count -ge 2 -and $Fields[0] -ne "LogicalName" -and $Fields[0] -notlike "-----*") {
                    $LogicalNames += $Fields[0]
                }
            }
            
            if ($LogicalNames.Count -lt 2) {
                Write-Warning "Failed to read logical names for database $DbName using custom parse. Trying fallback..."
                # Try parsing with simpler logic
                $LogicalNames = @($Lines | Where-Object { $_ -and $_ -notmatch "^LogicalName" -and $_ -notmatch "^---" } | ForEach-Object { ($_ -split "\s+")[0] })
            }
            
            if ($LogicalNames.Count -lt 2) {
                Write-Error "Could not read logical file names for database $DbName"
                continue
            }
            
            $DataLogical = $LogicalNames[0]
            $LogLogical = $LogicalNames[1]
            
            $DataFile = "/var/opt/mssql/data/$DbName.mdf"
            $LogFile = "/var/opt/mssql/data/${DbName}_log.ldf"
            
            $RestoreQuery = @"
                IF DB_ID(N'$DbName') IS NOT NULL
                BEGIN
                    ALTER DATABASE [$DbName] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
                    DROP DATABASE [$DbName];
                END;
                RESTORE DATABASE [$DbName]
                FROM DISK = N'/backups/$DbName.bak'
                WITH MOVE '$DataLogical' TO '$DataFile',
                MOVE '$LogLogical' TO '$LogFile',
                REPLACE, STATS = 10;
"@
            $RestoreScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -b -Q "$RestoreQuery"
"@
            $RestoreResult = Invoke-BashInDocker $RestoreScript
            if ($global:LASTEXITCODE -ne 0) {
                Write-Host "Output/Error from Restore: $RestoreResult" -ForegroundColor Red
                Write-Error "Failed to restore database $DbName"
                exit 1
            }
            Write-Host "Database $DbName restored successfully!" -ForegroundColor Green
        }

        # Seed public admin user
        Write-Host "Seeding public admin/operator account..." -ForegroundColor Green
        $SeedScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -v ADMIN_USER="$AdminUser" ADMIN_PASSWORD="$AdminPassword" ADMIN_STARTING_CASH="$AdminStartingCash" -i /backups/setup-public-users.sql
"@
        $SeedResult = Invoke-BashInDocker $SeedScript
        if ($global:LASTEXITCODE -ne 0) {
            Write-Host "Output/Error from Seeding: $SeedResult" -ForegroundColor Red
            Write-Error "Failed to apply public user setup SQL."
            exit 1
        }


        # Bypass IP checks in server verification stored procedures to support Docker NAT/bridge connections
        Write-Host "Altering stored procedures in Statistics database to bypass IP validation checks..." -ForegroundColor Green
        $AlterProceduresQuery = @"
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
        $AlterProceduresScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -b -Q "$AlterProceduresQuery"
"@
        $AlterProceduresResult = Invoke-BashInDocker $AlterProceduresScript
        if ($global:LASTEXITCODE -ne 0) {
            Write-Host "Output/Error from AlterProcedures: $AlterProceduresResult" -ForegroundColor Red
            Write-Error "Failed to alter stored procedures."
            exit 1
        }

        # Restore Cash Shop
        Write-Host "Restoring Cash Shop items..." -ForegroundColor Green
        & python "$ScriptRoot\scripts\restore-cashshop.py"
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Failed to restore Cash Shop items."
            exit 1
        }


        Write-Host "Installing character creation database fixes..." -ForegroundColor Green
        & python "$ScriptRoot\scripts\install-creation-fixes.py"
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Failed to install character creation database fixes."
            exit 1
        }

        Write-Host "Installing Cash allowance and Collector Rank policies..." -ForegroundColor Green
        & python "$ScriptRoot\scripts\install-cash-allowance.py"
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Failed to install Cash allowance policies."
            exit 1
        }

        # Database healthcheck
        Write-Host "Verifying database health..." -ForegroundColor Green
        & python "$ScriptRoot\scripts\db-healthcheck.py"
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Database healthcheck failed."
            exit 1
        }
    }

    # 6.5 Sync public IP in Statistics database (LServerList & LChannelList)
    Write-Host "Syncing public IP in Statistics database (LServerList & LChannelList)..." -ForegroundColor Green
    Write-Host "  -> Public IP: $PublicIP" -ForegroundColor Yellow

    if (-not (Test-IPv4Address $PublicIP)) {
        throw "Cannot sync a hostname endpoint. Use the Azure VM public IPv4 address."
    }
    $SyncIPQuery = "USE [Statistics]; UPDATE dbo.LServerList SET IP = '$PrivateIP', PrivateIP = '$PrivateIP', PublicIP = '$PublicIP' WHERE UID IN (1, 2, 3, 4, 6); UPDATE dbo.LChannelList SET IP = '$PublicIP' WHERE OnOff = 1;"
    
    if (-not $SQLCmdPath) {
        $SqlCmdCheck = docker compose exec -T mssql bash -c "if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then echo /opt/mssql-tools18/bin/sqlcmd; else echo /opt/mssql-tools/bin/sqlcmd; fi" 2>$null
        if ($SqlCmdCheck) {
            $SQLCmdPath = $SqlCmdCheck.Trim()
            $ExtraArgs = ""
            if ($SQLCmdPath -like "*tools18*") {
                $ExtraArgs = "-C"
            }
        }
    }
    
    if ($SQLCmdPath) {
        $SyncIPScript = @"
export MSSQL_SA_PASSWORD="$DBPassword"
$SQLCmdPath -S localhost -U sa -P "$DBPassword" $ExtraArgs -b -Q "$SyncIPQuery"
"@
        $SyncIPResult = Invoke-BashInDocker $SyncIPScript
        if ($global:LASTEXITCODE -ne 0) {
            Write-Host "Warning: Failed to sync IPs in database: $SyncIPResult" -ForegroundColor Yellow
        } else {
            Write-Host "Database IP sync complete!" -ForegroundColor Green
        }
    } else {
        Write-Warning "Could not find sqlcmd to sync database IPs."
    }
}

# 7. Run Client Connection Patcher
if ($ShouldRestoreDb -or ($PublicIP -ne $ExistingIP)) {
    Write-Host "Patching loose game client configs and data036.kom..." -ForegroundColor Green
    & python "$ScriptRoot\scripts\local_connect.py"
} else {
    Write-Host "Client config is already patched for endpoint $PublicIP. Skipping client patch." -ForegroundColor Green
}

# 8. Start Elsword Server Stack
Write-Host "Launching Elsword server stack..." -ForegroundColor Green
$StartArgs = @()
if ($Supervise) {
    $StartArgs += "--supervise"
}
& python "$ScriptRoot\scripts\start-offline.py" $StartArgs

Write-Host "==========================================================" -ForegroundColor Green
Write-Host "Automated startup complete!" -ForegroundColor Green
Write-Host "Check the console windows for each Elsword server process." -ForegroundColor Green
Write-Host "Your players can now launch Start-Client-Windows.bat to connect." -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
