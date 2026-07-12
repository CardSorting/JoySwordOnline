# Idempotently allows the account API subnet to reach SQL Server on the game VM.
# Run on the Azure VM, or upload through:
# az vm run-command invoke ... --scripts "@scripts\ensure-web-sql-firewall.ps1"

param(
    [string] $WebSubnetCidr = '10.42.2.0/24'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$SqlAllowRuleName = 'JoySword Web SQL'
$SqlDenyRuleName = 'JoySword SQL inbound deny'

# Windows Firewall block rules take precedence over allow rules. This legacy
# JoySword-managed deny rule prevents the scoped web-subnet SQL allow from
# working, while the Azure NIC NSG remains the public boundary for 1433.
$denyRule = Get-NetFirewallRule -DisplayName $SqlDenyRuleName -ErrorAction SilentlyContinue
if ($denyRule -and $denyRule.Enabled -eq 'True') {
    Disable-NetFirewallRule -DisplayName $SqlDenyRuleName
    Write-Output "DISABLED $SqlDenyRuleName"
} elseif ($denyRule) {
    Write-Output "ALREADY_DISABLED $SqlDenyRuleName"
} else {
    Write-Output "NOT_FOUND $SqlDenyRuleName"
}

$allowRule = Get-NetFirewallRule -DisplayName $SqlAllowRuleName -ErrorAction SilentlyContinue
if (-not $allowRule) {
    New-NetFirewallRule -DisplayName $SqlAllowRuleName -Direction Inbound -Action Allow `
        -Protocol TCP -LocalPort 1433 -RemoteAddress $WebSubnetCidr -Profile Any | Out-Null
    Write-Output "CREATED $SqlAllowRuleName TCP 1433 remote=$WebSubnetCidr"
} else {
    Set-NetFirewallRule -DisplayName $SqlAllowRuleName -Enabled True -Action Allow `
        -Direction Inbound -Profile Any | Out-Null
    $allowRule = Get-NetFirewallRule -DisplayName $SqlAllowRuleName
    $allowRule | Get-NetFirewallPortFilter | Set-NetFirewallPortFilter `
        -Protocol TCP -LocalPort 1433 | Out-Null
    $allowRule | Get-NetFirewallAddressFilter | Set-NetFirewallAddressFilter `
        -RemoteAddress $WebSubnetCidr | Out-Null
    Write-Output "UPDATED $SqlAllowRuleName TCP 1433 remote=$WebSubnetCidr"
}

Write-Output 'VERIFY_BEGIN'
$verifiedRule = Get-NetFirewallRule -DisplayName $SqlAllowRuleName
$ports = Get-NetFirewallPortFilter -AssociatedNetFirewallRule $verifiedRule
$addr = Get-NetFirewallAddressFilter -AssociatedNetFirewallRule $verifiedRule
Write-Output "FW name=$($verifiedRule.DisplayName) action=$($verifiedRule.Action) enabled=$($verifiedRule.Enabled) direction=$($verifiedRule.Direction) protocol=$($ports.Protocol) ports=$($ports.LocalPort) remote=$($addr.RemoteAddress)"
