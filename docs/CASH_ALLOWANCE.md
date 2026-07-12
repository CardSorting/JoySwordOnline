# Daily Cash Allowance

JoySword uses authenticated website claims instead of unlimited Cash. A synced
player can claim once per Mountain-time calendar day. Cash-shop purchases continue
to deduct their configured prices normally.

| Milestone | Reward |
|---|---:|
| One-time Starter Cache | Top up to 36,000 Cash |
| Every claimed day | 12,000 Cash |
| Every seventh consecutive day | +5,000 Cash |
| Day 30 | +20,000 Cash |
| Wallet maximum | 450,000 Cash |

Missing a day pauses the 30-claim journey instead of resetting it, and missed
rewards do not accumulate. A player at the wallet cap must spend Cash before
claiming, so a reward is never silently consumed for zero value.
The 30-day sequence grants 400,000 Cash before the cycle starts again, enough for
several collection packages or a broad mix of direct items.

## Collector Rank

Successful Cash Shop purchases also earn lifetime Collection XP equal to the Cash
spent. XP never resets, and each unlocked rank has one deterministic reward:

| Rank | Lifetime XP | One-time Cash reward |
|---|---:|---:|
| Adventurer | 0 | — |
| Explorer | 25,000 | 3,000 |
| Curator | 75,000 | 5,000 |
| Vanguard | 150,000 | 8,000 |
| Luminary | 300,000 | 12,000 |
| Legend | 600,000 | 20,000 |
| Ascendant | 1,000,000 | 30,000 |

Rank rewards require enough free wallet space for the complete reward. They are
never partially consumed and cannot push a player over the 450,000 Cash cap.

`ES_BILLING.dbo.EB_Cash` is authoritative. The claim transaction mirrors the new
balance into an existing `Game01.dbo.VCGAVirtualCash` row, but never creates or
reads that legacy row as a source of funds.

## Installation and verification

Install or update the policy after restoring databases:

```powershell
py -3 scripts\install-cash-allowance.py
```

Run rollback-safe integration tests:

```powershell
py -3 scripts\verify-cash-allowance.py
```

The installer is idempotent. On first installation it clamps normal-player
balances to the configured cap and preserves accounts with GM authority.

Policy values are configured in `Elsword\offline\offline.env`:

```dotenv
CASH_ALLOWANCE_BASE=12000
CASH_ALLOWANCE_WEEKLY_BONUS=5000
CASH_ALLOWANCE_MONTHLY_BONUS=20000
CASH_STARTER_TARGET=36000
CASH_ALLOWANCE_CAP=450000
CASH_ALLOWANCE_TIME_ZONE=Mountain Standard Time
PLAYER_STARTING_CASH=0
```
