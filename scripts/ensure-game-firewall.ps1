# Idempotently opens the public JoySword game ports in Windows Firewall.
# Run on the Azure VM, or upload through:
# az vm run-command invoke ... --scripts "@scripts\ensure-game-firewall.ps1"

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$GameTcpPorts = 9200, 9201, 9300, 9301, 9400, 9401
$GameUdpPorts = 9201, 9301, 9401

function Ensure-GameFirewallRule {
    param(
        [Parameter(Mandatory)] [string] $DisplayName,
        [Parameter(Mandatory)] [string] $Protocol,
        [Parameter(Mandatory)] [int[]] $Ports
    )

    $rule = Get-NetFirewallRule -DisplayName $DisplayName -ErrorAction SilentlyContinue
    if (-not $rule) {
        New-NetFirewallRule -DisplayName $DisplayName -Direction Inbound -Action Allow `
            -Protocol $Protocol -LocalPort $Ports -Profile Any | Out-Null
        Write-Output "CREATED $DisplayName $Protocol $($Ports -join ',')"
        return
    }

    Set-NetFirewallRule -DisplayName $DisplayName -Enabled True -Action Allow `
        -Direction Inbound -Profile Any | Out-Null
    $rule | Get-NetFirewallPortFilter | Set-NetFirewallPortFilter `
        -Protocol $Protocol -LocalPort $Ports | Out-Null
    Write-Output "UPDATED $DisplayName $Protocol $($Ports -join ',')"
}

Ensure-GameFirewallRule -DisplayName 'JoySword Public Game TCP' -Protocol 'TCP' -Ports $GameTcpPorts
Ensure-GameFirewallRule -DisplayName 'JoySword Public Game UDP' -Protocol 'UDP' -Ports $GameUdpPorts

Write-Output 'VERIFY_BEGIN'
Get-NetFirewallRule -DisplayName 'JoySword Public Game *' | ForEach-Object {
    $rule = $_
    $ports = Get-NetFirewallPortFilter -AssociatedNetFirewallRule $rule
    Write-Output "FW name=$($rule.DisplayName) action=$($rule.Action) enabled=$($rule.Enabled) direction=$($rule.Direction) protocol=$($ports.Protocol) ports=$($ports.LocalPort)"
}
