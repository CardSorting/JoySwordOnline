#!/usr/bin/env python3
"""Normalize JoySword Cash Shop prices into transparent, F2P-friendly tiers."""

from __future__ import annotations

import argparse
import importlib.util
import json
import math
import re
import statistics
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RESTORE_SCRIPT = ROOT / "scripts" / "restore-cashshop.py"
PRICE_FILES = (
    ROOT / "Elsword" / "ServerResource" / "CashItemPrice.lua",
    ROOT / "Elsword" / "GameServer" / "CashItemPrice.lua",
)
DEFAULT_REPORT = ROOT / "data" / "cashshop-economy-report.json"
PRICE_LINE = re.compile(
    r"(?P<prefix>g_pCashItemManager:AddCashItemPrice\(\s*(?P<item>\d+)\s*,\s*)"
    r"(?P<price>\d+)(?P<suffix>\s*\).*)"
)
PULL_BUNDLE = re.compile(r"(?P<paid>\d+)\s*\+\s*(?P<bonus>\d+)")

FASHION_BASE = {11: 8000, 12: 6000, 13: 6000, 14: 6000, 15: 3000, 16: 3000, 17: 10000}
FASHION_ENTRY = {11: 4000, 12: 3000, 13: 3000, 14: 3000, 15: 1500, 16: 1500, 17: 5000}
CATEGORY_NAMES = {
    11: "Fashion/Weapon", 12: "Fashion/Top", 13: "Fashion/Bottom", 14: "Fashion/Hair",
    15: "Fashion/Gloves", 16: "Fashion/Shoes", 17: "Fashion/One Piece",
    21: "Accessory/Weapon", 22: "Accessory/Face", 23: "Accessory/Body",
    24: "Accessory/Leg", 25: "Accessory/Arm", 26: "Accessory/Ring", 27: "Accessory/Necklace",
    31: "Usable/Recovery", 32: "Usable/Premium", 33: "Usable/Reset", 34: "Usable/Other",
    41: "Setup/Slot", 42: "Setup/Shop", 43: "Setup/Other", 51: "Package",
    61: "Summon/Pet", 62: "Summon/Consume", 63: "Summon/Mount",
}


def load_restore_module():
    spec = importlib.util.spec_from_file_location("joysword_restore_cashshop", RESTORE_SCRIPT)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Could not load {RESTORE_SCRIPT}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


def ceil_to(value: float, step: int = 1000) -> int:
    return int(math.ceil(value / step) * step)


GLOBAL_FASHION_CANONICAL = frozenset(
    {1000}
    | set(FASHION_ENTRY.values())
    | set(FASHION_BASE.values())
    | {ceil_to(base * factor, 500) for base in FASHION_BASE.values() for factor in (1.5, 2.25, 3)}
)


def normalize_band(price: int, bands: tuple[tuple[int, int], ...]) -> int:
    for ceiling, normalized in bands:
        if price <= ceiling:
            return normalized
    return bands[-1][1]


def normalize_nonpackage(category: int, price: int, name: str) -> tuple[int, str]:
    if price <= 0:
        return 0, "hidden"

    if category in FASHION_BASE:
        base = FASHION_BASE[category]
        canonical = {
            1000: "Archive",
            FASHION_ENTRY[category]: "Entry",
            base: "Core",
            ceil_to(base * 1.5, 500): "Rare",
            ceil_to(base * 2.25, 500): "Epic",
            base * 3: "Legendary",
        }
        if price in canonical:
            return price, canonical[price]
        if price <= 500:
            return 1000, "Archive"
        if price <= 3000:
            return FASHION_ENTRY[category], "Entry"
        if price <= 8500:
            return base, "Core"
        if price <= 15000:
            return ceil_to(base * 1.5, 500), "Rare"
        if price <= 30000:
            return ceil_to(base * 2.25, 500), "Epic"
        return base * 3, "Legendary"

    if 21 <= category <= 27:
        canonical = {1000: "Archive", 2500: "Entry", 5000: "Core", 8000: "Rare", 12000: "Epic"}
        if price in canonical:
            return price, canonical[price]
        value = normalize_band(price, ((500, 1000), (3000, 2500), (7000, 5000), (12000, 8000), (10**9, 12000)))
        tier = canonical[value]
        return value, tier

    if category == 31:
        if price in {500, 1000, 1500, 2500, 4000, 6000}:
            return price, "Utility"
        value = normalize_band(price, ((750, 500), (1250, 1000), (2000, 1500), (3000, 2500), (6000, 4000), (10**9, 6000)))
        return value, "Utility"

    if category == 32:
        bundle = PULL_BUNDLE.search(name)
        if bundle:
            paid = int(bundle.group("paid"))
            bonus = int(bundle.group("bonus"))
            total = paid + bonus
            # Bundles preserve the advertised bonus while keeping one ten-pull
            # near the base daily allowance.
            return min(36000, ceil_to(total * 1000, 1000)), "Gacha Bundle"
        value = normalize_band(price, ((1200, 1200), (2000, 1800), (3000, 2500), (5000, 5000), (10000, 10000), (10**9, 18000)))
        return value, "Premium"

    if category == 33:
        return (2000 if price <= 2000 else 4000), "Reset"

    if category == 34:
        if price in {500, 1000, 2500, 5000, 8000, 12000}:
            return price, "General"
        value = normalize_band(price, ((750, 500), (1500, 1000), (3000, 2500), (7000, 5000), (12000, 8000), (10**9, 12000)))
        return value, "General"

    if category == 41:
        return (6000 if price <= 6000 else 10000), "Permanent QoL"
    if category in (42, 43):
        return (3000 if price <= 3000 else 6000), "Permanent QoL"
    if category == 61:
        value = normalize_band(price, ((2000, 2000), (8000, 8000), (10**9, 18000)))
        return value, "Companion"
    if category == 62:
        return (2000 if price <= 2000 else 4000), "Companion Utility"
    if category == 63:
        return 12000, "Mount"

    value = normalize_band(price, ((1000, 1000), (3000, 2500), (7000, 5000), (15000, 10000), (10**9, 18000)))
    return value, "General"


def package_fallback(price: int) -> tuple[int, str]:
    value = normalize_band(price, ((20000, 18000), (30000, 30000), (50000, 42000), (10**9, 60000)))
    return value, "Collection Package"


def build_price_plan(module) -> tuple[dict[int, int], dict[int, dict[str, object]]]:
    package_links = module.parse_package_links()
    package_ids = frozenset(package for package, _ in package_links)
    parsed_items = module.parse_items(package_ids)
    item_rows = {item_id: (price, category, name) for item_id, price, category, name in parsed_items}
    metadata = module.load_item_metadata()

    plan: dict[int, int] = {}
    detail: dict[int, dict[str, object]] = {}

    missing_component_ids = sorted(
        {component_id for _, component_id in package_links} - set(item_rows.keys())
    )
    for item_id in missing_component_ids:
        meta = metadata.get(item_id, module.ItemMeta())
        product_name = meta.name or f"Package component {item_id}"
        category_id = module.category_for(item_id, 0, product_name, meta)
        price = module.default_price_for_category(category_id)
        item_rows[item_id] = (price, category_id, product_name)

    for item_id in sorted(module.parse_attraction_item_ids()):
        if item_id in item_rows:
            continue
        meta = metadata.get(item_id, module.ItemMeta())
        if not module.is_wearable_meta(meta):
            continue
        product_name = meta.name or f"Gacha drop {item_id}"
        category_id = module.category_for(item_id, 0, product_name, meta)
        price = module.default_price_for_category(category_id)
        item_rows[item_id] = (price, category_id, product_name)

    for item_id, (price, category, name) in item_rows.items():
        if category == 51:
            continue
        if name.startswith("Item ") and category in FASHION_BASE and price in GLOBAL_FASHION_CANONICAL:
            new_price, tier = price, "Core"
        else:
            new_price, tier = normalize_nonpackage(category, price, name)
        plan[item_id] = new_price
        detail[item_id] = {
            "category": category,
            "category_name": CATEGORY_NAMES.get(category, f"Category {category}"),
            "name": name,
            "old_price": price,
            "new_price": new_price,
            "tier": tier,
        }

    links_by_package: dict[int, list[int]] = defaultdict(list)
    for package_id, component_id in package_links:
        if component_id not in links_by_package[package_id]:
            links_by_package[package_id].append(component_id)

    for package_id in package_ids:
        old_price, _, name = item_rows.get(package_id, (0, 51, f"Package {package_id}"))
        component_prices: list[int] = []
        for component_id in links_by_package.get(package_id, []):
            if component_id in plan:
                component_prices.append(plan[component_id])
                continue
            meta = metadata.get(component_id, module.ItemMeta())
            component_name = meta.name or f"Item {component_id}"
            category = module.category_for(component_id, 0, component_name, meta)
            default = module.default_price_for_category(category)
            component_prices.append(normalize_nonpackage(category, default, component_name)[0])

        if len(component_prices) >= 3:
            new_price = max(12000, min(60000, ceil_to(sum(component_prices) * 0.8)))
            tier = "Collection Package"
        else:
            new_price, tier = package_fallback(old_price)

        plan[package_id] = new_price
        detail[package_id] = {
            "category": 51,
            "category_name": CATEGORY_NAMES[51],
            "name": name,
            "old_price": old_price,
            "new_price": new_price,
            "tier": tier,
            "component_count": len(component_prices),
        }

    return plan, detail


def rewrite_price_file(path: Path, plan: dict[int, int], detail: dict[int, dict[str, object]], apply: bool) -> int:
    text = path.read_text(encoding="utf-8-sig")
    changed = 0
    existing_ids: set[int] = set()

    def replace(match: re.Match[str]) -> str:
        nonlocal changed
        item_id = int(match.group("item"))
        existing_ids.add(item_id)
        old_price = int(match.group("price"))
        new_price = plan.get(item_id, old_price)
        if new_price != old_price:
            changed += 1
        return f"{match.group('prefix')}{new_price}{match.group('suffix')}"

    updated = PRICE_LINE.sub(replace, text)

    # Append missing plan items into CashItemPrice.lua
    missing_lines: list[str] = []
    for item_id in sorted(plan.keys()):
        if item_id in existing_ids:
            continue
        price = plan[item_id]
        if price <= 0:
            continue
        name = detail.get(item_id, {}).get("name", f"Item {item_id}")
        missing_lines.append(f"g_pCashItemManager:AddCashItemPrice( {item_id} , {price} )\t----\t{name}")
        changed += 1

    if missing_lines:
        updated_lines = [line.rstrip() for line in updated.splitlines()]
        updated_lines.append("\n-- Auto-injected catalog items for 100% CashShop price coverage")
        updated_lines.extend(missing_lines)
        updated = "\n".join(updated_lines).rstrip() + "\n"

    if apply and updated != text:
        path.write_text(updated, encoding="utf-8-sig", newline="\n")
    return changed


def summarize(detail: dict[int, dict[str, object]], priced_ids: set[int]) -> dict[str, object]:
    categories: dict[str, dict[str, object]] = {}
    grouped: dict[str, list[dict[str, object]]] = defaultdict(list)
    for row in detail.values():
        grouped[str(row["category_name"])].append(row)

    for category, rows in sorted(grouped.items()):
        old_prices = [int(row["old_price"]) for row in rows if int(row["old_price"]) > 0]
        new_prices = [int(row["new_price"]) for row in rows if int(row["new_price"]) > 0]
        categories[category] = {
            "count": len(rows),
            "changed": sum(row["old_price"] != row["new_price"] for row in rows),
            "old_median": int(statistics.median(old_prices)) if old_prices else 0,
            "new_median": int(statistics.median(new_prices)) if new_prices else 0,
            "new_min": min(new_prices, default=0),
            "new_max": max(new_prices, default=0),
        }

    tier_counts = Counter(str(row["tier"]) for row in detail.values())
    changed_rows = sorted(
        (
            row | {"item_id": item_id}
            for item_id, row in detail.items()
            if item_id in priced_ids and row["old_price"] != row["new_price"]
        ),
        key=lambda row: abs(int(row["old_price"]) - int(row["new_price"])),
        reverse=True,
    )
    max_price = max((int(row["new_price"]) for row in detail.values()), default=0)
    return {
        "policy": {
            "daily_base_cash": 12000,
            "price_floor": 500,
            "price_ceiling": 60000,
            "maximum_base_allowance_days": round(max_price / 12000, 2),
            "package_discount": "20% from normalized component value when mappings are complete",
            "random_pull_policy": "Optional; rare pieces remain directly purchasable",
        },
        "summary": {
            "items": len(detail),
            "changed": len(changed_rows),
            "unchanged": len(detail) - len(changed_rows),
            "old_max": max((int(row["old_price"]) for row in detail.values()), default=0),
            "new_max": max_price,
        },
        "tiers": dict(sorted(tier_counts.items())),
        "categories": categories,
        "largest_changes": changed_rows[:50],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true", help="rewrite both server price files")
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--quiet", action="store_true")
    args = parser.parse_args()

    module = load_restore_module()
    plan, detail = build_price_plan(module)
    priced_ids: set[int] = set()
    for path in PRICE_FILES:
        priced_ids.update(int(match.group("item")) for match in PRICE_LINE.finditer(path.read_text(encoding="utf-8-sig")))
    changes = {str(path.relative_to(ROOT)): rewrite_price_file(path, plan, detail, args.apply) for path in PRICE_FILES}
    report = summarize(detail, priced_ids)
    report["files"] = changes
    report["applied"] = args.apply
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")

    if not args.quiet:
        action = "Applied" if args.apply else "Planned"
        print(f"{action} normalized Cash Shop pricing for {report['summary']['items']} items.")
        print(f"Changed products: {report['summary']['changed']}")
        print(f"Price ceiling: {report['summary']['new_max']}")
        print(f"Report: {args.report}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
