#!/usr/bin/env python3
"""Recover missing cash shop costumes, packages, and legacy storefront entries."""

from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SR_PRICE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
GS_PRICE = ELSWORD / "GameServer" / "CashItemPrice.lua"
LEGACY_LIST = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"
ACTIVE_LIST = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
PACKAGE_FILES = (
    ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "_ClientScript" / "Major" / "PackageItemData.lua",
    ELSWORD / "Resources" / "PackageItemData.lua",
)
ITEM_FILE = ELSWORD / "Resources" / "Item.lua"
AUDIT_SCRIPT = ROOT / "scripts" / "audit-cashshop-costumes.py"

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
LEGACY_ITEM_PATTERN = re.compile(r"^\s*(\d+)\s*,?\s*--\s*(.*)$")
PACKAGE_PATTERN = re.compile(
    r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,"
)
ACTIVE_ITEM_PATTERN = re.compile(
    r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$"
)
ITEM_FIELD_PATTERN = re.compile(
    r"(m_ItemID|m_Name|m_ItemType|m_bFashion|m_EqipPosition)\s*=\s*(.+)"
)
ENUM_VALUE_PATTERN = re.compile(r'\["([^"]+)"\]')

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


def parse_price_ids(path: Path) -> set[int]:
    ids: set[int] = set()
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if match:
            ids.add(int(match.group(1)))
    return ids


def parse_price_map(path: Path) -> dict[int, tuple[int, str]]:
    prices: dict[int, tuple[int, str]] = {}
    for line in read_text(path).splitlines():
        match = PRICE_PATTERN.search(line)
        if not match:
            continue
        item_id = int(match.group(1))
        prices[item_id] = (int(match.group(2)), (match.group(3) or "").strip())
    return prices


def parse_legacy_shop_items(path: Path) -> dict[int, str]:
    items: dict[int, str] = {}
    for line in read_text(path).splitlines():
        match = LEGACY_ITEM_PATTERN.match(line.strip())
        if match:
            items[int(match.group(1))] = match.group(2).strip()
    return items


def parse_active_shop_ids(path: Path) -> set[int]:
    ids: set[int] = set()
    for line in read_text(path).splitlines():
        match = ACTIVE_ITEM_PATTERN.search(line)
        if match:
            ids.add(int(match.group(1)))
    return ids


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


def merge_legacy_package_data() -> int:
    """Copy package definitions that only exist in legacy script files."""
    primary = PACKAGE_FILES[0]
    legacy = PACKAGE_FILES[1]
    if not primary.exists() or not legacy.exists():
        return 0

    existing: set[str] = set()
    for line in read_text(primary).splitlines():
        match = PACKAGE_PATTERN.search(line)
        if match:
            existing.add(f"{match.group(1)}:{match.group(2)}")
    additions: list[str] = []
    for line in read_text(legacy).splitlines():
        match = PACKAGE_PATTERN.search(line)
        if not match:
            continue
        key = f"{match.group(1)}:{match.group(2)}"
        if key in existing:
            continue
        additions.append(line.rstrip())
        existing.add(key)

    if not additions:
        return 0

    text = read_text(primary).rstrip() + "\n\n"
    text += "---------------\n-- Merged from _ClientScript PackageItemData --\n---------------\n\n"
    text += "\n".join(additions) + "\n"
    primary.write_text(text, encoding="utf-8")
    resources = PACKAGE_FILES[2]
    if resources != primary:
        shutil.copy2(primary, resources)
    return len(additions)


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
    prices: dict[int, tuple[int, str]],
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
        total += entry[0]
        priced_parts += 1

    if priced_parts == 0:
        return None
    if priced_parts == len(components):
        return max(19900, int(total * 0.92))
    return max(14900, int((total / priced_parts) * len(components) * 0.92))


def price_line(item_id: int, price: int, comment: str) -> str:
    line = f"g_pCashItemManager:AddCashItemPrice(\t{item_id}\t,\t{price}\t)"
    if comment:
        line += f"\t--\t{comment}"
    return line


def append_price_block(path: Path, title: str, lines: list[str]) -> int:
    if not lines:
        return 0
    text = read_text(path).rstrip() + "\n\n"
    text += f"---------------\n-- {title} --\n---------------\n\n"
    text += "\n".join(lines) + "\n"
    path.write_text(text, encoding="utf-8")
    return len(lines)


def merge_gameserver_only_prices(
    prices: dict[int, tuple[int, str]],
    existing_ids: set[int],
) -> list[str]:
    appended: list[str] = []
    for item_id, (price, comment) in parse_price_map(GS_PRICE).items():
        if item_id in existing_ids:
            continue
        appended.append(price_line(item_id, price, comment or "merged from GameServer"))
        prices[item_id] = (price, comment or "merged from GameServer")
        existing_ids.add(item_id)
    return appended


def recover_missing_components(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    metadata: dict[int, dict[str, object]],
    existing_ids: set[int],
) -> list[str]:
    component_ids: set[int] = set()
    for components in packages.values():
        component_ids.update(components)

    appended: list[str] = []
    for component_id in sorted(component_ids):
        if component_id in existing_ids:
            continue
        meta = metadata.get(component_id)
        if not is_costume(meta):
            continue
        price = default_piece_price(meta)
        comment = str((meta or {}).get("name", "")) or f"recovered costume piece {component_id}"
        appended.append(price_line(component_id, price, comment))
        prices[component_id] = (price, comment)
        existing_ids.add(component_id)
    return appended


def recover_dead_reference_packages(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    package_names: dict[int, str],
    existing_ids: set[int],
) -> list[str]:
    """Price costume packages whose components are missing from Item.lua entirely."""
    appended: list[str] = []
    for package_id, components in sorted(packages.items()):
        if package_id in existing_ids:
            continue
        if infer_package_price(package_id, prices, packages) is not None:
            continue
        comment = package_names.get(package_id, "")
        if not (looks_like_costume_label(comment) or "망토" in comment):
            continue

        for component_id in components:
            if component_id in existing_ids:
                continue
            piece_comment = f"{comment} piece" if comment else f"recovered package component {component_id}"
            appended.append(price_line(component_id, 5000, piece_comment))
            prices[component_id] = (5000, piece_comment)
            existing_ids.add(component_id)

        price = infer_package_price(package_id, prices, packages) or max(19900, 5000 * max(1, len(components)))
        appended.append(price_line(package_id, price, comment or f"recovered costume package {package_id}"))
        prices[package_id] = (price, comment)
        existing_ids.add(package_id)
    return appended


def recover_orphan_packages(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    package_names: dict[int, str],
    existing_ids: set[int],
) -> list[str]:
    """Price single-item costume packages whose components are missing from Item.lua."""
    appended: list[str] = []
    for package_id, components in sorted(packages.items()):
        if package_id in existing_ids or len(components) != 1:
            continue
        if infer_package_price(package_id, prices, packages) is not None:
            continue
        comment = package_names.get(package_id, "")
        if not looks_like_costume_label(comment):
            continue
        price = 5000
        appended.append(price_line(package_id, price, comment or f"recovered orphan package {package_id}"))
        prices[package_id] = (price, comment)
        existing_ids.add(package_id)
    return appended


def recover_packages(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    package_names: dict[int, str],
    existing_ids: set[int],
) -> list[str]:
    appended: list[str] = []
    for package_id in sorted(packages):
        if package_id in existing_ids:
            continue
        price = infer_package_price(package_id, prices, packages)
        if price is None:
            continue
        comment = package_names.get(package_id, "") or f"recovered costume package {package_id}"
        appended.append(price_line(package_id, price, comment))
        prices[package_id] = (price, comment)
        existing_ids.add(package_id)
    return appended


def recover_legacy_costumes(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    metadata: dict[int, dict[str, object]],
    legacy: dict[int, str],
    existing_ids: set[int],
) -> list[str]:
    appended: list[str] = []
    for item_id, comment in sorted(legacy.items()):
        if item_id in existing_ids:
            continue
        if not (
            item_id in packages
            or looks_like_costume_label(comment)
            or is_costume(metadata.get(item_id))
        ):
            continue

        price = infer_package_price(item_id, prices, packages)
        if price is None and is_costume(metadata.get(item_id)):
            price = default_piece_price(metadata.get(item_id))
        if price is None:
            continue

        label = comment or str(metadata.get(item_id, {}).get("name", ""))
        appended.append(price_line(item_id, price, label or f"recovered legacy costume {item_id}"))
        prices[item_id] = (price, label)
        existing_ids.add(item_id)
    return appended


def merge_cashshop_list(entries: dict[int, str]) -> int:
    if not entries or not ACTIVE_LIST.exists():
        return 0

    existing = parse_active_shop_ids(ACTIVE_LIST)
    additions = [(item_id, comment) for item_id, comment in sorted(entries.items()) if item_id not in existing]
    if not additions:
        return 0

    text = read_text(ACTIVE_LIST)
    marker = "HOT_ITEM = {"
    idx = text.find(marker)
    if idx == -1:
        return 0

    block = "\n\t\t-- recovered cash shop costumes / packages\n"
    for item_id, comment in additions:
        block += f"\t\t\t{{ {item_id}\t,\t\t}} ,--\t{comment}\n"
    text = text[: idx + len(marker)] + block + text[idx + len(marker) :]
    ACTIVE_LIST.write_text(text, encoding="utf-8")
    return len(additions)


def collect_shopfront_entries(
    prices: dict[int, tuple[int, str]],
    packages: dict[int, list[int]],
    package_names: dict[int, str],
    legacy: dict[int, str],
    recovered_ids: set[int],
) -> dict[int, str]:
    entries: dict[int, str] = {}
    active = parse_active_shop_ids(ACTIVE_LIST)

    for item_id in recovered_ids:
        if item_id not in prices:
            continue
        entries[item_id] = (
            package_names.get(item_id)
            or legacy.get(item_id)
            or prices[item_id][1]
            or f"recovered item {item_id}"
        )

    for item_id, comment in legacy.items():
        if item_id not in prices or item_id in active:
            continue
        entries[item_id] = comment

    return entries


def sync_gameserver_prices() -> None:
    GS_PRICE.write_text(read_text(SR_PRICE), encoding="utf-8")


def run_audit() -> int:
    result = subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT)
    return result.returncode


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--audit-only",
        action="store_true",
        help="Only run the audit report, do not modify files",
    )
    parser.add_argument(
        "--skip-restore",
        action="store_true",
        help="Update lua files but do not rebuild ES_BILLING",
    )
    args = parser.parse_args()

    if args.audit_only:
        return run_audit()

    existing_ids = parse_price_ids(SR_PRICE)
    prices = parse_price_map(SR_PRICE)
    packages, package_names = parse_packages(PACKAGE_FILES)
    metadata = parse_item_metadata(ITEM_FILE)
    legacy = parse_legacy_shop_items(LEGACY_LIST) if LEGACY_LIST.exists() else {}
    merged_packages = merge_legacy_package_data()
    if merged_packages:
        print(f"Merged {merged_packages} legacy package definitions.")
        packages, package_names = parse_packages(PACKAGE_FILES)

    before = set(existing_ids)

    merged = merge_gameserver_only_prices(prices, existing_ids)
    components = recover_missing_components(prices, packages, metadata, existing_ids)
    package_lines = recover_packages(prices, packages, package_names, existing_ids)
    dead_ref_lines = recover_dead_reference_packages(prices, packages, package_names, existing_ids)
    orphan_lines = recover_orphan_packages(prices, packages, package_names, existing_ids)
    legacy_lines = recover_legacy_costumes(prices, packages, metadata, legacy, existing_ids)

    all_lines = merged + components + package_lines + dead_ref_lines + orphan_lines + legacy_lines
    recovered_ids = set(existing_ids) - before
    if all_lines:
        append_price_block(SR_PRICE, "Recovered cash shop costume / package gaps", all_lines)

    sync_gameserver_prices()

    shopfront = collect_shopfront_entries(prices, packages, package_names, legacy, recovered_ids)
    featured = merge_cashshop_list(shopfront)

    print(f"Merged {len(merged)} GameServer-only prices.")
    print(f"Recovered {len(components)} missing costume components.")
    print(f"Recovered {len(package_lines)} package prices.")
    print(f"Recovered {len(dead_ref_lines)} dead-reference package prices.")
    print(f"Recovered {len(orphan_lines)} orphan package prices.")
    print(f"Recovered {len(legacy_lines)} legacy costume prices.")
    print(f"Added {featured} storefront entries to CashShopItemList.lua.")

    if args.skip_restore:
        return run_audit()

    result = subprocess.run([sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")], cwd=ROOT)
    if result.returncode != 0:
        return result.returncode
    return run_audit()


if __name__ == "__main__":
    raise SystemExit(main())
