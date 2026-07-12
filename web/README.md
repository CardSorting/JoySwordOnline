# JoySword Web

Two parts:

1. **Static SPA** (this directory) — the public marketing site, player wiki, and
   the account portal UI (`/register`, `/login`, `/account`). Built with Vite +
   React Router and served by the Azure account service.
2. **Account API** (`web/api/`) — the Node service that serves the SPA and creates accounts:
   PostgreSQL web identities (Argon2id) + idempotent MSSQL game-account
   provisioning. Hosted on the **Azure Linux App Service** (VNet-integrated).
   See [api/README.md](api/README.md).

## Azure architecture

The account API must reach the game VM's SQL Server over the private Azure VNet
on port 1433. The SPA and API are deployed together to avoid cross-provider DNS,
CORS, and cookie dependencies. Browser account calls are same-origin.

```
Azure App Service (SPA + web/api)
  /register /login /account ── same origin ──▶ /api/auth/* /api/account
                                                    │
                                         PostgreSQL + MSSQL (game VM, VNet :1433)
```

> **Registration is web-only.** The legacy game client cannot self-register
> against this server (its packet path never provisions a usable account and
> loops on channel select with `GetUID() : 0`). Players create an account on the
> web portal; that one action provisions everything the client needs, and the
> same email/password then works directly in the client. Do **not** try to
> re-enable in-client registration. See
> [../docs/AGENT_ACCOUNT_INITIALIZATION.md](../docs/AGENT_ACCOUNT_INITIALIZATION.md).

## What a registration provisions

The API writes a PostgreSQL identity, derives an immutable legacy-safe game
`UserID`, and idempotently provisions the MSSQL rows the game server requires:

- `Account.dbo.MUser`
- `Account.dbo.MUserAuthority` (normal-user `AuthLevel = 0`)
- `Account.dbo.TUser`
- `ES_BILLING.dbo.EB_Cash`
- `Game01.dbo.users` (`LoginUID = MUser.UserUID`)
- `Game01.dbo.VCGAVirtualCash`

The raw password is sent to MSSQL only during registration and coordinated
password changes. PostgreSQL stores only an Argon2id hash.

## SPA development

```bash
cd web
npm install
# Point the SPA at a running account API (see web/api/README.md to start one):
echo "VITE_API_BASE_URL=http://localhost:8080" >> .env.local
npm run dev            # Vite dev server
```

Configuration:

- `VITE_API_BASE_URL` — base URL of the account API. Keep empty in Azure for same-origin calls.
- `VITE_SITE_URL` / `NEXT_PUBLIC_SITE_URL` — public origin for canonical/SEO URLs.

## Build & verify

```bash
cd web
npm run typecheck
npm run build          # -> dist/  (Cloudflare Pages publish directory)
```

`npm run build` runs `vite build` then `scripts/generate-seo.ts` to pre-render
per-route SEO HTML, the sitemap, and the RSS feed into `dist/`.

## Deploy to Azure

Build, package, and deploy the SPA and API together:

```powershell
.\scripts\azure-web-deploy.ps1
```

## Player wiki

The `/wiki` knowledge hub is a version-aware structure: searchable overview and
learning paths; getting-started, progression, combat, character, equipment,
dungeon, PvP, cash-shop, troubleshooting, and glossary guides; a categorized FAQ;
and the Ice Burner collector gallery under
`/wiki/cash-shop/ice-burner/<costume-set>`. Content is sourced from the local
level-65 progression and the curated cash-shop restoration audits; modern retail
behavior is treated as potentially incompatible with the historical client.
