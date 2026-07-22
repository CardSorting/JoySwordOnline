# Cash Shop Economy

JoySword's economy is designed around earned access rather than real-money pressure.
The base daily allowance is the unit of comparison: 12,000 Cash should always buy
something meaningful, while complete collections remain multi-day goals.

## Price ladder

| Tier | Typical price | Intended cadence |
|---|---:|---|
| Archive | 500–1,000 | Small historical items and low-risk utility |
| Entry | 1,500–4,000 | Minor fashion pieces, resets, and consumables |
| Core | 5,000–10,000 | Standard fashion, accessories, pets, and permanent QoL |
| Rare | 8,000–15,000 | Distinctive pieces and enhanced premium items |
| Epic | 12,000–24,000 | Prestige equipment, companions, and major pieces |
| Collection Package | 12,000–60,000 | Complete or premium sets with component discounts |

Packages with complete mappings cost 80% of their normalized component value,
rounded to a clear 1,000-Cash step and capped at 60,000. This removes arbitrary
legacy prices such as the 394,496-Cash hairstyle outlier.

## Randomized collections

Ice Burner pricing uses a consistent pull scale:

- A standard reveal is roughly 1,200 Cash.
- Advertised bundle bonuses are preserved.
- Ten-pull bundles cost about one base daily allowance.
- Thirty-pull bundles cap at 36,000 Cash.
- Random pulls are optional; restored collection pieces remain directly purchasable.

This provides the excitement of collection reveals without making randomness the
only route to a desired item.

## Maintenance

Preview or apply normalization:

```powershell
py -3 scripts\rebalance-cashshop-economy.py
py -3 scripts\rebalance-cashshop-economy.py --apply
```

The generated audit is written to `data\cashshop-economy-report.json`.
`restore-cashshop.py` automatically applies normalization before rebuilding billing
products, so recovery scripts cannot silently reintroduce legacy price outliers.

For catalog loading, pricing corruption, and Cash Shop locker failures, follow
[CASHSHOP_TROUBLESHOOTING.md](CASHSHOP_TROUBLESHOOTING.md).
