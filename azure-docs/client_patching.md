# JoySword Azure Deployment: Client Connection Patching

This document explains how to point the JoySword game client at the Azure VM
server stack via the public IPv4 address `52.238.194.187`. The client connects
**directly** to the VM. Do not use CNAME/FQDN masking for game traffic; the
legacy client must be patched to a numeric IP.

## Client connection mechanics

The game client loads its connection endpoint from two places, which must
agree:
1. **Loose config files** in `Elsword\ClientScript\Major\` (`Config*.lua`).
2. **Packed archive** `data\data036.kom`.

---

## Patching scripts

### `local_connect.py`

Points the client configuration at a numeric IP:

```powershell
python scripts\local_connect.py 52.238.194.187
```

- Rewrites loose `Config*.lua` files containing `AddChannelServerIP_LUA` to the
  target IP on port `9400`.
- Patches the compiled IP constants inside `data\data036.kom` and repacks the
  archive.

Defaults to `CHANNEL_SERVER_IP` from `offline.env` (kept in sync by
`sync-server-ip.ps1`), then `127.0.0.1`.

### `azure_connect.py`

Resolves the endpoint dynamically from Terraform state and patches the client:

```powershell
python scripts\azure_connect.py
```

It reads the `server_public_ip` Terraform output (the VM's own public IP — the
client connects directly to it) and applies the same loose + packed patching as
`local_connect.py`.

---

## Repacking client archives (`data036.kom`)

To bundle edited loose client files (fonts, Elesis UI, etc.) into the archive:

```powershell
python scripts\patch-client-kom.py --elesis-create-ui
```

---

## Launching the client

1. Confirm the VM server stack is up (all five ports listening) and the DB
   healthcheck passes.
2. From the client root:
   ```powershell
   Start-Client-Windows.bat
   ```

The server side advertises `52.238.194.187` (via `sync-server-ip.ps1` updating
`LServerList`/`LChannelList`), so a client patched to the same IP reaches
Login, Channel, and Game on the single VM.
