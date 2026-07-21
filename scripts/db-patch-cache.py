#!/usr/bin/env python3
"""SHA-256 database patch cache and migration receipt engine for JoySword Elsword."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
RECEIPT_FILE = ELSWORD / "offline" / "db-patches.receipt"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    values: dict[str, str] = {}
    if not path.exists():
        return values
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, val = line.split("=", 1)
        values[key.strip()] = val.strip()
    return values


def compute_patch_hash() -> str:
    hasher = hashlib.sha256()

    env = load_env()
    key_params = (
        env.get("DB_HOST", "127.0.0.1"),
        env.get("DB_PORT", "1433"),
        env.get("CHANNEL_SERVER_IP", "127.0.0.1"),
        env.get("LOGIN_MODE", "PUBLIC"),
        env.get("SERVER_PROFILE", "US_SERVICE"),
    )
    hasher.update("|".join(key_params).encode("utf-8"))

    sql_files = sorted((ROOT / "database").glob("*.sql"))
    for sql_file in sql_files:
        hasher.update(sql_file.name.encode("utf-8"))
        hasher.update(sql_file.read_bytes())

    return hasher.hexdigest()


def is_cache_valid() -> bool:
    if not RECEIPT_FILE.exists():
        return False
    try:
        data = json.loads(RECEIPT_FILE.read_text(encoding="utf-8"))
        saved_hash = data.get("sha256")
        current_hash = compute_patch_hash()
        return saved_hash == current_hash
    except Exception:
        return False


def save_receipt() -> str:
    current_hash = compute_patch_hash()
    import time
    payload = {
        "updated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "sha256": current_hash,
    }
    RECEIPT_FILE.parent.mkdir(parents=True, exist_ok=True)
    RECEIPT_FILE.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    return current_hash


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="check if current DB patch cache is valid")
    parser.add_argument("--update", action="store_true", help="update DB patch cache receipt")
    parser.add_argument("--clear", action="store_true", help="clear DB patch cache receipt")
    args = parser.parse_args()

    if args.clear:
        RECEIPT_FILE.unlink(missing_ok=True)
        print("DB patch receipt cleared.")
        return 0

    if args.update:
        h = save_receipt()
        print(f"Updated DB patch receipt (SHA-256: {h[:12]}...).")
        return 0

    valid = is_cache_valid()
    if valid:
        print("OK: DB patch cache is valid. Migrations can be safely skipped.")
        return 0
    else:
        print("STALE: DB patch cache is invalid or missing.")
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
