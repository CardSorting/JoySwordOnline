#!/usr/bin/env python3
"""JoySword unified operator CLI — prune, audit, package, and build."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SCRIPTS = ROOT / "scripts"
if str(SCRIPTS) not in sys.path:
    sys.path.insert(0, str(SCRIPTS))
from deploy_excludes import DEFAULT_PAYLOAD_BUDGET_MIB  # noqa: E402

DEFAULT_OUT = ROOT / "build" / "container-payload"
DEFAULT_TAG = "joysword-server:local"

BAKE_ENV = """\
ELSWORD_ROOT=C:\\app\\Elsword
SERVER_PROFILE=US_SERVICE
LOGIN_MODE=PUBLIC
OFFLINE_AUTH=INTERNAL
DB_HOST=127.0.0.1
DB_PORT=1433
DB_USER=sa
DB_PASSWORD=JoySword!Offline123
CHANNEL_SERVER_IP=127.0.0.1
CHANNEL_SERVER_PORT=9400
LOGIN_SERVER_PORT=9200
CENTER_SERVER_PORT=9100
GLOBAL_SERVER_PORT=9500
GAME_SERVER_PORT=9300
START_DELAY_SECONDS=5
SERVER_READINESS_MODE=strict
JOYSWORD_PVP_PROFILE=default
JOY_SWORD_LOG_BUDGET_MIB=50
"""


def run_python(script: str, *args: str, env: dict[str, str] | None = None) -> int:
    merged = os.environ.copy()
    if env:
        merged.update(env)
    result = subprocess.run([sys.executable, str(SCRIPTS / script), *args], cwd=str(ROOT), env=merged)
    return result.returncode


def cmd_prune(args: argparse.Namespace) -> int:
    prune_args = ["prune-runtime-artifacts.py"]
    if getattr(args, "dry_run", False):
        prune_args.append("--dry-run")
    if getattr(args, "legacy", False):
        prune_args.append("--legacy")
    return run_python(*prune_args)


def cmd_audit(args: argparse.Namespace) -> int:
    audit_args = []
    if args.workspace_only:
        audit_args.append("--workspace-only")
    if args.payload_only:
        audit_args.append("--payload-only")
    if args.budget_mib:
        audit_args.extend(["--budget-mib", str(args.budget_mib)])
    return run_python("audit-payload.py", *audit_args)


def write_bake_env(out_dir: Path) -> None:
    env_path = out_dir / "Elsword" / "offline" / "offline.env"
    env_path.parent.mkdir(parents=True, exist_ok=True)
    env_path.write_text(BAKE_ENV, encoding="utf-8")


def payload_digest(payload_dir: Path) -> tuple[int, int, str]:
    total_bytes = 0
    file_count = 0
    digest = hashlib.sha256()
    for path in sorted(payload_dir.rglob("*")):
        if not path.is_file() or path.name == ".joysword-manifest.json":
            continue
        rel = path.relative_to(payload_dir).as_posix().encode("utf-8")
        data = path.read_bytes()
        digest.update(rel)
        digest.update(str(len(data)).encode("ascii"))
        digest.update(data)
        total_bytes += len(data)
        file_count += 1
    return file_count, total_bytes, digest.hexdigest()


def write_payload_manifest(payload_dir: Path, package_profile: str) -> None:
    files, total_bytes, sha256 = payload_digest(payload_dir)
    manifest = {
        "schema": "joysword.payload/v1",
        "built_at": datetime.now(timezone.utc).isoformat(),
        "package_profile": package_profile,
        "elsword_root": "C:\\app\\Elsword",
        "files": files,
        "bytes": total_bytes,
        "sha256": sha256,
    }
    (payload_dir / ".joysword-manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n",
        encoding="utf-8",
    )
    print(f"Manifest: {files} files, {total_bytes / (1024 * 1024):.1f} MiB, sha256={sha256[:16]}...")


def cmd_package(args: argparse.Namespace) -> int:
    if not args.skip_prune:
        prune_ns = argparse.Namespace(legacy=args.legacy, dry_run=False)
        if cmd_prune(prune_ns) != 0:
            return 1

    if not args.skip_audit:
        code = run_python("audit-payload.py", "--workspace-only")
        if code != 0:
            return code

    stage_args = ["stage-container-payload.py", "--clean"]
    if args.budget_mib:
        stage_args.extend(["--budget-mib", str(args.budget_mib)])
    code = run_python(
        *stage_args,
        env={"JOYSWORD_PACKAGE_PROFILE": args.profile},
    )
    if code != 0:
        return code

    out_dir = args.out.resolve()
    write_bake_env(out_dir)
    code = run_python(
        "configure-offline.py",
        "--repo-root",
        str(out_dir),
        "--bake-paths",
    )
    if code != 0:
        return code

    write_payload_manifest(out_dir, args.profile)

    code = run_python("audit-payload.py", "--payload-only", *(["--budget-mib", str(args.budget_mib)] if args.budget_mib else []))
    return code


def cmd_build(args: argparse.Namespace) -> int:
    code = cmd_package(args)
    if code != 0:
        return code
    tag = args.tag or DEFAULT_TAG
    print(f"==> docker build -t {tag}")
    result = subprocess.run(
        ["docker", "build", "-f", "deploy/Dockerfile.windows", "-t", tag, str(args.out.resolve())],
        cwd=str(ROOT),
    )
    return result.returncode


def cmd_stack(args: argparse.Namespace) -> int:
    """One command: database setup (native) or docker compose stack."""
    if args.docker:
        if args.build:
            build_args = argparse.Namespace(
                profile=args.profile,
                budget_mib=args.budget_mib,
                out=args.out,
                tag=args.tag or DEFAULT_TAG,
                legacy=args.legacy,
                skip_prune=args.skip_prune,
                skip_audit=False,
            )
            if cmd_build(build_args) != 0:
                return 1
        compose = ["docker", "compose", "--profile", "stack", "up", "-d"]
        if args.pull:
            compose.insert(3, "--pull")
        print(f"==> {' '.join(compose)}")
        return subprocess.run(compose, cwd=str(ROOT)).returncode

    setup = ROOT / "scripts" / "setup-offline.bat"
    if not args.skip_setup:
        print("==> Running scripts\\setup-offline.bat")
        result = subprocess.run(["cmd", "/c", str(setup)], cwd=str(ROOT))
        if result.returncode != 0:
            return result.returncode

    start = ROOT / "Elsword" / "Start-Offline.bat"
    print("==> Starting native server stack")
    return subprocess.run(["cmd", "/c", str(start)], cwd=str(ROOT / "Elsword")).returncode


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", default="US_SERVICE", help="US profile baked into the image")
    parser.add_argument("--budget-mib", type=float, default=DEFAULT_PAYLOAD_BUDGET_MIB, help="payload size budget")
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT, help="staged payload directory")
    sub = parser.add_subparsers(dest="command", required=True)

    prune = sub.add_parser("prune", help="remove runtime logs, backups, and optional legacy trees")
    prune.add_argument("--legacy", action="store_true", help="also remove Elsword/_ClientScript")
    prune.add_argument("--dry-run", action="store_true")
    prune.set_defaults(func=cmd_prune)

    audit = sub.add_parser("audit", help="audit workspace and/or staged payload")
    audit.add_argument("--workspace-only", action="store_true")
    audit.add_argument("--payload-only", action="store_true")
    audit.set_defaults(func=cmd_audit)

    package = sub.add_parser("package", help="prune, stage, bake paths, write manifest, audit")
    package.add_argument("--profile", default="US_SERVICE", help="US profile baked into the image")
    package.add_argument("--budget-mib", type=float, default=DEFAULT_PAYLOAD_BUDGET_MIB)
    package.add_argument("--skip-prune", action="store_true")
    package.add_argument("--skip-audit", action="store_true")
    package.add_argument("--legacy", action="store_true", help="remove Elsword/_ClientScript before staging")
    package.set_defaults(func=cmd_package)

    build = sub.add_parser("build", help="package then docker build")
    build.add_argument("--profile", default="US_SERVICE")
    build.add_argument("--budget-mib", type=float, default=DEFAULT_PAYLOAD_BUDGET_MIB)
    build.add_argument("--tag", default=DEFAULT_TAG)
    build.add_argument("--legacy", action="store_true")
    build.add_argument("--skip-prune", action="store_true")
    build.set_defaults(func=cmd_build)

    stack = sub.add_parser("stack", help="start full stack (native setup+servers, or docker compose)")
    stack.add_argument("--profile", default="US_SERVICE")
    stack.add_argument("--budget-mib", type=float, default=DEFAULT_PAYLOAD_BUDGET_MIB)
    stack.add_argument("--docker", action="store_true", help="use docker compose --profile stack")
    stack.add_argument("--build", action="store_true", help="with --docker: run joysword build first")
    stack.add_argument("--legacy", action="store_true")
    stack.add_argument("--skip-prune", action="store_true")
    stack.add_argument("--skip-setup", action="store_true", help="native only: skip setup-offline.bat")
    stack.add_argument("--pull", action="store_true", help="docker only: compose pull")
    stack.add_argument("--tag", default=DEFAULT_TAG)
    stack.set_defaults(func=cmd_stack)

    args = parser.parse_args()
    return args.func(args)


if __name__ == "__main__":
    raise SystemExit(main())
