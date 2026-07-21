#!/usr/bin/env python3
"""Normalize Bank & Inventory ED Storage Expansion Costs in EDInventoryExpand.lua."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "ServerResource" / "EDInventoryExpand.lua",
    ELSWORD / "GameServer" / "EDInventoryExpand.lua",
)

NEW_STORAGE_FILE_CONTENT = """-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

NONE = 0
NORMAL	 = 8
SILVER	= 16 
GOLD	= 24
EMERALD	 = 32
DIAMOND	 = 40
PLATINUM = 48

-- REBALANCE_ED_STORAGE_COSTS: Modernized Fair ED Storage Expansion Costs
-- 은행 확장
g_pEDInventoryExpand:AddBankGradeED
{
	GRADE_ED =
	{
		{ GRADE = NORMAL,   ED = 0 },
		{ GRADE = SILVER,   ED = 100000 },
		{ GRADE = GOLD,     ED = 500000 },
		{ GRADE = EMERALD,  ED = 1000000 },
		{ GRADE = DIAMOND,  ED = 2500000 },
		{ GRADE = PLATINUM, ED = 5000000 },
	},
}

-- 인벤토리 확장
g_pEDInventoryExpand:AddInventoryGradeED
{
	GRADE_ED =
	{
		{ GRADE = 1, ED = 250000 },
		{ GRADE = 2, ED = 750000 },
		{ GRADE = 3, ED = 1500000 },
		{ GRADE = 4, ED = 3000000 },
	},
}
-- END_REBALANCE_ED_STORAGE_COSTS
"""


def apply_storage_cost_rebalance():
    changed = 0
    payload = b"\xef\xbb\xbf" + NEW_STORAGE_FILE_CONTENT.encode("utf-8")
    for target in TARGETS:
        if not target.exists():
            continue
        if target.read_bytes() != payload:
            target.write_bytes(payload)
            changed += 1
            print(f"Applied Storage Expansion Cost Normalization to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Bank & Inventory Storage Cost Normalizer")
    print("==================================================")
    changed = apply_storage_cost_rebalance()
    print(f"Successfully normalized storage expansion costs in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
