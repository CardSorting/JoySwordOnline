#!/usr/bin/env python3
"""Recover meaningful cash shop variety items (pets, mounts, consumables, QoL)."""

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
LEGACY_LIST = ELSWORD / "_ClientScript" / "Major" / "CashShopItemList.lua"
ACTIVE_LIST = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"
AUDIT_SCRIPT = ROOT / "scripts" / "audit-cashshop-variety.py"

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
LEGACY_ITEM_PATTERN = re.compile(r"^\s*(\d+)\s*,?\s*--\s*(.*)$")
ACTIVE_ITEM_PATTERN = re.compile(r"\{\s*(\d+)\s*,\s*\}\s*,?\s*--\s*(.*)$")
PACKAGE_PATTERN = re.compile(
    r"AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,\s*0\s*,\s*true\s*\)\s*(?:--\s*(.*))?"
)
PET_CREATE_PATTERN = re.compile(
    r"AddPetCreateItemInfo\(\s*(\d+)\s*,\s*PET_UNIT_ID\[[^\]]+\]\s*,\s*-1\s*\)\s*(?:--\s*(.*))?"
)

MEANINGFUL_BUCKETS = (
    "pets",
    "pet_packages",
    "mounts",
    "consumables",
    "resets",
    "slots",
    "accessories",
)

BUCKET_KEYWORDS = {
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
        "완전체",
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
        "화석",
        "나무 열매",
    ),
    "resets": ("초기화", "변경권", "Reset", "Change Ticket", "전직", "닉네임"),
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
        "머리띠",
    ),
    "pet_packages": (),
}

ICE_BURNER_OVERRIDES = {
    207500: 1000,
    210550: 1500,
    210560: 3500,
    210570: 7000,
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


def parse_shop_items(path: Path, legacy: bool) -> dict[int, str]:
    items: dict[int, str] = {}
    if not path.exists():
        return items
    pattern = LEGACY_ITEM_PATTERN if legacy else ACTIVE_ITEM_PATTERN
    for line in read_text(path).splitlines():
        match = pattern.match(line.strip()) if legacy else pattern.search(line)
        if match:
            items[int(match.group(1))] = match.group(2).strip()
    return items


def classify_item(item_id: int, comment: str) -> str | None:
    folded = comment.casefold()
    if any(word in folded for word in ("패키지", "package", "완전체")) and any(
        word.casefold() in folded for word in BUCKET_KEYWORDS["pets"]
    ):
        return "pets"
    for bucket in MEANINGFUL_BUCKETS:
        if any(word.casefold() in folded for word in BUCKET_KEYWORDS[bucket]):
            return bucket
    if 550_000 <= item_id < 560_000:
        return "mounts"
    if 500_000 <= item_id < 501_000 or 700_060_000 <= item_id < 700_070_000:
        return "pets"
    if 200_700 <= item_id < 201_000 or 206_700 <= item_id < 207_000 or 270_800 <= item_id < 271_200:
        return "consumables"
    if 242_000 <= item_id < 243_000 or 252_700 <= item_id < 252_800 or 264_300 <= item_id < 264_500:
        return "resets"
    if 206_800 <= item_id < 207_000 or 200_880 <= item_id < 200_900:
        return "slots"
    return None


def level_tier_price(comment: str, base: int = 1000) -> int:
    match = re.search(r"Lv\.?\s*(\d+)", comment, re.IGNORECASE)
    if not match:
        return base
    level = int(match.group(1))
    return base + max(0, level - 1) * 250


def default_price(item_id: int, comment: str, bucket: str) -> int:
    if bucket == "pet_packages":
        return 18400
    if bucket == "ice_burner":
        return ICE_BURNER_OVERRIDES.get(item_id, 2500)
    if bucket == "pets":
        if any(word in comment for word in ("패키지", "완전체", "Package")):
            return 18400
        if 700_060_000 <= item_id < 700_070_000:
            return 5000
        return 5000
    if bucket == "mounts":
        return 7000
    if bucket == "resets":
        if "닉네임" in comment or "Nickname" in comment:
            return 1500
        return 1000
    if bucket == "slots":
        if "캐릭터 슬롯" in comment:
            return 8000
        if "인벤" in comment or "Inventory" in comment:
            return 5000
        return 5000
    if bucket == "consumables":
        if "그노시스" in comment:
            if "60 SP" in comment and "30일" in comment:
                return 2500
            if "60 SP" in comment:
                return 2000
            return 1500
        if "비전서" in comment:
            if "고급" in comment:
                return 1500
            if "상급" in comment:
                return 1200
            if "중급" in comment:
                return 1000
            return 800
        return level_tier_price(comment, 1000)
    if bucket == "accessories":
        return 5000
    return 1000


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


def parse_pet_life_crystals(path: Path) -> dict[int, str]:
    crystals: dict[int, str] = {}
    if not path.exists():
        return crystals
    for line in read_text(path).splitlines():
        if line.strip().startswith("--"):
            continue
        match = PET_CREATE_PATTERN.search(line)
        if match:
            crystals[int(match.group(1))] = (match.group(2) or "").strip()
    return crystals


def parse_pet_packages(path: Path) -> dict[int, str]:
    packages: dict[int, str] = {}
    if not path.exists():
        return packages
    for line in read_text(path).splitlines():
        if line.strip().startswith("--"):
            continue
        match = PACKAGE_PATTERN.search(line)
        if not match:
            continue
        package_id = int(match.group(1))
        component_id = int(match.group(2))
        comment = (match.group(3) or "").strip()
        if 500_000 <= package_id < 501_000 and 500_000 <= component_id < 501_000:
            if "생명의 결정" in comment or "Life Crystal" in comment:
                packages[package_id] = comment or f"pet package {package_id}"
    return packages


def collect_pet_data_gaps(existing_ids: set[int]) -> list[tuple[int, str, str]]:
    gaps: list[tuple[int, str, str]] = []
    seen: set[int] = set()
    package_path = ELSWORD / "ClientScript" / "Major" / "PackageItemData.lua"
    pet_path = ELSWORD / "ServerResource" / "PetData.lua"

    for item_id, comment in parse_pet_life_crystals(pet_path).items():
        if item_id in existing_ids or item_id in seen:
            continue
        seen.add(item_id)
        gaps.append((item_id, comment or f"생명의 결정 ({item_id})", "pets"))

    for item_id, comment in parse_pet_packages(package_path).items():
        if item_id in existing_ids or item_id in seen:
            continue
        seen.add(item_id)
        gaps.append((item_id, comment, "pet_packages"))

    return gaps


def append_shop_entries(path: Path, entries: list[tuple[int, str]]) -> int:
    if not entries:
        return 0
    text = read_text(path)
    marker = "{	500630	,		} ,--	은여우 미호 패키지"
    if marker not in text:
        return 0
    featured = parse_shop_items(path, legacy=False)
    block = ""
    added = 0
    for item_id, comment in entries:
        if item_id in featured:
            continue
        block += f"\t\t\t{{ {item_id}\t,\t\t}} ,--\t{comment}\n"
        added += 1
    if not block:
        return 0
    text = text.replace(marker, block + "\t\t\t" + marker.lstrip(), 1)
    path.write_text(text, encoding="utf-8")
    return added


def collect_candidates(existing_ids: set[int]) -> list[tuple[int, str, str]]:
    candidates: list[tuple[int, str, str]] = []
    seen: set[int] = set()

    for path, legacy in ((ACTIVE_LIST, False), (LEGACY_LIST, True)):
        for item_id, comment in parse_shop_items(path, legacy).items():
            if item_id in existing_ids or item_id in seen:
                continue
            bucket = classify_item(item_id, comment)
            if bucket is None:
                continue
            seen.add(item_id)
            candidates.append((item_id, comment, bucket))

    for row in collect_pet_data_gaps(existing_ids):
        item_id = row[0]
        if item_id in seen:
            continue
        seen.add(item_id)
        candidates.append(row)

    return candidates


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit-only", action="store_true")
    parser.add_argument("--skip-restore", action="store_true")
    args = parser.parse_args()

    if args.audit_only:
        return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode

    existing_ids = parse_price_ids(SR_PRICE)
    candidates = collect_candidates(existing_ids)

    lines: list[str] = []
    bucket_counts: dict[str, int] = {}
    for item_id, comment, bucket in sorted(candidates):
        price = default_price(item_id, comment, bucket)
        lines.append(price_line(item_id, price, comment))
        bucket_counts[bucket] = bucket_counts.get(bucket, 0) + 1
        existing_ids.add(item_id)

    shop_entries = [
        (item_id, comment)
        for item_id, comment, bucket in candidates
        if bucket in ("pets", "pet_packages")
    ]
    shop_added = append_shop_entries(ACTIVE_LIST, shop_entries)

    if lines:
        append_price_block(SR_PRICE, "Recovered cash shop variety items", lines)
        GS_PRICE.write_text(read_text(SR_PRICE), encoding="utf-8")

    if shop_added:
        print(f"Added {shop_added} pet entries to CashShopItemList.")

    print(f"Recovered {len(lines)} variety item prices:")
    for bucket, count in sorted(bucket_counts.items()):
        print(f"  {bucket}: {count}")

    if args.skip_restore:
        return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode

    result = subprocess.run([sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")], cwd=ROOT)
    if result.returncode != 0:
        return result.returncode
    return subprocess.run([sys.executable, str(AUDIT_SCRIPT)], cwd=ROOT).returncode


if __name__ == "__main__":
    raise SystemExit(main())
