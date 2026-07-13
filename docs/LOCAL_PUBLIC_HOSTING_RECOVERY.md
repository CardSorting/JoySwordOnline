# JoySword Local Public Hosting and Port-Forwarding Recovery

This guide documents the migration of JoySword from Azure to a Windows PC on a
home network, the router and Windows changes used to make the game publicly
reachable, and the troubleshooting sequence used during recovery.

The addresses below are the values from the July 2026 recovery:

- Host LAN address: `192.168.1.138`
- Public IPv4 address: `136.36.127.72`
- Legacy server alias: `159.203.165.171`

Treat them as examples if DHCP or the ISP changes either address. The legacy
alias is a compatibility address and must not be advertised to players.

## Network layout

```text
Internet player
    |
    | public IPv4 136.36.127.72
    v
Home router / NAT
    |
    | port forwards
    v
Windows host 192.168.1.138
    |-- ChannelServer 9400
    |-- GameServer    9300
    |-- LoginServer   9200
    |-- CenterServer  9100 (internal coordination)
    `-- GlobalServer  9500 (internal coordination)
```

The client uses a direct numeric IPv4 address. Do not replace the game endpoint
with a DNS name, CNAME, Cloudflare proxy, or HTTP tunnel. DNS names remain fine
for launcher downloads and web APIs.

## Port inventory

The recovery initially forwarded TCP `9100-9500` as a broad range. That was
useful while diagnosing the five executables, but it exposes more than players
normally need.

Use these explicit rules for a hardened public setup:

| Protocol | Ports | Purpose | Router forward |
| --- | --- | --- | --- |
| TCP | `9200` | LoginServer | Public to `192.168.1.138` |
| TCP | `9300` | GameServer session handoff | Public to `192.168.1.138` |
| TCP | `9400` | ChannelServer login/lobby path | Public to `192.168.1.138` |
| TCP | `9201,9301,9401` | Secondary game and relay sockets | Public to `192.168.1.138` |
| UDP | `9201,9301,9401` | Relay/P2P fallback traffic | Public to `192.168.1.138` |
| TCP | `9100,9500` | Center/Global coordination | Keep internal after diagnosis |

Never forward SQL Server `1433`, Docker database ports, Remote Desktop, or
unrelated ranges to the internet.

## One-time host preparation

### 1. Reserve the host LAN address

In the router's DHCP settings, reserve `192.168.1.138` for the Windows PC's
Ethernet MAC address. A reservation prevents every port-forward rule from
breaking after a DHCP lease change.

Confirm the current address and default gateway:

```powershell
Get-NetIPConfiguration -InterfaceAlias Ethernet
Get-NetRoute -DestinationPrefix 0.0.0.0/0 |
  Sort-Object RouteMetric |
  Select-Object -First 1 InterfaceAlias,NextHop,RouteMetric
```

The physical adapter should remain DHCP-enabled and retain its default gateway.

### 2. Keep the legacy alias off the physical adapter

The first automation attempt added `159.203.165.171/32` to the DHCP-enabled
physical `Ethernet` interface. Windows dropped the DHCP address, DNS settings,
and default gateway, which also disconnected Docker and SQL Server.

The recovered setup places that alias on `Ethernet 3`, the VirtualBox Host-Only
adapter:

```powershell
Get-NetIPAddress -IPAddress 159.203.165.171
```

Expected result:

```text
IPAddress       InterfaceAlias PrefixLength
---------       -------------- ------------
159.203.165.171 Ethernet 3     32
```

If the physical adapter was damaged, remove only the bad alias, restore DHCP and
DNS, and restart the adapter from an elevated PowerShell window:

```powershell
Get-NetIPAddress -InterfaceAlias Ethernet -IPAddress 159.203.165.171 `
  -ErrorAction SilentlyContinue | Remove-NetIPAddress -Confirm:$false

Set-NetIPInterface -InterfaceAlias Ethernet -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ResetServerAddresses
Restart-NetAdapter -Name Ethernet
ipconfig /renew
```

Then add the compatibility address to the virtual adapter:

```powershell
New-NetIPAddress -InterfaceAlias "Ethernet 3" `
  -IPAddress 159.203.165.171 -PrefixLength 32
```

Do not continue until `192.168.1.138`, DNS, and the default gateway are back.

### 3. Clear Hyper-V/WSL excluded-port collisions

Windows had dynamically reserved ranges containing `9300` and `9500`. The
executables could start as processes but failed to bind their sockets.

Inspect exclusions from an elevated terminal:

```powershell
netsh interface ipv4 show excludedportrange protocol=tcp
```

If a range contains a required JoySword port, restart WinNAT:

```powershell
net stop winnat
net start winnat
```

This briefly interrupts Docker, Hyper-V, and WSL networking. Recheck the
excluded ranges and restart Docker Desktop if its network did not recover.

### 4. Open Windows Firewall

Run the repository's idempotent firewall script as Administrator:

```powershell
.\scripts\ensure-game-firewall.ps1
```

It enables TCP `9200,9201,9300,9301,9400,9401` and UDP
`9201,9301,9401`. Inspect the resulting rules with:

```powershell
Get-NetFirewallRule -DisplayName "JoySword Public Game *" |
  Get-NetFirewallPortFilter
```

## Router port-forwarding steps

Router terminology varies: look for **NAT**, **Port Forwarding**, **Virtual
Server**, or **Applications and Gaming**.

1. Sign in to the home router using the default gateway shown by
   `Get-NetIPConfiguration`.
2. Create or confirm the DHCP reservation for `192.168.1.138`.
3. Delete stale rules targeting the Azure IP or a previous LAN address.
4. Create TCP forwards for `9200`, `9300`, and `9400` to the same internal ports
   on `192.168.1.138`.
5. Create TCP forwards for `9201`, `9301`, and `9401` to the same internal ports.
6. Create UDP forwards for `9201`, `9301`, and `9401` to the same internal ports.
7. During the original diagnosis, TCP `9100` and `9500` were also forwarded.
   Remove those two public rules after server-to-server loopback is verified.
8. Apply/save the router configuration. Reboot the router only if its UI
   requires it.

Do not translate ports: external `9400` must remain internal `9400`, for
example. The legacy client and database channel list expect the standard ports.

### Confirm that the ISP provides a usable public IPv4 address

Compare the router's WAN/Internet IPv4 address with:

```powershell
Invoke-RestMethod https://api.ipify.org
```

If they differ, or if the router WAN address is private (`10.0.0.0/8`,
`172.16.0.0/12`, `192.168.0.0/16`) or CGNAT (`100.64.0.0/10`), ordinary port
forwarding cannot accept inbound players. Ask the ISP for a public IPv4 address
or use an appropriate VPN/VPS relay.

## Configure and start JoySword

Start the database and Docker Desktop first, then run:

```powershell
.\Start-Server-Automatic.ps1 `
  -PublicIP 136.36.127.72 `
  -PrivateIP 127.0.0.1
```

The public address is written to the client-facing channel records. The private
address keeps Center, Login, Global, and Game server coordination on loopback.

Confirm all listeners:

```powershell
netstat -ano | Select-String ":9100 |:9200 |:9300 |:9400 |:9500 "
```

Do not accept process names alone as proof of health. Each port must show
`LISTENING`.

## Patch the client and launcher

The client must advertise the same public IPv4 address as the router:

```powershell
python scripts\local_connect.py
```

This updates loose `Config*.lua` files and packed endpoint constants in
`data036.kom`. The launcher default was also changed from the retired Azure
address `52.238.194.187` to `136.36.127.72` for release `1.2.0`.

When distributing a corrected client, use the updated `client` directory or
rebuild the player package. Existing players must receive changed KOM archives;
restarting the server cannot repair stale client data.

## Validate from inside and outside the network

### Host/LAN test

```powershell
$ports = 9200,9300,9400
foreach ($port in $ports) {
  Test-NetConnection 192.168.1.138 -Port $port |
    Select-Object ComputerName,RemotePort,TcpTestSucceeded
}
```

### Real internet test

Test from a different internet connection, such as a phone hotspot or remote
machine:

```powershell
$ports = 9200,9300,9400
foreach ($port in $ports) {
  Test-NetConnection 136.36.127.72 -Port $port |
    Select-Object ComputerName,RemotePort,TcpTestSucceeded
}
```

A test from the host to its own public address depends on NAT loopback/hairpin
support. It can fail even when external players work, or succeed while a
different router rule is still wrong. Always perform one true external test.

## Symptom-based troubleshooting

### No server port is listening

1. Check excluded port ranges.
2. Confirm Docker/SQL health:

   ```powershell
   python scripts\db-healthcheck.py --allow-tcp-only
   ```

3. Read the newest `Elsword\<Server>\log\log_*.htm` file.
4. Stop stale processes before retrying:

   ```powershell
   python scripts\stop-offline.py
   ```

### LAN works but public connections fail

Check, in order:

1. Windows Firewall rules.
2. Router rules still target `192.168.1.138`.
3. Router WAN IP matches the detected public IPv4 address.
4. The test was made from a genuinely external network.
5. The ISP is not using CGNAT or blocking inbound ports.

### Login works but channel selection or GameServer fails

The ChannelServer may authenticate and return a channel list while GameServer
cannot reach the internal services. The recovered GameServer repeatedly tried
invalid destinations:

```text
game server connect failed. IP : 0.0.0.0:9100
game server connect failed. IP : 0.0.0.0:9200
game server connect failed. IP : 0.0.0.0:9500
```

Rerun the current automatic startup script with `-PrivateIP 127.0.0.1`. It pins
internal stored-procedure results to loopback even when a legacy executable
registers its wildcard bind address (`0.0.0.0`) in `LServerList`.

Healthy GameServer startup has three established loopback connections and logs:

```text
KCnProxy::ON_ECN_VERIFY_SERVER_CONNECT_ACK
KLoginProxy::ON_ELG_VERIFY_SERVER_CONNECT_ACK
KGlobalProxy::ON_EGB_VERIFY_SERVER_CONNECT_ACK
```

### A supervised stack immediately respawns during maintenance

Use `scripts\stop-offline.py`; it stops the recorded supervisor before stopping
its children. Killing only the five executables allows an older supervisor to
relaunch them while database or configuration work is still in progress.

### Chat bubbles appear but chat-window messages do not

This is client UI data, not port forwarding. The corrected chat layouts use a
local `(0,0)` text origin for every list. Repack and distribute the archive:

```powershell
python scripts\patch-client-kom.py --chat-ui
Copy-Item data\data034.kom client\data\data034.kom -Force
```

Players must close and relaunch the game after receiving `data034.kom`.

## Recovery checklist

- [ ] Physical Ethernet remains DHCP-enabled with a valid gateway and DNS.
- [ ] `159.203.165.171/32` is on `Ethernet 3`, not physical Ethernet.
- [ ] Host has a reserved LAN address (`192.168.1.138` in this recovery).
- [ ] Required ports are absent from Windows excluded-port ranges.
- [ ] Windows Firewall permits the public game and relay ports.
- [ ] Router forwards TCP `9200/9201/9300/9301/9400/9401` and UDP
      `9201/9301/9401` to the host.
- [ ] Router WAN IP matches the configured public IPv4 address.
- [ ] All five executables show actual listening sockets.
- [ ] GameServer has established loopback connections to `9100`, `9200`, and
      `9500`.
- [ ] A remote network can reach `9200`, `9300`, and `9400`.
- [ ] Client `data036.kom` advertises the current public IP.
- [ ] Corrected client archives are redistributed after UI or endpoint changes.

