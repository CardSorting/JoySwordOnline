#!/usr/bin/env python3
"""Automatically update and upload the R2 server.json manifest on server startup."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
import boto3
from botocore.client import Config

ROOT = Path(__file__).resolve().parent.parent
MANIFEST_PATH = ROOT / "scratch" / "server.json"

ACCESS_KEY_ID = "71adc09e1c1e61753320d4ea55ee9843"
SECRET_ACCESS_KEY = "f535d48c3d3f5af36458c2b695d65cca2480e83bd35a567a89ccfe7cdb742028"
ENDPOINT_URL = "https://33f8b2564698c222880cbad3e42decad.r2.cloudflarestorage.com"
BUCKET_NAME = "joysword-manifest"

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ip", required=True, help="Active public/LAN IP address of the server")
    args = parser.parse_args()

    ip = args.ip.strip()

    # Load existing manifest or use template
    if MANIFEST_PATH.exists():
        try:
            manifest = json.loads(MANIFEST_PATH.read_text(encoding="utf-8"))
        except Exception:
            manifest = {}
    else:
        manifest = {}

    # Update manifest settings
    manifest["environment"] = manifest.get("environment", "production")
    manifest["loginHost"] = ip
    manifest["loginPort"] = manifest.get("loginPort", 9400)
    manifest["patchHost"] = ip
    manifest["apiBaseUrl"] = manifest.get("apiBaseUrl", "https://api.onjoysword.top")
    manifest["maintenance"] = manifest.get("maintenance", False)
    manifest["message"] = manifest.get("message", "Welcome to JoySword!")

    # Write manifest back
    MANIFEST_PATH.parent.mkdir(parents=True, exist_ok=True)
    MANIFEST_PATH.write_text(json.dumps(manifest) + "\n", encoding="utf-8")
    print(f"Updated scratch/server.json IP coordinates to: {ip}")

    # Upload server.json to R2
    print(f"Connecting to R2 endpoint and uploading server.json...")
    try:
        s3 = boto3.client(
            service_name='s3',
            endpoint_url=ENDPOINT_URL,
            aws_access_key_id=ACCESS_KEY_ID,
            aws_secret_access_key=SECRET_ACCESS_KEY,
            config=Config(signature_version='s3v4'),
        )
        s3.upload_file(
            Filename=str(MANIFEST_PATH),
            Bucket=BUCKET_NAME,
            Key="server.json",
            ExtraArgs={
                'ContentType': 'application/json',
                'CacheControl': 'no-cache, max-age=0'
            }
        )
        print("Successfully uploaded updated server.json to R2!")
    except Exception as e:
        print(f"Error uploading to R2: {e}", file=sys.stderr)
        return 1

    return 0

if __name__ == "__main__":
    sys.exit(main())
