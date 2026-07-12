# JoySword Azure Deployment

JoySword runs the five legacy Windows services and SQL Server directly on the game-server VM.

## Architecture

```
Internet clients
      │  TCP 9200/9300/9400  UDP 9201/9301/9401
      ▼
azurerm_windows_virtual_machine.server  (infra/azure)
  ├─ Login / Center / Global / Channel / Game servers
  ├─ SQL Server (MSSQL 1433)
  ▲
  │  MSSQL Connection
  ▼
azurerm_linux_web_app.web              (infra/azure)
  ├─ PostgreSQL flexible server  (web identity, sessions, audit)
  └─ Azure Blob Storage          (artifacts: releases + client downloads)
```

**The game-server Azure VM (`joysword-server`) is active.**
The edge tunnel has been disabled, and all game traffic connects directly to the VM.
For the legacy client endpoint rule and incident checks, see
[LEGACY_CLIENT_DIRECT_IP.md](LEGACY_CLIENT_DIRECT_IP.md) and
[CLIENT_ENDPOINT_TROUBLESHOOTING.md](CLIENT_ENDPOINT_TROUBLESHOOTING.md). If an
agent is helping, start with
[AGENT_CLIENT_ENDPOINT_PLAYBOOK.md](AGENT_CLIENT_ENDPOINT_PLAYBOOK.md).

## Surviving Azure resources (infra/azure)

- Resource group: `joysword-prod-rg`
- Virtual network `joysword-vnet` with web and Postgres subnets
- Artifacts storage account (`jsartbe6c7ac407`) — releases, client downloads, and backups
- Key Vault (`js-kv-be6c7ac407`) — MSSQL password, admin password, auth secret
- App Service plan + Linux web app (`joysword-web-be6c7ac407`)
- PostgreSQL flexible server (`joysword-pg-be6c7ac407`)
- Windows Virtual Machine (`joysword-server`)
- Monitor action group for HTTP 5xx alerts

## Configured subscription

Local, ignored configuration is stored in `infra/azure/terraform.tfvars`:

- Subscription: `Azure subscription 1`
- Subscription ID: `a5074069-cc02-4583-b5b2-dd4e4edf30be`
- Tenant: `2dcaf678-5ddf-4431-ae98-d666a45d7a77`
- Region: `centralus`
- Operator: `willcruzdesigner@gmail.com`

Do not commit the tfvars file or passwords.

## First deployment (web + supporting infra)

Confirm the selected subscription:

```sh
az account show --output table
```

Bootstrap the foundation resources (VNet, storage, Key Vault):

```sh
python3 scripts/azure_deploy.py infra --foundation --auto-approve
```

Key Vault RBAC can take several minutes to propagate. Then enter the SQL and
in-game administrator passwords:

```sh
python3 scripts/azure_deploy.py secrets
```

Review the complete plan, then apply:

```sh
python3 scripts/azure_deploy.py plan
python3 scripts/azure_deploy.py infra --auto-approve
```

Patch the local Windows client to use the Azure VM public IP:

```sh
python3 scripts/local_connect.py 52.238.194.187 --skip-repack
python3 client/scripts/local_connect.py 52.238.194.187 --skip-repack
```

## Updating the web application

Deploy a new build through the CI pipeline or manually via the App Service
deployment slot. The App Service reads all secrets from Key Vault at startup.

## Rotating credentials

Update MSSQL and in-game admin passwords in Key Vault:

```sh
python3 scripts/azure_deploy.py secrets
```

Then restart the local game servers so they re-read from `offline.env`, and
restart the App Service to pick up the new Key Vault secret:

```sh
az webapp restart --resource-group joysword-prod-rg --name joysword-web-be6c7ac407
```

## Operations

The web application health endpoint:

```sh
curl https://joysword-web-be6c7ac407.azurewebsites.net/api/health
```

Acceptance checks after any infrastructure change:

```sh
# Direct Azure VM reachability
nc -vz 52.238.194.187 9200
nc -vz 52.238.194.187 9300
nc -vz 52.238.194.187 9400

# Terraform drift check
terraform -chdir=infra/azure plan -input=false -detailed-exitcode -var-file=terraform.tfvars
```


## Security invariants

- Never add public rules for SQL, RDP, SSH, or WinRM in any NSG.
- Never put database or game credentials in Terraform variables, VM custom
  data, release archives, or source control.
- Keep storage containers private and shared-key access disabled.
- Keep Key Vault purge protection enabled.
- SQL Server runs on the Azure VM and listens on TCP `1433` for private VNet
  traffic; Azure NSG and VM Windows Firewall must restrict it to the App
  Service integration subnet (`10.42.2.0/24`). Never expose SQL publicly.
