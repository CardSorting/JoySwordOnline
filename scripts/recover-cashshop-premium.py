#!/usr/bin/env python3
"""Recover premium cash shop items (gacha cubes, ice statues, heater bundles, VIP)."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SR_PRICE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
GS_PRICE = ELSWORD / "GameServer" / "CashItemPrice.lua"
SR_RANDOM = ELSWORD / "ServerResource" / "RandomItemData.lua"
GS_RANDOM = ELSWORD / "GameServer" / "RandomItemData.lua"
SR_MAPPING = ELSWORD / "ServerResource" / "RandomItemMapping.lua"
GS_MAPPING = ELSWORD / "GameServer" / "RandomItemMapping.lua"
ACTIVE_LIST = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
AUDIT_SCRIPT = ROOT / "scripts" / "audit-cashshop-premium.py"

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$")

SKIP_ITEM_IDS = {161028}  # joke / unusable promo cube

MANUAL_OVERRIDES = {
    207500: 1000,
    91610: 500,
    215660: 3000,
    108900: 1000,
    111064: 600,
    111065: 800,
    111066: 1000,
    111067: 1200,
    111073: 1200,
    111074: 1500,
    111075: 1800,
    111076: 2000,
    111068: 2500,
    111610: 5000,
    111069: 2200,
    113276: 4500,
    160888: 1200,
    160889: 2000,
    160890: 3500,
    160891: 6000,
    160857: 3500,
    92377: 3500,
    92378: 3500,
    264400: 5000,
    252770: 3500,
    252780: 6000,
    252790: 10000,
    252800: 14000,
    263380: 2000,
    265510: 8000,
    265530: 6000,
    265540: 10000,
    210550: 1500,
    210560: 3500,
    210570: 7000,
    85002441: 2500,
    85002451: 2500,
    85003723: 2500,
    85003821: 2500,
}

FEATURED_PRIORITY = (
    215660,
    91610,
    111064,
    111068,
    111610,
    160888,
    160891,
    210550,
    210560,
    210570,
    85003498,
    85003500,
    160949,
    183398,
)


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def parse_price_ids(path: Path) -> set[int]:
    ids: set[int] = set()
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if match:
            ids.add(int(match.group(1)))
    return ids


def parse_featured_ids(path: Path) -> set[int]:
    ids: set[int] = set()
    for line in read_text(path).splitlines():
        match = ACTIVE_ITEM_PATTERN.search(line)
        if match:
            ids.add(int(match.group(1)))
    return ids


def price_line(item_id: int, price: int, comment: str) -> str:
    line = f"g_pCashItemManager:AddCashItemPrice(\t{item_id}\t,\t{price}\t)"
    if comment:
        line += f"\t--\t{comment}"
    return line


def append_price_block(path: Path, title: str, lines: list[str]) -> None:
    if not lines:
        return
    text = read_text(path).rstrip() + "\n\n"
    text += f"---------------\n-- {title} --\n---------------\n\n"
    text += "\n".join(lines) + "\n"
    path.write_text(text, encoding="utf-8")


def bundle_price_from_comment(comment: str, default: int = 3000) -> int:
    match = re.search(r"(\d+)\s*\+\s*(\d+)", comment)
    if not match:
        return default
    base = int(match.group(1))
    bonus = int(match.group(2))
    return 1000 + base * 500 + bonus * 800


def default_premium_price(item_id: int, bucket: str, comment: str, key_id: int | None) -> int:
    if item_id in MANUAL_OVERRIDES:
        return MANUAL_OVERRIDES[item_id]

    if bucket == "vip":
        return 3000
    if bucket == "wish_pouch":
        return 2000
    if bucket == "heater_bundle":
        return bundle_price_from_comment(comment, 3500)
    if bucket == "ice_heater":
        return 2500
    if bucket == "sealed_ice":
        if any(word in comment for word in ("황금", "Gold", "gold")):
            return 2500
        if "미니" in comment:
            return 1000
        if "2배" in comment:
            return 1800
        if "올인원" in comment:
            return 3000
        return 1200
    if bucket == "seal_cube":
        if "황금" in comment:
            return 4000
        if "강화" in comment:
            return 3000
        if "천재지변" in comment or "스페셜" in comment:
            return 2500
        if "영웅" in comment:
            return 2000
        return 1500
    if bucket == "seasonal_gacha":
        return 3500 if "빛나는" in comment else 2000
    if bucket == "lucky_pouch":
        return 2500
    if bucket == "random_charm":
        if "강화" in comment:
            return 2500
        if "대박" in comment:
            return 2000
        return 1500
    if bucket == "charm_key" and key_id not in (0, 91610):
        return 3000
    return 1500


def collect_candidates(existing_ids: set[int]) -> list[tuple[int, str, str, int | None]]:
    report = subprocess.run(
        [sys.executable, str(AUDIT_SCRIPT)],
        cwd=ROOT,
        capture_output=True,
        text=True,
        check=False,
    )
    if report.returncode != 0:
        print(report.stdout)
        print(report.stderr, file=sys.stderr)
        raise SystemExit(report.returncode)

    import json

    audit_path = ROOT / "scripts" / "cashshop-premium-report.json"
    payload = json.loads(audit_path.read_text(encoding="utf-8"))
    candidates: list[tuple[int, str, str, int | None]] = []
    for row in payload["missing_price"]:
        item_id = int(row["item_id"])
        if item_id in existing_ids or item_id in SKIP_ITEM_IDS:
            continue
        if str(row["bucket"]) in ("ice_heater", "sealed_ice", "heater_bundle"):
            continue
        candidates.append(
            (
                item_id,
                str(row.get("comment", "")),
                str(row["bucket"]),
                row.get("key_id"),
            )
        )

    for key_id in (91610, 92377, 92378):
        if key_id not in existing_ids:
            candidates.append((key_id, "premium charm key", "charm_key", None))

    for item_id in (215660,):
        if item_id not in existing_ids:
            candidates.append((item_id, "코보 익스프레스 VIP 티켓", "vip", None))

    deduped: dict[int, tuple[int, str, str, int | None]] = {}
    for row in candidates:
        deduped[row[0]] = row
    return sorted(deduped.values())


def append_featured_items(path: Path, entries: list[tuple[int, str]]) -> int:
    if not entries:
        return 0
    text = read_text(path)
    marker = "\tNEW_ITEM = {"
    start = text.find(marker)
    if start < 0:
        return 0
    insert_at = start + len(marker)
    block = "\n\t\t-- recovered premium / gacha items\n"
    for item_id, comment in entries:
        block += f"\t\t\t{{ {item_id}\t,\t\t}} ,--\t{comment}\n"
    path.write_text(text[:insert_at] + block + text[insert_at:], encoding="utf-8")
    return len(entries)


def enable_random_mappings(path: Path) -> bool:
    text = read_text(path)
    if "AddRandomItemMappingData( 1, 108900" in text and not text.strip().startswith("--g_p"):
        if 'AddRandomItemMappingTime( 1, "2099' in text:
            return False

    mappings = [
        'g_pRandomItemManager:AddRandomItemMappingData( 1, 108900, 207500, 502070, 502071)',
        'g_pRandomItemManager:AddRandomItemMappingTime( 1, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        'g_pRandomItemManager:AddRandomItemMappingData( 2, 85002440, 207500, 502070, 502071)',
        'g_pRandomItemManager:AddRandomItemMappingTime( 2, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
        'g_pRandomItemManager:AddRandomItemMappingData( 3, 85002870, 207500, 502070, 502071)',
        'g_pRandomItemManager:AddRandomItemMappingTime( 3, "2000-01-01 00:00:00", "2099-12-31 23:59:59" )',
    ]
    body = (
        "-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.\n\n"
        "-- 큐브 내용물 매핑 (offline permanent pools)\n"
        "-- g_pRandomItemManager:AddRandomItemMappingData( int nIndex, int iCubeID, int iKeyItemID, int iBeforeGroupID, int iAfterGroupID)\n"
        "-- g_pRandomItemManager:AddRandomItemMappingTime( int nIndex, const char* szStartDate, const char* szEndDate)\n"
        + "\n".join(mappings)
        + "\n"
    )
    path.write_text(body, encoding="utf-8")
    return True


def sync_runtime_files() -> None:
    GS_PRICE.write_text(read_text(SR_PRICE), encoding="utf-8")
    GS_RANDOM.write_text(read_text(SR_RANDOM), encoding="utf-8")
    GS_MAPPING.write_text(read_text(SR_MAPPING), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit-only", action="store_true")
    parser.add_argument("--skip-restore", action="store_true")
    parser.add_argument("--skip-featured", action="store_true")
    args = parser.parse_args()

    if args.audit_only:
        return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode

    existing_ids = parse_price_ids(SR_PRICE)
    candidates = collect_candidates(existing_ids)

    lines: list[str] = []
    bucket_counts: dict[str, int] = {}
    priced_ids: dict[int, tuple[int, str]] = {}
    for item_id, comment, bucket, key_id in candidates:
        price = default_premium_price(item_id, bucket, comment, key_id)
        lines.append(price_line(item_id, price, comment))
        bucket_counts[bucket] = bucket_counts.get(bucket, 0) + 1
        priced_ids[item_id] = (price, comment)
        existing_ids.add(item_id)

    if lines:
        append_price_block(SR_PRICE, "Recovered premium / gacha cash shop items", lines)

    mapping_changed = enable_random_mappings(SR_MAPPING)
    sync_runtime_files()

    featured_added = 0
    if not args.skip_featured:
        featured_ids = parse_featured_ids(ACTIVE_LIST)
        featured_entries: list[tuple[int, str]] = []
        for item_id in FEATURED_PRIORITY:
            if item_id in priced_ids and item_id not in featured_ids:
                comment = priced_ids[item_id][1] or f"premium item {item_id}"
                featured_entries.append((item_id, comment))
                featured_ids.add(item_id)
        for item_id, (_, comment) in sorted(priced_ids.items()):
            if len(featured_entries) >= 40:
                break
            if item_id in featured_ids:
                continue
            if item_id in FEATURED_PRIORITY:
                continue
            featured_entries.append((item_id, comment or f"premium item {item_id}"))
            featured_ids.add(item_id)
        featured_added = append_featured_items(ACTIVE_LIST, featured_entries)

    print(f"Recovered {len(lines)} premium item prices:")
    for bucket, count in sorted(bucket_counts.items()):
        print(f"  {bucket}: {count}")
    if mapping_changed:
        print("Enabled permanent RandomItemMapping pools for ice burner gacha.")
    print(f"Added {featured_added} featured NEW_ITEM entries.")
    print("Synced GameServer RandomItemData / RandomItemMapping / CashItemPrice.")

    if args.skip_restore:
        return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode

    result = subprocess.run([sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")], cwd=ROOT)
    if result.returncode != 0:
        return result.returncode
    return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode


if __name__ == "__main__":
    raise SystemExit(main())
