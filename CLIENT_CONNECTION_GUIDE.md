# JoySword Client Connection & Configuration Guide

This guide documents the client-side configuration, local DNS/IP patching, asset repacking, and execution flow used to launch and connect the JoySword client to the game servers.

### Documentation Index
* **[Server Deployment Guide](deployment_guide.md)**
* **[Client Connection Guide](client_connection_guide.md)**
* **[Troubleshooting Guide](troubleshooting_guide.md)**

---

## Table of Contents
1. [Client Connection Overview](#1-client-connection-overview)
2. [Connection Staging (`offline.env`)](#2-connection-staging-offlineenv)
3. [Client Patching Mechanics (`local_connect.py`)](#3-client-patching-mechanics-local_connectpy)
4. [Display Options & Graphics Settings](#4-display-options--graphics-settings)
5. [Client Launch Sequence](#5-client-launch-sequence)
6. [Troubleshooting Client Launches](#6-troubleshooting-client-launches)

---

## 1. Client Connection Overview

The JoySword client (`x2.exe`) connects to the game servers using a predefined set of IP addresses and ports compiled inside its assets. To redirect the client to the offline Azure VM (or local hosting VM) without modifying the main source code, the loader patches the client's internal configuration files and packages them back into the game's archived asset packages (`.kom` files).

---

## 2. Connection Staging (`offline.env`)

The target VM IP and port offsets are defined in the environment file:
* **File Location**: `Elsword\offline\offline.env`
* **Primary Key**: `CHANNEL_SERVER_IP` (should match the public IP of the Azure VM or `127.0.0.1` if running locally).

Example Configuration:
```env
CHANNEL_SERVER_IP=20.232.148.92
CHANNEL_SERVER_PORT=9400
GAME_SERVER_PORT=9300
```

---

## 3. Client Patching Mechanics (`local_connect.py`)

The python script [local_connect.py](scripts/local_connect.py) is executed dynamically during startup to patch client parameters:

1. **Environment Read**: Parses `offline.env` to identify the configured target IP.
2. **Loose File Patching**: If loose config scripts (`Config*.lua`) exist in the scripts folder, the script searches for `AddChannelServerIP_LUA` and updates their constants.
3. **KOM Archive Patching**: Patches the compiled IP constants directly inside the main client configuration archive:
   - **Target Archive**: `data\data036.kom`
4. **KOM Repacking**: Calls [patch-client-kom.py](scripts/patch-client-kom.py) with the option `--elesis-create-ui` to repack modified configurations, UI layouts, and font resources cleanly back into the game package.

To run a manual client patch pass in the workspace:
```bash
python scripts/local_connect.py
```

---

## 4. Display Options & Graphics Settings

Game performance and window parameters are controlled by `data\GameOptions.lua`. When launching via the loader, the launcher script automatically reads parameters and patches `GameOptions.lua` to enforce requested visual options:

* **Resolution**: Replaces `RESOLUTION_X` and `RESOLUTION_Y` parameters to set the size of the game window. Common sizes include `1280x720` and `1920x1080`.
* **Fullscreen**: Replaces `FULLSCREEN` option to either `TRUE` or `FALSE` to control window scaling.

These options can be passed to [launch-client.ps1](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/launch-client.ps1) dynamically as arguments.

---

## 5. Client Launch Sequence

The client is launched using [Start-Client-Windows.bat](file:///c:/Users/media/Downloads/JoySwordOffline/Start-Client-Windows.bat) which triggers the underlying PowerShell loader script `Start-Client-Windows.ps1`:

1. **Security Unblocking**: Runs `Unblock-File` recursively across client executable directories to prevent Windows SmartScreen alerts or "Open File - Security Warning" dialogs.
2. **Auto-Patching**: Executes `local_connect.py --skip-repack` to dynamically update target IPs.
3. **UAC Bypass**: Establishes the Windows compatibility layer environment variable:
   ```powershell
   $env:__COMPAT_LAYER = "RunAsInvoker"
   ```
   This runs the game executable with the user's standard invoker privileges, bypassing the Windows User Account Control (UAC) administrative elevation prompt.
4. **Execution**: Spawns `x2.exe` in the `data\` directory, passing the security token argument:
   `x2.exe pxk19slammsu286nfha02kpqnf729ck`

---

## 6. Troubleshooting Client Launches
* **SmartScreen Block**: If the client fails to open, manually run:
  ```powershell
  Get-ChildItem -Path .\data -Recurse | Unblock-File
  ```
* **Resolution Settings**: Display settings (resolution, fullscreen mode) can be customized directly inside [launch-client.ps1](file:///c:/Users/media/Downloads/JoySwordOffline/scripts/launch-client.ps1) or repaired using:
  ```powershell
  PowerShell.exe -File .\scripts\launch-client.ps1 -RepairOnly -Resolution "1920x1080" -Fullscreen "false"
  ```
