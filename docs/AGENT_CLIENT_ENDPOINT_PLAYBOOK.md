# Agent Playbook: Client Endpoint Bug

## Purpose

This file exists because agents repeatedly rediscover the same bug from zero.
Do not start with DNS. Do not propose CNAME masking. Do not inspect Cloudflare
first. The legacy client endpoint problem is already known.

## Non-negotiable facts

- The game client must use direct IPv4: `52.238.194.187`.
- `play.onjoysword.top` is not supported for game sockets.
- CNAME/FQDN masking is not supported for game sockets.
- Cloudflare/Spectrum is not supported for game sockets.
- `data036.kom` can override or outlive loose Lua config changes.
- There are two KOM archives that matter:
  - `data\data036.kom`
  - `client\data\data036.kom`
- A plain text search of `data036.kom` is not enough because the config entries
  are compressed/transformed.
- DNS resolution success does not prove the game client can connect.
- If `client\data\log.htm` already shows `52.238.194.187:9400`, the next
  likely fault is server/network reachability, not another CNAME repair.
- The VM can be listening and the Azure NSG can be open while Windows Firewall
  still blocks the public game ports.
- Login can succeed while channel selection fails if the VM-side
  `offline.env` or SQL `LChannelList`/`LServerList` rows still advertise a
  hostname.
- Login can also succeed while channel selection fails if the public account
  hotpath does not create the matching `Game01.dbo.users` identity row.
- Web registration returning `503` while `/api/health` is `HTTP 200` is not a
  client endpoint bug. Use
  [AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md).

## Trigger phrases

If the user says any of these, follow this playbook immediately:

- "client does not connect"
- "login hangs"
- "channel select hangs"
- "no response from server"
- "server is online but client fails"
- "unable to reach the server"
- "CNAME masking"
- "DNS masking"
- "Cloudflare"
- "play.onjoysword.top"
- "KOM"
- "data036"
- "patch the client"
- "direct IP"
- "same issue again"

If the trigger is "registration returns 503", "MSSQL timeout", or
"provisioning failed", switch to
[AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md)
instead of this playbook.

## First response to yourself

Before reading unrelated networking docs, run or inspect these:

```powershell
rg -n -g "Config*.lua" "play\.onjoysword\.top" Elsword\ClientScript\Major
rg -n -g "Config*.lua" "52\.238\.194\.187|AddChannelServerIP_LUA|AddGameServerIPForCreateID_LUA" Elsword\ClientScript\Major
```

Then decode both KOM archives with the script in
[CLIENT_ENDPOINT_TROUBLESHOOTING.md](CLIENT_ENDPOINT_TROUBLESHOOTING.md).

## Correct repair sequence

From the repository root:

```powershell
python scripts\local_connect.py 52.238.194.187 --skip-repack
python client\scripts\local_connect.py 52.238.194.187 --skip-repack
```

On the Azure VM:

```powershell
D:\JoySword\Server\scripts\sync-server-ip.ps1 -PublicIp 52.238.194.187
```

Then verify the VM-side endpoint and SQL rows:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\verify-vm-endpoints.ps1" -o json
```

If `offline.env` was stale or the server was already running, restart the stack:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "Set-Location D:\JoySword\Server; python scripts\stop-offline.py; Start-Sleep -Seconds 3; python scripts\start-offline.py --headless --allow-existing-ports" -o json
```

If the client log shows the direct IP but external port checks fail, repair the
VM host firewall from the repository root:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\ensure-game-firewall.ps1" -o json
```

If the client reaches `9400`, then `9300`, then logs `closed by remote machine`,
and GameServer logs `GetUID() : 0` or `ON_ELG_REGISTER_USER_ACK`, the account is
missing its legacy `Game01` identity rows. As of the July 2026 fix, `mup_auth_user`
self-heals the account on next login. To backfill broken accounts immediately,
run the idempotent repair tool (dry-run without `--apply`):

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "Set-Location D:\JoySword\Server; python scripts\repair-account-init.py --apply" -o json
```

Do not manually seed only the failing username. The correct behavior is on-demand
account creation/repair. Full detail: [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md).

Then verify:

```powershell
rg -n -g "Config*.lua" "play\.onjoysword\.top" Elsword\ClientScript\Major
```

Expected: no output.

Then decode both KOM archives and confirm every printed endpoint is
`52.238.194.187`.

Then verify public game ports from the client machine:

```powershell
$ports = @(9200,9300,9400)
foreach ($port in $ports) {
    $ok = Test-NetConnection 52.238.194.187 -Port $port -InformationLevel Quiet
    Write-Output "$port=$ok"
}
```

Expected: all three values are `True`.

## Do not do these things

Do not:

- say "the domain resolves, so DNS is fine" as a conclusion
- patch only `Elsword\ClientScript\Major\Config*.lua`
- patch only `data\data036.kom`
- forget `client\data\data036.kom`
- put `play.onjoysword.top` into `offline.env`
- put `play.onjoysword.top` into SQL channel/server rows
- reintroduce hostname support in `sync-server-ip.ps1`
- change launcher defaults back to a hostname
- suggest Cloudflare Spectrum for game ports
- treat HTTP(S) manifest success as proof of game socket success
- stop at Azure NSG checks without checking Windows Firewall on the VM
- accept `db-healthcheck.py` alone as proof that channel/server endpoint rows
  are correct
- seed one user manually instead of repairing the hotpath when GameServer logs
  UID 0 after channel selection

## Acceptable hostname use

Hostnames are fine here:

- launcher website
- manifest download URL
- patch/download host
- API host
- status pages

Hostnames are not fine here:

- `CHANNEL_SERVER_IP`
- launcher `DEFAULT_SERVER_HOST`
- manifest `loginHost` for game ports
- packed KOM endpoint constants
- SQL `LChannelList.IP`
- SQL `LServerList.PublicIP`

## Minimal correct answer to the user

When fixing this bug, the final answer should explicitly say:

- both loose `Config*.lua` files and packed `data036.kom` were checked
- both `data\data036.kom` and `client\data\data036.kom` were decoded
- no packed config contains `play.onjoysword.top`
- all packed configs contain `52.238.194.187`
- `sync-server-ip.ps1` rejects hostnames
- if the client log already shows the direct IP, the server/network ports were
  checked separately
- VM `offline.env`, `LServerList`, and `LChannelList` were checked for the
  direct IP when channel selection fails after login

If any of those are not true, the work is not done.

## Why this keeps coming back

This bug crosses boundaries:

- launcher config
- loose client Lua
- packed KOM bytecode
- release package copy
- SQL endpoint advertising
- Azure network health
- VM Windows Firewall
- Cloudflare/manifest web infrastructure

Agents often fix one layer and stop. That is not enough. The client is only
safe when every game-facing layer is direct IPv4.

## Stop condition

You may stop only when all of these are true:

- `rg` finds no `play.onjoysword.top` in loose `Config*.lua`
- both KOM archives decode to `52.238.194.187`
- `offline.env` and `connection.manifest` use `52.238.194.187`
- SQL registration is direct IP or the server-side repair command is documented
- VM `offline.env` is direct IP, not just local repo `offline.env`
- launcher game host default is `52.238.194.187`
- external `Test-NetConnection` succeeds on `9200`, `9300`, and `9400`, or the
  failed port layer is explicitly reported
