# Account Portal — Azure Deployment

The JoySword marketing site, wiki, account portal, and account API are one
deployable hosted by Azure Linux App Service. The API serves the Vite build from
`public/`; browser requests to `/api/*` stay on the same origin.

```text
Azure App Service
  /, /wiki, /register, /login, /account  -> Vite SPA
  /api/auth/*, /api/account             -> Node account API
                                                    |
                    Azure PostgreSQL + game MSSQL over the private VNet
```

Cloudflare Pages and `api.onjoysword.top` are not part of this deployment.

## Prerequisites

- Azure CLI logged into the JoySword subscription.
- Existing resources from `infra/azure/web.tf`.
- Game VM SQL Server reachable from `10.42.2.0/24` on TCP 1433.

## Deploy

From the repository root:

```powershell
.\scripts\azure-web-deploy.ps1
```

The deployer:

1. Builds `web/` with `VITE_API_BASE_URL` empty and the Azure canonical URL.
2. Copies the Vite output into the API package as `public/`.
3. Installs production API dependencies.
4. Sets `NEXT_PUBLIC_SITE_URL` and `WEB_ALLOWED_ORIGINS` to the Azure origin.
5. Sets `WEBSITE_RUN_FROM_PACKAGE=0`, ZIP-deploys into `wwwroot`, and restarts
   `joysword-web-be6c7ac407`.

The App Service startup command remains:

```text
node scripts/migrate.mjs && node server.js
```

## Verify

```powershell
$base = 'https://joysword-web-be6c7ac407.azurewebsites.net'
Invoke-WebRequest "$base/api/health"
Invoke-WebRequest "$base/register"
```

Create an account with a fresh email. A successful registration returns HTTP
201 with `legacyUserId` and `legacyUserUid`, sets an HttpOnly session cookie,
and creates one row in each required MSSQL row set:

- `Account.dbo.MUser`
- `Account.dbo.MUserAuthority`
- `Account.dbo.TUser`
- `ES_BILLING.dbo.EB_Cash`
- `Game01.dbo.users`
- `Game01.dbo.VCGAVirtualCash`

Players use their email to sign into the web portal. They use the generated
`legacyUserId` shown as “Game login” plus the same password in the game client.

## Registration 503

`/api/health` checks Node and PostgreSQL. If it succeeds while registration
returns 503, inspect MSSQL connectivity and run:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

The VM must have no enabled inbound SQL deny rule and must allow TCP 1433 from
the App Service integration subnet only. See
[AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md) for the
full MSSQL diagnostic flow.

## Rollback and safety

- Provisioning is idempotent; failed accounts can retry with the same email and
  password.
- PostgreSQL tracks pending/active/failed MSSQL synchronization.
- If an MSSQL restore reuses a game UID, successful provisioning clears the
  stale web mapping and marks that older identity for repair on its next login.
- Database migrations run transactionally before the web server starts.
- Do not destroy the shared Azure resource group.
