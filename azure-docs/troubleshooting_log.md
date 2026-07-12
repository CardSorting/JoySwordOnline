# JoySword Azure Deployment: Troubleshooting & Investigation Log

Diagnostics and resolutions from deploying JoySword to the Azure VM. Newest
findings first.

---

## July 2026 - web registration returns 503 during MSSQL provisioning

- **Symptom**: `/api/health` returns `HTTP 200` and PostgreSQL migrations are
  applied, but `POST /api/auth/register` returns `503`. App logs show the MSSQL
  provisioning path timing out while connecting to `10.42.1.10:1433`.
- **Cause**: Azure networking was correct (`vnet_route_all_enabled=true`, App
  Service integrated with `web-integration` `10.42.2.0/24`, and NIC NSG rule
  `AllowSqlFromWeb` allowed `10.42.2.0/24 -> TCP 1433`). The VM Windows
  Firewall still had an enabled `JoySword SQL inbound deny` rule for TCP 1433
  from `Any`. Windows Firewall block rules take precedence over allow rules, so
  the scoped `JoySword Web SQL` allow rule could not take effect.
- **Fix**: run the idempotent helper from the repo root:

  ```powershell
  az vm run-command invoke -g joysword-prod-rg -n joysword-server `
    --command-id RunPowerShellScript `
    --scripts "@scripts\ensure-web-sql-firewall.ps1" `
    --query "value[0].message" -o tsv
  ```

  The helper disables `JoySword SQL inbound deny` if present and enforces
  `JoySword Web SQL` as `Allow TCP 1433` from `10.42.2.0/24`. SQL remains
  non-public because the VM NIC NSG still only allows port 1433 from the web
  integration subnet.
- **Verification**: Kudu/App Service TCP probe changed from `TCP_TIMEOUT` to
  `TCP_OK`; a fresh live registration returned `HTTP 201` with
  `legacyUserId=cod_bc1e6f` / `legacyUserUid=10041`; MSSQL row checks returned
  one row each in `Account.dbo.MUser`, `Account.dbo.MUserAuthority`,
  `Account.dbo.TUser`, `ES_BILLING.dbo.EB_Cash`, `Game01.dbo.users`, and
  `Game01.dbo.VCGAVirtualCash`.

---

## July 2026 — client-registered accounts can't enter a channel (`GetUID() : 0`)

- **Symptom**: an account registered through the game client authenticates and
  reaches the channel step, then the GameServer drops it. GameServer log shows
  `ON_ELG_REGISTER_USER_ACK` / `GetUID() : 0` for that username. Hand-seeded
  accounts work; client-created ones don't.
- **Cause**: the shipped client-registration procedures (`mup_create_user` /
  `mup_create_nx_user` / `mup_create_global_user` in
  `fix-post-character-creation.sql`) created only the `Account.dbo.MUser`,
  `MUserAuthority`, and `ES_BILLING.dbo.EB_Cash` rows. They **skipped the legacy
  `Game01` identity rows** (`Game01.dbo.users`, `Game01.dbo.VCGAVirtualCash`).
  The GameServer resolves the player from `Game01.dbo.users`, so it got UID 0.
  The complete initializer (`Account.dbo.JoySwordEnsurePublicIdentity`) existed
  only in `install-hotpath-account-creation.ps1`, which was never in the release
  payload — so it never reached the VM, and `db-healthcheck.py` (which requires
  it) could not pass on a ship-only deploy.
- **Fix**: folded the canonical initializer into the shipped SQL
  (`fix-post-character-creation.sql` §11). The three create procs now delegate to
  `JoySwordEnsurePublicIdentity` (hardening preserved, result-set shapes
  unchanged); `mup_auth_user` calls it on successful login to self-heal older
  broken accounts. Virtual cash is keyed off the resolved
  `Game01.dbo.users.LoginUID` (FK-correct for legacy accounts whose
  `LoginUID != MUser.UserUID`), not blindly off `UserUID`. Added
  `scripts/repair-account-init.py` (dry-run/`--apply`) for bulk backfill.
- **Deployed & verified** on the live VM: healthcheck green; a fresh
  client-created account came out with the full row set matching a known-good
  account; idempotent re-create returned `-1` with no duplicates; three
  pre-existing broken accounts repaired to "0 incomplete".
- **Full writeup**: [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md).

---

## July 2026 clean-slate rebuild — issues & resolutions

Encountered (in order) while rebuilding the VM from a fresh image with empty
databases. All fixes are committed to the repo; see
[deployment_runbook.md](deployment_runbook.md) Part 2 for the summary table.

### 1. VM creation rejected the patch mode
- **Symptom**: `terraform apply` → `InvalidParameter: The selected VM image is
  not supported for VM Guest patch operations`.
- **Cause**: `patch_mode = "AutomaticByPlatform"` requires a Guest-Patch-capable
  image; the custom Packer image isn't one.
- **Fix**: introduced `vm_patch_mode` variable, default `Manual` (correct for
  custom images).

### 2. Workspace path-patching crashed
- **Symptom**: `download-and-extract-workspace.ps1` failed at
  `Get-Content -Raw` (`A parameter cannot be found that matches parameter name
  'Raw'`).
- **Cause**: the Azure run-command PowerShell host lacks `-Raw`.
- **Fix**: switched to `[IO.File]::ReadAllText/WriteAllText`, scoped the sweep
  to config directories.

### 3. Database restore failed
- **Symptom**: `RESTORE` produced no databases; restore script errored.
- **Cause**: connected to `-S localhost` (default instance) instead of the
  named instance `localhost\SQLEXPRESS`.
- **Fix**: all sqlcmd calls now target `localhost\SQLEXPRESS`.

### 4. `sa` login kept failing
- **Symptom**: `Login failed for user 'sa'` despite setting the password.
- **Causes**: (a) Mixed-Mode registry change needs a SQL service restart to
  apply; (b) the `sa` login was disabled; (c) a combined
  `ALTER LOGIN … PASSWORD=…; ENABLE;` batch silently dropped the ENABLE.
- **Fix**: restart `MSSQL$SQLEXPRESS`, run the password-set and `ENABLE` as
  separate statements. `enable-mixed-mode.ps1` updated accordingly.

### 5. Post-character-creation fixes failed (Msg 41337)
- **Symptom**: `Cannot create memory optimized tables … must have a
  MEMORY_OPTIMIZED_FILEGROUP that is online and has at least one container.`
- **Cause**: a dead `IF 1=0` memory-optimized `CREATE TABLE` in
  `fix-post-character-creation.sql` still fails at **batch compile time** (the
  guard is runtime-only). The inherited memory-optimized filegroup has no
  online container on Windows.
- **Fix**: removed the dead branch; `RegistrationHistory` is always disk-based.

### 6. Servers waited on the dead tunnel address `10.77.0.2`
- **Symptom**: `start-offline.py` readiness check: `Waiting for CenterServer on
  10.77.0.2:9100 …` → timeout.
- **Cause**: the workspace payload predates the WireGuard cleanup, so the VM
  ran a stale `start-offline.py` still carrying `EDGE_TUNNEL_ADDRESS` /
  `10.77.0.2`.
- **Fix**: deployed the cleaned `start-offline.py`; readiness binds
  `127.0.0.1`. **Root lesson:** rebuild the deploy blob from the cleaned repo
  (see runbook Part 2).

### Final verified state
All five servers accepting connections (9100/9200/9300/9400/9500); four
databases ONLINE; `db-healthcheck.py` → `OK … PUBLIC mode`; IP registered to
`52.238.194.187`; web app Running throughout.

---

## Reference: legacy hardcoded coordination IP

Historical investigation, retained for context. The compiled
`GameServer.exe` / `CenterServer.exe` binaries contain a hardcoded coordination
IP for internal CenterServer traffic on port `9100`. See
[channel_connection_fix.md](channel_connection_fix.md) for the loopback-alias
workaround and how `Start-Server-Automatic.ps1` handles it.

Standard diagnostics on the VM:

```powershell
Get-Process -Name "*Server*"
netstat -ano | Select-String "LISTENING"
python D:\JoySword\Server\scripts\db-healthcheck.py --allow-tcp-only
```

### Clean checks performed (all passed)
- Server Lua configs / `offline.env` / launcher scripts — no stale external IPs.
- client-facing game endpoints use the numeric Azure public IP `52.238.194.187`.
- `hosts` file — no overrides.
- `sys.servers` — only `joysword-server\SQLEXPRESS`, no external linked servers.

---

## Reference: stale channel/server IP records

If the client can't reach a channel after a redeploy, confirm the DB advertises
the right endpoint (the modern path is `sync-server-ip.ps1`, which sets these):

```sql
SELECT UID, [Name], IP, PrivateIP, PublicIP, Port1 FROM [Statistics].dbo.LServerList;
SELECT UID, ChannelName, IP, Port1, Port2, OnOff FROM [Statistics].dbo.LChannelList WHERE OnOff = 1;
```

Both should reflect `52.238.194.187`, not any hostname or decommissioned
address.
