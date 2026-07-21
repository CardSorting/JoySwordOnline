#!/usr/bin/env python3
"""Remove runtime logs, statistics, crash dumps, and backup artifacts from the Elsword tree."""

from __future__ import annotations

import argparse
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from deploy_excludes import is_backup_artifact, is_runtime_artifact, rel_posix  # noqa: E402


def should_prune(rel_posix_path: str) -> bool:
    if not rel_posix_path.startswith("Elsword/"):
        return False
    name = Path(rel_posix_path).name
    return is_runtime_artifact(rel_posix_path) or is_backup_artifact(name)


def prune(dry_run: bool) -> tuple[int, int]:
    removed = 0
    bytes_freed = 0
    for path in sorted(ROOT.rglob("*")):
        if not path.is_file():
            continue
        rel = rel_posix(path, ROOT)
        if not should_prune(rel):
            continue
        size = path.stat().st_size
        if dry_run:
            print(f"would remove {rel} ({size} bytes)")
            removed += 1
            bytes_freed += size
        else:
            try:
                path.unlink()
                removed += 1
                bytes_freed += size
            except (PermissionError, OSError):
                # If file is locked by a running process, try truncating if large (> 5 MiB)
                try:
                    if size > 5 * 1024 * 1024:
                        with path.open("r+", encoding="utf-8", errors="ignore") as f:
                            f.truncate(0)
                        removed += 1
                        bytes_freed += size
                except OSError:
                    pass
    return removed, bytes_freed


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true", help="print actions without deleting")
    parser.add_argument(
        "--legacy",
        action="store_true",
        help="also remove Elsword/_ClientScript (legacy duplicate tree, never deployed)",
    )
    args = parser.parse_args()

    removed, bytes_freed = prune(args.dry_run)
    mib = bytes_freed / (1024 * 1024)
    verb = "Would remove" if args.dry_run else "Removed"
    print(f"{verb} {removed} runtime artifact(s) ({mib:.1f} MiB).")

    legacy = ROOT / "Elsword" / "_ClientScript"
    if args.legacy and legacy.is_dir():
        legacy_bytes = sum(f.stat().st_size for f in legacy.rglob("*") if f.is_file())
        if args.dry_run:
            print(f"Would remove {legacy} ({legacy_bytes / (1024 * 1024):.1f} MiB)")
        else:
            shutil.rmtree(legacy)
            print(f"Removed legacy {legacy} ({legacy_bytes / (1024 * 1024):.1f} MiB)")
    return 0


if __name__ == "__main__":    raise SystemExit(main())
