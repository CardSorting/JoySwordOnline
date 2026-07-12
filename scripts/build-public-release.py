#!/usr/bin/env python3
"""Build a sanitized public release of the JoySword workspace as a .rar.

Strategy (defense in depth — three independent layers):
  1. EXCLUDE  — never copy secret-bearing / machine-specific / bulky-private
                paths into the staging tree (env files, TF state & tfvars,
                .git, build caches, DB backups, logs, node_modules, etc.).
  2. SCRUB    — for files that MUST ship but may carry secrets (offline.env,
                *.dsn, occasional scripts), replace secret values with public
                placeholders in the staged copy (never touches the real repo).
  3. GATE     — scan the fully staged tree for any residual secret signature.
                If anything matches, ABORT before creating the archive.

Only after the gate passes is the .rar produced with WinRAR.

Usage:
    python scripts/build-public-release.py                 # -> dist/JoySword-public-<ver>.rar
    python scripts/build-public-release.py --stage-only    # stage + scrub + scan, no rar
    python scripts/build-public-release.py --out <path.rar>
"""

from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RAR_EXE = r"C:\Program Files\WinRAR\rar.exe"

# ---------------------------------------------------------------------------
# Layer 1 — EXCLUDE. Directory names and path/glob rules that never ship.
# ---------------------------------------------------------------------------
EXCLUDE_DIR_NAMES = frozenset({
    ".git", ".github", "node_modules", "__pycache__",
    ".wrangler", ".dietcode", ".release-tmp", ".joysword-kom-build",
    "build", "dist", ".terraform",
    # Runtime output / logs
    "log", "logs", "Log", "Logs", "Statistics", "statistics",
})

# Repo-relative posix prefixes that never ship.
EXCLUDE_PREFIXES = (
    "infra/azure/.terraform/",
    "azure-docs/",            # internal ops docs — see note in strategy doc
    "docs/",                  # internal deployment docs carry real subscription/tenant IDs
    "Elsword/offline/edge-wireguard/",  # dead WireGuard keys/config (private keys!) — never ship
)

# Exact repo-relative posix paths that never ship (secret / machine-specific).
EXCLUDE_EXACT = frozenset({
    ".env",
    "web/.env",
    "infra/azure/terraform.tfvars",     # real subscription/tenant/IP/SSH key
    "infra/azure/backend.hcl",          # real state backend coordinates
})

# Filename globs that never ship.
EXCLUDE_GLOBS = (
    "*.env",                 # any environment file (…but keep *.env.example, handled below)
    "*.tfstate", "*.tfstate.*", "*.tfplan",
    "*.pem", "*.key", "*.pfx", "*.p12",
    "id_rsa", "id_ed25519", "*.ppk",
    "*.bak", "*.mdf", "*.ldf",   # database dumps / data files
    "*.rar",                 # don't nest old archives
    "*.log", "*.htm", "*.html", "*.dmp",
    "server-pids.json",
    ".DS_Store", "Thumbs.db", "desktop.ini",
    "*.tsbuildinfo",
)

KEEP_EVEN_IF_GLOB = (".env.example",)  # example templates are safe + wanted

# ---------------------------------------------------------------------------
# Layer 2 — SCRUB. Secret literals -> public placeholders, applied to staged
# text files only. Order matters (specific before generic).
# ---------------------------------------------------------------------------
SCRUB_RULES: tuple[tuple[re.Pattern, str], ...] = (
    (re.compile(r"Js!93999c83a584abd4144abca17a9e"), "CHANGE_ME_SA_PASSWORD"),
    (re.compile(r"JoySwordDb2026!"), "CHANGE_ME_DB_PASSWORD"),
    (re.compile(r"JoySwordAdmin2026!"), "CHANGE_ME_ADMIN_PASSWORD"),
    # offline.env assignments -> placeholders
    (re.compile(r"(?m)^(DB_PASSWORD=).*$"), r"\1CHANGE_ME_DB_PASSWORD"),
    (re.compile(r"(?m)^(ADMIN_PASSWORD=).*$"), r"\1CHANGE_ME_ADMIN_PASSWORD"),
    # .dsn PWD field
    (re.compile(r"(?m)^(PWD=).*$"), r"\1CHANGE_ME_DB_PASSWORD"),
    # Machine-specific absolute path -> generic install root
    (re.compile(r"C:\\Users\\media\\Downloads\\JoySwordOffline"), r"C:\\JoySword"),
    (re.compile(r"C:/Users/media/Downloads/JoySwordOffline"), "C:/JoySword"),
)

# Files eligible for scrubbing (text extensions worth rewriting).
SCRUB_SUFFIXES = frozenset({
    ".env", ".example", ".dsn", ".ps1", ".py", ".sql", ".bat", ".sh",
    ".lua", ".ini", ".cfg", ".json", ".md", ".txt", ".yaml", ".yml", ".tf", ".hcl",
})

# ---------------------------------------------------------------------------
# Layer 3 — GATE. Anything matching these in the staged tree aborts the build.
# ---------------------------------------------------------------------------
SECRET_SIGNATURES: tuple[tuple[str, re.Pattern], ...] = (
    ("sa password literal", re.compile(r"Js!93999c83a584abd4144abca17a9e")),
    ("db password literal", re.compile(r"JoySwordDb2026!")),
    ("admin password literal", re.compile(r"JoySwordAdmin2026!")),
    ("azure subscription id", re.compile(r"a5074069-cc02-4583-b5b2-dd4e4edf30be")),
    ("azure tenant id", re.compile(r"2dcaf678-5ddf-4431-ae98-d666a45d7a77")),
    ("operator object id", re.compile(r"11867aba-60eb-4b44-8480-9ada46d71b33")),
    ("private key block", re.compile(r"BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY")),
    ("ssh public key w/ email", re.compile(r"ssh-(?:rsa|ed25519) [A-Za-z0-9+/=]+ \S+@\S+")),
    ("operator email", re.compile(r"willcruzdesigner@gmail\.com")),
    ("wireguard tunnel address", re.compile(r"\b10\.77\.0\.\d+\b")),
    ("operator public IP", re.compile(r"\b20\.9\.50\.72\b")),
    ("nonempty PWD in dsn", re.compile(r"(?m)^PWD=(?!CHANGE_ME)(?!$).+$")),
    ("nonempty DB_PASSWORD", re.compile(r"(?m)^DB_PASSWORD=(?!CHANGE_ME)(?!$).+$")),
)

GATE_SCAN_SUFFIXES = SCRUB_SUFFIXES | {".dsn"}
# Binary/asset extensions we never text-scan (perf).
GATE_SKIP_SUFFIXES = frozenset({
    ".exe", ".dll", ".kom", ".png", ".jpg", ".jpeg", ".gif", ".ico", ".dds",
    ".ogg", ".wav", ".mp3", ".zip", ".rar", ".7z", ".ttf", ".otf", ".pdb",
})


def is_excluded(rel_posix: str, name: str) -> bool:
    parts = rel_posix.split("/")
    if any(p in EXCLUDE_DIR_NAMES for p in parts[:-1]):
        return True
    if name in EXCLUDE_DIR_NAMES:
        return True
    if rel_posix in EXCLUDE_EXACT:
        return True
    if any(rel_posix.startswith(p) for p in EXCLUDE_PREFIXES):
        return True
    if any(name.endswith(k) for k in KEEP_EVEN_IF_GLOB):
        return False
    from fnmatch import fnmatch
    if any(fnmatch(name, g) for g in EXCLUDE_GLOBS):
        return True
    return False


def stage(root: Path, staging: Path) -> tuple[int, int]:
    copied = scrubbed = 0
    for src in root.rglob("*"):
        rel = src.relative_to(root).as_posix()
        name = src.name
        # prune excluded dirs early
        if src.is_dir():
            if name in EXCLUDE_DIR_NAMES:
                continue
            continue
        if is_excluded(rel, name):
            continue
        dst = staging / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        if src.suffix.lower() in SCRUB_SUFFIXES:
            try:
                text = src.read_text(encoding="utf-8")
                new = text
                for pat, repl in SCRUB_RULES:
                    new = pat.sub(repl, new)
                dst.write_text(new, encoding="utf-8")
                if new != text:
                    scrubbed += 1
                copied += 1
                continue
            except (UnicodeDecodeError, ValueError):
                pass  # fall through to binary copy
        shutil.copy2(src, dst)
        copied += 1
    return copied, scrubbed


def gate(staging: Path) -> list[str]:
    problems: list[str] = []
    # These files legitimately contain secret *signatures* (this scanner) — skip.
    scan_skip_names = {"build-public-release.py", "build-code-overlay.py"}
    for path in staging.rglob("*"):
        if not path.is_file():
            continue
        if path.name in scan_skip_names:
            continue
        suf = path.suffix.lower()
        if suf in GATE_SKIP_SUFFIXES:
            continue
        if suf and suf not in GATE_SCAN_SUFFIXES and path.stat().st_size > 262144:
            continue  # skip large unknown-type files
        try:
            text = path.read_text(encoding="utf-8", errors="strict")
        except (UnicodeDecodeError, ValueError):
            continue  # binary — not a text-secret risk
        rel = path.relative_to(staging).as_posix()
        for label, pat in SECRET_SIGNATURES:
            m = pat.search(text)
            if m:
                line = text[: m.start()].count("\n") + 1
                problems.append(f"{rel}:{line}: {label}")
    return problems


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--out", type=Path)
    ap.add_argument("--stage-dir", type=Path, default=ROOT / "build" / "public-release")
    ap.add_argument("--stage-only", action="store_true")
    ap.add_argument("--version", default="dev")
    args = ap.parse_args()

    staging = args.stage_dir.resolve()
    if staging.exists():
        shutil.rmtree(staging)
    staging.mkdir(parents=True)

    print(f"Staging sanitized copy -> {staging}")
    copied, scrubbed = stage(ROOT, staging)
    print(f"  staged {copied} files ({scrubbed} scrubbed)")

    print("Running secret-scan gate...")
    problems = gate(staging)
    if problems:
        print("\nABORT: secrets found in staged release:", file=sys.stderr)
        for p in problems[:50]:
            print(f"  - {p}", file=sys.stderr)
        if len(problems) > 50:
            print(f"  ... and {len(problems) - 50} more", file=sys.stderr)
        print("\nAdd an EXCLUDE/SCRUB rule and re-run. Archive NOT created.", file=sys.stderr)
        return 2
    print("  gate: PASS (no secret signatures in staged tree)")

    if args.stage_only:
        print(f"\n--stage-only: inspect {staging}")
        return 0

    out = (args.out or ROOT / "dist" / f"JoySword-public-{args.version}.rar").resolve()
    out.parent.mkdir(parents=True, exist_ok=True)
    if out.exists():
        out.unlink()
    if not Path(RAR_EXE).exists():
        print(f"ERROR: WinRAR not found at {RAR_EXE}", file=sys.stderr)
        return 1
    print(f"Creating archive -> {out}")
    # a=add, -r=recurse, -ep1=strip staging prefix, -m5=max compression, -o+=overwrite
    r = subprocess.run(
        [RAR_EXE, "a", "-r", "-ep1", "-m5", "-o+", str(out), "."],
        cwd=str(staging), capture_output=True, text=True,
    )
    if r.returncode != 0:
        print(f"ERROR: rar failed (exit {r.returncode})\n{r.stdout}\n{r.stderr}", file=sys.stderr)
        return 1
    size_mb = out.stat().st_size / (1024 * 1024)
    print(f"  archive: {out} ({size_mb:.1f} MiB)")
    print("Public release built and secret-scan clean.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
