# Client Endpoint Troubleshooting Runbook

Agent quick-start:
[AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md).

## Severity

Treat any client endpoint mismatch as a release-blocking bug.

This issue can make the server look healthy while players still cannot connect
or cannot complete the login to channel/game handoff. The failure can be hidden
inside `data036.kom`, so normal DNS and port checks are not enough.

There are two separate high-risk failure classes:

- The client package points at the wrong endpoint, usually a hostname or stale
  packed KOM value.
- The client package is correct, but Azure or Windows Firewall blocks the live
  game ports.

Do not assume one rules out the other. Prove both.

The production game endpoint is:

```text
52.238.194.187
```

No game-facing path should use `play.onjoysword.top` or any other hostname.

## Fast rule

If the problem involves Login, Channel, Game, `Config*.lua`, `data036.kom`, or
`CHANNEL_SERVER_IP`, verify direct IPv4 before debugging anything else.

Do not spend time proving that a CNAME resolves. That is not the client path we
support.

## For future agents

If you are an AI agent or a new operator, do not rediscover this issue from
scratch. Read [AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md),
then run the client repair and KOM decode checks in this file.

The correct answer is never "make the CNAME work." The correct answer is always
"remove hostnames from game-facing paths and verify the packed KOMs."

## Known symptoms

This bug can appear as several different failures:

- Client hangs at initial login.
- Login succeeds, then channel selection hangs or times out.
- Login succeeds, channel selection says "no response from server", then the
  client closes or crashes.
- Channel list appears, but entering the channel disconnects.
- Game handoff fails even though the server ports are listening.
- `client\data\log.htm` says `Connect To : 52.238.194.187:9400`, then fails.
- `Test-NetConnection 52.238.194.187 -Port 9400` fails even though the VM
  process is listening on `0.0.0.0:9400`.
- Launcher repair says it patched the client, but the game still uses the old
  endpoint.
- Server logs show generic session, channel, or timeout errors instead of a
  clear hostname resolution error.

## Why normal checks can mislead you

These checks can pass while the client is still broken:

- `nslookup play.onjoysword.top`
- `Resolve-DnsName play.onjoysword.top`
- `Test-NetConnection 52.238.194.187 -Port 9400`
- Azure NSG checks for ports `9200`, `9300`, and `9400`
- SQL health checks
- Loose `Elsword\ClientScript\Major\Config*.lua` inspection
- Launcher manifest fetch from `manifest.onjoysword.top`

The packed KOM archive can still contain a different endpoint. The client may
load that packed bytecode instead of, or before, the loose files you inspected.

The opposite can also happen: the KOMs can be correct while the network path is
blocked. If the client log already shows `52.238.194.187:9400`, stop repatching
the client and check the server listener, Azure NSG, and VM Windows Firewall.

There is a third handoff failure: the client reaches `9400`, then reaches
`9300`, and GameServer closes the connection immediately. If the GameServer log
shows `ON_ELG_REGISTER_USER_ACK`, `GetUID() : 0`, or a UID-related error for
the username, the account is missing its downstream initialization rows. Do not
seed that one user manually; the account is supposed to self-heal. This is a
distinct failure class documented in full — see
[AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md).

## Endpoint sources to verify

All of these must agree on the same direct IP:

| Layer | File or location | Required value |
|---|---|---|
| Runtime env | `Elsword\offline\offline.env` | `CHANNEL_SERVER_IP=52.238.194.187` |
| Generated manifest | `Elsword\offline\connection.manifest` | `CHANNEL_SERVER_IP=52.238.194.187` |
| Loose client Lua | `Elsword\ClientScript\Major\Config*.lua` | `52.238.194.187` |
| Main client KOM | `data\data036.kom` | `52.238.194.187` |
| Packaged client KOM | `client\data\data036.kom` | `52.238.194.187` |
| SQL server list | `Statistics.dbo.LServerList.PublicIP` | `52.238.194.187` |
| SQL channel list | `Statistics.dbo.LChannelList.IP` | `52.238.194.187` |
| Launcher default | `launcher\src\main\clientPatch.ts` | `52.238.194.187` |
| HTTP manifest game host | `loginHost` | `52.238.194.187` |
| Azure NSG | `joysword-edge-nsg` | allow TCP `9200/9300/9400` |
| VM Windows Firewall | `JoySword Public Game TCP` | allow TCP `9200/9201/9300/9301/9400/9401` |
| Public account hotpath | `Account.dbo.JoySwordEnsurePublicIdentity` | creates `MUser`, `Game01.dbo.users`, billing/cash rows |

Web, launcher download, manifest hosting, API, and patch downloads may still
use `*.onjoysword.top` because those are HTTP(S) paths. Only game sockets are
direct-IP only.

## One-command client repair

From the repository root:

```powershell
python scripts\local_connect.py 52.238.194.187 --skip-repack
python client\scripts\local_connect.py 52.238.194.187 --skip-repack
```

Expected healthy rerun after repair:

```text
Updated 0 loose config file(s).
```

No `play.onjoysword.top` should be printed as a replacement source after the
first repair.

## Server-side registration repair

On the Azure VM:

```powershell
D:\JoySword\Server\scripts\sync-server-ip.ps1 -PublicIp 52.238.194.187
```

This script must reject hostnames. If someone tries:

```powershell
D:\JoySword\Server\scripts\sync-server-ip.ps1 -PublicIp play.onjoysword.top
```

that is a failed operation and should stay failed.

## Triage flow

### 1. Stop trusting DNS

Do not start with CNAME, registrar, Cloudflare, or Spectrum checks. For this
bug, those checks are secondary and can lead you away from the actual client
payload.

### 2. Check loose configs

```powershell
rg -n -g "Config*.lua" "play\.onjoysword\.top" Elsword\ClientScript\Major
```

Expected: no output.

```powershell
rg -n -g "Config*.lua" "AddChannelServerIP_LUA|AddGameServerIPForCreateID_LUA" Elsword\ClientScript\Major
```

Expected: every active endpoint is `52.238.194.187`.

### 3. Decode both KOM archives

Do not use a plain string search on `data036.kom`. The config payload is packed
and transformed. Decode it:

```powershell
@'
from pathlib import Path
import xml.etree.ElementTree as ET
import zlib
from scripts.client_connect import xor_payload, IP_PATTERN

for archive in [Path("data/data036.kom"), Path("client/data/data036.kom")]:
    blob = archive.read_bytes()
    xml_start = blob.find(b"<?xml")
    xml_end = blob.find(b"</Files>", xml_start) + len(b"</Files>")
    root = ET.fromstring(blob[xml_start:xml_end])
    pos = xml_end
    print(archive)
    for elem in root:
        name = elem.attrib["Name"]
        size = int(elem.attrib["CompressedSize"])
        compressed = blob[pos:pos + size]
        pos += size
        if name.startswith("Config") and name.endswith(".lua"):
            payload = xor_payload(zlib.decompress(compressed))
            found = sorted(set(m.group().decode("ascii") for m in IP_PATTERN.finditer(payload)))
            if found:
                print(f"  {name}: {', '.join(found)}")
'@ | python -
```

Expected:

```text
data\data036.kom
  Config.lua: 52.238.194.187
  Config_INTERNAL.lua: 52.238.194.187
  Config_QA.lua: 52.238.194.187
  Config_S.lua: 52.238.194.187
  Config_S_B.lua: 52.238.194.187
  Config_US_INTERNAL.lua: 52.238.194.187
  Config_US_Service.lua: 52.238.194.187
  Config_US_TEST.lua: 52.238.194.187
client\data\data036.kom
  Config.lua: 52.238.194.187
  Config_INTERNAL.lua: 52.238.194.187
  Config_QA.lua: 52.238.194.187
  Config_S.lua: 52.238.194.187
  Config_S_B.lua: 52.238.194.187
  Config_US_INTERNAL.lua: 52.238.194.187
  Config_US_Service.lua: 52.238.194.187
  Config_US_TEST.lua: 52.238.194.187
```

Any hostname in this output is a failed client package.

### 4. Check env and generated manifest

```powershell
Get-Content Elsword\offline\offline.env | Select-String "CHANNEL_SERVER_IP"
Get-Content Elsword\offline\connection.manifest | Select-String "CHANNEL_SERVER_IP"
```

Expected:

```text
CHANNEL_SERVER_IP=52.238.194.187
```

### 5. Check database rows

Preferred VM-side verifier:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\verify-vm-endpoints.ps1" -o json
```

Manual SQL equivalent on the VM, after setting `$env:JOYSWORD_SA_PASSWORD`:

```powershell
sqlcmd -S localhost\SQLEXPRESS -U sa -P $env:JOYSWORD_SA_PASSWORD -C -Q "SELECT UID,[Name],IP,PrivateIP,PublicIP,Port1 FROM [Statistics].dbo.LServerList; SELECT UID,ChannelName,IP,Port1,Port2,OnOff FROM [Statistics].dbo.LChannelList WHERE OnOff = 1;"
```

Expected public/channel values:

```text
52.238.194.187
```

If the database contains `play.onjoysword.top`, repair with
`sync-server-ip.ps1 -PublicIp 52.238.194.187`.

If `offline.env` contained a hostname or the stack was already running, restart
the server stack after the repair so the runtime config is reloaded:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "Set-Location D:\JoySword\Server; python scripts\stop-offline.py; Start-Sleep -Seconds 3; python scripts\start-offline.py --headless --allow-existing-ports" -o json
```

### 6. Only then check ports

```powershell
Test-NetConnection 52.238.194.187 -Port 9200
Test-NetConnection 52.238.194.187 -Port 9300
Test-NetConnection 52.238.194.187 -Port 9400
```

Port checks are useful only after the client payload has been proven to use the
same direct IP.

### 7. If the client log shows the direct IP but ports fail

Check the latest client log:

```powershell
Get-Content client\data\log.htm -Tail 80
```

If it contains:

```text
Connect To : 52.238.194.187:9400
```

then the client is no longer using the old hostname. Move to server/network
reachability.

Check the VM listeners:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\check-vm-game-ports.ps1" -o json
```

Healthy VM listener shape:

```text
LISTEN port=9200 addr=0.0.0.0 proc=LoginServer
LISTEN port=9300 addr=0.0.0.0 proc=GameServer
LISTEN port=9400 addr=0.0.0.0 proc=ChannelServer
```

If the listeners exist and Azure NSG allows the ports, repair the VM Windows
Firewall rules from the repository root:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\ensure-game-firewall.ps1" -o json
```

Then verify from the client machine:

```powershell
$ports = @(9200,9300,9400)
foreach ($port in $ports) {
    $ok = Test-NetConnection 52.238.194.187 -Port $port -InformationLevel Quiet
    Write-Output "$port=$ok"
}
```

Expected:

```text
9200=True
9300=True
9400=True
```

### 8. If ports work but channel selection still says no response

Check the client log:

```powershell
Get-Content client\data\log.htm -Tail 120
```

This pattern means the TCP path works but GameServer rejects the account handoff:

```text
Connect To : 52.238.194.187:9400
Connect To : 52.238.194.187:9300
closed by remote machine
```

Then check the live GameServer log around the same timestamp. If it contains
`ON_ELG_REGISTER_USER_ACK`, `GetUID() : 0`, or a UID error for the username, the
account is missing its downstream initialization rows (most importantly
`Game01.dbo.users` / `VCGAVirtualCash`).

The correct fix is **not** to create that one user manually. Registration and
login are supposed to create/repair the account identity on demand. As of the
July 2026 fix this is shipped in `database/fix-post-character-creation.sql`
(applied by `install-creation-fixes.py`): `mup_auth_user` self-heals the account
on the next successful login via `Account.dbo.JoySwordEnsurePublicIdentity`. To
backfill broken accounts in bulk without waiting for logins, run the idempotent
repair tool on the VM:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "Set-Location D:\JoySword\Server; python scripts\repair-account-init.py --apply" -o json
```

Run it with no `--apply` first for a dry-run report of which accounts are
missing which rows. Full explanation, working-vs-broken diff, and the FK/LoginUID
subtlety: [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md).

## Decision table

| Finding | Meaning | Action |
|---|---|---|
| Loose configs show direct IP, KOM shows hostname | Client package is still broken | Run both `local_connect.py` commands |
| Main KOM is fixed, `client` KOM is stale | Release copy is broken | Run `client\scripts\local_connect.py` |
| KOMs are fixed, SQL advertises hostname | Server advertises wrong endpoint | Run `sync-server-ip.ps1 -PublicIp 52.238.194.187` |
| Login works, channel selection says no response, VM `offline.env` says hostname | Running server started from stale endpoint config | Run `sync-server-ip.ps1`, then restart the stack |
| SQL and KOMs are fixed, ports fail | Network/server availability issue | Check Azure NSG and server processes |
| Client log shows direct IP, VM listens, NSG allows ports, external ports fail | VM Windows Firewall is blocking game ingress | Run `scripts\ensure-game-firewall.ps1` through Azure run-command |
| Client reaches `9300`, then remote closes; GameServer logs `GetUID() : 0` | Account is missing legacy `Game01` identity rows | Let it self-heal on next login, or run `scripts\repair-account-init.py --apply` — see [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md) |
| DNS resolves but client fails | DNS result is irrelevant | Verify KOM and SQL direct IP |
| Launcher repairs but endpoint is still wrong | Launcher/package mismatch | Decode both KOMs and patch direct IP |

## Common mistakes

Do not:

- patch only loose `Config*.lua` files
- run `patch-client-kom.py` and assume it changed endpoint constants
- trust `nslookup` as proof the client will connect
- keep repatching the client after `log.htm` already shows the direct IP
- set `CHANNEL_SERVER_IP=play.onjoysword.top`
- put `play.onjoysword.top` in `LChannelList.IP`
- assume `db-healthcheck.py` proves endpoint rows are correct; verify
  `LServerList` and `LChannelList` separately
- manually seed one failing username when the hotpath is supposed to create
  public users on demand
- hide game traffic behind Cloudflare or Spectrum
- change only `data\data036.kom` and forget `client\data\data036.kom`
- ship a release without decoding the KOMs after patching
- stop at Azure NSG checks without checking VM Windows Firewall

## Release gate

Before shipping a client or launcher build, run:

```powershell
python scripts\local_connect.py 52.238.194.187 --skip-repack
python client\scripts\local_connect.py 52.238.194.187 --skip-repack
rg -n -g "Config*.lua" "play\.onjoysword\.top" Elsword\ClientScript\Major
```

Then decode both KOM archives using the script above.

Also verify the live game ports from the client machine:

```powershell
$ports = @(9200,9300,9400)
foreach ($port in $ports) {
    $ok = Test-NetConnection 52.238.194.187 -Port $port -InformationLevel Quiet
    Write-Output "$port=$ok"
}
```

Release is blocked if:

- any game config contains `play.onjoysword.top`
- any packed KOM config contains a hostname
- any of `9200`, `9300`, or `9400` is not externally reachable
- the launcher default game host is not `52.238.194.187`
- the database advertises a hostname for active game/channel rows

## Incident note

This is a serious bug because it crosses multiple layers at once: launcher,
loose Lua, packed KOM bytecode, SQL channel advertising, Azure networking, and
legacy client fallback behavior. A partial fix often looks successful while
leaving one hidden source stale.

The supported strategy is intentionally strict: direct IPv4 for game sockets,
hostnames only for HTTP(S) services.
