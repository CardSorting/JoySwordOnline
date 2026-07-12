#!/usr/bin/env python3
"""Audit cash shop costume / package coverage and write a JSON report."""

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
DEFAULT_REPORT = ROOT / "scripts" / "costume-audit-report.json"
PACKAGE_FILES = (
    ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "_ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "Resources" / "PackageItemData.lua",
)

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
PACKAGE_PATTERN = re.compile(
    r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,"
)
LEGACY_ITEM_PATTERN = re.compile(r"^\s*(\d+)\s*,?\s*--\s*(.*)$")
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$")
ITEM_FIELD_PATTERN = re.compile(
    r"(m_ItemID|m_Name|m_ItemType|m_bFashion|m_EqipPosition)\s*=\s*(.+)"
)
ENUM_VALUE_PATTERN = re.compile(r'\["([^"]+)"\]')
BLOCK_PATTERN = re.compile(
    r'AddCashItemServerGroupData\(\s*SERVER_GROUP_ID\["([^"]+)"\]\s*,\s*(\d+)\s*\)\s*--\s*(.*)'
)

COSTUME_COMMENT_WORDS = (
    "패키지",
    "package",
    "아바타",
    "avatar",
    "코스튬",
    "costume",
    "유카타",
    "할로윈",
    "크리스마스",
    "수영복",
    "드레스",
    "한벌",
    "원피스",
    "상의",
    "하의",
    "헤어",
    "장갑",
    "신발",
    "무기",
    "로브",
    "턱시도",
    "망토",
    "가면",
    "모자",
)

SLOT_DEFAULT_PRICE = {
    "EP_WEAPON_HAND": 7000,
    "EP_WEAPON_SECOND": 7000,
    "EP_DEFENCE_BODY": 5000,
    "EP_DEFENCE_LEG": 5000,
    "EP_DEFENCE_HAIR": 5000,
    "EP_DEFENCE_HAND": 2400,
    "EP_DEFENCE_FOOT": 2400,
    "EP_ONEPIECE_FASHION": 9000,
    "EP_AC_BODY": 5000,
    "EP_AC_LEG": 5000,
    "EP_AC_FACE1": 5000,
    "EP_AC_FACE2": 5000,
    "EP_AC_FACE3": 5000,
    "EP_AC_ARM": 5000,
    "EP_AC_WEAPON": 5000,
}


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def parse_price_map(path: Path) -> dict[int, dict[str, object]]:
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


def parse_packages(paths: tuple[Path, ...]) -> tuple[dict[int, list[int]], dict[int, str]]:
    packages: dict[int, list[int]] = defaultdict(list)
    names: dict[int, str] = {}
    for path in paths:
        if not path.exists():
            continue
        for line in read_text(path).splitlines():
            match = PACKAGE_PATTERN.search(line)
            if not match:
                continue
            package_id = int(match.group(1))
            component_id = int(match.group(2))
            packages[package_id].append(component_id)
            if "--" in line:
                names[package_id] = line.split("--", 1)[1].strip()
    return packages, names


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


def parse_item_metadata(path: Path) -> dict[int, dict[str, object]]:
    metadata: dict[int, dict[str, object]] = {}
    current: dict[str, object] | None = None
    pending = False
    depth = 0

    for line in read_text(path).splitlines():
        if current is None:
            if "g_pItemManager:AddItemTemplet" in line:
                current = {"fashion": False, "type": "", "equip": "", "name": ""}
                pending = True
            continue

        if pending:
            if "{" in line:
                depth = line.count("{") - line.count("}")
                pending = False
            continue

        match = ITEM_FIELD_PATTERN.search(line)
        if match:
            field, value = match.group(1), match.group(2).strip().rstrip(",")
            if field == "m_ItemID":
                id_match = re.search(r"\d+", value)
                if id_match:
                    current["id"] = int(id_match.group(0))
            elif field == "m_Name":
                enum_match = ENUM_VALUE_PATTERN.search(value)
                if enum_match:
                    current["name"] = enum_match.group(1)
            elif field == "m_ItemType":
                enum_match = ENUM_VALUE_PATTERN.search(value)
                if enum_match:
                    current["type"] = enum_match.group(1)
            elif field == "m_EqipPosition":
                enum_match = ENUM_VALUE_PATTERN.search(value)
                if enum_match:
                    current["equip"] = enum_match.group(1)
            elif field == "m_bFashion":
                current["fashion"] = "true" in value.casefold()

        depth += line.count("{") - line.count("}")
        if depth <= 0 and current is not None:
            item_id = current.get("id")
            if isinstance(item_id, int):
                metadata[item_id] = dict(current)
            current = None
            pending = False
            depth = 0

    return metadata


def is_costume(meta: dict[str, object] | None) -> bool:
    if not meta:
        return False
    item_type = str(meta.get("type", ""))
    if item_type in ("IT_CONSUME", "IT_SPECIAL", "IT_MATERIAL", "IT_QUEST"):
        return False
    if item_type == "IT_ACCESSORY":
        equip = str(meta.get("equip", ""))
        return equip.startswith("EP_AC_")
    if bool(meta.get("fashion")):
        return True
    equip = str(meta.get("equip", ""))
    return item_type in ("IT_WEAPON", "IT_DEFENCE") and (
        equip.startswith("EP_DEFENCE")
        or equip.startswith("EP_WEAPON")
        or equip == "EP_ONEPIECE_FASHION"
    )


def looks_like_costume_label(text: str) -> bool:
    folded = text.casefold()
    return any(word.casefold() in folded for word in COSTUME_COMMENT_WORDS)


def default_piece_price(meta: dict[str, object] | None) -> int:
    equip = str((meta or {}).get("equip", ""))
    return SLOT_DEFAULT_PRICE.get(equip, 5000)


def infer_package_price(
    package_id: int,
    prices: dict[int, dict[str, object]],
    packages: dict[int, list[int]],
) -> int | None:
    components = packages.get(package_id)
    if not components:
        return None

    total = 0
    priced_parts = 0
    for component_id in components:
        entry = prices.get(component_id)
        if entry is None:
            continue
        total += int(entry["price"])
        priced_parts += 1

    if priced_parts == 0:
        return None
    if priced_parts == len(components):
        return max(19900, int(total * 0.92))
    return max(14900, int((total / priced_parts) * len(components) * 0.92))


def build_report() -> dict[str, object]:
    price_path = ELSWORD / "ServerResource" / "CashItemPrice.lua"
    legacy_path = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"
    active_path = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
    item_path = ELSWORD / "Resources" / "Item.lua"
    cash_data_path = ELSWORD / "ServerResource" / "CashItemData.lua"

    prices = parse_price_map(price_path)
    packages, package_names = parse_packages(PACKAGE_FILES)
    legacy = parse_list_items(legacy_path, legacy=True)
    active = parse_list_items(active_path, legacy=False)
    metadata = parse_item_metadata(item_path)

    component_users: dict[int, list[int]] = defaultdict(list)
    for package_id, components in packages.items():
        for component_id in components:
            component_users[component_id].append(package_id)

    unpriced_packages: list[dict[str, object]] = []
    for package_id, components in sorted(packages.items()):
        if package_id in prices:
            continue
        priced_components = sum(1 for component_id in components if component_id in prices)
        unpriced_packages.append(
            {
                "id": package_id,
                "name": package_names.get(package_id, ""),
                "priced_components": priced_components,
                "total_components": len(components),
                "inferable": priced_components > 0,
                "in_legacy": package_id in legacy,
                "in_active": package_id in active,
            }
        )

    missing_components: list[dict[str, object]] = []
    for component_id, users in sorted(component_users.items()):
        if component_id in prices:
            continue
        meta = metadata.get(component_id)
        if not is_costume(meta):
            continue
        missing_components.append(
            {
                "id": component_id,
                "name": str((meta or {}).get("name", "")),
                "used_by_packages": len(users),
                "default_price": default_piece_price(meta),
            }
        )

    legacy_no_price = [
        {"id": item_id, "name": comment}
        for item_id, comment in sorted(legacy.items())
        if item_id not in prices
        and (
            item_id in packages
            or looks_like_costume_label(comment)
            or is_costume(metadata.get(item_id))
        )
    ]

    legacy_not_active = [
        {"id": item_id, "name": legacy[item_id]}
        for item_id in sorted(legacy)
        if item_id in prices and item_id not in active
    ]

    blocked: dict[int, dict[str, str]] = {}
    if cash_data_path.exists():
        for line in read_text(cash_data_path).splitlines():
            match = BLOCK_PATTERN.search(line)
            if match:
                blocked[int(match.group(2))] = {
                    "group": match.group(1),
                    "comment": (match.group(3) or "").strip(),
                }

    recoverable_packages = [row for row in unpriced_packages if row["inferable"]]
    packages_no_component_prices = [
        row for row in unpriced_packages if row["priced_components"] == 0
    ]

    return {
        "summary": {
            "prices": len(prices),
            "packages": len(packages),
            "unpriced_packages": len(unpriced_packages),
            "recoverable_packages": len(recoverable_packages),
            "packages_no_component_prices": len(packages_no_component_prices),
            "missing_costume_components": len(missing_components),
            "legacy_costume_no_price": len(legacy_no_price),
            "legacy_priced_not_active": len(legacy_not_active),
            "blocked_cash_items": len(blocked),
            "blocked_and_priced": sum(1 for item_id in blocked if item_id in prices),
        },
        "packages_no_component_prices": packages_no_component_prices[:100],
        "recoverable_packages": recoverable_packages[:100],
        "missing_components": sorted(
            missing_components, key=lambda row: -int(row["used_by_packages"])
        )[:100],
        "legacy_no_price": legacy_no_price[:100],
        "legacy_not_active": legacy_not_active[:100],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--report",
        type=Path,
        default=DEFAULT_REPORT,
        help="Output JSON report path",
    )
    args = parser.parse_args()

    report = build_report()
    args.report.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")

    print(f"Wrote {args.report}")
    for key, value in report["summary"].items():
        print(f"  {key}: {value}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
