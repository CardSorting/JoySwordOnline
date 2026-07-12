#!/usr/bin/env python3
"""Create a trimmed JoySword container payload under build/container-payload/."""

from __future__ import annotations

import argparse
import hashlib
import os
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from deploy_excludes import (  # noqa: E402
    DEFAULT_PAYLOAD_BUDGET_MIB,
    iter_included_files,
    rel_posix,
    should_exclude_from_deploy,
)

DEFAULT_OUT = ROOT / "build" / "container-payload"


def file_hash(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def dst_path(out_dir: Path, rel: str) -> Path:
    if sys.platform == "win32":
        return out_dir / rel.replace("/", "\\")
    return out_dir / rel


def dedupe_resources_major(out_dir: Path) -> tuple[int, int]:
    """Hardlink byte-identical Resources files to ClientScript/Major copies."""
    linked_files = 0
    saved_bytes = 0
    resources = out_dir / "Elsword" / "Resources"
    major = out_dir / "Elsword" / "ClientScript" / "Major"
    if not resources.is_dir() or not major.is_dir():
        return linked_files, saved_bytes

    for res_file in sorted(resources.iterdir()):
        if not res_file.is_file():
            continue
        major_file = major / res_file.name
        if not major_file.is_file():
            continue
        if file_hash(res_file) != file_hash(major_file):
            continue
        size = res_file.stat().st_size
        res_file.unlink()
        try:
            os.link(major_file, res_file)
        except OSError:
            shutil.copy2(major_file, res_file)
        else:
            saved_bytes += size
        linked_files += 1
    return linked_files, saved_bytes


def stage_payload(out_dir: Path, clean: bool) -> dict[str, int]:
    if clean and out_dir.exists():
        shutil.rmtree(out_dir)

    included = iter_included_files(ROOT, image_mode=True)
    copied = 0
    total_bytes = 0

    for src in included:
        rel = rel_posix(src, ROOT)
        dst = dst_path(out_dir, rel)
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        copied += 1
        total_bytes += src.stat().st_size

    linked, saved = dedupe_resources_major(out_dir)
    total_bytes -= saved

    all_files = sum(1 for _ in ROOT.rglob("*") if _.is_file())
    return {
        "copied_files": copied,
        "skipped_files": all_files - copied,
        "total_bytes": total_bytes,
        "deduped_files": linked,
        "deduped_bytes": saved,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--out",
        type=Path,
        default=DEFAULT_OUT,
        help=f"output directory (default: {DEFAULT_OUT})",
    )
    parser.add_argument("--clean", action="store_true", help="remove the output directory before staging")
    parser.add_argument("--list-excluded", action="store_true", help="print excluded paths and exit")
    parser.add_argument(
        "--budget-mib",
        type=float,
        default=DEFAULT_PAYLOAD_BUDGET_MIB,
        help=f"fail when staged payload exceeds this size (default: {DEFAULT_PAYLOAD_BUDGET_MIB})",
    )
    args = parser.parse_args()

    if args.list_excluded:
        for path in sorted(ROOT.rglob("*")):
            if not path.is_file():
                continue
            rel = rel_posix(path, ROOT)
            if should_exclude_from_deploy(rel, image_mode=True):
                print(rel)
        return 0

    stats = stage_payload(args.out.resolve(), clean=args.clean)
    mib = stats["total_bytes"] / (1024 * 1024)
    print(f"Staged {stats['copied_files']} file(s) ({mib:.1f} MiB) -> {args.out}")
    print(f"Excluded {stats['skipped_files']} file(s) from repo tree.")
    if stats["deduped_files"]:
        print(
            f"Deduped {stats['deduped_files']} identical Resources/Major file(s) "
            f"({stats['deduped_bytes'] / (1024 * 1024):.1f} MiB saved via hardlink)."
        )

    if mib > args.budget_mib:
        print(
            f"ERROR: payload {mib:.1f} MiB exceeds budget {args.budget_mib:.1f} MiB",
            file=sys.stderr,
        )
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
