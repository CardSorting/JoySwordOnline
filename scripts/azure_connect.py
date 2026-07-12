#!/usr/bin/env python3
"""Patch the local Windows client to the Azure game-server public IP."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = ROOT / "scripts"
sys.path.insert(0, str(SCRIPTS))

from client_connect import (  # noqa: E402
    CLIENT_SCRIPT_DIR,
    WINDOWS_CLIENT_ARCHIVE,
    patch_client_config,
    patch_windows_client_archive,
)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--terraform-dir",
        type=Path,
        default=ROOT / "infra" / "azure",
        help="Path to the azure Terraform directory",
    )
    args = parser.parse_args()

    # The client connects directly to the game-server VM's public IP.
    result = subprocess.run(
        ["terraform", f"-chdir={args.terraform_dir.resolve()}", "output", "-json", "server_public_ip"],
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        print(result.stderr or result.stdout, file=sys.stderr)
        return 1
    ip = json.loads(result.stdout)
    print(f"Azure game-server public IP: {ip}")

    loose = 0
    if CLIENT_SCRIPT_DIR.is_dir():
        for path in CLIENT_SCRIPT_DIR.glob("Config*.lua"):
            if "AddChannelServerIP_LUA" in path.read_text(encoding="utf-8", errors="replace"):
                patch_client_config(path, ip)
                loose += 1
    packed = patch_windows_client_archive(WINDOWS_CLIENT_ARCHIVE, ip)
    print(f"Updated {loose} loose config(s) and {packed} packed config(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
