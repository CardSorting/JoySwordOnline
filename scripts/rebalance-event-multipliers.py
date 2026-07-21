#!/usr/bin/env python3
"""Enable Permanent 200% EXP, ED, and Drop Event Multipliers in EventData.lua."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "ServerResource" / "EventData.lua",
    ELSWORD / "GameServer" / "EventData.lua",
)

INJECTION_BLOCK = """
-- REBALANCE_EVENT_MULTIPLIERS: Permanent 200% Comeback & Global Event Multipliers
GameEvent:AddReward( 9001, { fEXPRate = 2.0, fEDRate = 2.0, fVPRate = 2.0 } )
GameEvent:AddReward( 9002, { fEXPRate = 2.0, fEDRate = 2.0, fVPRate = 2.0, iUserType = CRITERION_USER_TYPE["CUT_COMEBACK"] } )
GameEvent:AddReward( 9003, { fEXPRate = 2.0, fEDRate = 2.0, fVPRate = 2.0, iUserType = CRITERION_USER_TYPE["CUT_NEW"] } )
-- END_REBALANCE_EVENT_MULTIPLIERS
"""


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def apply_event_multipliers():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        if "-- REBALANCE_EVENT_MULTIPLIERS" in text:
            text = re.sub(
                r"\n-- REBALANCE_EVENT_MULTIPLIERS:.*?\n-- END_REBALANCE_EVENT_MULTIPLIERS\n",
                "\n",
                text,
                flags=re.DOTALL
            )
        updated_text = text + "\n" + INJECTION_BLOCK
        payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
        target.write_bytes(payload)
        changed += 1
        print(f"Applied 200% Event Multipliers to {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword 200% Event Multiplier Engine")
    print("==================================================")
    changed = apply_event_multipliers()
    print(f"Successfully applied event multipliers in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
