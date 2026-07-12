#!/usr/bin/env python3
"""Parse CashItemPrice.lua and restore Cash Shop products in ES_BILLING."""

from __future__ import annotations

import os
import re
import shutil
import subprocess
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PRICE_FILES = (
    ROOT / "Elsword" / "ServerResource" / "CashItemPrice.lua",
    ROOT / "Elsword" / "GameServer" / "CashItemPrice.lua",
)
LUA_FILE = PRICE_FILES[0]
CASHSHOP_LIST_FILES = (
    ROOT / "Elsword" / "ClientScript" / "Major" / "CashShopItemList.lua",
)
BILLING_CONFIG_FILES = (
    ROOT / "Elsword" / "ServerResource" / "BillingConfig.lua",
)
ITEM_METADATA_FILES = (
    ROOT / "Elsword" / "Resources" / "Item.lua",
    ROOT / "Elsword" / "ClientScript" / "Major" / "Item.lua",
    ROOT / "Elsword" / "_ClientScript" / "Major" / "Item.lua",
)
ATTRACTION_ITEM_FILES = (
    ROOT / "Elsword" / "ServerResource" / "RandomItemData.lua",
    ROOT / "Elsword" / "GameServer" / "RandomItemData.lua",
)
PACKAGE_ITEM_FILE = ROOT / "Elsword" / "ClientScript" / "Major" / "PackageItemData.lua"
PACKAGE_ITEM_SYNC_TARGETS = (
    ROOT / "Elsword" / "Resources" / "PackageItemData.lua",
)
ENV_FILE = ROOT / "Elsword" / "offline" / "offline.env"

CATEGORIES = [
    # Parent categories. Display order follows CASH_SHOP_CATEGORY in Enum.lua.
    (10, "Fashion", 0, 1),
    (20, "Accessories", 0, 2),
    (30, "Usable", 0, 3),
    (40, "Setup", 0, 4),
    (60, "Summons", 0, 5),
    (50, "Package", 0, 6),

    # Fashion subcategories
    (11, "Weapon", 10, 1),
    (12, "Top", 10, 2),
    (13, "Bottom", 10, 3),
    (14, "Hair", 10, 4),
    (15, "Gloves", 10, 5),
    (16, "Shoes", 10, 6),
    (17, "One Piece", 10, 7),

    # Accessory subcategories
    (21, "Accessory Weapon", 20, 1),
    (22, "Face", 20, 2),
    (23, "Body", 20, 3),
    (24, "Leg", 20, 4),
    (25, "Arm", 20, 5),
    (26, "Ring", 20, 6),
    (27, "Necklace", 20, 7),

    # Usable subcategories
    (31, "Recovery", 30, 1),
    (32, "Premium", 30, 2),
    (33, "Reset", 30, 3),
    (34, "Others", 30, 4),

    # Setup subcategories
    (41, "Add Slot", 40, 1),
    (42, "Personal Shop", 40, 2),
    (43, "Etc", 40, 3),

    # Package subcategories
    (51, "Package", 50, 1),
    (52, "Fashion", 50, 2),
    (53, "Accessory", 50, 3),
    (54, "Usable", 50, 4),
    (55, "Setup", 50, 5),
    (56, "Pet", 50, 6),

    # Summons subcategories
    (61, "Pet", 60, 1),
    (62, "Consume", 60, 2),
    (63, "Mount", 60, 3),

]

CATEGORY_NAMES = {category_id: name for category_id, name, _, _ in CATEGORIES}
FASHION_CATEGORY_IDS = frozenset({11, 12, 13, 14, 15, 16, 17})
ACCESSORY_CATEGORY_IDS = frozenset({21, 22, 23, 24, 25, 26, 27})
WEARABLE_CATEGORY_IDS = FASHION_CATEGORY_IDS | ACCESSORY_CATEGORY_IDS
PACKAGE_CATEGORY_IDS = frozenset({51, 52, 53, 54, 55, 56})
PERMANENT_CATEGORY_IDS = WEARABLE_CATEGORY_IDS | PACKAGE_CATEGORY_IDS
# Offline mode: every product is permanent (NO_PERIOD=0 in ES_BILLING).
CASH_SHOP_PERMANENT_ALL = True
# Offline mode: auto-apply a single default socket on cash-locker claims.
# DI_ISCASHINVENSKIP=1 skips manual picker UI; EB_ProductAttribute row supplies
# the default socket ID the client validator accepts.
CASH_INVENTORY_SKIP_ALL = True
CASH_INVENTORY_SKIP_CATEGORY_IDS = WEARABLE_CATEGORY_IDS | PACKAGE_CATEGORY_IDS

# One default socket per wearable product (auto-selected on claim).
SOCKET_ATTR_WEAPON = (40010,)
SOCKET_ATTR_DEFENCE = (40005,)

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
CASHSHOP_LIST_PATTERN = re.compile(r"(?:\{\s*)?(\d+)\s*,?\s*(?:\}\s*)?,?\s*(?:--\s*(.*))?")
BILLING_CATEGORY_PATTERN = re.compile(
    r"g_pBillingManager:AddProductCategoryModifyForItemID\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)\s*(?:--\s*(.*))?"
)
ITEM_FIELD_PATTERN = re.compile(
    r"(m_ItemID|m_Name|m_Description|m_ItemType|m_EqipPosition|m_bFashion)\s*=\s*(.+)"
)
LUA_STRING_PATTERN = re.compile(r'"((?:\\.|[^"\\])*)"')
ENUM_VALUE_PATTERN = re.compile(r'\["([^"]+)"\]')
PACKAGE_ITEM_PATTERN = re.compile(
    r"g_pCashItemManager:AddPackageItemData\(\s*(\d+)\s*,\s*(\d+)\s*,\s*-?\d+\s*,\s*(?:true|false)\s*\)"
)
ATTRACTION_ITEM_PATTERN = re.compile(
    r"AddAttractionItemInfo\(\s*(\d+)\s*,\s*true\s*\)"
)

DEFAULT_PRICE_BY_CATEGORY = {
    11: 7000,
    12: 5000,
    13: 5000,
    14: 5000,
    15: 2400,
    16: 2400,
    17: 9000,
    21: 5000,
    22: 5000,
    23: 5000,
    24: 5000,
    25: 5000,
    26: 5000,
    27: 5000,
    31: 1000,
    32: 1000,
    33: 1000,
    34: 1000,
    41: 1000,
    42: 1000,
    43: 1000,
    51: 7000,
    52: 7000,
    53: 5000,
    54: 1000,
    55: 1000,
    56: 5000,
    61: 5000,
    62: 1000,
    63: 5000,
}


@dataclass(frozen=True)
class ItemMeta:
    name: str = ""
    description: str = ""
    item_type: str = ""
    equip: str = ""
    fashion: bool = False
    socket_options: tuple[int, ...] = ()


@dataclass(frozen=True)
class CashPrice:
    item_id: int
    price: int
    comment: str
    source: str


def read_db_password() -> str:
    db_password = "JoySword!Offline123"
    if ENV_FILE.exists():
        for line in ENV_FILE.read_text(encoding="utf-8", errors="replace").splitlines():
            if line.strip().startswith("DB_PASSWORD="):
                db_password = line.split("=", 1)[1].strip()
    return db_password


def read_lua_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def sync_package_item_data() -> int:
    """Mirror client package mappings onto server Resources for package open/use."""
    if not PACKAGE_ITEM_FILE.exists():
        return 0

    synced = 0
    source_text = read_lua_text(PACKAGE_ITEM_FILE)
    for target in PACKAGE_ITEM_SYNC_TARGETS:
        target.parent.mkdir(parents=True, exist_ok=True)
        current = read_lua_text(target) if target.exists() else ""
        if current != source_text:
            target.write_text(source_text, encoding="utf-8", newline="\n")
            synced += 1
            print(f"Synced package mappings: {target.relative_to(ROOT)}")
    return synced


def parse_package_links() -> list[tuple[int, int]]:
    """Return unique (package product, component product) pairs in file order."""
    if not PACKAGE_ITEM_FILE.exists():
        return []

    links: list[tuple[int, int]] = []
    seen: set[tuple[int, int]] = set()
    for package_id, component_id in PACKAGE_ITEM_PATTERN.findall(read_lua_text(PACKAGE_ITEM_FILE)):
        link = (int(package_id), int(component_id))
        if link not in seen:
            seen.add(link)
            links.append(link)
    return links


def lua_string_value(value: str) -> str:
    match = LUA_STRING_PATTERN.search(value)
    if not match:
        return ""
    text = match.group(1)
    return (
        text.replace(r"\"", '"')
        .replace(r"\n", "\n")
        .replace(r"\r", "\r")
        .replace(r"\t", "\t")
        .replace(r"\\", "\\")
        .strip()
    )


def has_any(text: str, words: tuple[str, ...]) -> bool:
    folded = text.casefold()
    return any(word.casefold() in folded for word in words)


def has_any_word(text: str, words: tuple[str, ...]) -> bool:
    return any(re.search(rf"(?<![A-Za-z0-9]){re.escape(word)}(?![A-Za-z0-9])", text, re.IGNORECASE) for word in words)


def parse_item_metadata_file(path: Path) -> dict[int, ItemMeta]:
    if not path.exists():
        return {}

    items: dict[int, ItemMeta] = {}
    current: dict[str, object] | None = None
    pending_template = False
    depth = 0

    for line in read_lua_text(path).splitlines():
        if current is None:
            if "g_pItemManager:AddItemTemplet" in line:
                current = {
                    "name": "",
                    "description": "",
                    "item_type": "",
                    "equip": "",
                    "fashion": False,
                }
                pending_template = True
            continue

        if pending_template:
            if "{" in line:
                depth = line.count("{") - line.count("}")
                pending_template = False
            continue

        match = ITEM_FIELD_PATTERN.search(line)
        if match:
            field, value = match.group(1), match.group(2).strip().rstrip(",")
            if field == "m_ItemID":
                id_match = re.search(r"\d+", value)
                if id_match:
                    current["id"] = int(id_match.group(0))
            elif field == "m_Name":
                current["name"] = lua_string_value(value)
            elif field == "m_Description":
                current["description"] = lua_string_value(value)
            elif field == "m_ItemType":
                enum_match = ENUM_VALUE_PATTERN.search(value)
                if enum_match:
                    current["item_type"] = enum_match.group(1)
            elif field == "m_EqipPosition":
                enum_match = ENUM_VALUE_PATTERN.search(value)
                if enum_match:
                    current["equip"] = enum_match.group(1)
            elif field == "m_bFashion":
                current["fashion"] = "true" in value.casefold()

        depth += line.count("{") - line.count("}")
        if depth <= 0:
            item_id = current.get("id")
            if isinstance(item_id, int):
                items.setdefault(
                    item_id,
                    ItemMeta(
                        name=str(current["name"]),
                        description=str(current["description"]),
                        item_type=str(current["item_type"]),
                        equip=str(current["equip"]),
                        fashion=bool(current["fashion"]),
                    ),
                )
            current = None
            pending_template = False
            depth = 0

    return items


def parse_item_socket_options(path: Path) -> dict[int, tuple[int, ...]]:
    """Read SOCKET_OPTION lists from item templets (ice-burner rare drops use these)."""
    if not path.exists():
        return {}

    text = read_lua_text(path)
    options: dict[int, tuple[int, ...]] = {}
    for block in re.finditer(r"g_pItemManager:AddItemTemplet\s*\{", text):
        start = block.end()
        depth = 1
        pos = start
        while depth > 0 and pos < len(text):
            if text[pos] == "{":
                depth += 1
            elif text[pos] == "}":
                depth -= 1
            pos += 1
        body = text[start : pos - 1]
        id_match = re.search(r"m_ItemID\s*=\s*(\d+)", body)
        socket_match = re.search(r"SOCKET_OPTION\s*=\s*\{([^}]+)\}", body)
        if not id_match or not socket_match:
            continue
        item_id = int(id_match.group(1))
        socket_ids = tuple(
            int(value)
            for value in re.findall(r"\d+", socket_match.group(1))
        )
        if socket_ids:
            options[item_id] = socket_ids
    return options


def parse_attraction_item_ids() -> set[int]:
    """Gacha rare-drop items flagged in RandomItemData.lua."""
    attraction_ids: set[int] = set()
    for path in ATTRACTION_ITEM_FILES:
        if not path.exists():
            continue
        for match in ATTRACTION_ITEM_PATTERN.finditer(read_lua_text(path)):
            attraction_ids.add(int(match.group(1)))
    return attraction_ids


def load_item_metadata() -> dict[int, ItemMeta]:
    metadata: dict[int, ItemMeta] = {}
    socket_options: dict[int, tuple[int, ...]] = {}
    for path in ITEM_METADATA_FILES:
        socket_options.update(parse_item_socket_options(path))
        for item_id, meta in parse_item_metadata_file(path).items():
            metadata.setdefault(item_id, meta)

    for item_id, options in socket_options.items():
        existing = metadata.get(item_id, ItemMeta())
        metadata[item_id] = ItemMeta(
            name=existing.name,
            description=existing.description,
            item_type=existing.item_type,
            equip=existing.equip,
            fashion=existing.fashion,
            socket_options=options,
        )
    return metadata


def parse_cash_prices() -> list[CashPrice]:
    prices: list[CashPrice] = []
    seen: set[int] = set()

    for path in PRICE_FILES:
        if not path.exists():
            continue
        for line in read_lua_text(path).splitlines():
            match = PRICE_PATTERN.search(line)
            if not match:
                continue
            item_id = int(match.group(1))
            if item_id in seen:
                continue
            seen.add(item_id)
            prices.append(
                CashPrice(
                    item_id=item_id,
                    price=int(match.group(2)),
                    comment=(match.group(3) or "").strip(),
                    source=str(path.relative_to(ROOT)),
                )
            )

    add_storefront_items(prices, seen)
    return prices


def add_storefront_items(prices: list[CashPrice], seen: set[int]) -> None:
    for path in CASHSHOP_LIST_FILES:
        if not path.exists():
            continue
        for line in read_lua_text(path).splitlines():
            stripped = line.strip()
            if not stripped or stripped.startswith("--"):
                continue
            match = CASHSHOP_LIST_PATTERN.match(stripped)
            if not match:
                continue
            item_id = int(match.group(1))
            if item_id in seen:
                continue
            seen.add(item_id)
            prices.append(
                CashPrice(
                    item_id=item_id,
                    price=0,
                    comment=(match.group(2) or "").strip(),
                    source=str(path.relative_to(ROOT)),
                )
            )

    for path in BILLING_CONFIG_FILES:
        if not path.exists():
            continue
        for line in read_lua_text(path).splitlines():
            stripped = line.strip()
            if not stripped or stripped.startswith("--"):
                continue
            match = BILLING_CATEGORY_PATTERN.search(stripped)
            if not match:
                continue
            item_id = int(match.group(1))
            if item_id in seen:
                continue
            seen.add(item_id)
            prices.append(
                CashPrice(
                    item_id=item_id,
                    price=0,
                    comment=(match.group(4) or "").strip(),
                    source=str(path.relative_to(ROOT)),
                )
            )


def metadata_accessory_category(meta: ItemMeta) -> int | None:
    if meta.item_type != "IT_ACCESSORY" and not meta.equip.startswith("EP_AC_"):
        return None

    return {
        "EP_AC_WEAPON": 21,
        "EP_AC_HAIR": 22,
        "EP_AC_FACE1": 22,
        "EP_AC_FACE2": 22,
        "EP_AC_FACE3": 22,
        "EP_AC_BODY": 23,
        "EP_AC_LEG": 24,
        "EP_AC_ARM": 25,
        "EP_AC_RING": 26,
        "EP_AC_NECKLESS": 27,
    }.get(meta.equip, 22)


def metadata_fashion_category(meta: ItemMeta) -> int | None:
    if not (meta.fashion or meta.item_type in ("IT_WEAPON", "IT_DEFENCE")):
        return None

    return {
        "EP_WEAPON_HAND": 11,
        "EP_WEAPON_SECOND": 11,
        "EP_DEFENCE_BODY": 12,
        "EP_DEFENCE_LEG": 13,
        "EP_DEFENCE_HAIR": 14,
        "EP_DEFENCE_HAND": 15,
        "EP_DEFENCE_FOOT": 16,
        "EP_ONEPIECE_FASHION": 17,
    }.get(meta.equip)


def accessory_category_from_name(text: str) -> int | None:
    if not has_any(
        text,
        (
            "액세", "악세", "안경", "모자", "가면", "날개", "귀걸이", "목걸이", "반지",
            "팔찌", "아대", "밴드", "얼굴", "꼬리", "안대", "헤드폰", "머리핀", "화관",
            "크라운", "이어링", "브로치", "Bracelet", "Ring", "Necklace", "Glasses",
            "Mask", "Wing", "Tail", "Crown", "Earrings", "Headphone", "Accessory",
        ),
    ):
        return None

    if has_any(text, ("무기 액세", "무기 악세", "Weapon Accessory")):
        return 21
    if has_any(text, ("날개", "꼬리", "망토", "등", "Wing", "Tail", "Cape")):
        return 23
    if has_any(text, ("하의", "다리", "Leg")):
        return 24
    if has_any(text, ("팔찌", "팔", "아대", "밴드", "Bracelet", "Armlet", "Band")):
        return 25
    if has_any(text, ("반지", "링", "Ring")):
        return 26
    if has_any(text, ("목걸이", "Necklace")):
        return 27
    return 22


def consume_category_from_name(text: str) -> int | None:
    if has_any(
        text,
        (
            "초기화", "망각", "전직 변경권", "변경권", "닉네임 변경", "스킬 되돌리기",
            "Reset", "Class Change", "Name Change", "Change Ticket",
        ),
    ):
        return 33

    if has_any(
        text,
        (
            "부활", "복원", "회복", "포션", "주문서", "플루오르", "강화", "강화석", "구급",
            "Revival", "Restore", "Recovery", "Recover", "Potion", "Scroll",
            "Fluorite", "Blessed Restoration", "Enhancement",
        ),
    ):
        return 31

    if has_any(
        text,
        (
            "가열기", "얼음 조각상", "아이스 버너", "랜덤", "프리미엄", "VIP",
            "메가폰", "그노시스", "기술의 노트", "비전서", "신용 보증서",
            "Ice Burner", "Ice Heater", "Random", "Premium", "Megaphone",
            "Gnosis", "Skill Note", "Secret Manual", "VIP",
        ),
    ):
        return 32

    return None


def install_category_from_name(text: str) -> int | None:
    if has_any(text, ("개인상점", "개인 상점", "Personal Shop")):
        return 42
    if has_any(
        text,
        (
            "슬롯", "확장", "인벤토리", "퀵슬롯", "창고", "보관함", "캐릭터 슬롯",
            "Slot", "Expansion", "Inventory", "Quick Slot", "Storage",
        ),
    ):
        return 41
    return None


def fashion_category_from_name(text: str, price: int) -> int | None:
    if has_any(text, ("한벌", "원피스", "One Piece")):
        return 17
    if price >= 7000 and has_any(
        text,
        (
            "무기", "소드", "스태프", "보우", "블레이드", "철포", "캐논", "드릴",
            "창", "스피어", "대검", "장검", "클레이모어", "기어", "카타나",
            "디몰리셔", "Weapon", "Sword", "Staff", "Bow", "Blade", "Cannon",
            "Spear", "Claymore", "Gear", "Katana",
        ),
    ):
        return 11
    if has_any(text, ("상의", "가운", "셔츠", "정장", "코트", "점퍼", "자켓", "재킷", "로브", "Top", "Shirt", "Coat", "Jacket", "Robe")):
        return 12
    if has_any(text, ("하의", "팬츠", "스커트", "레깅스", "바지", "치마", "Bottom", "Pants", "Skirt", "Leggings")):
        return 13
    if has_any(text, ("장갑", "Glove")):
        return 15
    if has_any(text, ("신발", "슈즈", "부츠", "스니커", "테니스화", "구두", "슬리퍼", "Shoe", "Shoes", "Boots", "Slippers")):
        return 16
    if has_any(text, ("헤어", "컷", "머리", "Hair")):
        return 14
    if has_any(
        text,
        (
            "무기", "소드", "스태프", "보우", "블레이드", "철포", "캐논", "드릴",
            "창", "스피어", "대검", "장검", "클레이모어", "기어", "카타나",
            "디몰리셔", "Weapon", "Sword", "Staff", "Bow", "Blade", "Cannon",
            "Spear", "Claymore", "Gear", "Katana",
        ),
    ):
        return 11
    return None


def category_for(item_id: int, price: int, product_name: str, meta: ItemMeta) -> int:
    text = " ".join(part for part in (product_name, meta.name) if part)
    folded = text.casefold()

    if product_name.casefold().startswith("recovered costume piece"):
        return {0: 11, 1: 12, 2: 13, 3: 15, 4: 16, 5: 14}.get(item_id % 10, 34)

    # Item.lua equipment metadata is authoritative. Name heuristics such as
    # "mini-me" otherwise misclassify wearable Ice Burner accessories as pets.
    category_id = metadata_accessory_category(meta)
    if category_id is not None:
        return category_id

    if (
        (has_any(text, ("소환석", "탈것")) or has_any_word(text, ("Mount",)) or "summon stone" in folded)
        and (meta.item_type == "IT_SPECIAL" or 550_000 <= item_id < 560_000)
    ):
        return 63

    if has_any(text, ("펫 먹이", "펫 물건", "엘의 나무 열매")) or has_any_word(text, ("Pet Food", "Fetch Aura", "El Tree Fruit")):
        return 62
    if has_any(text, ("펫", "미니미", "생명의 결정")) or has_any_word(text, ("Life Crystal", "Pet")):
        if has_any(text, ("오라", "먹이")) or has_any_word(text, ("Food", "Aura")):
            return 62
        return 61

    category_id = accessory_category_from_name(text)
    if category_id is not None:
        return category_id

    category_id = consume_category_from_name(text)
    if category_id is not None:
        return category_id

    category_id = install_category_from_name(text)
    if category_id is not None:
        return category_id

    category_id = metadata_fashion_category(meta)
    if category_id is not None:
        return category_id

    category_id = fashion_category_from_name(text, price)
    if category_id is not None:
        return category_id

    if 200_000 <= item_id < 300_000 or product_name.startswith("Item "):
        if price in (7000, 8500):
            return 11
        if price in (5000, 6000):
            return 12
        if price in (2400, 2800, 3000):
            return 15

    return 34


def default_price_for_category(category_id: int) -> int:
    return DEFAULT_PRICE_BY_CATEGORY.get(category_id, 1000)


def refine_costume_categories(items: list[tuple[int, int, int, str]]) -> list[tuple[int, int, int, str]]:
    """Split uncommented costume blocks into equipment slots by sequence."""
    refined = []
    slot_sequence = [11, 12, 13, 15, 16, 14]
    slot_index = 0

    for item_id, price, category_id, product_name in items:
        if product_name.startswith("Item ") and category_id in (11, 12, 15):
            if price in (7000, 8500):
                slot_index = 0
            category_id = slot_sequence[min(slot_index, len(slot_sequence) - 1)]
            slot_index = (slot_index + 1) % len(slot_sequence)
        else:
            slot_index = 0
        refined.append((item_id, price, category_id, product_name))

    return refined


def parse_items(package_ids: frozenset[int] | None = None) -> list[tuple[int, int, int, str]]:
    prices = parse_cash_prices()
    if not prices:
        sources = ", ".join(str(path) for path in PRICE_FILES)
        sys.exit(f"No items parsed from CashItemPrice.lua. Checked: {sources}")

    if package_ids is None:
        package_ids = frozenset(package_id for package_id, _ in parse_package_links())

    metadata = load_item_metadata()
    items = []
    for entry in prices:
        meta = metadata.get(entry.item_id, ItemMeta())
        product_name = entry.comment or meta.name or f"Item {entry.item_id}"
        # PackageItemData.lua is authoritative. Name heuristics misclassified
        # hundreds of real packages as individual fashion/accessory products.
        category_id = (
            51
            if entry.item_id in package_ids
            else category_for(entry.item_id, entry.price, product_name, meta)
        )
        price = entry.price or default_price_for_category(category_id)
        
        # Omit ice burner consumable items under Usable category tabs
        if category_id in (31, 32, 33, 34):
            name_text = " ".join(part for part in (product_name, meta.name) if part).casefold()
            is_iceburner = (
                entry.item_id == 108900
                or any(word in name_text for word in ("가열기", "ice burner", "ice heater", "얼음 조각상"))
                or ("봉인된" in name_text and "얼음" in name_text)
            )
            if is_iceburner:
                continue

        items.append(
            (
                entry.item_id,
                price,
                category_id,
                product_name,
            )
        )

    return refine_costume_categories(items)


def print_category_summary(items: list[tuple[int, int, int, str]]) -> None:
    counts = Counter(category_id for _, _, category_id, _ in items)
    print("Category distribution:")
    for category_id, name, parent_id, _ in CATEGORIES:
        if parent_id == 0:
            continue
        print(f"  {category_id:4d} {name:<18} {counts.get(category_id, 0)}")

    empty = [
        category_id
        for category_id in (21, 22, 23, 24, 25, 26, 27, 31, 32, 33, 34, 51, 61, 62, 63)
        if counts.get(category_id, 0) == 0
    ]
    if empty:
        names = ", ".join(f"{category_id}:{CATEGORY_NAMES[category_id]}" for category_id in empty)
        print(f"Warning: empty requested categories: {names}")


def sql_string(value: str) -> str:
    return "N'" + value.replace("'", "''") + "'"


def truncate_utf16(value: str, max_code_units: int) -> str:
    """Fit text to a SQL Server nvarchar width without splitting a surrogate pair."""
    encoded = value.encode("utf-16-le")
    return encoded[: max_code_units * 2].decode("utf-16-le", errors="ignore")


def is_wearable_meta(meta: ItemMeta) -> bool:
    if metadata_fashion_category(meta) is not None:
        return True
    if metadata_accessory_category(meta) is not None:
        return True
    return meta.fashion or meta.item_type in ("IT_WEAPON", "IT_DEFENCE", "IT_ACCESSORY")


def socket_attributes_for_category(category_id: int) -> tuple[int, ...] | None:
    if category_id == 11:
        return SOCKET_ATTR_WEAPON
    if category_id in WEARABLE_CATEGORY_IDS:
        return SOCKET_ATTR_DEFENCE
    return None


def socket_attributes_for_item(meta: ItemMeta, category_id: int) -> tuple[int, ...] | None:
    if meta.socket_options:
        return meta.socket_options[:5]
    effective_category = category_id
    if effective_category not in WEARABLE_CATEGORY_IDS and is_wearable_meta(meta):
        effective_category = (
            metadata_fashion_category(meta)
            or metadata_accessory_category(meta)
            or effective_category
        )
    return socket_attributes_for_category(effective_category)


def cash_inventory_skip_for_item(meta: ItemMeta, category_id: int) -> int:
    # Multi-option rare costumes (ice-burner attraction drops) need the picker.
    if len(meta.socket_options) > 1:
        return 0
    if CASH_INVENTORY_SKIP_ALL:
        if category_id in WEARABLE_CATEGORY_IDS or is_wearable_meta(meta):
            return 1
        return 0
    return int(category_id not in CASH_INVENTORY_SKIP_CATEGORY_IDS)


def format_product_attribute_row(product_id: int, attributes: tuple[int, ...]) -> str:
    values = list(attributes[:5]) + [None] * max(0, 5 - len(attributes))
    rendered = ", ".join(str(value) if value is not None else "NULL" for value in values)
    return f"({product_id}, {rendered})"


def build_sql(
    items: list[tuple[int, int, int, str]],
    package_links: list[tuple[int, int]] | None = None,
) -> str:
    if package_links is None:
        package_links = parse_package_links()

    catalog_item_ids = {item_id for item_id, _, _, _ in items}
    missing_component_ids = sorted(
        {component_id for _, component_id in package_links} - catalog_item_ids
    )
    metadata = load_item_metadata()
    hidden_components: list[tuple[int, int, int, str]] = []
    for item_id in missing_component_ids:
        meta = metadata.get(item_id, ItemMeta())
        product_name = meta.name or f"Package component {item_id}"
        category_id = category_for(item_id, 0, product_name, meta)
        hidden_components.append((item_id, 0, category_id, product_name))

    hidden_ids = {item_id for item_id, _, _, _ in hidden_components}
    attraction_hidden: list[tuple[int, int, int, str]] = []
    for item_id in sorted(parse_attraction_item_ids()):
        if item_id in catalog_item_ids or item_id in hidden_ids:
            continue
        meta = metadata.get(item_id, ItemMeta())
        if not is_wearable_meta(meta):
            continue
        product_name = meta.name or f"Gacha drop {item_id}"
        category_id = category_for(item_id, 0, product_name, meta)
        attraction_hidden.append((item_id, 0, category_id, product_name))
        hidden_ids.add(item_id)

    all_items = [(*item, True) for item in items]
    all_items.extend((*item, False) for item in hidden_components)
    all_items.extend((*item, False) for item in attraction_hidden)

    sql_lines = [
        "USE ES_BILLING;",
        "GO",
        "PRINT 'Starting Cash Shop restoration...';",
        "DELETE FROM dbo.EB_ProductPackage;",
        # Wearable products get one default socket attribute for auto-claim.
        "DELETE FROM dbo.EB_ProductAttribute;",
        "DELETE FROM dbo.EB_Product;",
        "DELETE FROM dbo.EB_ProductCategory;",
        "GO",
        "INSERT INTO dbo.EB_ProductCategory (CD_CATEGORYNO, ST_CATEGORYNAME, NO_PCATEGORYNO, NO_DISPLAYNO) VALUES",
        ",\n".join(
            f"({category_id}, N'{name}', {parent_id}, {display_no})"
            for category_id, name, parent_id, display_no in CATEGORIES
        ) + ";",
        "GO",
    ]

    batch_size = 1000
    for i in range(0, len(all_items), batch_size):
        batch = all_items[i:i + batch_size]
        values = []
        for item_id, price, category_id, product_name, visible in batch:
            meta = metadata.get(item_id, ItemMeta())
            product_name = truncate_utf16(product_name, 128)
            cash_inventory_skip = cash_inventory_skip_for_item(meta, category_id)
            # NO_PERIOD=0 is permanent in billing. Consumables used to get 1 day.
            period_days = 0 if CASH_SHOP_PERMANENT_ALL else int(
                category_id not in PERMANENT_CATEGORY_IDS and visible
            )
            is_sale = int(visible)
            is_show = int(visible)
            enable_gift = int(visible)
            values.append(
                f"({item_id}, {item_id}, {is_sale}, 0, {is_show}, {cash_inventory_skip}, "
                f"{sql_string(product_name)}, {sql_string(product_name)}, "
                f"{category_id}, {price}, {price}, {period_days}, 1, {enable_gift}, 1, 0, "
                "'2020-01-01 00:00:00', '2050-01-01 00:00:00')"
            )

        sql_lines.append(
            "INSERT INTO dbo.EB_Product (CD_PRODUCTNO, NO_PRODUCTID, DI_ISSALE, DI_ISEVENT, "
            "DI_ISSHOW, DI_ISCASHINVENSKIP, ST_PRODUCTNAME, ST_PRODUCTNAME_LOCAL, CD_CATEGORYNO, "
            "NO_SALEPRICE, NO_REALPRICE, NO_PERIOD, NO_QUANTITY, DI_ENABLEGIFT, NO_LIMITLEVEL, "
            "NO_LIMIT_USERUID, DT_STARTDATE, DT_ENDDATE) VALUES\n"
            + ",\n".join(values)
            + ";"
        )
        sql_lines.append("GO")

    attribute_rows: list[str] = []
    seen_attribute_products: set[int] = set()
    for item_id, _, category_id, _, _ in all_items:
        if item_id in seen_attribute_products:
            continue
        meta = metadata.get(item_id, ItemMeta())
        attributes = socket_attributes_for_item(meta, category_id)
        if not attributes:
            continue
        seen_attribute_products.add(item_id)
        attribute_rows.append(format_product_attribute_row(item_id, attributes))

    for i in range(0, len(attribute_rows), batch_size):
        batch = attribute_rows[i:i + batch_size]
        sql_lines.append(
            "INSERT INTO dbo.EB_ProductAttribute "
            "(CD_PRODUCTNO, NO_ATTRIBUTE1, NO_ATTRIBUTE2, NO_ATTRIBUTE3, NO_ATTRIBUTE4, NO_ATTRIBUTE5) VALUES\n"
            + ",\n".join(batch)
            + ";"
        )
        sql_lines.append("GO")

    sql_lines.extend([
        "UPDATE dbo.EB_Product SET NO_PERIOD = 0;",
        "GO",
    ])

    for i in range(0, len(package_links), batch_size):
        batch = package_links[i:i + batch_size]
        sql_lines.append(
            "INSERT INTO dbo.EB_ProductPackage (CD_PACKAGENO, CD_PRODUCTNO, NO_REALPRICE) VALUES\n"
            + ",\n".join(
                f"({package_id}, {component_id}, 0)"
                for package_id, component_id in batch
            )
            + ";"
        )
        sql_lines.append("GO")

    sql_lines.append("PRINT 'Cash Shop restoration complete.';")
    sql_lines.extend([
        "IF EXISTS (SELECT 1 FROM dbo.EB_ReleaseTick WHERE DI_TickType = 0)",
        "    UPDATE dbo.EB_ReleaseTick SET NO_Tick = ISNULL(NO_Tick, 0) + 1, DT_SetDate = GETDATE() WHERE DI_TickType = 0;",
        "ELSE",
        "    INSERT INTO dbo.EB_ReleaseTick (DI_TickType, NO_Tick, DT_SetDate) VALUES (0, 1, GETDATE());",
    ])
    return "\n".join(sql_lines)


def command_for_sql_restore(db_password: str, sql_file: Path) -> tuple[list[str], dict[str, str] | None]:
    docker_path = shutil.which("docker")
    if not docker_path:
        fallback_docker = Path(r"C:\Program Files\Docker\Docker\resources\bin\docker.exe")
        if fallback_docker.exists():
            docker_path = str(fallback_docker)

    use_docker = False
    if docker_path:
        try:
            result = subprocess.run(
                [docker_path, "compose", "ps", "mssql", "--status", "running"],
                cwd=ROOT,
                capture_output=True,
                text=True,
            )
            use_docker = result.returncode == 0 and "mssql" in result.stdout
        except Exception:
            pass

    if use_docker:
        command_env = os.environ.copy()
        command_env["MSSQL_SA_PASSWORD"] = db_password
        return [
            docker_path, "compose", "exec", "-T", "-e", "MSSQL_SA_PASSWORD", "mssql",
            "bash", "-c",
            'if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then CMD=/opt/mssql-tools18/bin/sqlcmd; EXTRA=(-C); else CMD=/opt/mssql-tools/bin/sqlcmd; EXTRA=(); fi; "$CMD" -b -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -i /backups/restore-cashshop.sql',
        ], command_env

    sqlcmd_path = shutil.which("sqlcmd")
    if not sqlcmd_path:
        for path in (
            r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe",
            r"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\180\Tools\Binn\sqlcmd.exe",
        ):
            if Path(path).exists():
                sqlcmd_path = path
                break
    if not sqlcmd_path:
        sqlcmd_path = "sqlcmd"

    return [
        sqlcmd_path,
        "-S", "localhost",
        "-U", "sa",
        "-P", db_password,
        "-b",
        "-C",
        "-f", "65001",
        "-i", str(sql_file),
    ], None


def main(argv: list[str] | None = None) -> int:
    argv = list(sys.argv[1:] if argv is None else argv)
    generate_only = "--generate-only" in argv

    if os.environ.get("JOYSWORD_SKIP_CASHSHOP_REBALANCE") != "1":
        rebalancer = ROOT / "scripts" / "rebalance-cashshop-economy.py"
        result = subprocess.run([sys.executable, str(rebalancer), "--apply", "--quiet"], cwd=ROOT)
        if result.returncode != 0:
            print("Cash Shop economy normalization failed.", file=sys.stderr)
            return result.returncode

    db_password = read_db_password()
    synced = sync_package_item_data()
    if synced:
        print(f"Updated {synced} server-side PackageItemData.lua file(s).")
    package_links = parse_package_links()
    package_ids = frozenset(package_id for package_id, _ in package_links)
    items = parse_items(package_ids)
    print(f"Parsed {len(items)} unique cash shop items.")
    print(f"Parsed {len(package_links)} unique package component links.")
    print_category_summary(items)

    sql_file = ROOT / "database" / "restore-cashshop.sql"
    sql_file.write_text(build_sql(items, package_links), encoding="utf-8")
    print(f"Generated SQL script: {sql_file}")

    if generate_only:
        print("Generate-only mode: SQL was not executed.")
        return 0

    cmd, command_env = command_for_sql_restore(db_password, sql_file)
    print("Running SQL script in SQL Server container..." if command_env else "Running SQL script against local SQL Server...")
    result = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, env=command_env)
    if result.returncode == 0:
        print("Cash Shop items restored successfully!")
        print(result.stdout)
        return 0

    print("Error executing SQL script:", file=sys.stderr)
    print(result.stderr or result.stdout, file=sys.stderr)
    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
