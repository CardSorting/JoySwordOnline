# JoySword Azure Deployment: Server Configuration

This document describes the configuration files, environment variables, launcher scripts, and validation steps for running the JoySword Elsword server stack on the Azure VM.

## Configuration Files

The server applications load runtime configurations from Lua scripts and standard Windows DSN configuration files.

### 1. Database DSN Files
The server processes connect to SQL Server using `.dsn` files located in the executable directories. These files are configured to use the SQL Native Client and local connection details:
* **Account_US_SERVICE.dsn**
* **Game01_US_SERVICE.dsn**
* **Game02_US_SERVICE.dsn**
* **log_US_SERVICE.dsn**
* **Billing_US_SERVICE.dsn**

### 2. Server-side Lua Configuration
* **GameServer**: `D:\JoySword\Server\Elsword\GameServer\config_gs_US_SERVICE.lua`
  * Defines DB listings, worker thread counts, billing configs, and resource paths (`SimLayer:AddPath`).
* **CenterServer**: `D:\JoySword\Server\Elsword\CenterServer\config_cn_US_SERVICE.lua`
  * Configures game/dungeon/pvp room maximum capacities and database mappings.

---

## Environment Variables (`offline.env`)

The server stack is controlled by `D:\JoySword\Server\Elsword\offline\offline.env`. Below are the critical configuration blocks defined for the VM:

```ini
# Path to server folder (backslashes required)
ELSWORD_ROOT=D:\JoySword\Server\Elsword

# SQL Server Express settings (named instance localhost\SQLEXPRESS)
DB_HOST=127.0.0.1
DB_PORT=1433
DB_USER=sa
DB_PASSWORD=<injected at deploy time from Key Vault secret 'db-password'>

# Clients connect through the Azure VM public IPv4 endpoint.
CHANNEL_SERVER_IP=52.238.194.187
CHANNEL_SERVER_PORT=9400
```

> `DB_PASSWORD` is written by the deploy flow from Key Vault — it is not stored
> in source. See [database_setup.md](database_setup.md). There are **no**
> `EDGE_*` / tunnel variables; that networking layer was removed.

---

## Startup & Supervision

The server processes are launched and monitored using Python/PowerShell scripts
under `D:\JoySword\Server\scripts\`.

### One-shot VM preparation (`prepare-vm.ps1`)

For a fresh or rebuilt VM, the orchestrator chains every step end-to-end:

```powershell
D:\JoySword\Server\scripts\prepare-vm.ps1 -PublicIp 52.238.194.187
```

It runs: data-disk init → workspace download/extract → database restore → IP
registration (`sync-server-ip.ps1`) → `configure-offline.py` → server launch.
See [deployment_runbook.md](deployment_runbook.md).

### Launching the Server Stack (Headless Mode)

To (re)launch just the stack without console windows:

```powershell
python D:\JoySword\Server\scripts\start-offline.py --headless --supervise
```

### Script Execution Flow
1. **`configure-offline.py`**: Rewrites Lua resource path directories (`SimLayer:AddPath`) dynamically to point to the correct absolute folders in `D:\JoySword\Server\Elsword`.
2. **`apply-pvp-profile.py`**: Loads the active PvP balance tweaks and configurations.
3. **Executables**: Spawns `CenterServer.exe`, `ChannelServer.exe`, `GlobalServer.exe`, `LoginServer.exe`, and `GameServer.exe` in order with startup delays.
4. **Readiness Mode**: In `strict` mode, the launcher validates that each server binds its TCP port on `127.0.0.1` before proceeding to the next process. (Readiness previously bound the WireGuard tunnel address; that path was removed — it now always uses loopback.)

---

## Validation & Troubleshooting

To verify that the server stack is fully active and listening on the VM, execute:

```powershell
# 1. Check if all server processes are running
Get-Process | Where-Object Name -Match "Server"

# 2. Check active TCP/UDP ports
netstat -ano | Select-String "LISTENING"
```
