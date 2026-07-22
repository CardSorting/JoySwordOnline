# JoySword Offline Server Troubleshooting Guide

This guide documents the critical network, script-loading, and database issues diagnosed and resolved during the VM deployment and client-connection audit for the JoySword offline project.

### Documentation Index
* **[Server Deployment Guide](deployment_guide.md)**
* **[Client Connection Guide](client_connection_guide.md)**
* **[Troubleshooting Guide](troubleshooting_guide.md)**

---

## Table of Contents
1. [Channel Server Connection Failure (Login Attempt)](#1-channel-server-connection-failure-login-attempt)
2. [High Latency & Zone Transition Disconnection](#2-high-latency--zone-transition-disconnection)
3. [Dungeons Not Loading (Infinite Load/Hang)](#3-dungeons-not-loading-infinite-load-hang)
4. [Empty Field Zones (No Monsters Spawning)](#4-empty-field-zones-no-monsters-spawning)
5. [Cash Credits Not Deducting on Purchase](#5-cash-credits-not-deducting-on-purchase)
6. [P2P & Relay Netcode Troubleshooting](#6-p2p--relay-netcode-troubleshooting)
7. [Auditing & Diagnostics Tooling](#7-auditing--diagnostics-tooling)

---

## 1. Channel Server Connection Failure (Login Attempt)
### Symptoms
When launching the client and attempting to log in, the client UI returned the error: `"Channel Server connection failed"`.

### Root Cause
1. **VM State**: The hosting Azure Virtual Machine was decommissioned.
2. **Tunneling Configuration**: Legacy comments and configurations referenced an active SSH/edge tunnel, which had actually been turned off, leaving the client without a valid route to the VM endpoints.

### Resolution
- Re-enabled and verified the running state of the Azure Virtual Machine `joysword-server`.
- Cleared legacy tunnel references and established direct public routing to the VM IP endpoint on the standard ports.

---

## 2. High Latency & Zone Transition Disconnection
### Symptoms
The cash shop worked as intended, but when a character changed their zone and entered a field zone, they suffered from extreme lag and got disconnected (timed out) from the server.

### Root Cause
- The client log (`data/log.htm`) recorded immediate socket connection failures on port `9301` returning:
  `WSAGetLastError() : 6 - WSAENOTSOCK (Invalid Socket Handle)`
- Netstat on the VM showed that the GameServer processes bind secondary ports (`9201`, `9301`, `9401`) on **both TCP and UDP**.
- While UDP rules were configured, the Azure Network Security Group (NSG) and the VM's internal Windows Firewall were blocking inbound **TCP** traffic on the secondary port range `9201`, `9301`, and `9401`.

### Resolution & Code References
- Updated the Azure NSG inbound rules to permit TCP on ports `9201`, `9301`, and `9401`.
- Added persistent rules to the VM's Windows Firewall allowing inbound TCP on these ports.
- Added persistent rules to the VM's Windows Firewall allowing inbound TCP on these ports:
  ```powershell
  # Opened secondary TCP game ports 9201, 9301, 9401
  New-NetFirewallRule -DisplayName "JoySword TCP Secondary" -Direction Inbound -Protocol TCP -LocalPort 9201,9301,9401 -Action Allow -Profile Public,Private,Domain -ErrorAction SilentlyContinue
  ```

---

## 3. Dungeons Not Loading (Infinite Load/Hang)
### Symptoms
Zone transitions worked, but entering any instanced dungeon (such as tutorials or stage maps) failed to load and hung indefinitely.

### Root Cause
- CenterServer log (`log_*.htm`) showed repeated errors on startup:
  `::: DUNGEON DATA ::: 던전 파일 로드하지 못했거나 데이터가 존재하지 않습니다` (Dungeon file failed to load or data does not exist)
- The Lua server configurations `config_*.lua` search path array (`SimLayer:AddPath`) only searched the base directory `ClientScript`, but the actual dungeon scripts were packaged inside subfolders:
  - `ClientScript\Dungeon`
  - `ClientScript\World`
- Without explicit paths added to `SimLayer`, CenterServer could not locate the dungeon definition scripts.

### Resolution & Code References
- Modified [deploy_excludes.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/deploy_excludes.py#L9-L11) to remove `"Dungeon"` and `"World"` from exclusion patterns, ensuring scripts are packaged.
- Patched [configure-offline.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/configure-offline.py#L164-L211) to automatically index and rank `ClientScript\Dungeon` and `ClientScript\World` when rewriting the configurations:
  ```python
  ("ClientScriptDungeon", f"{elsword_root}\\ClientScript\\Dungeon"),
  ("ClientScriptWorld", f"{elsword_root}\\ClientScript\\World"),
  ```
- Copied the missing scripts to the VM's deployment directory and restarted the servers.

---

## 4. Empty Field Zones (No Monsters Spawning)
### Symptoms
Dungeons loaded successfully, but field zones (e.g. Lake Noahs) were entirely empty with no monsters or NPCs spawning.

### Root Cause
- Field maps depend on scripts located in further nested subdirectories, such as `ClientScript\Major\Field_Script\Ruben_Field` (containing `Ruben_Field_00.lua`) and `ClientScript\World\Field_World\Ruben` (containing `Field_Ruben_Stage0.lua`).
- Because `SimLayer:AddPath` works as a flat array of exact paths (not recursive), the GameServer failed to locate the NPC layouts and linemap scripts at the moment a player entered the field.

### Resolution & Code References
- Created a recursive path discovery scanner in [configure-offline.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/configure-offline.py#L164-L211) that walks the `ClientScript` directory at run-time, automatically identifying all **45 subdirectories** containing `.lua` files:
  ```python
  client_script_root = Path(elsword_root) / "ClientScript"
  dynamic_specs = []
  if client_script_root.exists():
      for dirpath, dirnames, filenames in os.walk(client_script_root):
          dirnames.sort()
          if any(f.endswith(".lua") for f in filenames):
              rel_path = os.path.relpath(dirpath, client_script_root)
              if rel_path != ".":
                  name_key = "ClientScript" + rel_path.replace("\\", "").replace("-", "").replace("_", "")
                  dynamic_specs.append((name_key, dirpath))
  ```
- Force-restarted the VM servers via `taskkill` to reload the config files.

---

## 5. Cash Credits Not Deducting on Purchase
### Symptoms
Players could buy items inside the Cash Shop, but cash credits were not deducted from the account character balance.

### Root Cause
The balance deduction query in the SQL Server stored procedure `dbo.EBP_BuyItem` was commented out or malformed, failing to subtract the purchase price.

### Resolution
Patched the stored procedure `dbo.EBP_BuyItem` in the database, restoring the character balance deduction code blocks.

---

## 6. P2P & Relay Netcode Troubleshooting
### Netcode Topology
JoySword uses a hybrid Peer-to-Peer (P2P) network model for instanced dungeons and PVP match sessions. 
- **Direct P2P**: Clients attempt to establish direct UDP sockets between each other for low-latency hit registration and movement synchronization.
- **STUN & NAT Hole Punching**: STUN calls bind to UDP ports `8765` and `26424` to negotiate firewalls.
- **Relayed Connection**: If direct P2P connection fails (e.g. strict symmetric NATs), communication falls back to a TCP/UDP relay managed by the GameServer on port `9301` or ChannelServer on port `9401`.

### Diagnosing P2P Issues
If players experience lag, desync (hits not registering), or disconnects during multiplayer matches:
1. Check the client logs (`data/log.htm`) for `P2P_CONNECT_FAIL` or STUN negotiation warnings.
2. Verify that client routers/firewalls permit outgoing UDP on ports `8765` and `26424`.

---

## 7. Auditing & Diagnostics Tooling

The workspace includes several Python scripts designed to diagnose client/server alignment and database health. Use these tools to avoid regressions:

* **DB Health Checks**: Run [db-healthcheck.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/db-healthcheck.py) to check database indexes, table integrity, and user/character connectivity state.
* **Offline Verification**: Run [verify-offline.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/verify-offline.py) to parse server configuration syntax and check for binding port conflicts or missing assets.
* **Cash Shop Audits**: Run [audit-cashshop-premium.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/audit-cashshop-premium.py) to trace products, item IDs, and currency requirements.
* **Netcode Captures**: Run [pvp-netcode-capture.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/pvp-netcode-capture.py) or watch logs using [pvp-log-watch.py](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/pvp-log-watch.py) to diagnose client P2P sync and relay latency.

---

## 8. Cube Crashes, Random Item Group Failures & Package Data Corruption

See **[docs/CUBE_INTEGRITY_AND_CRASH_PREVENTION.md](docs/CUBE_INTEGRITY_AND_CRASH_PREVENTION.md)** for full architectural contract documentation and validator specifications.

### Symptoms
Opening a gacha cube or package item causes the game client to abruptly crash to desktop, or GameServer logs record `RandomItem.lua` mapping or package lookup errors.

### Root Cause
1. **Unrouted Package Rewards**: Package items containing rewards with no valid drop group or route path (e.g. legacy items `224380`, `250000640`, `250000650`).
2. **Client-Server Drift**: Server Lua definitions (`RandomItem.lua` / `PackageItemData.lua`) not in sync with `client/data/data036.kom`.
3. **Invalid Data Definitions**: Null group IDs, missing reward IDs, negative drop weights, or recursive package references.

### Resolution & Prevention Commands
1. Run the automatic repair and integrity validator:
   ```powershell
   python scripts\cube-integrity.py --repair
   ```
2. Verify test coverage:
   ```powershell
   python -m unittest tests\test_cube_integrity.py
   ```
3. Restart the server stack and relaunch the client:
   ```powershell
   python scripts\stop-offline.py
   python scripts\start-offline.py
   ```

