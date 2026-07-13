# JoySword Operations Docs

## Read this first for client connection issues

If the issue mentions any of these phrases, start with the direct-IP client
docs before investigating anything else:

- client cannot connect
- login hangs
- channel select hangs
- game handoff fails
- `data036.kom`
- `Config*.lua`
- `CHANNEL_SERVER_IP`
- `play.onjoysword.top`
- CNAME, DNS masking, Cloudflare, Spectrum

Required reading:

1. [LOCAL_PUBLIC_HOSTING_RECOVERY.md](LOCAL_PUBLIC_HOSTING_RECOVERY.md)
2. [AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md)
3. [CLIENT_ENDPOINT_TROUBLESHOOTING.md](CLIENT_ENDPOINT_TROUBLESHOOTING.md)
4. [LEGACY_CLIENT_DIRECT_IP.md](LEGACY_CLIENT_DIRECT_IP.md)

The invariant: game sockets use direct IPv4 only.

```text
52.238.194.187
```

Hostnames are allowed for HTTP(S) services such as launcher downloads,
manifest hosting, patch hosting, and APIs. Hostnames are not allowed for the
legacy game client endpoint.

If the client log already shows the direct IP but the connection still fails,
check VM ingress instead of repatching the client again. The server must pass
both Azure NSG and Windows Firewall for TCP `9200`, `9300`, and `9400`.

## Account can log in but cannot enter a channel

If login succeeds but channel entry fails with the GameServer logging
`GetUID() : 0` / `ON_ELG_REGISTER_USER_ACK` — and the endpoint/network layer is
already proven good — the account is missing its downstream initialization rows.
This is a separate failure class from the endpoint issue above.

Required reading: [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md)

Registration is **web-based** (`web/` portal + `web/api/` service) — the legacy
client cannot self-register against this server. A newly registered account must
be fully playable with no manual seeding. Do not hand-seed one failing user —
accounts self-heal on login, or use `scripts/repair-account-init.py`.

## Web registration returns 503

If `/api/health` is `HTTP 200` but `/api/auth/register` returns `503`, the API
is alive and PostgreSQL is probably healthy. Treat it as an MSSQL provisioning
failure from the Azure App Service to the game VM.

Required reading:

1. [AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md)
2. [ACCOUNT_PORTAL_DEPLOYMENT.md](ACCOUNT_PORTAL_DEPLOYMENT.md)

Fast fix for the known July 2026 failure:

```powershell
az vm run-command invoke -g joysword-prod-rg -n joysword-server `
  --command-id RunPowerShellScript `
  --scripts "@scripts\ensure-web-sql-firewall.ps1" `
  --query "value[0].message" -o tsv
```

The important gotcha is Windows Firewall precedence: an enabled
`JoySword SQL inbound deny` rule blocks TCP `1433` even when the Azure NSG
allows `10.42.2.0/24 -> 1433` and a separate allow rule exists.

## Other docs

- [LOCAL_PUBLIC_HOSTING_RECOVERY.md](LOCAL_PUBLIC_HOSTING_RECOVERY.md) - home-router port forwarding, Windows recovery, startup, and local public-host troubleshooting
- [AGENT_ACCOUNT_INITIALIZATION.md](AGENT_ACCOUNT_INITIALIZATION.md) — how accounts are created (web portal) + server-side repair
- [AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md) — web API registration failures, MSSQL provisioning, and VNet SQL troubleshooting
- [ACCOUNT_PORTAL_DEPLOYMENT.md](ACCOUNT_PORTAL_DEPLOYMENT.md) — go-live steps for the account portal (SPA + API)
- [AZURE_DEPLOYMENT.md](AZURE_DEPLOYMENT.md)
- [AZURE_DOWNLOAD_RELEASES.md](AZURE_DOWNLOAD_RELEASES.md)
- [CASH_ALLOWANCE.md](CASH_ALLOWANCE.md)
- [CASHSHOP_ECONOMY.md](CASHSHOP_ECONOMY.md)
- [PVP_NETCODE_AUDIT.md](PVP_NETCODE_AUDIT.md)
- [PVP_TEST_MATRIX.md](PVP_TEST_MATRIX.md)
