#!/usr/bin/env python3
"""Add Advanced Magic Stones (and bulk cubes) to the cash shop."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SR_PRICE = ELSWORD / "ServerResource" / "CashItemPrice.lua"
GS_PRICE = ELSWORD / "GameServer" / "CashItemPrice.lua"
SHOP_LIST = ELSWORD / "ClientScript" / "Major" / "CashShopItemList.lua"

# item_id, price_ed, display name
MAGIC_STONE_ITEMS: tuple[tuple[int, int, str], ...] = (
    (109955, 800, "Advanced Magic Stone"),
    (60000822, 2200, "Advanced Magic Stone Cube (3 ea.)"),
    (60001408, 3500, "Advanced Magic Stone (5ea) Cube"),
    (65000072, 6000, "Advanced Magic Stone Cube (10 ea.)"),
    (130171, 20000, "A Cube of 40 Advanced Magic Stones"),
)

PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)"
)
HOT_MARKER = "\t\t-- Utility / Level Boost\n"


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def write_text(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8")


def priced_ids(text: str) -> set[int]:
    return {int(match.group(1)) for match in PRICE_PATTERN.finditer(text)}


def ensure_prices() -> list[int]:
    text = read_text(SR_PRICE)
    existing = priced_ids(text)
    lines: list[str] = []
    added: list[int] = []
    for item_id, price, name in MAGIC_STONE_ITEMS:
        if item_id in existing:
            continue
        lines.append(
            f"g_pCashItemManager:AddCashItemPrice(\t{item_id}\t,\t{price}\t)\t--\t{name}"
        )
        added.append(item_id)

    if lines:
        block = (
            "\n---------------\n"
            "-- JoySword offline advanced magic stones --\n"
            "---------------\n\n"
            + "\n".join(lines)
            + "\n"
        )
        write_text(SR_PRICE, text.rstrip() + block)
        write_text(GS_PRICE, read_text(SR_PRICE))
    return added


def ensure_hot_items() -> list[int]:
    text = read_text(SHOP_LIST)
    if HOT_MARKER not in text:
        raise RuntimeError("Could not locate Utility / Level Boost section in CashShopItemList.lua")

    added: list[int] = []
    entry_lines: list[str] = []
    for item_id, _price, name in MAGIC_STONE_ITEMS:
        if f"{{ {item_id}" in text or f"{{{item_id}" in text:
            continue
        entry_lines.append(f"\t\t\t{{ {item_id}\t,\t\t}} ,--\t{name}")
        added.append(item_id)

    if not entry_lines:
        return added

    section = "\t\t-- Enhancement / Magic Stones\n" + "\n".join(entry_lines) + "\n\n"
    write_text(SHOP_LIST, text.replace(HOT_MARKER, section + HOT_MARKER, 1))
    return added


def main() -> int:
    priced = ensure_prices()
    featured = ensure_hot_items()
    print(f"Prices added: {len(priced)} -> {priced}")
    print(f"HOT_ITEM entries added: {len(featured)} -> {featured}")

    restore = subprocess.run(
        [sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")],
        cwd=ROOT,
    )
    return restore.returncode


if __name__ == "__main__":
    raise SystemExit(main())
