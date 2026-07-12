#!/usr/bin/env python3
"""Enable the Max Level Scroll in billing and the cash shop featured list."""

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

ITEM_ID = 160267
ITEM_NAME = "Max Level Scroll"
ITEM_PRICE = 5000
PRICE_PATTERN = re.compile(
    r"g_pCashItemManager:AddCashItemPrice\(\s*(\d+)\s*,\s*(\d+)\s*\)"
)


def read_text(path: Path) -> str:
    for encoding in ("utf-8-sig", "utf-8", "cp949"):
        try:
            return path.read_text(encoding=encoding)
        except UnicodeDecodeError:
            continue
    return path.read_text(encoding="utf-8", errors="replace")


def write_text(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8")


def ensure_price() -> bool:
    text = read_text(SR_PRICE)
    if re.search(rf"AddCashItemPrice\(\s*{ITEM_ID}\s*,", text):
        return False
    block = (
        "\n---------------\n"
        "-- JoySword offline utility items --\n"
        "---------------\n\n"
        f"g_pCashItemManager:AddCashItemPrice(\t{ITEM_ID}\t,\t{ITEM_PRICE}\t)"
        f"\t--\t{ITEM_NAME}\n"
    )
    write_text(SR_PRICE, text.rstrip() + block)
    write_text(GS_PRICE, read_text(SR_PRICE))
    return True


def ensure_hot_item() -> bool:
    text = read_text(SHOP_LIST)
    marker = f"{{ {ITEM_ID}"
    if marker in text or f"{{{ITEM_ID}" in text:
        return False

    insert_at = "\t\t-- Premium / Gacha\n"
    entry = (
        f"\t\t-- Utility / Level Boost\n"
        f"\t\t\t{{ {ITEM_ID}\t,\t\t}} ,--\t{ITEM_NAME}\n\n"
    )
    if insert_at not in text:
        raise RuntimeError("Could not locate Premium / Gacha section in CashShopItemList.lua")
    write_text(SHOP_LIST, text.replace(insert_at, entry + insert_at, 1))
    return True


def remove_old_custom_listing() -> bool:
    text = read_text(SHOP_LIST)
    old = "\t\t\t{ 85009990\t,\t\t} ,--\tMax Level Scroll\n"
    if old not in text:
        return False
    write_text(SHOP_LIST, text.replace(old, ""))
    return True


def main() -> int:
    steps = [
        [sys.executable, str(ROOT / "scripts" / "sync-offline-custom-items.py")],
        [sys.executable, str(ROOT / "scripts" / "patch-gameserver-max-level-scroll.py")],
    ]
    for cmd in steps:
        result = subprocess.run(cmd, cwd=ROOT)
        if result.returncode != 0:
            return result.returncode

    priced = ensure_price()
    featured = ensure_hot_item()
    removed = remove_old_custom_listing()
    print(f"Cash price added: {priced}")
    print(f"HOT_ITEM entry added: {featured}")
    print(f"Removed legacy item 85009990 listing: {removed}")

    restore = subprocess.run(
        [sys.executable, str(ROOT / "scripts" / "restore-cashshop.py")],
        cwd=ROOT,
    )
    return restore.returncode


if __name__ == "__main__":
    raise SystemExit(main())
