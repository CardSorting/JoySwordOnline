#!/usr/bin/env python3
"""Upload a packaged JoySword download release to private Azure Blob Storage."""

from __future__ import annotations

import argparse
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def run(*args: str) -> str:
    result = subprocess.run(args, cwd=ROOT, capture_output=True, text=True)
    if result.returncode != 0:
        raise SystemExit(result.stderr.strip() or result.stdout.strip())
    return result.stdout.strip()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, default=ROOT / "build" / "downloads" / "latest.json")
    parser.add_argument("--terraform-dir", type=Path, default=ROOT / "infra" / "azure")
    parser.add_argument("--container", default="downloads")
    args = parser.parse_args()

    manifest_path = args.manifest.resolve()
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    account = json.loads(
        run(
            "terraform",
            f"-chdir={args.terraform_dir.resolve()}",
            "output",
            "-json",
            "artifact_storage_account_name",
        )
    )

    for artifact in manifest["artifacts"]:
        source = manifest_path.parent / str(artifact["version"]) / str(artifact["fileName"])
        content_type = "application/zip" if artifact["kind"] == "archive" else "application/octet-stream"
        print(f"Uploading {source.name} to {args.container}/{artifact['blobName']}")
        run(
            "az",
            "storage",
            "blob",
            "upload",
            "--auth-mode",
            "login",
            "--account-name",
            account,
            "--container-name",
            args.container,
            "--name",
            str(artifact["blobName"]),
            "--file",
            str(source),
            "--content-type",
            content_type,
            "--content-disposition",
            f'attachment; filename="{source.name}"',
            "--overwrite",
            "true",
            "--only-show-errors",
        )

    print(f"Publishing {manifest_path.name}")
    run(
        "az",
        "storage",
        "blob",
        "upload",
        "--auth-mode",
        "login",
        "--account-name",
        account,
        "--container-name",
        args.container,
        "--name",
        "latest.json",
        "--file",
        str(manifest_path),
        "--content-type",
        "application/json",
        "--content-cache-control",
        "no-cache, max-age=0",
        "--overwrite",
        "true",
        "--only-show-errors",
    )
    print(f"Published JoySword {manifest['version']} to {account}/{args.container}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
