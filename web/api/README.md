# JoySword Account API

Node service that serves the JoySword SPA and powers **web-based account registration**.
One registration creates a PostgreSQL web identity and idempotently
provisions the full set of legacy game-account rows in MSSQL, so a
web-registered account is immediately playable in the legacy client.

## Why this exists

The legacy game client's in-client registration does not work against this
server (its authenticate/register packet path never provisions a usable account
— it loops on channel select with `GetUID() : 0`). Registration therefore moves
to the web portal. This API is the backend that does it.

## Architecture

```
Azure Linux App Service (SPA + this API)
  /register /login /account  ──same origin──▶  /api/auth/register  ─┐
                                                /api/auth/login       │
                                                /api/account          │
                                                /api/account/economy  │
                                                                      ▼
                                     PostgreSQL (web identities)   MSSQL over VNet :1433
                                     scrypt, sessions, rate       Account / ES_BILLING /
                                     limits, sync audit            Game01  (game VM)
```

The service **must** run inside the Azure VNet because game SQL is reachable
only over the private VNet on port 1433. The built SPA is packaged as `public/`
beside the API so the portal, cookies, and API all use one Azure origin.

The infra is already defined in `infra/azure/web.tf`:
`azurerm_linux_web_app` (Node 20, `always_on`, `health_check_path=/api/health`,
`vnet_route_all_enabled`, `MSSQL_HOST` = the game VM's private IP), a private
PostgreSQL Flexible Server, and Key Vault references for secrets.

## What a registration provisions

PostgreSQL (`web_users` + audit): web identity, scrypt password hash,
derived legacy game `UserID`, sync status.

MSSQL (idempotent, one SERIALIZABLE transaction — see `src/game-account.js`):

- `Account.dbo.MUser`
- `Account.dbo.MUserAuthority` (normal-user `AuthLevel = 0`)
- `Account.dbo.TUser`
- `ES_BILLING.dbo.EB_Cash`
- `Game01.dbo.users` (`LoginUID = MUser.UserUID`)
- `Game01.dbo.VCGAVirtualCash`

The raw password is sent to MSSQL only on registration and coordinated password
changes; PostgreSQL stores only the scrypt hash. The game `UserID` is derived
as `<email-local-part, alnum, lowercased>_<first 6 of the account UUID>`, capped
at 10 chars (the narrowest legacy identifier column, `TUser.id`).

## Endpoints

| Method | Path | Auth | Purpose |
|---|---|---|---|
| GET | `/api/health` | – | Liveness + PG connectivity (App Service health check) |
| POST | `/api/auth/register` | – | `{ email, password }` → create identity + provision game account |
| POST | `/api/auth/login` | – | `{ email, password }` → session cookie |
| POST | `/api/auth/logout` | cookie | Destroy session |
| POST | `/api/auth/password` | cookie | `{ currentPassword, newPassword }` → coordinated PG+MSSQL change |
| GET | `/api/account` | cookie | Current account summary |
| GET | `/api/account/economy` | cookie | Authoritative Cash balance and reward status |
| POST | `/api/account/economy/claim` | cookie | `{ type: "starter" | "daily" }` → transactional Cash claim |

Sessions are 30-day opaque tokens (`Secure`, `HttpOnly`, `SameSite=Lax`); only a
SHA-256 digest is stored. Mutating routes enforce the `WEB_ALLOWED_ORIGINS`
allowlist (CSRF guard) and database-backed per-IP rate limits.

## Configuration

Copy `web/.env.example`. Server env (see `src/config.js`):

| Var | Notes |
|---|---|
| `POSTGRES_URL` | required |
| `POSTGRES_SSL` | `true` in Azure |
| `MSSQL_HOST` / `MSSQL_PORT` | game VM private IP + 1433 |
| `MSSQL_USER` / `MSSQL_PASSWORD` | `sa` + Key Vault `db-password` |
| `MSSQL_ENCRYPT` / `MSSQL_TRUST_SERVER_CERTIFICATE` | `false` / `true` for the legacy instance |
| `JOYSWORD_STARTING_CASH` | provisioned starting Cash; keep at `0` so the Starter Cache is claimed in the portal |
| `AUTH_RATE_LIMIT_SECRET` | ≥32 random chars (HMAC material for IP hashing) |
| `WEB_ALLOWED_ORIGINS` | comma-separated allowed origins; set to the Azure site URL |
| `PORT` | App Service sets this automatically |

The SPA reads `VITE_API_BASE_URL` at build time. Leave it empty for Azure's
same-origin deployment.

## Local development

```bash
# 1. Postgres (game MSSQL optional; provisioning needs it to fully succeed)
docker compose up -d postgres          # from repo root

cd web/api
npm install
POSTGRES_URL="postgresql://joysword:JoySwordPostgresLocal123@127.0.0.1:5432/joysword_web" \
MSSQL_HOST=127.0.0.1 MSSQL_PASSWORD='JoySword!Offline123' \
AUTH_RATE_LIMIT_SECRET="local-dev-secret-local-dev-secret-12" \
npm start        # runs migrations, then the server on :8080
```

Then run the SPA against it:

```bash
cd web
echo "VITE_API_BASE_URL=http://localhost:8080" >> .env.local
npm run dev
```

## Deployment

1. `terraform apply` in `infra/azure` (creates the App Service, PostgreSQL,
   Key Vault refs, and the NSG rule allowing SQL only from the web subnet).
2. Ensure the game VM's Windows firewall allows inbound 1433 from the web
   subnet (`10.42.2.0/24`) by running
   `scripts/ensure-web-sql-firewall.ps1` through Azure VM run-command.
3. Run `scripts/azure-web-deploy.ps1`. It builds Vite with a same-origin API,
   bundles `dist/` into the API's `public/`, installs production dependencies,
   updates the Azure allowed origin, and ZIP-deploys the complete application.

## Verification

```bash
# API logic + real-Postgres flow
cd web/api && npm install
#   migrations are idempotent:
node scripts/migrate.mjs

# Health:
curl -s localhost:8080/api/health          # {"status":"ok"}

# Register (from an allowed origin):
curl -s -X POST localhost:8080/api/auth/register \
  -H 'Content-Type: application/json' -H 'Origin: http://localhost:3000' \
  -d '{"email":"player@example.com","password":"changeme1"}'
```

Then confirm the game rows in MSSQL:

```sql
SELECT UserUID, UserID, UserName FROM Account.dbo.MUser ORDER BY UserUID DESC;
SELECT TOP 10 LoginUID, Login FROM Game01.dbo.users ORDER BY LoginUID DESC;
```

### Registration 503 with healthy `/api/health`

`/api/health` checks process liveness and PostgreSQL only. If registration
returns `503` and logs show an MSSQL timeout to `10.42.1.10:1433`, verify the
App Service VNet path and run the VM firewall helper:

Agents should use the full incident flow in
[../../docs/AGENT_WEB_REGISTRATION_PLAYBOOK.md](../../docs/AGENT_WEB_REGISTRATION_PLAYBOOK.md).

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

The known failure is an enabled `JoySword SQL inbound deny` Windows Firewall
rule. Windows block rules override the scoped `JoySword Web SQL` allow rule even
when the Azure NSG `AllowSqlFromWeb` rule is correct.
