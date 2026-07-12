# enable-tcp-port.ps1
# Configures SQLEXPRESS to enable TCP/IP and listen on static port 1433.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# 1. Locate the registry path for SuperSocketNetLib
$RegPaths = Get-ChildItem -Path "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL*.SQLEXPRESS\MSSQLServer\SuperSocketNetLib" -ErrorAction SilentlyContinue
if (-not $RegPaths) {
    Write-Error "Could not find SQLEXPRESS SuperSocketNetLib registry path."
    exit 1
}

$SuperSocketPath = $RegPaths[0].Name -replace "HKEY_LOCAL_MACHINE", "HKLM:"
$TcpPath = Join-Path $SuperSocketPath "Tcp"
$IpAllPath = Join-Path $TcpPath "IPAll"

Write-Host "Found SQL Server TCP Registry Path: $TcpPath"

# 2. Enable TCP/IP protocol
Write-Host "Enabling TCP/IP protocol..."
Set-ItemProperty -Path $TcpPath -Name "Enabled" -Value 1

# 3. Configure static port 1433 and clear dynamic ports
Write-Host "Configuring static port 1433 for IPAll..."
Set-ItemProperty -Path $IpAllPath -Name "TcpPort" -Value "1433"
Set-ItemProperty -Path $IpAllPath -Name "TcpDynamicPorts" -Value ""

# 4. Restart SQL Server Service to apply network configuration changes
Write-Host "Restarting MSSQL`$SQLEXPRESS service..."
Restart-Service -Name "MSSQL`$SQLEXPRESS" -Force

Write-Host "SQL Server SQLEXPRESS TCP/IP configuration completed successfully on port 1433!"
