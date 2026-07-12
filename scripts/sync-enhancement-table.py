#!/usr/bin/env python3
"""Generate/check runtime enhancement tables from the one canonical source.

The canonical source is declared in ``config/enhancement-invariants.json``.
Runtime copies are generated artifacts and must never be edited directly.
"""

from __future__ import annotations

import argparse
import json
import os
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MANIFEST = ROOT / "config" / "enhancement-invariants.json"


def load_manifest() -> dict:
    data = json.loads(MANIFEST.read_text(encoding="utf-8"))
    if data.get("schema") != "joysword.enhancement-invariants/v1":
        raise RuntimeError("invalid enhancement invariant manifest")
    return data


def gameserver_running() -> bool:
    if os.name != "nt":
        return False
    result = subprocess.run(
        ["tasklist.exe", "/FI", "IMAGENAME eq GameServer.exe", "/FO", "CSV", "/NH"],
        capture_output=True,
        text=True,
        check=False,
    )
    return result.returncode == 0 and "GameServer.exe" in result.stdout


def synchronize(*, apply: bool) -> list[str]:
    manifest = load_manifest()
    canonical = ROOT / manifest["canonical_source"]
    payload = canonical.read_bytes()
    drift: list[str] = []
    for relative in manifest["generated_runtime_copies"]:
        runtime = ROOT / relative
        if not runtime.exists() or runtime.read_bytes() != payload:
            drift.append(relative)
            if apply:
                runtime.parent.mkdir(parents=True, exist_ok=True)
                runtime.write_bytes(payload)
    return drift


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    action = parser.add_mutually_exclusive_group(required=True)
    action.add_argument("--check", action="store_true", help="fail if a generated runtime copy drifted")
    action.add_argument("--apply", action="store_true", help="regenerate runtime copies from canonical source")
    args = parser.parse_args()

    if args.apply and gameserver_running():
        print(
            "ERROR: refusing to change enhancement probabilities while GameServer.exe is running; "
            "stop it and perform a deliberate restart.",
            file=sys.stderr,
        )
        return 3
    drift = synchronize(apply=args.apply)
    if drift and args.check:
        print("ERROR: generated enhancement runtime drift:", file=sys.stderr)
        for path in drift:
            print(f"  - {path}", file=sys.stderr)
        print("Run: python scripts/sync-enhancement-table.py --apply", file=sys.stderr)
        return 2
    if drift:
        print("Generated enhancement runtime copies: " + ", ".join(drift))
    else:
        print("Enhancement runtime copies match the canonical source.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
