# Prints JoySword game listeners, related processes, and matching firewall rules.
# Run on the Azure VM, or upload through:
# az vm run-command invoke ... --scripts "@scripts\check-vm-game-ports.ps1"

$ErrorActionPreference = 'Continue'

Write-Output 'LISTENERS_BEGIN'
foreach ($port in @(9200, 9300, 9400)) {
    $items = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
    if ($items) {
        foreach ($item in $items) {
            $proc = Get-Process -Id $item.OwningProcess -ErrorAction SilentlyContinue
            Write-Output "LISTEN port=$($item.LocalPort) addr=$($item.LocalAddress) pid=$($item.OwningProcess) proc=$($proc.ProcessName)"
        }
    } else {
        Write-Output "NO_LISTENER port=$port"
    }
}

Write-Output 'PROCESSES_BEGIN'
$processes = Get-Process -ErrorAction SilentlyContinue | Where-Object {
    $_.ProcessName -match 'server|channel|login|field|game|agent|center|gateway|account|elsword|joy'
}
foreach ($proc in $processes) {
    Write-Output "PROC name=$($proc.ProcessName) pid=$($proc.Id) started=$($proc.StartTime) path=$($proc.Path)"
}

Write-Output 'FIREWALL_BEGIN'
$rules = Get-NetFirewallRule -Enabled True -Direction Inbound -ErrorAction SilentlyContinue | Where-Object {
    $_.DisplayName -match 'joy|elsword|9200|9300|9400' -or $_.Name -match 'joy|elsword|9200|9300|9400'
}
foreach ($rule in $rules) {
    Write-Output "FW name=$($rule.DisplayName) action=$($rule.Action) enabled=$($rule.Enabled)"
}
