#!/usr/bin/env python3
"""Restore the untouched legacy enhancement curve from the bundled backup."""

from __future__ import annotations

import zipfile
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
ARCHIVE = ROOT / "Elsword" / "GameServer" / "Edited Enhancement tables put in GameServer and ServerResources.zip"
TARGETS = (
    ROOT / "Elsword" / "ServerResource" / "EnchantTable.lua",
    ROOT / "Elsword" / "GameServer" / "EnchantTable.lua",
)
START_MARKER = "-- 강화에 따른 능력치 변화"
END_MARKER = "-- 이벤트\n-- 드롭에 대한 랜덤 강화 테이블"


def probability_section(text: str) -> str:
    start = text.index(START_MARKER)
    end = text.index(END_MARKER, start)
    return text[start:end]


def restore() -> int:
    if not ARCHIVE.exists():
        raise RuntimeError(f"Missing legacy enhancement archive: {ARCHIVE}")
    with zipfile.ZipFile(ARCHIVE) as archive:
        legacy = archive.read("EnchantTable.lua.bak").decode("utf-8-sig")

    payload = b"\xef\xbb\xbf" + legacy.encode("utf-8")
    changed = 0
    for target in TARGETS:
        if not target.exists() or target.read_bytes() != payload:
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(payload)
            changed += 1
    return changed


def main() -> int:
    changed = restore()
    print(f"Restored legacy enhancement probability section in {changed} file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
