# JoySword Azure Deployment Strategy

**Purpose:** the single, self-contained entry point for deploying, rebuilding,
or recovering the JoySword game server on Azure. If you (human or agent) read
only one doc, read this one. It states the strategy, then gives copy-paste
commands in the exact order to run them. Deep-dives live in the sibling docs
linked at the end.

> **TL;DR strategy:** One Windows VM (`joysword-server`) runs all five game
> servers + SQL Express. Terraform owns the VM/disks/networking. All game state
> lives on the D: data disk (survives VM rebuilds). Code ships as a tiny
> **overlay** on top of a rarely-changing bulk asset blob, so fixes never lag
> and removed traces can't regress. The web app is independent — never touch it
> during a game-server deploy.

---

## 0. Fixed facts (do not rediscover these)

| Thing | Value |
|---|---|
| Subscription | `a5074069-cc02-4583-b5b2-dd4e4edf30be` |
| Game RG (SHARED — never blanket-destroy) | `joysword-prod-rg` |
| VM | `joysword-server` (Windows Server 2022) |
| Public game IP | `52.238.194.187` |
| Private IP (NIC) | `10.42.1.10` |
| Data disk (game state, `prevent_destroy`) | `joysword-server-data` → `D:\JoySword` |
| Managed image | `joysword-windows-2022-20260701` |
| SQL instance | `localhost\SQLEXPRESS` (named — **never** bare `localhost`) |
| Artifact storage | `jsartbe6c7ac407`, container `releases` |
| Key Vault (secret `db-password`) | `js-kv-be6c7ac407` |
| TF state backend | RG `joysword-tfstate-rg`, SA `jstfbe6c7ac407`, container `tfstate`, key `joysword-production.tfstate` |
| Web app (DO NOT TOUCH) | `joysword-web-be6c7ac407` |
| Terraform | `C:\Users\media\bin\terraform.exe` (`export PATH="$HOME/bin:$PATH"`) |
| Shared-RG neighbors (leave alone) | `galx-*`, `dreambees-*` |

Ports: **public** TCP 9200 (Login) / 9300 (Game) / 9400 (Channel) + UDP
9201/9301/9401; **loopback-only** 9100 (Center) / 9500 (Global); **VNet-only**
1433 (SQL); **operator-IP-only** 3389 (RDP). No public SQL/RDP/WinRM.

---

## 1. Decide what you're doing

```
Is the VM healthy and you only changed CODE (scripts / SQL / config)?
  → §2  Code-only redeploy   (minutes, no Terraform)

Is the VM corrupted / gone, or do you need a fresh box, KEEPING game data?
  → §3  VM rebuild, reuse data disk

Do you want a TRUE clean slate (wipe DBs too)?
  → §4  Clean-slate rebuild

Something's broken and you need to diagnose?
  → §6  Verify & troubleshoot  (+ troubleshooting_log.md)
```

All VM-side commands run via `az vm run-command invoke` (no filesystem access to
the VM from here) **or** RDP. The run-command host uses a **legacy PowerShell**:
no `Get-Content -Raw`; use `[IO.File]::ReadAllText/WriteAllText`. Each invoke has
~35 s latency — run long/polling calls in a background terminal to dodge the
60 s timeout.

---

## 2. Code-only redeploy (the common case)

You edited scripts, SQL, or env templates. **Do not** rebuild the VM or the
6.7 GB workspace. Ship a code overlay:

```bash
cd /c/Users/media/Downloads/JoySwordOffline
export PATH="$HOME/bin:$PATH"

# 1. Build + trace-guard the overlay (fails if any WireGuard/edge trace present)
python scripts/build-code-overlay.py

# 2. Upload it
az storage blob upload --account-name jsartbe6c7ac407 --auth-mode login \
  --container-name releases --name joysword-code-overlay.zip \
  --file build/joysword-code-overlay.zip --overwrite

# 3. Apply on the VM (downloads via managed identity, extracts over D:\JoySword\Server)
az vm run-command invoke -g joysword-prod-rg -n joysword-server \
  --command-id RunPowerShellScript \
  --scripts '& D:\JoySword\Server\scripts\apply-code-overlay.ps1 2>&1 | Out-String' \
  --query "value[0].message" -o tsv

# 4. Restart the stack to pick up new code
az vm run-command invoke -g joysword-prod-rg -n joysword-server \
  --command-id RunPowerShellScript \
  --scripts 'Set-Location D:\JoySword\Server; & python scripts\stop-offline.py; & python scripts\start-offline.py --headless --supervise --allow-existing-ports 2>&1 | Out-String' \
  --query "value[0].message" -o tsv
```

Then verify (§6). This is seconds of transfer, self-policing against trace
regressions, and never rebuilds infra.

---

## 3. VM rebuild, reuse the data disk

The VM is corrupted but the game databases on D: are fine. Rebuild the box and
reattach the existing data disk.

```bash
cd /c/Users/media/Downloads/JoySwordOffline/infra/azure
export PATH="$HOME/bin:$PATH"

# 0. (Optional but recommended) snapshot the data disk first
az snapshot create -g joysword-prod-rg -n joysword-data-snap-$(date +%Y%m%d-%H%M%S) \
  --source "$(az disk show -g joysword-prod-rg -n joysword-server-data --query id -o tsv)" \
  --sku Standard_LRS --tags application=joysword purpose=pre-rebuild

# 1. Delete ONLY the VM + its OS disk (data disk detaches, survives)
az vm delete -g joysword-prod-rg -n joysword-server --yes
az disk delete -g joysword-prod-rg -n joysword-server-os --yes

# 2. Rebuild via Terraform (targeted — the RG is shared!)
terraform init -backend-config=backend.hcl
terraform apply -var-file=terraform.tfvars \
  -target=azurerm_windows_virtual_machine.server \
  -target=azurerm_virtual_machine_data_disk_attachment.server_data \
  -target=azurerm_role_assignment.server_blob_reader
```

Then run the VM prep with data-disk init + restore **skipped** (data already
present), see §5.

> **Gotcha:** if `terraform apply` is interrupted mid-create (the 60 s timeout
> can kill it after Azure made the VM but before state was written), you'll get
> a stale state lock + an untracked VM. Recover:
> `terraform force-unlock <ID>` (verify no live tf process first), then
> `terraform import azurerm_windows_virtual_machine.server <vm-resource-id>`,
> then re-apply.

---

## 4. Clean-slate rebuild (wipe everything, restore DBs from backup)

Same as §3 but also delete the data disk + snapshots, and let Terraform recreate
an **empty** data disk. Then run the FULL prep (§5) including restore.

```bash
# Destroy game state (IRREVERSIBLE — confirm this is what you want)
az snapshot delete -g joysword-prod-rg -n <snapshot-name>       # if any
az disk delete -g joysword-prod-rg -n joysword-server-data --yes
az vm delete   -g joysword-prod-rg -n joysword-server --yes
az disk delete -g joysword-prod-rg -n joysword-server-os --yes

cd infra/azure && terraform init -backend-config=backend.hcl
terraform apply -var-file=terraform.tfvars \
  -target=azurerm_managed_disk.server_data \
  -target=azurerm_windows_virtual_machine.server \
  -target=azurerm_virtual_machine_data_disk_attachment.server_data \
  -target=azurerm_role_assignment.server_blob_reader
```

> **Critical Terraform note:** `vm_patch_mode` **must** stay `Manual` (the
> default). The custom image is not Guest-Patch-capable; `AutomaticByPlatform`
> makes VM creation fail. Never blanket `terraform destroy` — the RG is shared.

---

## 5. Prepare the VM (bring a fresh/rebuilt box online)

After §3 or §4, grant identity access (if not already), then run the
orchestrator. Everything is one script.

```bash
export PATH="$HOME/bin:$PATH"

# 1. Grant the VM managed identity (needed to pull blobs + KV secret). Skip if TF already applied server_blob_reader and KV role.
PID=$(az vm show -g joysword-prod-rg -n joysword-server --query identity.principalId -o tsv)
az role assignment create --assignee-object-id "$PID" --assignee-principal-type ServicePrincipal \
  --role "Storage Blob Data Reader" \
  --scope "$(az storage account show -g joysword-prod-rg -n jsartbe6c7ac407 --query id -o tsv)"
az role assignment create --assignee-object-id "$PID" --assignee-principal-type ServicePrincipal \
  --role "Key Vault Secrets User" \
  --scope "$(az keyvault show -n js-kv-be6c7ac407 --query id -o tsv)"
# Wait ~1-2 min for RBAC propagation before the next step.
```

Then launch the orchestrator as an **async managed run-command** (it takes many
minutes — the workspace download alone is 6.7 GB):

```bash
az vm run-command create -g joysword-prod-rg --vm-name joysword-server --name jsPrepare \
  --async-execution true --timeout-in-seconds 3600 \
  --script 'D:\JoySword\Server\scripts\prepare-vm.ps1 -PublicIp 52.238.194.187 *>&1 | Out-File C:\joysword-bootstrap\prepare.log -Encoding utf8'
```

> **First-boot bootstrap chicken-and-egg:** on a brand-new VM the scripts are
> not on D: yet (the image predates them). `prepare-vm.ps1` itself must be
> pushed first. The reliable push channel is gzip+base64 chunks through
> run-command → `[IO.File]::WriteAllBytes` (chunks ≤ 6000 chars to stay under
> the command-line limit). Once the workspace + code overlay land, everything
> self-updates. See deployment_runbook.md Part 2 for the push helper pattern.

`prepare-vm.ps1` stages (each has a `-Skip*` flag for partial re-runs):

| # | Stage | Skip flag | Notes |
|---|---|---|---|
| 1 | Init data disk (format D:) | `-SkipDataDisk` | skip when reusing data disk (§3) |
| 2 | Download + extract bulk workspace | `-SkipDownload` | 6.7 GB; skip when reusing data disk |
| 3 | Apply code overlay | `-SkipOverlay` | always current code over the bulk blob |
| 4 | Restore databases | `-SkipRestore` | skip when reusing data disk (§3) |
| 5 | Register server IP | — | `sync-server-ip.ps1 -PublicIp …` |
| 6 | Apply server config | — | `configure-offline.py` |
| 7 | Launch stack | `-NoStart` | `start-offline.py --headless --supervise` |

Poll progress: read `C:\joysword-bootstrap\prepare.log`; check run-command
`instanceView.executionState`.

### Post-restore data policies (clean-slate only)

The base `.bak` files lack several policies the server preflight requires. If
`start-offline.py` fails preflight, run the full chain (idempotent):

```bash
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript \
  --scripts '& D:\JoySword\Server\scripts\install-post-restore.ps1 *>&1 | Out-String' \
  --query "value[0].message" -o tsv
```

This runs: `install-creation-fixes.py` (applies `fix-post-character-creation.sql`,
which now also installs the canonical account initializer — see
[../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md)),
`install-hotpath-account-creation.ps1` (redundant with the SQL now; installs the
same proc), `install-cash-allowance.py`, cash-deduction + credit-sync SQL,
`restore-iceburner-sets.py`, `restore-cashshop.py`, and a final
`db-healthcheck.py`.

---

## 6. Verify & troubleshoot

```bash
# DB healthcheck (authoritative go/no-go gate)
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript \
  --scripts 'Set-Location D:\JoySword\Server; & python scripts\db-healthcheck.py --allow-tcp-only 2>&1 | Out-String' \
  --query "value[0].message" -o tsv
# expect: OK: JoySword database healthcheck passed for PUBLIC mode.

# All five servers listening?
az vm run-command invoke -g joysword-prod-rg -n joysword-server --command-id RunPowerShellScript \
  --scripts '@(9100,9200,9300,9400,9500)|%{"" + $_ + "=" + [bool](Get-NetTCPConnection -LocalPort $_ -State Listen -EA SilentlyContinue)}' \
  --query "value[0].message" -o tsv
# expect: 9100=True 9200=True 9300=True 9400=True 9500=True
```

Known failure signatures and fixes (full list in
[troubleshooting_log.md](troubleshooting_log.md)):

| Symptom | Cause | Fix |
|---|---|---|
| `Waiting for CenterServer on 10.77.0.2` | stale `start-offline.py` from old bulk blob | apply code overlay (§2) |
| `Login failed for user 'sa'` | Mixed-Mode needs SQL restart; sa disabled; combined ALTER batch dropped ENABLE | `enable-mixed-mode.ps1 -FromEnv` + restart `MSSQL$SQLEXPRESS` |
| `/api/health` is 200 but web registration returns 503 with MSSQL timeout to `10.42.1.10:1433` | VM Windows Firewall has an enabled TCP 1433 block rule, or lacks the scoped web-subnet allow | run `scripts\ensure-web-sql-firewall.ps1`; verify NIC NSG `AllowSqlFromWeb` still allows `10.42.2.0/24 -> 1433` |
| restore produces 0 DBs | connected to bare `localhost` not `localhost\SQLEXPRESS` | fixed in `restore-databases-native.ps1` |
| `Msg 41337 memory optimized` | dead `IF 1=0` memory-opt table breaks batch compile | fixed in `fix-post-character-creation.sql` |
| `Get-Content -Raw` param error | run-command legacy PS host | use `[IO.File]::ReadAllText` |
| VM create rejected | `patch_mode=AutomaticByPlatform` on custom image | `vm_patch_mode=Manual` |
| Login works, channel entry fails, GameServer logs `GetUID() : 0` | client-created account missing legacy `Game01` identity rows | self-heals on next login; bulk-fix with `scripts\repair-account-init.py --apply` (see [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md)) |

---

## 7. Golden rules

1. **The RG is shared.** Target every `terraform`/`az` op at named JoySword
   resources. Never blanket `destroy`.
2. **Never touch the web app** (`joysword-web-be6c7ac407`) during a game deploy.
3. **Secrets live in Key Vault only.** `sa` password = KV `db-password`,
   injected into `offline.env` at deploy time. Never bake it into source.
4. **Code changes ship as an overlay** (§2), not by rebuilding the 6.7 GB blob.
   The overlay's trace guard is what keeps WireGuard/edge traces from returning.
5. **Data lives on D:** (`prevent_destroy`). A VM rebuild keeps it unless you
   explicitly delete the disk.
6. **Long ops run async** (managed run-command or background terminal) — the
   60 s invoke timeout will otherwise cut you off mid-operation.

---

## Related docs

- [deployment_overview.md](deployment_overview.md) — architecture, resource inventory, port map
- [public_release_strategy.md](public_release_strategy.md) — packaging a sanitized public .rar (exclude/scrub/gate)
- [deployment_runbook.md](deployment_runbook.md) — detailed procedure + the July 2026 rebuild log & bug fixes
- [database_setup.md](database_setup.md) — SQL config, restore, secrets, schema gotchas
- [server_configuration.md](server_configuration.md) — env, launcher, startup flow
- [client_patching.md](client_patching.md) — pointing the client at the server
- [channel_connection_fix.md](channel_connection_fix.md) — legacy hardcoded-IP loopback notes
- [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md) — client account init: `GetUID() : 0`, the row set, repair tool
- [troubleshooting_log.md](troubleshooting_log.md) — full diagnostics history
