#!/usr/bin/env python3
"""Build the public Windows client and launcher download artifacts."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import shutil
import stat
import zipfile
from datetime import date, datetime, time, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_OUTPUT = ROOT / "build" / "downloads"

CLIENT_EXCLUDES = {
    "cashshop-economy-report.json",
    "chatlog.txt",
    "crash_screenshot.jpg",
    "data034.kom.bak",
    "data035.kom.bak",
    "data036.kom.bak",
    "data036.kom.azure-backup",
    "data057.rar",
    "hardwareinfo.txt",
    "log.htm",
}

README = """JoySword for Windows
====================

Requirements
------------
- Windows 10 or Windows 11, 64-bit
- At least 20 GB of free disk space
- A JoySword account from the official website

Install and play
----------------
1. Extract this entire archive to a writable folder, such as C:\\Games\\JoySword.
2. Run "JoySword Launcher.exe".
3. If asked, select the extracted JoySword folder (the folder containing "data").
4. Sign in to the game with the game login and password shown in your web account.

The launcher verifies and repairs the Azure server endpoint before every launch.
Do not run x2.exe directly. Windows SmartScreen may warn because this community
launcher is not code-signed; verify the SHA-256 value published on the official
download page before continuing.

Support
-------
Use the player wiki and account portal on the official JoySword website.
"""


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(8 * 1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def zip_info(name: str, released: date, mode: int = 0o644) -> zipfile.ZipInfo:
    # ZIP timestamps have a two-second resolution and cannot predate 1980.
    released = max(released, date(1980, 1, 1))
    info = zipfile.ZipInfo(name, (released.year, released.month, released.day, 0, 0, 0))
    info.compress_type = zipfile.ZIP_STORED
    info.create_system = 3
    info.external_attr = (stat.S_IFREG | mode) << 16
    return info


def add_file(archive: zipfile.ZipFile, source: Path, target: str, released: date) -> None:
    info = zip_info(target.replace(os.sep, "/"), released)
    with source.open("rb") as input_stream, archive.open(info, "w", force_zip64=True) as output:
        shutil.copyfileobj(input_stream, output, length=8 * 1024 * 1024)


def client_files(client_dir: Path) -> list[Path]:
    files = []
    for path in client_dir.rglob("*"):
        if not path.is_file():
            continue
        relative = path.relative_to(client_dir)
        if relative.name.lower() in CLIENT_EXCLUDES:
            continue
        if relative.name.lower().endswith((".log", ".dmp", ".azure-backup")):
            continue
        files.append(path)
    return sorted(files, key=lambda path: path.as_posix().lower())


def artifact(
    *,
    artifact_id: str,
    label: str,
    description: str,
    version: str,
    path: Path,
    blob_name: str,
    kind: str,
    recommended: bool,
) -> dict[str, object]:
    return {
        "id": artifact_id,
        "label": label,
        "description": description,
        "version": version,
        "fileName": path.name,
        "blobName": blob_name,
        "bytes": path.stat().st_size,
        "sha256": sha256(path),
        "platform": "windows-x64",
        "kind": kind,
        "recommended": recommended,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", required=True, help="Release version, for example 1.1.0")
    parser.add_argument(
        "--release-date",
        type=date.fromisoformat,
        default=date.today(),
        help="UTC release date (YYYY-MM-DD); also fixes ZIP timestamps",
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--client-dir", type=Path, default=ROOT / "data")
    parser.add_argument(
        "--launcher-setup",
        type=Path,
        default=None,
        help="NSIS setup executable; defaults to launcher/release for this version",
    )
    parser.add_argument(
        "--launcher-portable",
        type=Path,
        default=None,
        help="Portable launcher executable; defaults to launcher/release for this version",
    )
    args = parser.parse_args()

    output = args.output.resolve()
    client_dir = args.client_dir.resolve()
    setup = (
        args.launcher_setup
        or ROOT / "launcher" / "release" / f"JoySword-Launcher-Setup-{args.version}-x64.exe"
    ).resolve()
    portable = (
        args.launcher_portable
        or ROOT / "launcher" / "release" / f"JoySword-Launcher-Portable-{args.version}-x64.exe"
    ).resolve()
    required = [
        client_dir / "x2.exe",
        client_dir / "data036.kom",
        ROOT / "scripts" / "launch-client.ps1",
        ROOT / "Start-Client-Windows.ps1",
        ROOT / "Start-Client-Windows.bat",
        setup,
        portable,
    ]
    missing = [str(path) for path in required if not path.is_file()]
    if missing:
        raise SystemExit("Missing required release files:\n- " + "\n- ".join(missing))

    version_dir = output / args.version
    version_dir.mkdir(parents=True, exist_ok=True)
    full_name = f"JoySword-Client-{args.version}-windows-x64.zip"
    full_path = version_dir / full_name

    release_info = {
        "schema": "joysword.client-release/v1",
        "version": args.version,
        "releasedAt": datetime.combine(args.release_date, time(), timezone.utc).isoformat(),
        "platform": "windows-x64",
        "server": "Azure",
    }

    print(f"Creating {full_path}")
    with zipfile.ZipFile(full_path, "w", allowZip64=True) as archive:
        archive.writestr(zip_info("JoySword/README-FIRST.txt", args.release_date), README)
        archive.writestr(
            zip_info("JoySword/release.json", args.release_date),
            json.dumps(release_info, indent=2) + "\n",
        )
        add_file(
            archive,
            portable,
            "JoySword/JoySword Launcher.exe",
            args.release_date,
        )
        add_file(
            archive,
            ROOT / "Start-Client-Windows.bat",
            "JoySword/Start-Client-Windows.bat",
            args.release_date,
        )
        add_file(
            archive,
            ROOT / "Start-Client-Windows.ps1",
            "JoySword/Start-Client-Windows.ps1",
            args.release_date,
        )
        add_file(
            archive,
            ROOT / "scripts" / "launch-client.ps1",
            "JoySword/scripts/launch-client.ps1",
            args.release_date,
        )
        files = client_files(client_dir)
        for index, path in enumerate(files, start=1):
            target = Path("JoySword/data") / path.relative_to(client_dir)
            add_file(archive, path, target.as_posix(), args.release_date)
            if index % 25 == 0 or index == len(files):
                print(f"  Added {index}/{len(files)} client files")

    blob_prefix = f"releases/{args.version}"
    setup_copy = version_dir / setup.name
    shutil.copy2(setup, setup_copy)
    artifacts = [
        artifact(
            artifact_id="full-client",
            label="Full client + launcher",
            description="Everything required for a new Windows installation.",
            version=args.version,
            path=full_path,
            blob_name=f"{blob_prefix}/{full_path.name}",
            kind="archive",
            recommended=True,
        ),
        artifact(
            artifact_id="launcher",
            label="Launcher only",
            description="For players who already have the current JoySword client files.",
            version=args.version,
            path=setup_copy,
            blob_name=f"{blob_prefix}/{setup_copy.name}",
            kind="installer",
            recommended=False,
        ),
    ]
    manifest = {
        "schema": "joysword.downloads/v1",
        "version": args.version,
        "publishedAt": release_info["releasedAt"],
        "artifacts": artifacts,
    }
    manifest_path = output / "latest.json"
    manifest_path.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")

    for item in artifacts:
        print(f"{item['fileName']}: {item['bytes']} bytes, sha256 {item['sha256']}")
    print(f"Manifest: {manifest_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
