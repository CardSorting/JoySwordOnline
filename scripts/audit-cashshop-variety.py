#!/usr/bin/env python3
"""Audit non-fashion cash shop variety gaps (pets, mounts, consumables, etc.)."""

from __future__ import annotations

import argparse
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
DEFAULT_REPORT = ROOT / "scripts" / "cashshop-variety-report.json"

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
LEGACY_ITEM_PATTERN = re.compile(r"^\s*(\d+)\s*,?\s*--\s*(.*)$")
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$")
BLOCK_PATTERN = re.compile(
    r'AddCashItemServerGroupData\(\s*SERVER_GROUP_ID\["([^"]+)"\]\s*,\s*(\d+)\s*\)\s*--\s*(.*)'
)

BUCKETS = {
    "pets": (
        "생명의 결정",
        "펫",
        "미니미",
        "Pet",
        "Life Crystal",
        "봉술",
        "해츨링",
        "미스틱",
        "미호",
        "시호",
        "나호",
        "여우",
        "Fox",
    ),
    "mounts": ("소환석", "탈것", "Mount", "Summon Stone", "라이딩", "Riding"),
    "ice_burner": ("얼음", "가열기", "Ice Burner", "Ice Heater", "조각상"),
    "consumables": (
        "주문서",
        "플루오르",
        "복원",
        "포션",
        "Scroll",
        "Potion",
        "Fluorite",
        "메가폰",
        "Megaphone",
        "비전서",
        "그노시스",
        "각인",
        "강화",
        "보조제",
    ),
    "resets": ("초기화", "변경권", "Reset", "Change Ticket", "전직"),
    "slots": ("슬롯", "확장", "Slot", "Expansion", "인벤", "Inventory"),
    "accessories": (
        "액세",
        "악세",
        "안경",
        "모자",
        "날개",
        "반지",
        "목걸이",
        "Accessory",
        "Ring",
        "Wing",
        "Glasses",
        "오라",
        "Aura",
    ),
    "packages": ("패키지", "Package", "완전체"),
    "fashion": ("아바타", "코스튬", "상의", "하의", "헤어", "Costume", "Avatar"),
}


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


def parse_list_items(path: Path, legacy: bool) -> dict[int, str]:
    items: dict[int, str] = {}
    if not path.exists():
        return items
    pattern = LEGACY_ITEM_PATTERN if legacy else ACTIVE_ITEM_PATTERN
    for line in read_text(path).splitlines():
        match = pattern.match(line.strip()) if legacy else pattern.search(line)
        if match:
            items[int(match.group(1))] = match.group(2).strip()
    return items


def bucket_names(text: str) -> list[str]:
    folded = text.casefold()
    hits = [name for name, words in BUCKETS.items() if any(word.casefold() in folded for word in words)]
    return hits or ["other"]


def build_report() -> dict[str, object]:
    prices = parse_prices(ELSWORD / "ServerResource" / "CashItemPrice.lua")
    legacy = parse_list_items(ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua", legacy=True)
    active = parse_list_items(ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua", legacy=False)

    legacy_unpriced: dict[str, list[dict[str, object]]] = defaultdict(list)
    for item_id, comment in legacy.items():
        if item_id in prices:
            continue
        for bucket in bucket_names(comment):
            legacy_unpriced[bucket].append({"id": item_id, "name": comment})

    active_unpriced: dict[str, list[dict[str, object]]] = defaultdict(list)
    for item_id, comment in active.items():
        if item_id in prices:
            continue
        for bucket in bucket_names(comment):
            active_unpriced[bucket].append({"id": item_id, "name": comment})

    blocked: dict[int, dict[str, str]] = {}
    cash_data = ELSWORD / "ServerResource" / "CashItemData.lua"
    if cash_data.exists():
        for line in read_text(cash_data).splitlines():
            match = BLOCK_PATTERN.search(line)
            if match:
                blocked[int(match.group(2))] = {
                    "group": match.group(1),
                    "comment": (match.group(3) or "").strip(),
                }

    meaningful_buckets = ("pets", "mounts", "ice_burner", "consumables", "resets", "slots", "accessories")

    return {
        "summary": {
            "priced_total": len(prices),
            "legacy_total": len(legacy),
            "active_total": len(active),
            "legacy_unpriced_total": sum(len(rows) for rows in legacy_unpriced.values()),
            "active_featured_without_price": sum(len(rows) for rows in active_unpriced.values()),
            "legacy_meaningful_unpriced": sum(len(legacy_unpriced[b]) for b in meaningful_buckets),
            "active_meaningful_unpriced": sum(len(active_unpriced[b]) for b in meaningful_buckets),
            "blocked_items": len(blocked),
            "blocked_with_price": sum(1 for item_id in blocked if item_id in prices),
        },
        "legacy_unpriced_by_bucket": {bucket: len(rows) for bucket, rows in legacy_unpriced.items()},
        "active_unpriced_by_bucket": {bucket: len(rows) for bucket, rows in active_unpriced.items()},
        "samples_legacy_unpriced": {
            bucket: rows[:15] for bucket, rows in sorted(legacy_unpriced.items(), key=lambda row: -len(row[1]))
        },
        "active_no_price_samples": [
            row
            for bucket in meaningful_buckets
            for row in active_unpriced.get(bucket, [])[:8]
        ][:40],
        "blocked_priced_samples": [
            {"id": item_id, **blocked[item_id]}
            for item_id in list(blocked)
            if item_id in prices
        ][:30],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    args = parser.parse_args()

    report = build_report()
    args.report.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"Wrote {args.report}")
    for key, value in report["summary"].items():
        print(f"  {key}: {value}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
