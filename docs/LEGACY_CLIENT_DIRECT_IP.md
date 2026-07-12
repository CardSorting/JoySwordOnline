# Legacy Client Direct-IP Requirement

Companion troubleshooting runbook:
[CLIENT_ENDPOINT_TROUBLESHOOTING.md](CLIENT_ENDPOINT_TROUBLESHOOTING.md).
Agent quick-start:
[AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md).

## Summary

The JoySword game client must be patched directly to the Azure VM public IPv4
address:

```text
52.238.194.187
```

Do not mask the game endpoint behind `play.onjoysword.top`, a CNAME, Cloudflare
Spectrum, or any other hostname-based alias. HTTP(S) assets can still use
Cloudflare domains, but the legacy game sockets cannot.

## Why direct IP is required

The legacy `x2.exe` client does not treat the game endpoint like a normal
modern network client. Its connection target is embedded in multiple client
configuration surfaces:

- Loose Lua config files under `Elsword\ClientScript\Major\Config*.lua`.
- Packed Lua bytecode constants inside `data\data036.kom`.
- Release/client package copies such as `client\data\data036.kom`.

The packed KOM path is the important trap. The client can still use the packed
bytecode even when loose Lua files look correct. If the KOM contains a hostname
or stale endpoint, the visible config can lie to you.

For JoySword game traffic, the endpoint must be a numeric IPv4 string in every
place the client can load it from.

## Why CNAME masking is hard to debug

CNAME/FQDN masking creates false confidence:

- Windows, PowerShell, the launcher, and web tools may resolve the hostname
  successfully.
- The Azure VM ports can be open and healthy.
- The server database can advertise a correct channel row.
- Loose `Config*.lua` files can look patched.

Despite all of that, the actual client may still fail because the game socket
path is using a packed KOM constant or a legacy fallback path that does not
resolve the hostname the same way. The failure then appears later as a login,
channel-select, or game-handoff problem instead of a clean "DNS failed" error.

This makes the bug expensive to diagnose because each layer can appear healthy
in isolation:

- `nslookup play.onjoysword.top` can pass.
- `Test-NetConnection` to the resolved IP can pass.
- Login can appear to work while channel/game handoff fails.
- Server logs can point at channel or session timeouts instead of endpoint
  parsing.
- Repatching loose Lua files may change nothing if `data036.kom` still contains
  the bad endpoint.

The practical fix is not to debug hostname behavior further. The client is a
legacy binary with opaque fallback behavior. Use direct IPv4 everywhere for game
ports.

Direct IP is necessary but not sufficient. If `client\data\log.htm` already
shows `Connect To : 52.238.194.187:9400`, stop chasing CNAME/KOM issues and
verify the live server path. The VM must be listening, Azure NSG must allow the
ports, and Windows Firewall on the VM must allow the same public game ports.

## What is allowed

Use hostnames for web and distribution surfaces:

- `launcher.onjoysword.top`
- `manifest.onjoysword.top`
- `patch.onjoysword.top`
- `api.onjoysword.top`

Use direct IPv4 for game sockets:

- Login: `52.238.194.187:9200`
- Game: `52.238.194.187:9300`
- Channel: `52.238.194.187:9400`

## What not to do

Do not set any of these game-facing values to `play.onjoysword.top` or another
hostname:

- `CHANNEL_SERVER_IP`
- `Statistics.dbo.LServerList.PublicIP`
- `Statistics.dbo.LChannelList.IP`
- Loose `Config*.lua` client endpoints
- Packed `data\data036.kom` endpoint constants
- Packed `client\data\data036.kom` endpoint constants
- Launcher manifest `loginHost` for game ports

## Required patch flow

When the Azure VM public IP is `52.238.194.187`, run:

```powershell
python scripts\local_connect.py 52.238.194.187 --skip-repack
python client\scripts\local_connect.py 52.238.194.187 --skip-repack
```

On the server/VM side, register the same direct IP:

```powershell
D:\JoySword\Server\scripts\sync-server-ip.ps1 -PublicIp 52.238.194.187
```

`sync-server-ip.ps1` intentionally rejects CNAME/FQDN inputs. That guard exists
to stop this failure mode from coming back.

If the client log shows the direct IP but the client cannot reach the server,
repair the VM host firewall from the repository root:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\ensure-game-firewall.ps1" -o json
```

If login works but channel selection reports no response, verify the VM-side
environment and SQL endpoint rows:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript --scripts "@scripts\verify-vm-endpoints.ps1" -o json
```

If that shows a hostname in `CHANNEL_SERVER_IP`, `LServerList`, or
`LChannelList`, run `sync-server-ip.ps1 -PublicIp 52.238.194.187` and restart
the server stack.

## Verification checklist

Loose config files should not contain the old hostname:

```powershell
rg -n -g "Config*.lua" "play\.onjoysword\.top" Elsword\ClientScript\Major
```

Expected result: no matches.

Loose config files should contain the direct IP:

```powershell
rg -n -g "Config*.lua" "52\.238\.194\.187" Elsword\ClientScript\Major
```

Both KOM archives must decode to the direct IP only:

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

Expected result: every printed config entry is `52.238.194.187`, with no
`play.onjoysword.top`.

## If the public IP changes

Do not replace the IP with a hostname. Instead:

1. Update `Elsword\offline\offline.env`.
2. Run `sync-server-ip.ps1 -PublicIp <new-ip>` on the VM.
3. Run both `local_connect.py` commands with `<new-ip>`.
4. Decode both KOM archives and verify all packed config entries contain only
   `<new-ip>`.

The invariant is simple: game traffic uses direct IPv4 only.
