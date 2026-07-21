#!/usr/bin/env python3
"""Rebalance JoySword Enhancement Probabilities to Modern Gacha / RPG Standards.

Key Changes:
1. Zero Item Destruction (Break = 0% across all levels +1 to +12).
2. Zero Total Reset (DownTo0 = 0% across all levels +1 to +12).
3. Fair, Modern Upgrade Success Curve:
   - +1 to +2: 100%
   - +3: 80% Success, 20% NoChange
   - +4: 60% Success, 40% NoChange
   - +5: 40% Success, 60% NoChange
   - +6: 30% Success, 70% NoChange
   - +7: 35% Success, 45% NoChange, 20% Down1
   - +8: 25% Success, 50% NoChange, 25% Down1
   - +9: 15% Success, 55% NoChange, 30% Down1
   - +10: 10% Success, 60% NoChange, 30% Down1
   - +11: 5% Success, 65% NoChange, 30% Down1
   - +12: 2% Success, 68% NoChange, 30% Down1
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "GameServer" / "EnchantTable.lua",
    ELSWORD / "ServerResource" / "EnchantTable.lua",
)

NEW_PROB_BLOCK = """-- REBALANCE_ENHANCEMENT_CURVE: Modern Gacha Standard (Zero Destruction, Zero Reset)
EnchantItemManager:SetEnchantProbability(  1, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  2, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  3, { Up1 =  80, NoChange =  20, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  4, { Up1 =  60, NoChange =  40, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  5, { Up1 =  40, NoChange =  60, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  6, { Up1 =  30, NoChange =  70, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  7, { Up1 =  35, NoChange =  45, Down1 = 20, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  8, { Up1 =  25, NoChange =  50, Down1 = 25, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  9, { Up1 =  15, NoChange =  55, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 10, { Up1 =  10, NoChange =  60, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 11, { Up1 =   5, NoChange =  65, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 12, { Up1 =   2, NoChange =  68, Down1 = 30, DownTo0 = 0, Break = 0 } )

EnchantItemManager:SetEnchantProbability_Event(  1, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  2, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  3, { Up1 =  80, NoChange =  20, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  4, { Up1 =  60, NoChange =  40, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  5, { Up1 =  40, NoChange =  60, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  6, { Up1 =  30, NoChange =  70, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  7, { Up1 =  35, NoChange =  45, Down1 = 20, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  8, { Up1 =  25, NoChange =  50, Down1 = 25, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  9, { Up1 =  15, NoChange =  55, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 10, { Up1 =  10, NoChange =  60, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 11, { Up1 =   5, NoChange =  65, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 12, { Up1 =   2, NoChange =  68, Down1 = 30, DownTo0 = 0, Break = 0 } )
-- END_REBALANCE_ENHANCEMENT_CURVE"""

def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def apply_rebalance():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        
        # Strip previous injection block if present
        if "-- REBALANCE_ENHANCEMENT_CURVE" in text:
            text = re.sub(
                r"\n-- REBALANCE_ENHANCEMENT_CURVE:.*?\n-- END_REBALANCE_ENHANCEMENT_CURVE\n",
                "\n",
                text,
                flags=re.DOTALL
            )
            
        # Replace legacy SetEnchantProbability lines (1..12) with zero-break version
        pattern = r"EnchantItemManager:SetEnchantProbability\(\s*1,.*?\n\n"
        if re.search(pattern, text, flags=re.DOTALL):
            text = re.sub(pattern, NEW_PROB_BLOCK + "\n", text, count=1, flags=re.DOTALL)
        else:
            # Append if replacement location not found
            text = text + "\n" + NEW_PROB_BLOCK
            
        payload = b"\xef\xbb\xbf" + text.encode("utf-8")
        target.write_bytes(payload)
        changed += 1
        print(f"Applied Zero-Destruction Enhancement Curve to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Zero-Destruction Enhancement Rebalancer")
    print("==================================================")
    changed = apply_rebalance()
    print(f"Successfully rebalanced enhancement probabilities in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
