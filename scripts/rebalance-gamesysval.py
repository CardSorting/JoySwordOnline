#!/usr/bin/env python3
"""Enable permanent 100% Bonus ED, EXP, and AP Rates in GameSysValTable.lua."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "GameServer" / "GameSysValTable.lua",
    ELSWORD / "ServerResource" / "GameSysValTable.lua",
)

INJECTION_BLOCK = """
-- REBALANCE_GAMESYSVAL_BONUSES: Permanent 100% Bonus ED, EXP, and AP Multipliers
GameSysVal:AddKNXGameBang( 1.0, 1.0, 1.0, 1.0 )
GameSysVal:AddPremiumEXP( 1.0 )
GameSysVal:AddVIPEXP( 1.0 )
-- END_REBALANCE_GAMESYSVAL_BONUSES
"""


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def apply_gamesysval_rebalance():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        if "-- REBALANCE_GAMESYSVAL_BONUSES" in text:
            text = re.sub(
                r"\n-- REBALANCE_GAMESYSVAL_BONUSES:.*?\n-- END_REBALANCE_GAMESYSVAL_BONUSES\n",
                "\n",
                text,
                flags=re.DOTALL
            )
        updated_text = text + "\n" + INJECTION_BLOCK
        payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
        target.write_bytes(payload)
        changed += 1
        print(f"Applied 100% ED/EXP Bonus Multipliers to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Global ED & EXP Bonus Multiplier Engine")
    print("==================================================")
    changed = apply_gamesysval_rebalance()
    print(f"Successfully applied ED/EXP multipliers in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
