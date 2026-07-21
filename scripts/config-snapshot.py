#!/usr/bin/env python3
"""Automated configuration snapshotting and one-click rollback engine for JoySword Elsword."""

from __future__ import annotations

import argparse
import json
import os
import shutil
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
SNAPSHOT_DIR = ELSWORD / "offline" / "snapshots"


def get_target_files() -> list[Path]:
    targets: list[Path] = []

    env_file = ELSWORD / "offline" / "offline.env"
    if env_file.exists():
        targets.append(env_file)

    config_dir = ELSWORD / "Config"
    if config_dir.exists():
        for p in config_dir.rglob("*"):
            if p.is_file():
                targets.append(p)

    client_major = ELSWORD / "ClientScript" / "Major"
    if client_major.exists():
        for p in client_major.glob("Config*.lua"):
            if p.is_file():
                targets.append(p)

    for server in ("CenterServer", "ChannelServer", "GlobalServer", "LoginServer", "GameServer"):
        s_dir = ELSWORD / server
        if not s_dir.exists():
            continue
        for p in s_dir.glob("*.dsn"):
            targets.append(p)
        for p in s_dir.glob("config_*.lua"):
            targets.append(p)

    return sorted(set(targets))


def create_snapshot(label: str = "auto") -> Path:
    SNAPSHOT_DIR.mkdir(parents=True, exist_ok=True)
    import time
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    zip_path = SNAPSHOT_DIR / f"{timestamp}_{label}.zip"

    files = get_target_files()
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
        for path in files:
            rel = path.relative_to(ROOT)
            zf.write(path, str(rel))

    prune_snapshots(max_snapshots=5)
    return zip_path


def prune_snapshots(max_snapshots: int = 5) -> None:
    if not SNAPSHOT_DIR.exists():
        return
    snaps = sorted(SNAPSHOT_DIR.glob("*.zip"), key=lambda p: p.stat().st_mtime)
    while len(snaps) > max_snapshots:
        oldest = snaps.pop(0)
        oldest.unlink(missing_ok=True)


def list_snapshots() -> list[Path]:
    if not SNAPSHOT_DIR.exists():
        return []
    return sorted(SNAPSHOT_DIR.glob("*.zip"), key=lambda p: p.stat().st_mtime, reverse=True)


def rollback_snapshot(target: str = "latest") -> bool:
    snaps = list_snapshots()
    if not snaps:
        print("No configuration snapshots found in", SNAPSHOT_DIR, file=sys.stderr)
        return False

    chosen: Path | None = None
    if target == "latest":
        chosen = snaps[0]
    else:
        for p in snaps:
            if target.lower() in p.name.lower():
                chosen = p
                break

    if not chosen or not chosen.exists():
        print(f"Snapshot matching '{target}' not found.", file=sys.stderr)
        return False

    print(f"Restoring server configuration from snapshot: {chosen.name}...")
    with zipfile.ZipFile(chosen, "r") as zf:
        zf.extractall(ROOT)

    print("Configuration rollback completed successfully.")
    return True


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--create", type=str, nargs="?", const="manual", help="create configuration snapshot with optional label")
    parser.add_argument("--rollback", type=str, nargs="?", const="latest", help="restore configuration from snapshot name or 'latest'")
    parser.add_argument("--list", action="store_true", help="list available configuration snapshots")
    args = parser.parse_args()

    if args.list:
        snaps = list_snapshots()
        if not snaps:
            print("No configuration snapshots found.")
            return 0
        print(f"Found {len(snaps)} configuration snapshot(s):")
        for p in snaps:
            import time
            mtime = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(p.stat().st_mtime))
            size_kb = p.stat().st_size / 1024
            print(f"  - {p.name:<30} ({size_kb:.1f} KB, created {mtime})")
        return 0

    if args.rollback is not None:
        return 0 if rollback_snapshot(args.rollback) else 1

    label = args.create or "auto"
    zip_path = create_snapshot(label)
    print(f"Created configuration snapshot: {zip_path.name}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
