# Web Registration - Agent Playbook

Use this when the problem is the web portal/API registration path, especially
when `/api/health` is healthy but `/api/auth/register` fails.

Related docs:

- [ACCOUNT_PORTAL_DEPLOYMENT.md](ACCOUNT_PORTAL_DEPLOYMENT.md) - operator
  deployment and smoke-test steps
- [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md) - in-game
  account row-set semantics and `GetUID() : 0`
- [../web/api/README.md](../web/api/README.md) - API architecture and endpoints
- [../azure-docs/database_setup.md](../azure-docs/database_setup.md) - SQL
  Server, VNet, and firewall invariants

## Mental model

Web registration is a two-database workflow:

1. `web/api` creates or resumes a PostgreSQL `web_users` identity.
2. The same request opens MSSQL over the VNet and provisions the game row set:
   `Account.dbo.MUser`, `Account.dbo.MUserAuthority`, `Account.dbo.TUser`,
   `ES_BILLING.dbo.EB_Cash`, `Game01.dbo.users`, and
   `Game01.dbo.VCGAVirtualCash`.

`GET /api/health` only proves the API process and PostgreSQL query path. It does
not prove MSSQL connectivity or game-account provisioning.

## First split

| Finding | Meaning | Go to |
|---|---|---|
| `/api/health` is not `HTTP 200` | API process, startup, migrations, PG, or App Service health issue | App Service logs and `web/api` deployment |
| `/api/health` is `HTTP 200`, registration returns `503` | MSSQL provisioning failed after PG identity path | This playbook |
| Registration succeeds, client login works, channel entry fails with `GetUID() : 0` | Game row set is incomplete or legacy login repair failed | [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md) |
| Client cannot reach login/channel ports | Legacy game endpoint/network issue | [AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md) |
| Registration returns `409` | Account already exists or pending account password does not match retry | Use a new email or retry same pending email with same password |
| Registration returns `400` | Email/password validation; game passwords are capped at 20 chars | Fix payload |
| Registration returns `403`/CORS-style failure | `Origin` is not in `WEB_ALLOWED_ORIGINS` | Check app settings |
| Registration returns `429` | Rate limit hit | Wait or use a different test origin/IP context |

## Known 503 root cause

The July 2026 live failure was:

- App Service VNet integration: correct
- App setting `MSSQL_HOST=10.42.1.10`: correct
- NIC NSG `AllowSqlFromWeb` (`10.42.2.0/24 -> TCP 1433`): correct
- SQL Server listening on `0.0.0.0:1433`: correct
- VM Windows Firewall: **blocked by enabled `JoySword SQL inbound deny`**

Windows Firewall block rules take precedence over allow rules. Adding
`JoySword Web SQL` as an allow rule is insufficient if a TCP `1433` block rule
still exists.

Durable remediation:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

Expected output includes:

```text
ALREADY_DISABLED JoySword SQL inbound deny
UPDATED JoySword Web SQL TCP 1433 remote=10.42.2.0/24
VERIFY_BEGIN
FW name=JoySword Web SQL action=Allow enabled=True direction=Inbound protocol=TCP ports=1433 remote=10.42.2.0/255.255.255.0
```

`DISABLED JoySword SQL inbound deny` is also good; it means the helper fixed the
blocking rule during that run.

## Evidence collection

Set these values mentally before running commands:

```text
resource group: joysword-prod-rg
web app:        joysword-web-be6c7ac407
VM:             joysword-server
VM private IP:  10.42.1.10
web subnet:     10.42.2.0/24
VM NIC:         joysword-edge-nic
SPA origin:     https://onjoysword.top
```

### 1. Health and registration response

```powershell
$base = "https://joysword-web-be6c7ac407.azurewebsites.net"
Invoke-WebRequest -Uri "$base/api/health" -TimeoutSec 30

$email = "agent-e2e-$(Get-Date -Format yyyyMMddHHmmss)@onjoysword.top"
$payload = @{ email = $email; password = "DeployTest12" } | ConvertTo-Json -Compress
Invoke-WebRequest -Uri "$base/api/auth/register" -Method Post `
  -Headers @{ Origin = "https://onjoysword.top" } `
  -ContentType "application/json" -Body $payload -TimeoutSec 70
```

Use a fresh email for each end-to-end test. Reusing a failed pending email is
valid only if you reuse the same password.

### 2. Pull App Service logs

Look for `Game account provisioning failed`, `ConnectionError`, `ETIMEOUT`,
`ESOCKET`, `Login failed`, or `tedious`.

```powershell
$creds = az webapp deployment list-publishing-credentials `
  -g joysword-prod-rg -n joysword-web-be6c7ac407 `
  --query "{u:publishingUserName,p:publishingPassword}" -o json | ConvertFrom-Json
$pair = "{0}:{1}" -f $creds.u, $creds.p
$auth = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes($pair))
$logs = Invoke-RestMethod -Headers @{ Authorization = "Basic $auth" } `
  -Uri "https://joysword-web-be6c7ac407.scm.azurewebsites.net/api/logs/docker" `
  -TimeoutSec 40
$latest = $logs | Where-Object { $_.machineName -like "*_default" } |
  Sort-Object lastUpdated | Select-Object -Last 1
(Invoke-WebRequest -Headers @{ Authorization = "Basic $auth" } `
  -Uri $latest.href -TimeoutSec 50).Content |
  Select-String -Pattern "provision|mssql|ConnectionError|Login failed|ETIMEOUT|ESOCKET|tedious"
```

Interpretation:

- `Failed to connect to 10.42.1.10:1433` / `ETIMEOUT`: network or firewall.
- `Login failed for user 'sa'`: SQL auth or Key Vault secret/application
  setting issue, not NSG/firewall.
- SQL syntax/constraint errors after connection succeeds: provisioning SQL or
  schema mismatch; inspect `web/api/src/game-account.js` and DB schema.

### 3. Confirm App Service VNet and settings

```powershell
az webapp show -g joysword-prod-rg -n joysword-web-be6c7ac407 `
  --query "{state:state,vnet:virtualNetworkSubnetId,vnetRouteAll:siteConfig.vnetRouteAllEnabled}" -o json

az webapp config appsettings list -g joysword-prod-rg -n joysword-web-be6c7ac407 `
  --query "[?starts_with(name, 'MSSQL_') || name=='WEB_ALLOWED_ORIGINS' || name=='POSTGRES_SSL'].{name:name,value:value}" -o table
```

Expected:

- `state=Running`
- `virtualNetworkSubnetId` ends in `subnets/web-integration`
- `vnetRouteAll=true`
- `MSSQL_HOST=10.42.1.10`
- `MSSQL_PORT=1433`
- `MSSQL_USER=sa`
- `MSSQL_PASSWORD` is a Key Vault reference
- `WEB_ALLOWED_ORIGINS` contains the browser origin used in the request

### 4. Confirm Azure NSG path

```powershell
az network nic list-effective-nsg -g joysword-prod-rg -n joysword-edge-nic `
  --query "value[0].effectiveSecurityRules[?contains(name,'AllowSql') || contains(destinationPortRange,'1433')].{name:name,access:access,direction:direction,priority:priority,protocol:protocol,src:sourceAddressPrefix,dport:destinationPortRange}" -o table
```

Expected:

```text
securityRules/AllowSqlFromWeb  Allow  Inbound  1300  Tcp  10.42.2.0/24  1433-1433
```

If this is missing, fix Terraform/NSG first. If this is present and TCP still
times out, continue to Windows Firewall.

### 5. Probe raw TCP from App Service

This distinguishes raw network reachability from SQL auth/provisioning errors.

```powershell
$cmd = 'node -e "const net=require(''net''); const started=Date.now(); const s=net.connect({host:''10.42.1.10'', port:1433},()=>{console.log(''TCP_OK'', Date.now()-started); s.end();}); s.on(''error'',e=>{console.log(''TCP_ERR'', e.code, e.message); process.exit(2);}); s.setTimeout(12000,()=>{console.log(''TCP_TIMEOUT'', Date.now()-started); s.destroy(); process.exit(3);});"'
$body = @{ command = $cmd; dir = "/home/site/wwwroot" } | ConvertTo-Json -Compress
Invoke-RestMethod -Method Post `
  -Uri "https://joysword-web-be6c7ac407.scm.azurewebsites.net/api/command" `
  -Headers @{ Authorization = "Basic $auth" } `
  -ContentType "application/json" -Body $body | ConvertTo-Json -Depth 6
```

Interpretation:

- `TCP_OK`: VNet, NSG, Windows Firewall, and SQL listener are reachable. Move to
  SQL auth/provisioning logs.
- `TCP_TIMEOUT`: NSG, route, Windows Firewall, or listener binding issue. The
  known fix is `scripts\ensure-web-sql-firewall.ps1`.
- `TCP_ERR ECONNREFUSED`: route exists but nothing is listening on that port.
  Check SQL Server TCP/IP and the service state on the VM.

### 6. Inspect/fix VM Windows Firewall and SQL listener

Use the durable helper first:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

For manual inspection:

```powershell
$script = @'
$rules = Get-NetFirewallRule -Direction Inbound -Enabled True
foreach ($r in $rules) {
    if ($r.DisplayName -like "*SQL*" -or $r.DisplayName -like "*1433*" -or $r.DisplayName -like "*JoySword*") {
        $pf = Get-NetFirewallPortFilter -AssociatedNetFirewallRule $r
        $af = Get-NetFirewallAddressFilter -AssociatedNetFirewallRule $r
        Write-Output ("FW name={0} action={1} proto={2} port={3} remote={4}" -f $r.DisplayName, $r.Action, $pf.Protocol, $pf.LocalPort, ($af.RemoteAddress -join ","))
    }
}
Get-NetTCPConnection -LocalPort 1433 -State Listen | ForEach-Object {
    Write-Output ("LISTEN addr={0} port={1} pid={2}" -f $_.LocalAddress, $_.LocalPort, $_.OwningProcess)
}
'@

az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts $script `
  --query "value[0].message" -o tsv
```

Healthy state:

- no enabled `JoySword SQL inbound deny`
- `JoySword Web SQL` is allow, TCP `1433`, remote `10.42.2.0/255.255.255.0`
- `sqlservr` listens on `0.0.0.0:1433` and/or `:::1433`

## Verify the end-to-end row set

Registration success should return JSON with:

- `legacyUserId`
- `legacyUserUid`
- `HTTP 201`

Then verify the six required MSSQL row sets. Replace the values before running.

```powershell
$UserID = "replace_legacy_user_id"
$UserUID = 12345
$Query = @"
SET NOCOUNT ON;
SELECT 'MUser' AS RowSetName, COUNT(*) AS CountRows
FROM Account.dbo.MUser
WHERE UserID = N'$UserID' AND UserUID = $UserUID;
SELECT 'MUserAuthority' AS RowSetName, COUNT(*) AS CountRows
FROM Account.dbo.MUserAuthority
WHERE UserUID = $UserUID AND AuthLevel = 0;
SELECT 'TUser' AS RowSetName, COUNT(*) AS CountRows
FROM Account.dbo.TUser
WHERE id = N'$UserID';
SELECT 'EB_Cash' AS RowSetName, COUNT(*) AS CountRows
FROM ES_BILLING.dbo.EB_Cash
WHERE CD_USERUID = $UserUID AND ST_USERID = N'$UserID';
SELECT 'Game01_users' AS RowSetName, COUNT(*) AS CountRows
FROM Game01.dbo.users
WHERE Login = N'$UserID' AND LoginUID = $UserUID;
SELECT 'VCGAVirtualCash' AS RowSetName, COUNT(*) AS CountRows
FROM Game01.dbo.VCGAVirtualCash
WHERE LoginUID = $UserUID;
"@

az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "sqlcmd -S tcp:127.0.0.1,1433 -E -b -W -s ',' -Q `"$Query`"" `
  --query "value[0].message" -o tsv
```

Expected: each row set reports `1`.

## Remediation matrix

| Evidence | Cause | Fix |
|---|---|---|
| Health is not 200 | API not running, PG unavailable, migrations/startup failed | Inspect App Service logs and deployment package |
| Health 200, register 503, App log `ETIMEOUT 10.42.1.10:1433` | VNet/NSG/Windows Firewall/listener path | Run `ensure-web-sql-firewall.ps1`, verify NSG and listener |
| Kudu TCP probe `TCP_TIMEOUT` | Network/firewall/listener path | Same as above |
| Kudu TCP probe `TCP_OK`, log `Login failed for user 'sa'` | SQL auth / Key Vault secret / `sa` disabled | Run `enable-mixed-mode.ps1 -FromEnv`; restart SQL/App Service if secret rotated |
| Kudu TCP probe `TCP_OK`, SQL syntax or FK error | Provisioning SQL/schema mismatch | Inspect `web/api/src/game-account.js`, `database/fix-post-character-creation.sql`, and live schema |
| Register 201, row set incomplete | Provisioning query bug or transaction skipped a table | Fix API provisioning SQL; verify all six row sets |
| Register 201, row set complete, client fails channel with `GetUID() : 0` | Different account ID used in client, stale client/session, or server-side repair issue | Use [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md) |

## Agent guardrails

Do:

- Use fresh test emails for end-to-end registration.
- Keep the Origin header in live API tests: `https://onjoysword.top`.
- Treat `/api/health` as PG-only, not full E2E.
- Verify both cloud boundary (NSG) and guest boundary (Windows Firewall).
- Preserve evidence: HTTP status, App Service log line, TCP probe result, and
  six-row MSSQL verification.

Do not:

- Repatch the game client for a web registration `503`.
- Hand-seed the MSSQL rows for one test account as the primary fix.
- Open SQL to `Internet` in the NSG.
- Disable Windows Firewall globally.
- Print or commit Key Vault secret values.
- Reuse an old failed email with a different password and interpret `409` as a
  provisioning failure.
- Stop after confirming `AllowSqlFromWeb`; Windows Firewall can still block the
  packet on the VM.

## Final acceptance checklist

- `/api/health` returns `HTTP 200`.
- App Service TCP probe to `10.42.1.10:1433` returns `TCP_OK`.
- `ensure-web-sql-firewall.ps1` reports no enabled SQL deny rule and verifies
  `JoySword Web SQL`.
- A fresh registration returns `HTTP 201`.
- The response includes `legacyUserId` and `legacyUserUid`.
- MSSQL has exactly one matching row in all six required row sets.
- Client can log in with the created account and enter a channel.
