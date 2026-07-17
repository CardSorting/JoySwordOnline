#!/usr/bin/env python3
"""Build and verify immutable JoySword Azure release archives."""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
import tempfile
import zipfile
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = ROOT / "scripts"
if str(SCRIPTS) not in sys.path:
    sys.path.insert(0, str(SCRIPTS))

import hashlib

from deploy_excludes import iter_included_files, rel_posix  # noqa: E402


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def validate_version(version: str) -> str:
    if not version or len(version) > 80:
        raise ValueError("Release version must contain 1-80 characters.")
    if any(not (char.isalnum() or char in "._-") for char in version):
        raise ValueError("Release version may contain only letters, digits, dot, underscore, and hyphen.")
    return version


def write_archive(stage: Path, archive: Path) -> tuple[int, int]:
    files = [path for path in stage.rglob("*") if path.is_file()]
    archive.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(archive, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as output:
        for path in sorted(files):
            relative = path.relative_to(stage).as_posix()
            info = zipfile.ZipInfo(relative, date_time=(2020, 1, 1, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o644 << 16
            output.writestr(info, path.read_bytes())
    return len(files), sum(path.stat().st_size for path in files)

RELEASE_SCRIPTS = frozenset(
    {
        "apply-pvp-profile.py",
        "configure-offline.py",
        "db-healthcheck.py",
        "deploy_excludes.py",
        "fix-lua-utf8-headers.py",
        "install-cash-allowance.py",
        "install-creation-fixes.py",
        "patch-gameserver-max-level-scroll.py",
        "patch-gameserver-unit-class-limit.py",
        "patch-globalserver-solo-pvp.py",
        "prune-runtime-artifacts.py",
        "rebalance-cashshop-economy.py",
        "repair-account-init.py",
        "restore-cashshop.py",
        "start-offline.py",
        "stop-offline.py",
        "sync-enhancement-table.py",
        "validate-enhancement-probabilities.py",
        "validate-pvp-matchmaking.py",
        "enhancement-runtime-canary.py",
    }
)


def stage_payload(stage: Path) -> None:
    for source in iter_included_files(ROOT, image_mode=True):
        relative = rel_posix(source, ROOT)
        if relative.startswith("scripts/"):
            continue
        destination = stage / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, destination)

    database_out = stage / "database"
    database_out.mkdir(parents=True, exist_ok=True)
    for source in sorted((ROOT / "database").iterdir()):
        if source.is_file() and source.suffix.lower() in {".bak", ".sql"}:
            shutil.copy2(source, database_out / source.name)

    scripts_out = stage / "scripts"
    scripts_out.mkdir(parents=True, exist_ok=True)
    for name in RELEASE_SCRIPTS:
        source = SCRIPTS / name
        if not source.is_file():
            raise FileNotFoundError(f"Required release script is missing: {source}")
        shutil.copy2(source, scripts_out / name)


def build_release(version: str, out_dir: Path, commit: str = "unknown") -> tuple[Path, Path]:
    version = validate_version(version)
    for command in (
        [sys.executable, str(SCRIPTS / "sync-enhancement-table.py"), "--check"],
        [sys.executable, str(SCRIPTS / "validate-enhancement-probabilities.py"), "--check-only"],
        [sys.executable, str(SCRIPTS / "validate-pvp-matchmaking.py")],
        [sys.executable, str(SCRIPTS / "patch-globalserver-solo-pvp.py"), "--dry-run"],
    ):
        result = subprocess.run(command, cwd=str(ROOT), check=False)
        if result.returncode != 0:
            raise RuntimeError("release invariant validation failed; refusing release build")
    enhancement_manifest = json.loads(
        (ROOT / "config" / "enhancement-invariants.json").read_text(encoding="utf-8")
    )
    release_dir = out_dir / version
    archive = release_dir / "joysword.zip"
    manifest_path = release_dir / "manifest.json"
    release_dir.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(prefix="joysword-azure-release-") as temporary:
        stage = Path(temporary)
        stage_payload(stage)
        files, uncompressed_bytes = write_archive(stage, archive)

    manifest = {
        "schema": "joysword.release/v1",
        "platform": "azure",
        "version": version,
        "commit": commit,
        "built_at": datetime.now(timezone.utc).isoformat(),
        "server_profile": "US_SERVICE",
        "public_tcp_ports": [9200, 9300, 9400],
        "files": files,
        "uncompressed_bytes": uncompressed_bytes,
        "archive_bytes": archive.stat().st_size,
        "archive_sha256": sha256_file(archive),
        "database_migration_level": 1,
        "enhancement_validation": "pass",
        "pvp_matchmaking_validation": "pass",
        "enhancement_invariant_version": enhancement_manifest["version"],
        "enhancement_migration_id": enhancement_manifest["migration"]["id"],
        "enhancement_probability_section_sha256": enhancement_manifest[
            "approved_probability_section_sha256"
        ],
    }
    manifest_path.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    return archive, manifest_path


def verify_release(archive: Path, manifest_path: Path) -> None:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    if manifest.get("schema") != "joysword.release/v1" or manifest.get("platform") != "azure":
        raise ValueError("Unsupported Azure release manifest.")
    if sha256_file(archive) != manifest.get("archive_sha256"):
        raise ValueError("Archive checksum mismatch.")
    with zipfile.ZipFile(archive) as package:
        corrupt = package.testzip()
        names = set(package.namelist())
    if corrupt:
        raise ValueError(f"Corrupt ZIP entry: {corrupt}")
    required = {
        "Elsword/CenterServer/CenterServer.exe",
        "Elsword/CenterServer/config_cn_US_SERVICE.lua",
        "Elsword/ChannelServer/ChannelServer.exe",
        "Elsword/ChannelServer/config_ch_US_SERVICE.lua",
        "Elsword/GlobalServer/GlobalServer.exe",
        "Elsword/GlobalServer/config_gb_US_SERVICE.lua",
        "Elsword/LoginServer/LoginServer.exe",
        "Elsword/LoginServer/config_lg_US_SERVICE.lua",
        "Elsword/GameServer/GameServer.exe",
        "Elsword/GameServer/config_gs_US_SERVICE.lua",
        "database/Account.bak",
        "database/ES_BILLING.bak",
        "database/Game01.bak",
        "database/Statistics.bak",

        "scripts/fix-lua-utf8-headers.py",
        "scripts/install-creation-fixes.py",
        "scripts/rebalance-cashshop-economy.py",
        "scripts/start-offline.py",
        "scripts/patch-globalserver-solo-pvp.py",
        "scripts/validate-pvp-matchmaking.py",
    }
    missing = sorted(required - names)
    if missing:
        raise ValueError("Release archive is missing required files: " + ", ".join(missing))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)
    build = subparsers.add_parser("build")
    build.add_argument("version")
    build.add_argument("--commit", default="unknown")
    build.add_argument("--out", type=Path, default=ROOT / "build" / "azure-releases")
    verify = subparsers.add_parser("verify")
    verify.add_argument("archive", type=Path)
    verify.add_argument("manifest", type=Path)
    args = parser.parse_args()

    try:
        if args.command == "build":
            archive, manifest = build_release(args.version, args.out.resolve(), args.commit)
            verify_release(archive, manifest)
            print(f"Azure release archive: {archive}")
            print(f"Azure release manifest: {manifest}")
        else:
            verify_release(args.archive.resolve(), args.manifest.resolve())
            print("Azure release verification passed.")
    except (OSError, ValueError, json.JSONDecodeError, zipfile.BadZipFile) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
