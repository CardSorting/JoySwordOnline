"""Shared rules for container images, GCS deploy rsync, and local pruning."""

from __future__ import annotations

import re
from pathlib import Path

# ClientScript subtrees not required for US offline server runtime.
# NOTE: "Dungeon" and "World" were removed — the GameServer requires Dungeon/*.lua
# and World/**/*.lua scripts to load maps, linemaps, and spawn monsters.
CLIENTSCRIPT_SKIP_DIRS = frozenset(
    {"Dialog", "Npc", "SQUARE_UNIT", "UI_NPC"}
)

# Per-server regional overlays; US-only images keep Config/US when present.
NON_US_REGIONS = frozenset({"BR", "CN", "EU", "ID", "INT", "JP", "PH", "TH", "TWHK"})

RUNTIME_DIR_NAMES = frozenset({"log", "logs", "Log", "Logs", "Statistics", "statistics"})

RUNTIME_FILE_SUFFIXES = frozenset({".htm", ".html", ".dmp"})

RUNTIME_FILE_NAMES = frozenset(
    {
        "server-pids.json",
        "enhancement-validation.json",
        "enhancement-canary.json",
    }
)

# Duplicate / debug binaries shipped with legacy server folders.
DUPLICATE_EXE_PATTERN = re.compile(
    r"^(?:_.*Server\.exe|.*\sBackup\.exe)$",
    re.IGNORECASE,
)

# Debug DLLs.
DEBUG_DLL_PATTERN = re.compile(
    r"(?:_debug\.dll|tbb_debug\.dll)$",
    re.IGNORECASE,
)

BACKUP_ARTIFACT_PATTERN = re.compile(
    r"\.(?:lua\.bak|exe\.bak)(?:-|$)|"
    r"(?:Backup\.exe|Backup\.ini|RefreshTimeBackup\.ini)$|"
    r"\.rar$",
    re.IGNORECASE,
)

# Non-US profile configs are not needed for default US_SERVICE offline hosting.
NON_US_PROFILE_PATTERN = re.compile(
    r"_(?:BR|CN|EU|ID|INT|JP|PH|TH|TWHK)_",
    re.IGNORECASE,
)

# configure-offline.py syncs these into GameServer/ at startup — omit from image payload.
GAMESERVER_RUNTIME_SYNC_NAMES = frozenset(
    {
        "PetData.lua",
        "CashItemPrice.lua",
        "RandomItemTable.lua",
        "RandomItemData.lua",
        "RandomItemMapping.lua",
        "ClassChangeTable.lua",
        "ClassChangeSkill.lua",
        "ClassChangeQuest.lua",
        "ClassChangeMemo.lua",
        "ClassChangeItem.lua",
    }
)

# Runtime scripts required inside the game-server OCI image.
IMAGE_RUNTIME_SCRIPTS = frozenset(
    {
        "scripts/configure-offline.py",
        "scripts/start-offline.py",
        "scripts/stop-offline.py",
        "scripts/apply-pvp-profile.py",
        "scripts/db-healthcheck.py",
        "scripts/entrypoint.ps1",
        "scripts/sync-enhancement-table.py",
        "scripts/validate-enhancement-probabilities.py",
        "scripts/validate-pvp-matchmaking.py",
        "scripts/patch-globalserver-solo-pvp.py",
        "scripts/enhancement-runtime-canary.py",
    }
)

# Default staged payload budget (MiB) — fail CI/build when exceeded.
DEFAULT_PAYLOAD_BUDGET_MIB = 300

# Windows launcher scripts — not used inside the OCI image.
IMAGE_SKIP_ELSWORD_ROOT_NAMES = frozenset(
    {
        "desktop.ini",
        "Thumbs.db",
    }
)

# Client endpoint configs not used by the offline US server image.
DEV_CLIENT_CONFIGS = frozenset(
    {
        "Config_QA.lua",
        "Config_S.lua",
        "Config_S_B.lua",
        "Config_INTERNAL.lua",
    }
)

# When packaging for one profile, omit alternate US profile configs/DSNs from the image.
PACKAGE_PROFILE_ALIASES = {
    "US_SERVICE": ("_US_TEST", "_US_INTERNAL"),
    "US_TEST": ("_US_SERVICE", "_US_INTERNAL"),
    "US_INTERNAL": ("_US_SERVICE", "_US_TEST"),
}


def package_profile() -> str:
    import os

    return os.environ.get("JOYSWORD_PACKAGE_PROFILE", "US_SERVICE").upper()


def is_dev_client_config(name: str) -> bool:
    return name in DEV_CLIENT_CONFIGS


def is_inactive_package_profile_file(name: str, *, image_mode: bool) -> bool:
    if not image_mode:
        return False
    if is_dev_client_config(name):
        return True
    if not name.endswith((".lua", ".dsn")):
        return False
    active = package_profile()
    for suffix in PACKAGE_PROFILE_ALIASES.get(active, ()):
        if suffix.lower() in name.lower():
            return True
    # Drop DSN variants that do not match the packaged profile token.
    if name.endswith(".dsn") and active not in name.upper():
        return True
    return False


def is_image_operational_noise(rel_posix_path: str, name: str) -> bool:
    """Developer launchers and OS metadata — never ship in the game image."""
    if not rel_posix_path.startswith("Elsword/"):
        return False
    if name in IMAGE_SKIP_ELSWORD_ROOT_NAMES:
        return True
    parts = rel_posix_path.split("/")
    if len(parts) == 2 and name.endswith(".bat"):
        return True
    return False


def rel_posix(path: Path, root: Path) -> str:
    return path.relative_to(root).as_posix()


def is_runtime_artifact(rel_posix_path: str) -> bool:
    parts = rel_posix_path.split("/")
    if any(part in RUNTIME_DIR_NAMES for part in parts):
        return True
    if Path(rel_posix_path).name in RUNTIME_FILE_NAMES:
        return True
    lower = rel_posix_path.lower()
    return any(lower.endswith(suffix) for suffix in RUNTIME_FILE_SUFFIXES)


def is_backup_artifact(name: str) -> bool:
    return bool(BACKUP_ARTIFACT_PATTERN.search(name))


def is_duplicate_or_debug_binary(name: str) -> bool:
    return bool(DUPLICATE_EXE_PATTERN.match(name) or DEBUG_DLL_PATTERN.match(name))


def is_gameserver_synced_lua(rel_posix_path: str) -> bool:
    if not rel_posix_path.startswith("Elsword/GameServer/"):
        return False
    return Path(rel_posix_path).name in GAMESERVER_RUNTIME_SYNC_NAMES


def is_non_us_regional_config(rel_posix_path: str) -> bool:
    match = re.search(r"/Config/([^/]+)/", rel_posix_path)
    if match and match.group(1) in NON_US_REGIONS:
        return True
    match = re.search(r"^Elsword/Config/([^/]+)/", rel_posix_path)
    if match and match.group(1) not in {"US"}:
        return True
    return False


def is_skipped_clientscript(rel_posix_path: str) -> bool:
    match = re.search(r"^Elsword/ClientScript/([^/]+)/", rel_posix_path)
    if not match:
        return False
    return match.group(1) in CLIENTSCRIPT_SKIP_DIRS


def is_non_us_profile_file(name: str) -> bool:
    if not name.endswith((".lua", ".dsn")):
        return False
    # CenterServer uses "config_cn_" as its config-type prefix. Do not
    # interpret that prefix itself as the China region token.
    candidate = re.sub(r"^config_cn_", "_", name, flags=re.IGNORECASE)
    return bool(NON_US_PROFILE_PATTERN.search(candidate))


def is_in_image_whitelist(rel_posix_path: str) -> bool:
    """Paths allowed in the trimmed game-server OCI image."""
    if rel_posix_path.startswith("Elsword/"):
        return True
    if rel_posix_path.startswith("scripts/"):
        return rel_posix_path in IMAGE_RUNTIME_SCRIPTS
    if rel_posix_path.startswith("config/pvp/"):
        return True
    return False


def should_exclude_from_deploy(rel_posix_path: str, *, image_mode: bool = True) -> bool:
    """Return True when a repo-relative posix path must not ship in images/deploy."""
    if image_mode and not is_in_image_whitelist(rel_posix_path):
        return True

    name = Path(rel_posix_path).name

    if rel_posix_path.startswith(("data/", "client/", ".git/")):
        return True
    if rel_posix_path.startswith("Elsword/_ClientScript/"):
        return True
    if rel_posix_path.startswith("Elsword/Database Backup/"):
        return True
    if image_mode and rel_posix_path.startswith("Elsword/Config/"):
        return True
    if "/_nProtect/" in rel_posix_path or "/_HackShield/" in rel_posix_path:
        return True
    if name in {".DS_Store", "Thumbs.db"}:
        return True
    if "/__pycache__/" in rel_posix_path or name.endswith(".pyc"):
        return True
    if is_runtime_artifact(rel_posix_path):
        return True
    if is_skipped_clientscript(rel_posix_path):
        return True
    if is_non_us_regional_config(rel_posix_path):
        return True
    if is_duplicate_or_debug_binary(name):
        return True
    if is_backup_artifact(name):
        return True
    if image_mode and is_image_operational_noise(rel_posix_path, name):
        return True
    if image_mode and is_gameserver_synced_lua(rel_posix_path):
        return True
    if is_inactive_package_profile_file(name, image_mode=image_mode):
        return True

    if image_mode and rel_posix_path.startswith("Elsword/"):
        if is_non_us_profile_file(name):
            return True

    return False


def gsutil_rsync_exclude_regex() -> str:
    """gsutil rsync -x pattern aligned with should_exclude_from_deploy(image_mode=False)."""
    clientscript = "|".join(sorted(CLIENTSCRIPT_SKIP_DIRS))
    regions = "|".join(sorted(NON_US_REGIONS))
    return (
        r".*\.DS_Store$|"
        r"(^|.*/)[Ll]ogs?/.*|"
        r"(^|.*/)[Ss]tatistics/.*|"
        r".*\.(htm|html|dmp)$|"
        r".*\.git.*|"
        r"(^|.*/)__pycache__/.*|"
        r".*\.pyc$|"
        r"^data/.*|"
        r"^client\.rar$|"
        r"^client/(client\.rar|data/.*)|"
        r"^Elsword/_ClientScript/.*|"
        r"^Elsword/Database Backup/.*|"
        rf"^Elsword/ClientScript/({clientscript})/.*|"
        rf"^Elsword/[^/]+/Config/({regions})/.*|"
        rf"^Elsword/Config/({regions})/.*|"
        r"(^|/)_.*Server\.exe$|"
        r".*\sBackup\.exe$|"
        r".*\.exe\.bak.*$|"
        r".*\.lua\.bak$|"
        r".*Backup\.ini$|"
        r".*RefreshTimeBackup\.ini$|"
        r".*\.rar$|"
        r".*_debug\.dll$|"
        r".*tbb_debug\.dll$"
    )


def iter_included_files(root: Path, *, image_mode: bool = True) -> list[Path]:
    """All repo files that should appear in a trimmed container/deploy payload."""
    included: list[Path] = []
    skipped_roots = {".git", "build", "data", "client"}
    for child in root.iterdir():
        if child.name in skipped_roots:
            continue
        if child.is_file():
            rel = rel_posix(child, root)
            if not should_exclude_from_deploy(rel, image_mode=image_mode):
                included.append(child)
        elif child.is_dir():
            for path in child.rglob("*"):
                if not path.is_file():
                    continue
                rel = rel_posix(path, root)
                if should_exclude_from_deploy(rel, image_mode=image_mode):
                    continue
                included.append(path)
    return included


def resources_major_pair(rel_posix_path: str) -> tuple[str, str] | None:
    """If path is Resources/<name> with Major/<name> sibling, return both posix paths."""
    match = re.match(r"^Elsword/Resources/([^/]+)$", rel_posix_path)
    if not match:
        return None
    name = match.group(1)
    return rel_posix_path, f"Elsword/ClientScript/Major/{name}"
