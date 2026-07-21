#!/usr/bin/env python3
"""Scale Dungeon Boss ED Drops in DropTable.lua to 50,000 - 250,000 ED per boss kill."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
TARGETS = (
    ELSWORD / "ServerResource" / "DropTable.lua",
    ELSWORD / "GameServer" / "DropTable.lua",
)

MARKER = "-- REBALANCE_BOSS_ED_DROPS: Scaled Boss ED Drops to 50,000 - 250,000 ED per kill\n"


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def rebalance_boss_ed_drops():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        if MARKER not in text:
            # Scale boss drop entries with low ED values (< 10,000) to 50,000 - 250,000
            def scale_boss_ed(match: re.Match[str]) -> str:
                prefix = match.group("prefix")
                val = int(match.group("val"))
                if val < 50000:
                    new_val = max(50000, val * 100)
                else:
                    new_val = val
                return f"{prefix}{new_val}"
                
            pattern = r"(?P<prefix>(?:Boss|Secret|Raid).*?ED\s*=\s*)(?P<val>\d+)"
            updated_text = MARKER + re.sub(pattern, scale_boss_ed, text, flags=re.IGNORECASE)
            payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
            target.write_bytes(payload)
            changed += 1
            print(f"Scaled Boss ED Drops in {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Boss ED Drop Escalation Engine")
    print("==================================================")
    changed = rebalance_boss_ed_drops()
    print(f"Successfully scaled boss ED drops in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
