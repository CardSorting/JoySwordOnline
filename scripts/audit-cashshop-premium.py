#!/usr/bin/env python3
"""Audit premium / gacha cash shop gaps (ice burners, seal cubes, VIP, bundles)."""

from __future__ import annotations

import argparse
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
DEFAULT_REPORT = ROOT / "scripts" / "cashshop-premium-report.json"

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
SEAL_PATTERN = re.compile(
    r"AddSealRandomItemInfo\(\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
CHARM_PATTERN = re.compile(
    r"AddCharmItem\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ATTRACTION_PATTERN = re.compile(
    r"AddAttractionItemInfo\(\s*(\d+)\s*,\s*true\s*\)\s*(?:--\s*(.*))?"
)
CASH_DATA_PATTERN = re.compile(
    r"AddCashItemServerGroupData\([^,]+,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$")


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def parse_prices(path: Path) -> dict[int, dict[str, object]]:
    prices: dict[int, dict[str, object]] = {}
    if not path.exists():
        return prices
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if not match:
            continue
        item_id = int(match.group(1))
        prices[item_id] = {
            "price": int(match.group(2)),
            "comment": (match.group(3) or "").strip(),
        }
    return prices


def classify_premium(item_id: int, comment: str, source: str) -> str:
    text = comment.casefold()
    if "vip" in text or item_id == 215660:
        return "vip"
    if "소원주머니" in comment or "wish" in text:
        return "wish_pouch"
    if "가열기" in comment and "큐브" in comment:
        return "heater_bundle"
    if "가열기" in comment or "ice burner" in text or "ice heater" in text:
        return "ice_heater"
    if "봉인된" in comment and "얼음" in comment:
        return "sealed_ice"
    if "얼음 조각상" in comment and "봉인" not in comment:
        return "sealed_ice"
    if item_id == 108900 or "얼음 조각상" in comment:
        return "sealed_ice"
    if "큐브" in comment or "cube" in text:
        return "seal_cube"
    if "할로윈" in comment or "영혼" in comment:
        return "seasonal_gacha"
    if "복주머니" in comment:
        return "lucky_pouch"
    if source == "charm_key":
        return "charm_key"
    if source == "charm_self":
        return "random_charm"
    return "premium_other"


def parse_random_item_data(path: Path) -> dict[int, dict[str, object]]:
    items: dict[int, dict[str, object]] = {}
    for line in read_text(path).splitlines():
        match = SEAL_PATTERN.search(line)
        if match:
            item_id = int(match.group(1))
            comment = (match.group(2) or "").strip()
            items[item_id] = {
                "comment": comment,
                "source": "seal_random",
                "bucket": classify_premium(item_id, comment, "seal_random"),
            }
            continue
        match = CHARM_PATTERN.search(line)
        if match:
            item_id = int(match.group(1))
            key_id = int(match.group(2))
            comment = (match.group(3) or "").strip()
            source = "charm_self" if key_id == 0 else "charm_key"
            items[item_id] = {
                "comment": comment,
                "source": source,
                "key_id": key_id,
                "bucket": classify_premium(item_id, comment, source),
            }
            continue
        match = ATTRACTION_PATTERN.search(line)
        if not match:
            continue
        item_id = int(match.group(1))
        comment = (match.group(2) or "").strip()
        bucket = classify_premium(item_id, comment, "attraction")
        if bucket in {"premium_other"} and not any(
            word in comment for word in ("가열기", "큐브", "VIP", "랜덤", "주머니", "황금")
        ):
            continue
        items[item_id] = {
            "comment": comment,
            "source": "attraction",
            "bucket": bucket,
        }
    return items


def parse_cash_item_data(path: Path) -> dict[int, dict[str, object]]:
    items: dict[int, dict[str, object]] = {}
    if not path.exists():
        return items
    for line in read_text(path).splitlines():
        match = CASH_DATA_PATTERN.search(line)
        if not match:
            continue
        item_id = int(match.group(1))
        comment = (match.group(2) or "").strip()
        if not any(word in comment for word in ("가열기", "큐브", "VIP", "랜덤", "주머니")):
            continue
        items[item_id] = {
            "comment": comment,
            "source": "cash_item_data",
            "bucket": classify_premium(item_id, comment, "cash_item_data"),
        }
    return items


def parse_featured(path: Path) -> set[int]:
    featured: set[int] = set()
    if not path.exists():
        return featured
    for line in read_text(path).splitlines():
        match = ACTIVE_ITEM_PATTERN.search(line)
        if match:
            featured.add(int(match.group(1)))
    return featured


def build_report() -> dict[str, object]:
    price_path = ELSWORD / "ServerResource" / "CashItemPrice.lua"
    prices = parse_prices(price_path)
    premium_items = parse_random_item_data(ELSWORD / "ServerResource" / "RandomItemData.lua")
    premium_items.update(parse_cash_item_data(ELSWORD / "ServerResource" / "CashItemData.lua"))
    premium_items = {
        item_id: meta
        for item_id, meta in premium_items.items()
        if meta["bucket"] not in ("ice_heater", "sealed_ice", "heater_bundle")
    }
    featured = parse_featured(ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua")

    missing_price: list[dict[str, object]] = []
    bucket_missing = Counter()
    for item_id, meta in sorted(premium_items.items()):
        if item_id in prices:
            continue
        bucket = str(meta["bucket"])
        bucket_missing[bucket] += 1
        missing_price.append(
            {
                "item_id": item_id,
                "bucket": bucket,
                "source": meta["source"],
                "comment": meta.get("comment", ""),
                "key_id": meta.get("key_id"),
            }
        )

    missing_featured = [
        item_id
        for item_id in prices
        if item_id in premium_items and item_id not in featured
    ]

    return {
        "priced_premium_candidates": sum(
            1 for item_id in premium_items if item_id in prices
        ),
        "premium_candidates": len(premium_items),
        "missing_price_count": len(missing_price),
        "missing_price_by_bucket": dict(bucket_missing),
        "missing_price": missing_price,
        "missing_featured_count": len(missing_featured),
        "missing_featured_sample": missing_featured[:80],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    report = build_report()
    args.json.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding="utf-8")

    print(f"Premium candidates: {report['premium_candidates']}")
    print(f"Already priced: {report['priced_premium_candidates']}")
    print(f"Missing prices: {report['missing_price_count']}")
    for bucket, count in sorted(report["missing_price_by_bucket"].items()):
        print(f"  {bucket}: {count}")
    print(f"Missing featured entries: {report['missing_featured_count']}")
    print(f"Report: {args.json}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
