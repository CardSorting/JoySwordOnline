#!/usr/bin/env python3
"""Audit staged container payloads and workspace deploy footguns."""

from __future__ import annotations

import argparse
import hashlib
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))

from deploy_excludes import (  # noqa: E402
    DEFAULT_PAYLOAD_BUDGET_MIB,
    IMAGE_RUNTIME_SCRIPTS,
    is_backup_artifact,
    is_runtime_artifact,
    rel_posix,
    should_exclude_from_deploy,
)

FORBIDDEN_IN_PAYLOAD = (
    "Elsword/_ClientScript/",
    "Elsword/Database Backup/",
    "/log/",
    "/logs/",
    "/Statistics/",
)
FORBIDDEN_PAYLOAD_SUFFIXES = (".bat",)
FORBIDDEN_PAYLOAD_NAMES = frozenset({"desktop.ini"})


def file_hash(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def audit_workspace() -> tuple[list[str], list[str]]:
    failures: list[str] = []
    warnings: list[str] = []

    runtime_bytes = 0
    backup_bytes = 0
    for path in ROOT.rglob("*"):
        if not path.is_file():
            continue
        rel = rel_posix(path, ROOT)
        if not rel.startswith("Elsword/"):
            continue
        size = path.stat().st_size
        if is_runtime_artifact(rel):
            runtime_bytes += size
        if is_backup_artifact(path.name):
            backup_bytes += size

    if runtime_bytes > 0:
        mib = runtime_bytes / (1024 * 1024)
        warnings.append(
            f"Workspace has {mib:.1f} MiB of Elsword runtime logs/stats — run scripts/prune-runtime-artifacts.py"
        )
    if backup_bytes > 5 * 1024 * 1024:
        mib = backup_bytes / (1024 * 1024)
        warnings.append(f"Workspace has {mib:.1f} MiB of backup artifacts (*.bak, *Backup.exe, .rar)")

    legacy = ROOT / "Elsword" / "_ClientScript"
    if legacy.is_dir():
        size = sum(f.stat().st_size for f in legacy.rglob("*") if f.is_file())
        warnings.append(
            f"Legacy Elsword/_ClientScript/ still on disk ({size / (1024 * 1024):.1f} MiB) — safe to delete; never deployed"
        )

    return failures, warnings


def audit_payload(payload_dir: Path, budget_mib: float) -> tuple[list[str], list[str], dict[str, float]]:
    failures: list[str] = []
    warnings: list[str] = []
    stats: dict[str, float] = {}

    if not payload_dir.is_dir():
        failures.append(f"Payload directory missing: {payload_dir}")
        return failures, warnings, stats

    total_bytes = 0
    file_count = 0
    forbidden: list[str] = []
    backup_hits: list[str] = []
    missing_scripts: list[str] = []
    present_scripts = set()

    for path in payload_dir.rglob("*"):
        if not path.is_file():
            continue
        rel = rel_posix(path, payload_dir)
        file_count += 1
        size = path.stat().st_size
        total_bytes += size

        if rel.startswith("scripts/"):
            present_scripts.add(rel.replace("\\", "/"))

        for marker in FORBIDDEN_IN_PAYLOAD:
            if marker.lower() in f"/{rel}/".lower() or rel.startswith(marker):
                forbidden.append(rel)
                break
        if rel.count("/") == 1 and rel.lower().endswith(FORBIDDEN_PAYLOAD_SUFFIXES):
            forbidden.append(rel)
        if path.name in FORBIDDEN_PAYLOAD_NAMES:
            forbidden.append(rel)

        if is_backup_artifact(path.name):
            backup_hits.append(f"{rel} ({size / (1024 * 1024):.2f} MiB)")

    stats["files"] = float(file_count)
    stats["mib"] = total_bytes / (1024 * 1024)

    for script in sorted(IMAGE_RUNTIME_SCRIPTS):
        staged = script
        if staged not in present_scripts:
            missing_scripts.append(staged)

    if forbidden:
        failures.append("Forbidden paths in payload: " + ", ".join(forbidden[:8]))
    if backup_hits:
        failures.append("Backup artifacts in payload: " + "; ".join(backup_hits[:6]))
    if missing_scripts:
        failures.append("Missing runtime scripts: " + ", ".join(missing_scripts))
    if stats["mib"] > budget_mib:
        failures.append(
            f"Payload {stats['mib']:.1f} MiB exceeds budget {budget_mib:.1f} MiB — tighten deploy_excludes.py or dedupe rules"
        )
    elif stats["mib"] > budget_mib * 0.92:
        warnings.append(f"Payload {stats['mib']:.1f} MiB is within 8% of budget {budget_mib:.1f} MiB")

    # Detect duplicate Resources/Major identical pairs still shipped twice.
    major = payload_dir / "Elsword" / "ClientScript" / "Major"
    resources = payload_dir / "Elsword" / "Resources"
    dup_bytes = 0.0
    if major.is_dir() and resources.is_dir():
        for res_file in resources.iterdir():
            if not res_file.is_file():
                continue
            major_file = major / res_file.name
            if not major_file.is_file():
                continue
            try:
                if os.path.samefile(res_file, major_file):
                    continue
            except OSError:
                pass
            if file_hash(res_file) == file_hash(major_file):
                dup_bytes += res_file.stat().st_size
    if dup_bytes > 1024 * 1024:
        warnings.append(
            f"{dup_bytes / (1024 * 1024):.1f} MiB of byte-identical Resources/Major files — run staging dedupe"
        )

    return failures, warnings, stats


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--payload",
        type=Path,
        default=ROOT / "build" / "container-payload",
        help="staged payload directory",
    )
    parser.add_argument(
        "--budget-mib",
        type=float,
        default=DEFAULT_PAYLOAD_BUDGET_MIB,
        help=f"maximum allowed payload size (default: {DEFAULT_PAYLOAD_BUDGET_MIB})",
    )
    parser.add_argument("--workspace-only", action="store_true", help="audit workspace only")
    parser.add_argument("--payload-only", action="store_true", help="audit staged payload only")
    args = parser.parse_args()

    failures: list[str] = []
    warnings: list[str] = []

    if not args.payload_only:
        ws_fail, ws_warn = audit_workspace()
        failures.extend(ws_fail)
        warnings.extend(ws_warn)

    if not args.workspace_only:
        pl_fail, pl_warn, stats = audit_payload(args.payload.resolve(), args.budget_mib)
        failures.extend(pl_fail)
        warnings.extend(pl_warn)
        if stats:
            print(f"Payload: {int(stats['files'])} files, {stats['mib']:.1f} MiB")

    for item in warnings:
        print(f"WARNING: {item}")
    for item in failures:
        print(f"FAIL: {item}", file=sys.stderr)

    if failures:
        return 1
    print("Deploy/payload audit passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
