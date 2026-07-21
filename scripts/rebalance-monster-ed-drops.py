#!/usr/bin/env python3
"""Scale Monster ED Drop Values in DropTable.lua to Modern Gacha Standards."""

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


def read_text(p: Path) -> str:
    for enc in ("utf-8-sig", "utf-8", "cp949", "euc-kr", "latin-1"):
        try:
            return p.read_text(encoding=enc)
        except UnicodeDecodeError:
            continue
    return p.read_text(encoding="utf-8", errors="replace")


def rebalance_ed_drops():
    changed = 0
    for target in TARGETS:
        if not target.exists():
            continue
        text = read_text(target)
        
        # Scale legacy ED = 16 or ED < 100 up to 1500 ED
        def scale_match(match: re.Match[str]) -> str:
            val = int(match.group(1))
            if val < 500:
                new_val = 1500
            else:
                new_val = val * 10
            return f"ED = {new_val}"
            
        updated_text = re.sub(r"\bED\s*=\s*(\d+)", scale_match, text)
        if updated_text != text:
            payload = b"\xef\xbb\xbf" + updated_text.encode("utf-8")
            target.write_bytes(payload)
            changed += 1
            print(f"Scaled Monster ED Drops in {target.relative_to(ROOT)}")
    return changed


def main() -> int:
    print("==================================================")
    print("JoySword Monster ED Drop Scaling Engine")
    print("==================================================")
    changed = rebalance_ed_drops()
    print(f"Successfully scaled monster ED drops in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
