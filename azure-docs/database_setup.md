# JoySword Azure Deployment: Database Setup

This document describes the SQL Server configuration, database restore flow,
secret handling, and schema gotchas for the JoySword VM.

## Database engine

The VM runs **Microsoft SQL Server Express** as the named instance
`joysword-server\SQLEXPRESS`.

- **Authentication**: Mixed Mode (SQL + Windows auth).
- **TCP/IP**: enabled and bound to static port `1433`. Reachable only from the
  web App Service integration subnet over the VNet — never exposed publicly.
- **Instance name matters**: all tooling must connect to
  `localhost\SQLEXPRESS`, not bare `localhost` (which targets a non-existent
  default instance).

### VNet SQL ingress for the account API

The web account API provisions game rows over MSSQL, so registration depends on
the App Service reaching the VM at `10.42.1.10:1433`.
For agent triage, use
[../docs/AGENT_WEB_REGISTRATION_PLAYBOOK.md](../docs/AGENT_WEB_REGISTRATION_PLAYBOOK.md).

Required controls:

- App Service VNet integration: subnet `web-integration` (`10.42.2.0/24`) with
  `vnet_route_all_enabled=true`.
- VM NIC NSG: `AllowSqlFromWeb`, source `10.42.2.0/24`, destination TCP `1433`.
- VM Windows Firewall: `JoySword Web SQL`, allow TCP `1433` from
  `10.42.2.0/24`.
- No enabled Windows Firewall block rule for TCP `1433`.

The last point matters: Windows Firewall block rules take precedence over allow
rules. If a legacy `JoySword SQL inbound deny` rule is enabled, registration
will return `503` with an MSSQL connection timeout even though `/api/health`
returns `HTTP 200` and the Azure NSG is correct.

Repair or verify the VM firewall from the repo root:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

### The `sa` password (Key Vault, not source)

The `sa` password is stored **only** in Azure Key Vault
(`js-kv-be6c7ac407`, secret `db-password`). It is not committed to any script.

At deploy time the VM fetches it via its managed identity and:
1. sets/enables the `sa` login, and
2. writes it into `D:\JoySword\Server\Elsword\offline\offline.env` as
   `DB_PASSWORD`, so the launcher and DB tooling agree with the DB.

Setting it manually (e.g. after a KV rotation):

```powershell
# On the VM — pull the secret via managed identity, then apply it
$kt  = Invoke-RestMethod -Headers @{Metadata="true"} `
  -Uri "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://vault.azure.net"
$pw  = (Invoke-RestMethod -Headers @{Authorization="Bearer $($kt.access_token)"} `
  -Uri "https://js-kv-be6c7ac407.vault.azure.net/secrets/db-password?api-version=7.4").value
$env:JOYSWORD_SA_PASSWORD = $pw
D:\JoySword\Server\scripts\enable-mixed-mode.ps1 -FromEnv
```

> **Gotcha (fixed July 2026):** a Mixed-Mode registry change (`LoginMode=2`)
> only takes effect after the `MSSQL$SQLEXPRESS` service is restarted, and the
> `sa` login must be separately `ENABLE`d. `enable-mixed-mode.ps1` now does
> both. The old hardcoded password that used to live in this doc and in
> `enable-mixed-mode.ps1` has been removed.

---

## Database restoration

Four databases are restored from `.bak` files bundled in the workspace payload
(`D:\JoySword\Server\database\*.bak`) into `D:\JoySword\DatabaseBackups\`, then
into the live data directory:

| Database | Contents |
|---|---|
| **Account** | User credentials, authority, login-attempt lockout |
| **Game01** | Characters, inventories, skills, save state |
| **ES_BILLING** | Cash balances, daily allowance, cash-shop billing |
| **Statistics** | Server list, channel list, event/dungeon logs |

Restore is driven by `scripts/restore-databases-native.ps1`, which also:
- seeds the public admin/operator account (`setup-public-users.sql`), and
- alters the `LServerList` verification stored procedures to bypass the legacy
  IP check.

> **Gotcha (fixed July 2026):** the restore script previously connected to
> `-S localhost` (default instance) and every restore failed. It now uses
> `localhost\SQLEXPRESS`.

### Post-restore data policies

The base `.bak` files do not include several data policies the server preflight
requires. Run them (or `install-post-restore.ps1`, which chains all of them):

1. `install-cash-allowance.py` — daily Cash allowance policy
2. `restore-cashshop.py` — normalize cash-shop prices into the economy range
3. `install-creation-fixes.py` — post-character-creation fixes + Gate of
   Darkness event procedures + Elesis class-8 unit-creation patch

`install-post-restore.ps1` historically ran
`install-hotpath-account-creation.ps1` for this. That step is now **folded into
the shipped SQL**: `fix-post-character-creation.sql` (applied by
`install-creation-fixes.py`, step 3 above) defines
`Account.dbo.JoySwordEnsurePublicIdentity` and wires the Account auth/create
procedures to it. On registration and on login, the Account procedures create or
repair the matching `Game01.dbo.users`, `Game01.dbo.VCGAVirtualCash`, and
`ES_BILLING.dbo.EB_Cash` rows. Without it, login can succeed but channel
selection fails with GameServer logging UID 0. The standalone
`install-hotpath-account-creation.ps1` is now superseded (its proc is identical
to what the SQL installs). For the full explanation, the working-vs-broken row
diff, and the `repair-account-init.py` repair tool for already-broken accounts,
see [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md).

`scripts/db-healthcheck.py --allow-tcp-only` gates all of these and must print
`OK: JoySword database healthcheck passed for PUBLIC mode.` before the servers
will start.

---

## Schema gotcha: In-Memory OLTP / memory-optimized filegroup

`fix-post-character-creation.sql` originally contained a memory-optimized
(`MEMORY_OPTIMIZED = ON`) variant of the `RegistrationHistory` table, guarded by
`IF 1 = 0`. On the Azure VM this **still failed** with:

```
Msg 41337 — Cannot create memory optimized tables. The database must have a
MEMORY_OPTIMIZED_FILEGROUP that is online and has at least one container.
```

Cause: SQL Server compiles an entire batch before executing it, so a runtime
`IF 1=0` guard does **not** prevent a compile-time failure on the disabled
`CREATE TABLE`. The Account DB inherited a memory-optimized filegroup from the
old Linux host, but its container path (`/var/opt/mssql/...`) doesn't exist on
Windows, so the filegroup has no online container.

**Fix:** the dead memory-optimized branch was removed entirely. The
`RegistrationHistory` table is now always the standard disk-based table.

---

## Endpoint registration: IPv4 only

`Statistics.dbo.LServerList` and `Statistics.dbo.LChannelList` must advertise
the numeric Azure VM public IP (`52.238.194.187`) for client-facing game
traffic. `sync-server-ip.ps1` rejects CNAME/FQDN inputs because the legacy
client does not reliably resolve hostnames for these sockets.
