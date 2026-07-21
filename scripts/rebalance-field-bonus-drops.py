#!/usr/bin/env python3
"""Scale Field & Dungeon Middle-Boss Bonus Drop Counts in FieldBonusDrop.lua by 5x."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "ServerResource" / "FieldBonusDrop.lua",
    ELSWORD / "GameServer" / "FieldBonusDrop.lua",
)

MARKER = "-- REBALANCE_FIELD_BONUS_DROPS: 5x Field Middle-Boss Drop Multiplier Engine\n"


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def rebalance_field_drops():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        
        if MARKER not in text:
            # Multiply bonus item counts (e.g. 500 -> 2500, 1000 -> 5000)
            def scale_count(match: re.Match[str]) -> str:
                prefix = match.group("prefix")
                val = int(match.group("val"))
                new_val = val * 5
                return f"{prefix}{new_val}"
                
            pattern = r"(?P<prefix>SetMiddleBoss(?:CommonBonusItemCount|BonusItemIDCount_High|BonusItemIDCount_Low)\s*=\s*)(?P<val>\d+)"
            updated_text = MARKER + re.sub(pattern, scale_count, text)
            payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
            target.write_bytes(payload)
            changed += 1
            print(f"Applied 5x Field Middle-Boss Drop Scaling to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword 5x Field Middle-Boss Drop Multiplier Engine")
    print("==================================================")
    changed = rebalance_field_drops()
    print(f"Successfully scaled field bonus drops in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
