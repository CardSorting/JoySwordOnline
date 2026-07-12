# JoySword Public Release Strategy

**Purpose:** how to package the JoySword workspace into a public `.rar` release
**without leaking secrets or machine-specific data**. The whole thing is
automated and gated — you run one script, and it refuses to produce an archive
if any secret slips through.

> **One command:** `python scripts/build-public-release.py`
> Output: `dist/JoySword-public-<version>.rar` — only if the secret-scan gate
> passes.

---

## Threat model — what must never ship

| Class | Examples in this repo | Handling |
|---|---|---|
| Live credentials | `sa` password, DB/admin passwords, Postgres URL secret | scrub → placeholder, or exclude |
| Cloud identity | Azure subscription/tenant/object IDs, operator IP, email | exclude (tfvars/docs) + gate |
| Private keys | `edge-wireguard/azure-admin`, `origin.key`, any `*.pem/*.key` | exclude dir + glob + gate |
| Terraform state | `*.tfstate`, `backend.hcl` (state backend coords) | exclude |
| Removed-arch traces | WireGuard `10.77.0.x`, edge-tunnel refs | gate (hard fail) |
| Machine paths | `C:\Users\media\Downloads\JoySwordOffline` | scrub → `C:\JoySword` |
| Bulk private data | DB backups (`*.bak`/`*.mdf`), runtime logs, `Statistics/` | exclude |
| Repo cruft | `.git`, `node_modules`, build caches | exclude |

---

## Defense in depth — three independent layers

The packager (`scripts/build-public-release.py`) applies all three, in order,
against a **staging copy** — it never mutates your working tree.

### Layer 1 — EXCLUDE
Never copy secret/machine/bulky-private paths into staging. Covers:
- Dir names: `.git`, `node_modules`, `__pycache__`, `.wrangler`, `.dietcode`,
  `.release-tmp`, `.joysword-kom-build`, `build`, `dist`, `.terraform`,
  `log(s)`, `Statistics`.
- Prefixes: `infra/azure/.terraform/`, `azure-docs/`, `docs/` (internal ops
  docs with real IDs), `Elsword/offline/edge-wireguard/` (dead WireGuard keys).
- Exact: `.env`, `web/.env`, `infra/azure/terraform.tfvars`,
  `infra/azure/backend.hcl`.
- Globs: `*.env` (except `*.env.example`), `*.tfstate*`, `*.tfplan`, `*.pem`,
  `*.key`, `*.pfx`, `id_rsa`, `*.bak`, `*.mdf`, `*.ldf`, `*.rar`, `*.log`,
  `*.htm(l)`, `*.dmp`, `server-pids.json`, `*.tsbuildinfo`, OS cruft.

### Layer 2 — SCRUB
Files that MUST ship but may embed secrets are rewritten in the staged copy:
- Known secret literals → `CHANGE_ME_*` placeholders.
- `offline.env` / `.dsn` `DB_PASSWORD=`/`PWD=` lines → `CHANGE_ME_DB_PASSWORD`.
- `ADMIN_PASSWORD=` → `CHANGE_ME_ADMIN_PASSWORD`.
- Machine path `C:\Users\media\Downloads\JoySwordOffline` → `C:\JoySword`.

> Note: `JoySword!Offline123` is the **documented local-dev default** (the prod
> audit in `ADMIN_GUIDE.md` deliberately rejects it), so it is allowed to ship
> as a fallback in dev scripts — it is not a real secret.

### Layer 3 — GATE (hard fail)
Scan the fully staged tree for secret signatures. **If any match, abort — no
archive is produced.** Signatures: the three real password literals, Azure
subscription/tenant/operator-object IDs, private-key blocks, SSH keys with
emails, operator email, **WireGuard `10.77.0.x`**, operator public IP, and any
non-placeholder `PWD=`/`DB_PASSWORD=` line.

The gate is the safety net: even if you add a new secret-bearing file and forget
an exclude rule, the build stops before publishing.

---

## What DOES ship (and must stay configurable)

`*.env.example` / `*.tfvars.example` / `backend.hcl.example` templates ship with
`CHANGE_ME_*` placeholders so the public can configure their own deployment:

- `.env.example` (root — docker-compose overrides)
- `Elsword/offline/offline.env.example` (game-server runtime)
- `web/.env.example` (web portal)
- `infra/azure/terraform.tfvars.example`, `infra/azure/backend.hcl.example`

If you add a new secret-bearing config, add its `.example` template too — the
excluded real file leaves the public with nothing to copy from otherwise.

---

## Usage

```bash
cd /c/Users/media/Downloads/JoySwordOffline

# Dry run: stage + scrub + scan, inspect the result, no archive
python scripts/build-public-release.py --stage-only
#   -> build/public-release/   (inspect it)

# Full build (only produces the .rar if the gate passes)
python scripts/build-public-release.py --version 2026.07.08
#   -> dist/JoySword-public-2026.07.08.rar

# Custom output path
python scripts/build-public-release.py --out D:\releases\joysword.rar
```

Exit codes: `0` success, `2` gate found secrets (archive NOT created), `1`
other error (e.g. WinRAR missing at `C:\Program Files\WinRAR\rar.exe`).

---

## Extending the rules

All rules live at the top of `scripts/build-public-release.py`:
- New file/dir to drop → `EXCLUDE_DIR_NAMES` / `EXCLUDE_PREFIXES` /
  `EXCLUDE_EXACT` / `EXCLUDE_GLOBS`.
- New secret literal to mask → `SCRUB_RULES` **and** `SECRET_SIGNATURES` (scrub
  it so shipping files stay useful, gate it so a miss still fails the build).
- New template to always keep → `KEEP_EVEN_IF_GLOB`.

Rule of thumb: **every secret gets both a scrub rule and a gate signature.**
Scrub keeps the shipped file usable; the gate guarantees a scrub miss can't
publish.

---

## Verifying a built archive (belt & suspenders)

```bash
# List contents without extracting
"/c/Program Files/WinRAR/rar.exe" lb dist/JoySword-public-<ver>.rar | less

# Confirm no secret-bearing paths are present
"/c/Program Files/WinRAR/rar.exe" lb dist/JoySword-public-<ver>.rar \
  | grep -iE '\.env$|tfstate|tfvars$|edge-wireguard|\.bak$|\.git/|backend\.hcl$' \
  && echo "LEAK — investigate" || echo "clean"
```

The packager already gates on content; this is an independent path-level check
of the final artifact.

---

## Related docs

- [deployment_strategy.md](deployment_strategy.md) — how to actually deploy
- [deployment_overview.md](deployment_overview.md) — architecture & resources
