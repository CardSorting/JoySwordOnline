# JoySword Azure Deployment: Runbook & Rebuild Log

This document is the operational runbook for deploying (or rebuilding) the
JoySword game-server VM on Azure, plus a record of the **July 2026 clean-slate
rebuild** and the bugs fixed during it.

---

## Part 1 — Deploy / rebuild procedure

Prerequisites: `az` CLI logged in to the JoySword subscription, `terraform`
available, operator has Key Vault + storage RBAC.

### 1. Provision / recreate the VM (Terraform)

The VM, OS disk, data disk, and disk attachment are Terraform-managed. Because
the resource group is shared with other apps, always target the JoySword
compute resources explicitly:

```bash
cd infra/azure
terraform init -backend-config=backend.hcl        # see backend.hcl.example
terraform apply -var-file=terraform.tfvars \
  -target=azurerm_managed_disk.server_data \
  -target=azurerm_windows_virtual_machine.server \
  -target=azurerm_virtual_machine_data_disk_attachment.server_data \
  -target=azurerm_role_assignment.server_blob_reader
```

Notes:
- `vm_patch_mode` defaults to **`Manual`** — required for the custom Packer
  image. `AutomaticByPlatform` only works on Guest-Patch-compatible images and
  will fail VM creation otherwise.
- The data disk carries `prevent_destroy`; a rebuild keeps the game databases
  unless you explicitly delete the disk.

### 2. Grant the VM identity access

The VM's system-assigned identity needs:
- **Storage Blob Data Reader** on `jsartbe6c7ac407` (to download the workspace)
- **Key Vault Secrets User** on `js-kv-be6c7ac407` (to self-fetch `db-password`)

These are Terraform-managed (`server_blob_reader`) / can be granted with
`az role assignment create`. Allow ~1–2 min for RBAC propagation.

### 3. Prepare the VM

All VM-side steps run through `az vm run-command invoke` (or RDP). The
orchestrator chains them:

```powershell
D:\JoySword\Server\scripts\prepare-vm.ps1 -PublicIp 52.238.194.187
```

`prepare-vm.ps1` runs, in order:
1. `initialize-data-disk.ps1` — format D:, create the folder layout
2. `download-and-extract-workspace.ps1` — pull + extract the bulk workspace payload
3. `apply-code-overlay.ps1` — overlay the **current** code (scripts / SQL / env
   templates) on top of the bulk workspace (see "Code overlay" below)
4. `restore-databases-native.ps1` — restore the four databases
5. `sync-server-ip.ps1` — register the public/private IP (DB + `offline.env`)
6. `configure-offline.py` — apply runtime config + search paths
7. `start-offline.py --headless --supervise` — launch the stack

### 4. Verify

```powershell
python D:\JoySword\Server\scripts\db-healthcheck.py --allow-tcp-only
# expect: "OK: JoySword database healthcheck passed for PUBLIC mode."
netstat -ano | findstr LISTENING | findstr "9100 9200 9300 9400 9500"
```

---

## Part 2 — July 2026 clean-slate rebuild (what was done)

The previous VM was corrupted and removed. A fresh VM was rebuilt from the
managed image with **empty databases restored from backup**, while the web app
was left running untouched. The end state: all five servers live and listening,
four databases ONLINE, IP registered directly to `52.238.194.187`.

### Steps executed

1. Snapshotted, then (per clean-slate decision) deleted the old data disk;
   removed the corrupted VM + OS disk.
2. `terraform apply` rebuilt the VM + a fresh empty data disk, reattached the
   existing NIC/public IP.
3. Granted the VM identity Storage Blob Data Reader + Key Vault Secrets User.
4. Formatted D:, downloaded + extracted the 6.7 GB workspace payload.
5. Set the SQL `sa` password from Key Vault, restored the four databases.
6. Installed post-restore data policies (cash allowance, cash-shop
   normalization, post-character-creation fixes).
7. Registered the server IP and launched the stack.

### Bugs found and fixed during the rebuild

These were **repository fixes**, not one-off VM patches — they are committed so
future deploys don't hit them again:

| File | Bug | Fix |
|---|---|---|
| `scripts/download-and-extract-workspace.ps1` | `Get-Content -Raw` is unavailable in the Azure run-command PowerShell host, so config path-patching crashed | Use `[IO.File]::ReadAllText/WriteAllText`; scope the sweep to config dirs instead of the whole 6 GB tree |
| `scripts/restore-databases-native.ps1` | Connected to `-S localhost` (default instance) instead of the named `localhost\SQLEXPRESS`; every restore failed | Fixed all four sqlcmd calls; fixed a cosmetic `$_.Name` interpolation bug |
| `database/fix-post-character-creation.sql` | A dead `IF 1=0` memory-optimized `CREATE TABLE` still broke **batch compilation** (Msg 41337) because SQL compiles the whole batch before the runtime guard | Removed the dead memory-optimized branch; the disk-based table is the only path |
| `scripts/enable-mixed-mode.ps1` | Combined `PASSWORD=… ; ENABLE;` batch silently dropped the ENABLE; a Mixed-Mode change also needs a service restart | Set the password and enable in separate statements; restart `MSSQL$SQLEXPRESS` |
| `scripts/start-offline.py` (deploy payload) | The workspace zip **predated the WireGuard cleanup**, so the VM ran a stale `start-offline.py` that bound readiness checks to the dead tunnel address `10.77.0.2` | Deployed the cleaned `start-offline.py`; readiness now binds `127.0.0.1` |

### Root-cause lesson & the fix (implemented)

The single biggest issue was that **the bulk deploy payload
(`releases/joysword-workspace.zip`, ~6.7 GB) predates the WireGuard/edge-tunnel
cleanup**. Overlaying only the `.ps1` scripts by hand wasn't enough — the stale
`start-offline.py` re-introduced the `10.77.0.2` tunnel address. This was the
mechanism by which "removed" traces kept reappearing on deploy.

**Solution shipped:** code is now decoupled from the bulk asset blob via a small
**code overlay**:

- `scripts/build-code-overlay.py` packages `scripts/`, `database/*.sql`, and the
  `Elsword/offline` env templates into `build/joysword-code-overlay.zip`
  (~520 KiB). It runs a **forbidden-trace guard** and fails the build if any
  WireGuard/edge trace (`10.77.0.x`, `EDGE_TUNNEL_ADDRESS`, `EDGE_UDP_FORWARDER`,
  `start_udp_edge_forwarder`, `wg0`, `:51820`) is present.
- The overlay is uploaded to the `releases` container as
  `joysword-code-overlay.zip`.
- `scripts/apply-code-overlay.ps1` (invoked by `prepare-vm.ps1` right after the
  workspace extract) downloads it via the VM managed identity and extracts it
  over `D:\JoySword\Server`.

Net effect: the VM always runs current code regardless of the bulk blob's age,
and a regression literally cannot be packaged. The multi-GB bulk workspace only
needs rebuilding when game assets/binaries/`.bak` files change — not on code
changes.

**Release step for future code changes:**

```bash
python scripts/build-code-overlay.py          # builds + trace-guards
az storage blob upload --account-name jsartbe6c7ac407 --auth-mode login \
  --container-name releases --name joysword-code-overlay.zip \
  --file build/joysword-code-overlay.zip --overwrite
```

---

## Part 3 — SQL `sa` password (no longer baked in source)

The `sa` password is **not** stored in scripts. It lives only in Key Vault
(`db-password`) and is written into the VM's `offline.env` at deploy time.
See [database_setup.md](database_setup.md).

---

## Part 4 — Client account initialization fix (July 2026)

**Symptom:** accounts registered through the game client could log in but could
not enter a channel; the GameServer logged `GetUID() : 0` /
`ON_ELG_REGISTER_USER_ACK`. Hand-seeded accounts worked.

**Root cause:** the shipped client-registration procedures
(`mup_create_user` / `_nx_user` / `_global_user` in
`fix-post-character-creation.sql`) created only the `Account` + `EB_Cash` rows
and skipped the legacy `Game01` identity rows (`Game01.dbo.users`,
`Game01.dbo.VCGAVirtualCash`). The GameServer resolves the player from
`Game01.dbo.users`, so it got UID 0. The complete initializer existed only in
`install-hotpath-account-creation.ps1`, which was **not in the release payload**
— so the fix never reached the VM, and `db-healthcheck.py` (which requires it)
could not pass on a ship-only deploy.

**Fix shipped** (in `fix-post-character-creation.sql` §11, applied by
`install-creation-fixes.py` which is already in `RELEASE_SCRIPTS` + the code
overlay):
- `Account.dbo.JoySwordEnsurePublicIdentity` — canonical idempotent
  creator/repairer of the full row set.
- The three create procs delegate to it (hardening preserved, result-set shapes
  unchanged); `mup_auth_user` calls it on successful login to self-heal
  pre-existing broken accounts.
- Virtual cash is keyed off the resolved `Game01.dbo.users.LoginUID` (FK-correct
  for legacy accounts whose `LoginUID != MUser.UserUID`), not blindly off
  `UserUID`.
- `scripts/repair-account-init.py` — dry-run/`--apply` bulk repair tool for
  existing broken accounts; added to `RELEASE_SCRIPTS`.

Because the fix now lives in the shipped SQL and the code overlay, it survives
full redeploys. The standalone `install-hotpath-account-creation.ps1` is
superseded.

Full explanation, working-vs-broken diff, verification steps, and the FK/LoginUID
subtlety: [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md).
