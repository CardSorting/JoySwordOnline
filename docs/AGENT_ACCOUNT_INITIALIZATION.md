# Account Initialization — Agent Playbook

Quick-start for AI agents and operators debugging accounts that can't play, and
for understanding how JoySword accounts are created.

Related: [CLIENT_ENDPOINT_TROUBLESHOOTING.md](CLIENT_ENDPOINT_TROUBLESHOOTING.md)
(network/endpoint layer — a *different* failure class that presents similarly).

## Current state — registration is WEB-BASED

> **Update (2026-07): accounts are created on the web portal, not in the game
> client.** The legacy client's in-client registration proved unusable against
> this server — its authenticate/register packet path never provisions a working
> account and the client loops on channel select with `GetUID() : 0`. So
> registration moved to the web portal (`web/` SPA + `web/api/` service). One web
> registration provisions the full game-account row set; the player then logs
> into the client with that same email/password. **Do not try to re-enable
> in-client registration** — invest in the web path instead.
>
> The DB-layer knowledge below is still accurate and load-bearing: the web API
> (`web/api/src/game-account.js`) runs the **same** idempotent provisioning
> transaction, and the server-side stored procedures remain the safety net /
> repair mechanism. See [../web/api/README.md](../web/api/README.md) for the API.
>
> If the web API itself returns `503` during registration while `/api/health` is
> `HTTP 200`, first troubleshoot the App Service-to-MSSQL path in
> [AGENT_WEB_REGISTRATION_PLAYBOOK.md](AGENT_WEB_REGISTRATION_PLAYBOOK.md), then
> [ACCOUNT_PORTAL_DEPLOYMENT.md](ACCOUNT_PORTAL_DEPLOYMENT.md). That is a
> provisioning connectivity failure, not the in-game `GetUID() : 0` account-row
> failure class below.

## The account "birth ritual" (server side — still authoritative)

Whatever creates an account (web API today; historically the client auth path)
must produce this exact row set, or the GameServer resolves the player's UID to
0 and channel entry fails:

- `Account.dbo.MUser` — identity, `UserUID` (identity PK)
- `Account.dbo.MUserAuthority` — auth level (0 = normal)
- `Account.dbo.MUserSkillOption` — default gameplay flag
- `Account.dbo.TUser` — tool/admin identity row
- `ES_BILLING.dbo.EB_Cash` — cash balance
- `Game01.dbo.users` — legacy game identity; **`LoginUID` is what the GameServer reads**
- `Game01.dbo.VCGAVirtualCash` — virtual cash; FK → `Game01.dbo.users.LoginUID`

The canonical, idempotent server-side implementation is
`Account.dbo.JoySwordEnsurePublicIdentity` (in
`database/fix-post-character-creation.sql` §11). It is still wired into
`mup_auth_user` as a **login-time self-heal**: any existing account missing rows
is repaired on its next successful login, and `scripts/repair-account-init.py`
backfills broken accounts in bulk.

> **Regression watch (learned the hard way):** `mup_auth_user` MUST auto-create
> the account when the username does not exist (`@iUserUID = 0`). An earlier
> revision of the fix made it return `-1` for missing users instead — that broke
> every brand-new login with `iOK=291` / `GetUID() : 0` at the GameServer, the
> exact symptom this doc is about. If you edit `mup_auth_user`, preserve the
> "create on missing" branch and verify with a never-before-seen username.

## Symptoms

- Client connects, login succeeds, then channel selection says "no response"
  and the client closes.
- Client log (`client\data\log.htm`) shows
  `Connect To : 52.238.194.187:9400` then `...:9300` then `closed by remote
  machine`.
- GameServer log shows `ON_ELG_REGISTER_USER_ACK`, `GetUID() : 0`, or a
  UID-related error for the username.
- A specific account is broken while a hand-seeded account on the same server
  works.

First rule out the endpoint/network class (see
CLIENT_ENDPOINT_TROUBLESHOOTING.md). If the client log already shows the direct
IP and reaches `9300`, and only *then* the server drops it with a UID error,
you are in the account-initialization case documented here.

## The "account birth ritual" — the full row set

A fully-initialized account has these rows. The two `Game01` rows are the ones
client registration used to skip.

| Row | DB.table | Purpose |
|---|---|---|
| Identity | `Account.dbo.MUser` | credentials, `UserUID` (identity PK) |
| Authority | `Account.dbo.MUserAuthority` | auth level (0 = normal) |
| Skill option | `Account.dbo.MUserSkillOption` | default gameplay flag |
| OTP | `Account.dbo.MUserOTP` | linkage row (nx/global path) |
| Billing | `ES_BILLING.dbo.EB_Cash` | cash balance record |
| **Game identity** | **`Game01.dbo.users`** | **legacy game-side identity; `LoginUID` is what the GameServer reads** |
| **Virtual cash** | **`Game01.dbo.VCGAVirtualCash`** | **legacy virtual-cash store; FK → `Game01.dbo.users.LoginUID`** |

## Working-vs-broken diff (what the bug produced)

| Row | Seeded (working) | Client-created (broken) |
|---|---|---|
| `Account.dbo.MUser` | yes | yes |
| `Account.dbo.MUserAuthority` | yes | yes |
| `ES_BILLING.dbo.EB_Cash` | yes | yes |
| `Game01.dbo.users` | yes | **MISSING** |
| `Game01.dbo.VCGAVirtualCash` | yes | **MISSING** |

## Root cause

The shipped client registration procedures
(`mup_create_user` / `mup_create_nx_user` / `mup_create_global_user` in
`database/fix-post-character-creation.sql`, applied on every deploy by
`scripts/install-creation-fixes.py`) inserted only the `Account` + `EB_Cash`
rows. They never created the `Game01` identity rows. So the LoginServer
authenticated the account, but the GameServer — which resolves the player from
`Game01.dbo.users` — got UID 0 and refused the channel/game handoff.

A complete initializer (`Account.dbo.JoySwordEnsurePublicIdentity`) *did* exist,
but only inside `scripts/install-hotpath-account-creation.ps1`, which was **not
in the release payload** (`azure_release.py`'s `RELEASE_SCRIPTS` allowlist). So
the fix lived in the repo but never reached the deployed VM. Worse,
`db-healthcheck.py` *requires* that procedure to exist and requires
`mup_auth_user` to reference it — meaning a ship-only deploy could not even pass
its own healthcheck.

## The fix (implemented July 2026)

Fix strategy, in preference order: reuse the existing legacy init flow, add a
post-registration init call, make it idempotent, provide a repair tool for
already-broken accounts. No schema changes, no auth redesign, no web path.

`database/fix-post-character-creation.sql` gained a **section 11** (appended
last, so its definitions win over the partial procs earlier in the file):

1. **`Account.dbo.JoySwordEnsurePublicIdentity`** — the canonical, idempotent
   creator/repairer. Every companion INSERT is guarded by `IF NOT EXISTS`, wrapped
   in a transaction with `XACT_ABORT ON`, and brackets `IDENTITY_INSERT` safely
   (including in the `CATCH`). Safe to call repeatedly; never duplicates rows.
2. **`Account.dbo.JoySwordValidatePublicCredentials`** — the existing
   username/password/rate-limit hardening, factored out so the three create
   procs stay DRY and identical in policy.
3. **`mup_create_user` / `_nx_user` / `_global_user`** — now validate, then
   delegate row creation to `JoySwordEnsurePublicIdentity`. **Result-set shapes
   are unchanged** so the LoginServer binary keeps parsing them correctly.
   Duplicate `UserID` still returns the legacy `-1`.
4. **`mup_auth_user`** — the hardened lockout version plus one idempotent
   `EXEC JoySwordEnsurePublicIdentity` on successful login. This **self-heals**
   accounts created before the fix: they become fully playable on next login
   with no manual repair. It also satisfies the `db-healthcheck.py` contract.

Because `install-creation-fixes.py` (which applies this SQL) is already in
`RELEASE_SCRIPTS` and the code overlay, the fix now self-contains and ships on
every deploy. `scripts/repair-account-init.py` was also added to
`RELEASE_SCRIPTS`.

### The FK / LoginUID subtlety (found on live data)

`Game01.dbo.VCGAVirtualCash` has a foreign key to `Game01.dbo.users.LoginUID`.
New accounts are created with `users.LoginUID = MUser.UserUID` (aligned). But
**legacy accounts predate that convention** and can have
`users.LoginUID != MUser.UserUID` (e.g. `LoginUID = 2` while `UserUID = 10012`).

The first version of the proc inserted virtual cash at `UserUID`, which violated
the FK for those legacy accounts and fell into the `CATCH` (returning `-100`).
The proc now **resolves the account's actual `users.LoginUID` (by `Login`)** and
keys virtual cash off that. Identical behavior for new/aligned accounts; correct
and non-destructive for misaligned legacy accounts (it never rewrites
`users.LoginUID`, so character links stay intact).

## Repair tool for existing broken accounts

`scripts/repair-account-init.py` — **dry-run by default**, reports exactly which
companion rows each account is missing, and only writes with `--apply`.

```powershell
# On the VM (repo root D:\JoySword\Server), or locally against the DB:
python scripts\repair-account-init.py                 # dry run, all accounts
python scripts\repair-account-init.py --user someUser # dry run, one account
python scripts\repair-account-init.py --apply         # backfill broken accounts
python scripts\repair-account-init.py --apply --user someUser
```

Properties:
- Idempotent — skips fully-initialized accounts, never duplicates rows.
- Reuses each account's real password / `PublisherSN` (never overwrites them).
- Backfills via `JoySwordEnsurePublicIdentity`, so it uses the same FK-correct
  `LoginUID` resolution as registration.
- Accounts whose `UserUID` exceeds the 32-bit `Game01` `LoginUID` range are
  reported with `N/A` rather than false-flagged.

## Verification

```powershell
# 1. Apply the SQL (idempotent) and gate on the healthcheck
python scripts\install-creation-fixes.py
python scripts\db-healthcheck.py        # -> "OK: ... passed for PUBLIC mode."

# 2. Prove a fresh client-created account gets the full row set.
#    Call the exact proc the client calls (returns @iOK, @iUserUID as a
#    RESULT SET — the params are NOT OUTPUT params):
#      EXEC Account.dbo.mup_create_user @strUserID_=N'qa_fresh01',
#           @strPassword_=N'QaFresh#2026', @strUserName_=N'qa_fresh01',
#           @iGuestUser_=0;   -> expect: 0 | <UserUID>
#    Then compare its row set to a known-good account: MUser, MUserAuthority,
#    MUserSkillOption, MUserOTP, EB_Cash, Game01.users, and
#    Game01.VCGAVirtualCash (joined via users.LoginUID) should all be present.

# 3. Idempotency: re-run the same create -> returns -1 (user exists), no dupes.

# 4. Bulk repair check: scan should end at "0 incomplete".
python scripts\repair-account-init.py
```

Remember to remove any QA account you create on production afterward (delete its
rows across `Game01.dbo.VCGAVirtualCash`, `Game01.dbo.users`,
`ES_BILLING.dbo.EB_Cash`, `MUserOTP`, `MUserSkillOption`, `MUserAuthority`,
`MUser`).

## Constraints (do not violate)

- **Registration is web-based** (`web/` + `web/api/`). Do **not** try to
  re-enable in-client registration — it does not work against this server.
- Do not modify the game schema. Do not redesign the game auth procs.
- Do not overwrite working accounts or create duplicate rows.
- Do not run destructive SQL against real accounts.
- Do not manually seed one failing username — the web API provisions on
  registration and `mup_auth_user` self-heals existing accounts on login. If a
  single account is broken, let it self-heal on next login or run
  `repair-account-init.py`.
- Keep the game `UserID` derivation stable (email local-part + first-6-of-uuid,
  ≤10 chars). Changing it would orphan already-provisioned accounts.

## File map

| File | Role |
|---|---|
| `web/api/` | **Account API** — web registration/login + idempotent MSSQL provisioning (the current registration path) |
| `web/src/app/account/page.tsx` | Account portal UI (`/register`, `/login`, `/account`) |
| `database/fix-post-character-creation.sql` §11 | Canonical server-side init proc + self-healing `mup_auth_user` (safety net / repair) |
| `scripts/install-creation-fixes.py` | Applies the SQL; in `RELEASE_SCRIPTS` + code overlay |
| `scripts/repair-account-init.py` | Idempotent dry-run/`--apply` repair for existing broken accounts |
| `scripts/db-healthcheck.py` | Gate — requires the init proc to exist and be wired into `mup_auth_user` |
| `scripts/install-hotpath-account-creation.ps1` | **Legacy/superseded** — original home of the init proc before it was folded into the shipped SQL |
