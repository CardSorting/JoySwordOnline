#!/usr/bin/env python3
"""Apply offline-server settings across the Elsword tree."""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

_DEFAULT_ROOT = Path(__file__).resolve().parent.parent
ROOT = _DEFAULT_ROOT
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"

SERVER_DIRS = ("CenterServer", "ChannelServer", "GlobalServer", "LoginServer", "GameServer")
LUA_CONFIG_DIRS = SERVER_DIRS + ("ServerResource", "Resources")

LEGACY_ROOTS = (
    r"C:\Users\Andrade\Desktop\Elsword",
    r"C:\Elsword",
    r"C:\JoySwordOffline\Elsword",
)

PROFILE_CLIENT_CONFIG = {
    "US_SERVICE": "Config_US_Service.lua",
    "US_TEST": "Config_US_TEST.lua",
    "US_INTERNAL": "Config_US_INTERNAL.lua",
}

EXTERNAL_AUTH_MARKERS = (
    "K3RComboAuthManager:",
    "NXAuthManager:InitNexonAuthInfo",
    "PayletterBillingManager:",
    "InitNexonBillingTCPInfo",
)

REMOTE_IP_PATTERN = re.compile(
    r"\b(?:\d{1,3}\.){3}\d{1,3}\b|"
    r"[a-zA-Z0-9.-]+\.(?:com|net|org|svc)\b",
    re.IGNORECASE,
)


def init_context(repo_root: Path | None = None) -> None:
    """Point configure-offline at a repo root (workspace or staged payload)."""
    global ROOT, ELSWORD, ENV_FILE, ENV_EXAMPLE
    ROOT = repo_root.resolve() if repo_root else _DEFAULT_ROOT
    ELSWORD = ROOT / "Elsword"
    ENV_FILE = ELSWORD / "offline" / "offline.env"
    ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if not path.exists():
        sys.exit(f"Missing config: {ENV_FILE} (copy offline.env.example to offline.env)")

    env: dict[str, str] = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        if "=" not in line:
            continue
        key, value = line.split("=", 1)
        env[key.strip()] = value.strip()
    return env


def windows_path(path: Path) -> str:
    return str(path.resolve()).replace("/", "\\")


def resolve_elsword_root(env: dict[str, str]) -> str:
    """Use the configured runtime root unless this checkout has moved on Windows."""
    configured = env.get("ELSWORD_ROOT", "").strip()
    if not configured:
        return windows_path(ELSWORD)

    if sys.platform == "win32":
        configured_path = Path(configured)
        if configured_path.is_dir():
            return windows_path(configured_path)
        if ELSWORD.is_dir():
            local_root = windows_path(ELSWORD)
            print(
                f"Warning: ELSWORD_ROOT does not exist: {configured}\n"
                f"         Using the current checkout instead: {local_root}"
            )
            return local_root

    return configured


def lua_string_path(path: str) -> str:
    return path.replace("\\", "\\\\")


def dedupe_simlayer_addpath_lines(text: str) -> str:
    """Collapse repeated SimLayer:AddPath entries that accumulate across configure runs."""
    seen: set[str] = set()
    lines: list[str] = []
    addpath = re.compile(r'SimLayer:AddPath\(\s*"([^"]+)"\s*\)')
    for line in text.splitlines():
        match = addpath.search(line)
        if match:
            path = match.group(1)
            if path in seen:
                continue
            seen.add(path)
        lines.append(line)
    return "\n".join(lines) + ("\n" if text.endswith("\n") else "")


def normalize_simlayer_path_order(text: str) -> str:
    """Keep script search paths in a stable order and drop missing legacy roots."""
    addpath = re.compile(r'(?m)^SimLayer:AddPath\(\s*"([^"]+)"\s*\).*$')
    matches = list(addpath.finditer(text))
    if not matches:
        return text

    def canonical_path(path: str) -> str:
        return str(Path(path.replace("\\\\", "\\")).resolve()).lower()

    def path_rank(path: str) -> tuple[int, str]:
        lowered = canonical_path(path)
        if lowered.endswith("\\gameserver"):
            return (0, path)
        if lowered.endswith("\\serverresource"):
            return (1, path)
        if lowered.endswith("\\resources"):
            return (3, path)
        if lowered.endswith("\\clientscript"):
            return (4, path)
        return (5, path)

    ordered: list[str] = []
    seen: set[str] = set()
    for _, path in sorted((path_rank(match.group(1)), match.group(1)) for match in matches):
        key = canonical_path(path)
        if key in seen:
            continue
        if not Path(path.replace("\\\\", "\\")).exists():
            continue
        seen.add(key)
        ordered.append(str(Path(path.replace("\\\\", "\\")).resolve()))

    if not ordered:
        return text

    rebuilt = [f'SimLayer:AddPath( "{lua_string_path(path)}" )' for path in ordered]
    replacement = "\n".join(rebuilt)
    start = matches[0].start()
    end = matches[-1].end()
    return text[:start] + replacement + text[end:]


_DYNAMIC_SPECS_CACHE = None

def patch_lua_paths(text: str, elsword_root: str) -> str:
    global _DYNAMIC_SPECS_CACHE
    # 1. Base directories
    base_specs = [
        ("GameServer", f"{elsword_root}\\GameServer"),
        ("ServerResource", f"{elsword_root}\\ServerResource"),
        ("Resources", f"{elsword_root}\\Resources"),
        ("ClientScript", f"{elsword_root}\\ClientScript"),
    ]
    
    # 2. Dynamically scan all subdirectories of ClientScript that contain .lua files
    if _DYNAMIC_SPECS_CACHE is None:
        client_script_root = Path(elsword_root) / "ClientScript"
        dynamic_specs = []
        if client_script_root.exists():
            for dirpath, dirnames, filenames in os.walk(client_script_root):
                dirnames.sort()
                has_lua = any(f.endswith(".lua") for f in filenames)
                if has_lua:
                    rel_path = os.path.relpath(dirpath, client_script_root)
                    if rel_path == ".":
                        continue
                    name_key = "ClientScript" + rel_path.replace("\\", "").replace("-", "").replace("_", "")
                    dynamic_specs.append((name_key, dirpath))
        dynamic_specs.sort(key=lambda x: x[0])
        _DYNAMIC_SPECS_CACHE = dynamic_specs
    else:
        dynamic_specs = _DYNAMIC_SPECS_CACHE
        
    path_specs = tuple(base_specs + dynamic_specs)
    lua_paths = {name: lua_string_path(path) for name, path in path_specs}

    for legacy in LEGACY_ROOTS:
        # Also clean up legacy paths if encountered
        text = re.sub(
            rf'SimLayer:AddPath\(\s*"{re.escape(legacy)}\\\\(GameServer|ServerResource|Resources|ClientScript.*?)"\s*\)',
            lambda m, root=elsword_root: f'SimLayer:AddPath( "{lua_string_path(root)}\\\\{m.group(1)}" )',
            text,
            flags=re.IGNORECASE
        )

    # Rebuild path replacements dynamically
    for name, path in path_specs:
        pattern = rf'SimLayer:AddPath\(\s*"[^"]*{re.escape(name)}\\?"\s*\)'
        text = re.sub(
            pattern,
            lambda _m, p=lua_paths[name]: f'SimLayer:AddPath( "{p}" )',
            text,
            flags=re.IGNORECASE
        )

    text = dedupe_simlayer_addpath_lines(text)
    text = normalize_simlayer_path_order(text)

    add_path_lines = []
    for name, _ in path_specs:
        if name == "GameServer":
            add_path_lines.append(f'SimLayer:AddPath( "{lua_paths[name]}" ) -- gameserver runtime')
        elif name == "ServerResource":
            add_path_lines.append(f'SimLayer:AddPath( "{lua_paths[name]}" ) -- server common')
        elif name == "Resources":
            add_path_lines.append(f'SimLayer:AddPath( "{lua_paths[name]}" ) -- server data')
        else:
            add_path_lines.append(f'SimLayer:AddPath( "{lua_paths[name]}" )')

    existing = set(re.findall(r'SimLayer:AddPath\(\s*"([^"]+)"\s*\)', text))
    missing_lines = [
        line
        for name, line in zip([spec[0] for spec in path_specs], add_path_lines)
        if lua_paths[name] not in existing
    ]
    if missing_lines:
        server_resource_line = re.search(
            r'(?m)^.*SimLayer:AddPath\(\s*"[^"]*ServerResource\\?"\s*\).*$',
            text,
        )
        client_script_line = re.search(
            r'(?m)^.*SimLayer:AddPath\(\s*"[^"]*ClientScript\\?"\s*\).*$',
            text,
        )
        insert_after = server_resource_line or client_script_line
        if insert_after:
            insert_at = insert_after.end()
            text = text[:insert_at] + "\n" + "\n".join(missing_lines) + text[insert_at:]
    return normalize_simlayer_path_order(text)


def is_server_config(path: Path) -> bool:
    try:
        rel = path.relative_to(ELSWORD)
    except ValueError:
        return False
    name = path.name
    if not (name.startswith("config_") and name.endswith(".lua")):
        return False
    return any(part in SERVER_DIRS for part in rel.parts)


def patch_offline_billing(text: str, path: Path) -> str:
    """Route cash-shop billing through local ES_BILLING instead of publisher services."""
    if not is_server_config(path):
        return text

    text = re.sub(
        r"SimLayer:SetPublisherBillingConnectType\s*\(\s*PBCT_NORMAL\s*\)",
        "SimLayer:SetPublisherBillingConnectType ( PBCT_DB )",
        text,
    )
    text = re.sub(
        r"SimLayer:SetCheckCouponByPublisher\s*\(\s*true\s*\)",
        "SimLayer:SetCheckCouponByPublisher ( false )",
        text,
        flags=re.IGNORECASE,
    )

    if path.name.startswith("config_gs_"):
        text = re.sub(
            r"SimLayer:SetBillingFlag\(\s*BF_GLOBAL_SERVICE\s*\)",
            "SimLayer:SetBillingFlag( BF_INTERNAL )",
            text,
        )
        text = re.sub(
            r"SimLayer:SetBillingFlag\(\s*BF_PAYLETTER_US\s*\)",
            "SimLayer:SetBillingFlag( BF_INTERNAL )",
            text,
        )
        text = re.sub(
            r"SimLayer:SetBillingFlag\(\s*BF_NEXON_KOREA\s*\)",
            "SimLayer:SetBillingFlag( BF_INTERNAL )",
            text,
        )
        text = re.sub(
            r"SimLayer:SetBillingFlag\(\s*BF_NEXON_KOREA_TEST\s*\)",
            "SimLayer:SetBillingFlag( BF_INTERNAL )",
            text,
        )

    return text


def ensure_bom_bytes(data: bytes) -> bytes:
    return data if data.startswith(b"\xef\xbb\xbf") else b"\xef\xbb\xbf" + data


def sync_gameserver_runtime_scripts() -> int:
    """GameServer.exe loads several lua tables from its working directory before ServerResource."""
    changed = 0
    copies = (
        (ELSWORD / "ServerResource" / "PetData.lua", ELSWORD / "GameServer" / "PetData.lua"),
        (ELSWORD / "ServerResource" / "CashItemPrice.lua", ELSWORD / "GameServer" / "CashItemPrice.lua"),
        (ELSWORD / "ServerResource" / "RandomItemTable.lua", ELSWORD / "GameServer" / "RandomItemTable.lua"),
        (ELSWORD / "ServerResource" / "RandomItemData.lua", ELSWORD / "GameServer" / "RandomItemData.lua"),
        (ELSWORD / "ServerResource" / "RandomItemMapping.lua", ELSWORD / "GameServer" / "RandomItemMapping.lua"),
        (ELSWORD / "ServerResource" / "ClassChangeTable.lua", ELSWORD / "GameServer" / "ClassChangeTable.lua"),
        (ELSWORD / "ServerResource" / "ClassChangeSkill.lua", ELSWORD / "GameServer" / "ClassChangeSkill.lua"),
        (ELSWORD / "ServerResource" / "ClassChangeQuest.lua", ELSWORD / "GameServer" / "ClassChangeQuest.lua"),
        (ELSWORD / "ServerResource" / "ClassChangeMemo.lua", ELSWORD / "GameServer" / "ClassChangeMemo.lua"),
        (ELSWORD / "ServerResource" / "ClassChangeItem.lua", ELSWORD / "GameServer" / "ClassChangeItem.lua"),
        (ELSWORD / "ServerResource" / "StatTable.lua", ELSWORD / "GameServer" / "StatTable.lua"),
        (ELSWORD / "ServerResource" / "GameSysValTable.lua", ELSWORD / "GameServer" / "GameSysValTable.lua"),
        (ELSWORD / "ServerResource" / "RandomItemMapping.lua", ELSWORD / "GameServer" / "RandomItemMapping.lua"),
    )
    for src, dst in copies:
        if not src.exists():
            continue
        payload = ensure_bom_bytes(src.read_bytes())
        if not dst.exists() or dst.read_bytes() != payload:
            dst.write_bytes(payload)
            changed += 1
    enhancement_sync = ROOT / "scripts" / "sync-enhancement-table.py"
    if enhancement_sync.exists():
        result = subprocess.run(
            [sys.executable, str(enhancement_sync), "--apply"],
            cwd=str(ROOT),
            check=False,
        )
        if result.returncode != 0:
            raise RuntimeError("canonical enhancement table synchronization failed")
    item_dst = ELSWORD / "GameServer" / "Item.lua"
    if item_dst.exists():
        item_dst.unlink()
        changed += 1
    return changed


def fix_runtime_lua_headers() -> int:
    script = ROOT / "scripts" / "fix-lua-utf8-headers.py"
    if not script.exists():
        return 0
    result = subprocess.run(
        [sys.executable, str(script), "--apply"],
        cwd=str(ROOT),
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
    )
    if result.returncode != 0:
        print(result.stdout, file=sys.stderr)
        print(result.stderr, file=sys.stderr)
        return 0
    if result.stdout.strip():
        print(result.stdout.strip())
    match = re.search(r"Updated (\d+) file", result.stdout)
    return int(match.group(1)) if match else 0


def ensure_item_lua_links() -> int:
    return 0


def patch_offline_lua_flags(text: str, use_internal_auth: bool) -> str:
    text = text.replace(
        "StatisticsManager:SendToFTPStatistics( true )",
        "StatisticsManager:SendToFTPStatistics( false )",
    )
    text = text.replace(
        "MornitoringManager:SetSendSMS( true )",
        "MornitoringManager:SetSendSMS( false )",
    )
    text = text.replace(
        "MornitoringManager:SetSendMail( true )",
        "MornitoringManager:SetSendMail( false )",
    )
    text = text.replace(
        "UdpRelayChecker:SetUdpRelayCheckerOn( true )",
        "UdpRelayChecker:SetUdpRelayCheckerOn( false )",
    )
    text = text.replace(
        "GameSysVal:SetMachineIDBlock( True )",
        "GameSysVal:SetMachineIDBlock( False )",
    )
    text = text.replace(
        "GameSysVal:SetMachineIDBlock( true )",
        "GameSysVal:SetMachineIDBlock( false )",
    )

    if use_internal_auth:
        text = re.sub(
            r"SimLayer:SetAuthFlag\(\s*AF_K3RCOMBO_US\s*\)",
            "SimLayer:SetAuthFlag( AF_INTERNAL )",
            text,
        )
        text = re.sub(
            r"SimLayer:SetAuthFlag\(\s*AF_GLOBAL_SERVICE\s*\)",
            "SimLayer:SetAuthFlag( AF_INTERNAL )",
            text,
        )

    return text


def comment_external_auth_lines(text: str) -> str:
    lines: list[str] = []
    for line in text.splitlines():
        stripped = line.lstrip()
        if stripped.startswith("--"):
            lines.append(line)
            continue
        if any(marker in line for marker in EXTERNAL_AUTH_MARKERS):
            indent = line[: len(line) - len(stripped)]
            lines.append(f"{indent}-- OFFLINE: {stripped}")
            continue
        if "tempuri.org/IGameSecurityContract" in line:
            indent = line[: len(line) - len(stripped)]
            lines.append(f"{indent}-- OFFLINE: {stripped}")
            continue
        lines.append(line)
    return "\n".join(lines) + ("\n" if text.endswith("\n") else "")


def patch_advertisements(text: str) -> str:
    text = re.sub(
        r"GameSysVal:SetAdvertisementURL\(\s*'[^']*'\s*\)",
        "GameSysVal:SetAdvertisementURL( '' )",
        text,
    )
    lines: list[str] = []
    for line in text.splitlines():
        if "GameEvent:AddAdvertisement" in line and not line.lstrip().startswith("--"):
            lines.append(f"-- OFFLINE: {line.lstrip()}")
        else:
            lines.append(line)
    return "\n".join(lines) + ("\n" if text.endswith("\n") else "")


def patch_client_config(text: str, channel_ip: str, channel_port: str, game_port: str) -> str:
    if text.startswith("\ufeff"):
        text = text[1:]
    text = re.sub(
        r'g_pMain:AddChannelServerIP_LUA\(\s*"[^"]*"(?:\s*,\s*\d+)?\s*\)',
        f'g_pMain:AddChannelServerIP_LUA( "{channel_ip}", {channel_port} )',
        text,
    )
    text = re.sub(
        r"g_pMain:SetChannelServerPort\(\s*\d+\s*\)",
        f"g_pMain:SetChannelServerPort( {channel_port} )",
        text,
    )
    text = re.sub(
        r'g_pMain:AddGameServerIPForCreateID_LUA\(\s*"[^"]*"\s*\)',
        f'g_pMain:AddGameServerIPForCreateID_LUA( "{channel_ip}" )',
        text,
    )
    text = re.sub(
        r"g_pMain:SetGameServerPortForCreateID\(\s*\d+\s*\)",
        f"g_pMain:SetGameServerPortForCreateID( {game_port} )",
        text,
    )
    marker = "-- OFFLINE: JoySword private server"
    if marker not in text:
        header = f"{marker} — channel points at local host\n"
        if text.startswith("-- lua header"):
            parts = text.split("\n", 1)
            text = parts[0] + "\n" + header + (parts[1] if len(parts) > 1 else "")
        else:
            text = header + text
    return text


def patch_dsn(text: str, db_host: str, db_port: str, db_user: str, db_password: str) -> str:
    database_match = re.search(r"^DATABASE=(.+)$", text, re.MULTILINE)
    database = database_match.group(1).strip() if database_match else "master"

    lines = [
        "[ODBC]",
        "DRIVER=SQL Server",
        "Description=JoySword Offline",
        f"SERVER={db_host}",
        f"UID={db_user}",
        f"PWD={db_password}",
        "Trusted_Connection=No",
        "WSID=JOY_SWORD_OFFLINE",
        "APP=JoySword Offline",
        f"DATABASE={database}",
        "Network=DBMSSOCN",
        f"Address={db_host},{db_port}",
        f"LastUser={db_user}",
        "",
    ]
    return "\n".join(lines)


def write_connection_manifest(
    path: Path,
    profile: str,
    login_mode: str,
    admin_user: str,
    channel_ip: str,
    channel_port: str,
    login_port: str,
    center_port: str,
    global_port: str,
    game_port: str,
) -> None:
    content = f"""# JoySword offline connection manifest (generated)
SERVER_PROFILE={profile}
LOGIN_MODE={login_mode}
ADMIN_USER={admin_user}
CHANNEL_SERVER_IP={channel_ip}
CHANNEL_SERVER_PORT={channel_port}
LOGIN_SERVER_PORT={login_port}
CENTER_SERVER_PORT={center_port}
GLOBAL_SERVER_PORT={global_port}
GAME_SERVER_PORT={game_port}

# Point your Elsword client config at:
#   ClientScript/Major/{PROFILE_CLIENT_CONFIG.get(profile, "Config_US_Service.lua")}
"""
    path.write_text(content, encoding="utf-8")


def iter_dsn_files() -> list[Path]:
    files: list[Path] = []
    for rel in SERVER_DIRS:
        base = ELSWORD / rel
        if base.is_dir():
            files.extend(base.rglob("*.dsn"))
    config_us = ELSWORD / "Config" / "US"
    if config_us.is_dir():
        files.extend(config_us.glob("*.dsn"))
    return sorted(set(files))


def should_patch_lua(path: Path) -> bool:
    rel = str(path.relative_to(ELSWORD)).replace("\\", "/")
    if "/log/" in rel:
        return False
    if rel.endswith("Item.lua"):
        return False
    return True


def iter_lua_files() -> list[Path]:
    files: list[Path] = []
    for rel in LUA_CONFIG_DIRS:
        base = ELSWORD / rel
        if base.is_dir():
            files.extend(base.rglob("*.lua"))
    return sorted(path for path in set(files) if should_patch_lua(path))


def progress(message: str) -> None:
    print(message, flush=True)


def apply_lua_tree(env: dict[str, str]) -> int:
    elsword_root = resolve_elsword_root(env)
    use_internal_auth = env.get("OFFLINE_AUTH", "INTERNAL").upper() != "PUBLISHER"

    progress("Scanning server Lua/config files...")
    lua_files = iter_lua_files()
    progress(f"  Found {len(lua_files)} Lua file(s) to audit.")

    lua_changed = 0
    for index, path in enumerate(lua_files, start=1):
        progress(f"  Auditing {index}/{len(lua_files)}: {path.name}")
        original = path.read_text(encoding="utf-8", errors="replace")
        updated = patch_lua_paths(original, elsword_root)
        updated = patch_offline_lua_flags(updated, use_internal_auth)
        updated = patch_offline_billing(updated, path)
        updated = comment_external_auth_lines(updated)
        updated = patch_advertisements(updated)
        if updated != original:
            path.write_text(updated, encoding="utf-8")
            lua_changed += 1
    return lua_changed


def apply_client_configs(env: dict[str, str]) -> int:
    channel_ip = env.get("CHANNEL_SERVER_IP", "127.0.0.1")
    channel_port = env.get("CHANNEL_SERVER_PORT", "9400")
    game_port = env.get("GAME_SERVER_PORT", "9300")

    progress("Patching client endpoint configs...")
    client_changed = 0
    client_dir = ELSWORD / "ClientScript" / "Major"
    if client_dir.is_dir():
        for client_path in sorted(client_dir.glob("Config*.lua")):
            original = client_path.read_text(encoding="utf-8", errors="replace")
            if "AddChannelServerIP_LUA" not in original:
                continue
            updated = patch_client_config(original, channel_ip, channel_port, game_port)
            if updated != original:
                client_path.write_text(updated, encoding="utf-8")
                client_changed += 1
    return client_changed


def apply_dsn_files(env: dict[str, str]) -> int:
    db_host = env.get("DB_HOST", "127.0.0.1")
    db_port = env.get("DB_PORT", "1433")
    db_user = env.get("DB_USER", "sa")
    db_password = env.get("DB_PASSWORD", "JoySword!Offline123")

    progress("Patching ODBC DSN files...")
    dsn_files = iter_dsn_files()
    progress(f"  Found {len(dsn_files)} DSN file(s) to audit.")

    dsn_changed = 0
    for path in dsn_files:
        original = path.read_text(encoding="utf-8", errors="replace")
        updated = patch_dsn(original, db_host, db_port, db_user, db_password)
        if updated != original:
            path.write_text(updated, encoding="utf-8")
            dsn_changed += 1
    return dsn_changed


def write_manifest(env: dict[str, str]) -> Path:
    profile = env.get("SERVER_PROFILE", "US_SERVICE")
    login_mode = env.get("LOGIN_MODE", "PUBLIC").upper()
    admin_user = env.get("ADMIN_USER", "admin")
    channel_ip = env.get("CHANNEL_SERVER_IP", "127.0.0.1")
    channel_port = env.get("CHANNEL_SERVER_PORT", "9400")
    login_port = env.get("LOGIN_SERVER_PORT", "9200")
    center_port = env.get("CENTER_SERVER_PORT", "9100")
    global_port = env.get("GLOBAL_SERVER_PORT", "9500")
    game_port = env.get("GAME_SERVER_PORT", "9300")

    progress("Writing connection manifest...")
    manifest_path = ELSWORD / "offline" / "connection.manifest"
    write_connection_manifest(
        manifest_path,
        profile,
        login_mode,
        admin_user,
        channel_ip,
        channel_port,
        login_port,
        center_port,
        global_port,
        game_port,
    )
    return manifest_path


def apply_pvp_profile(env: dict[str, str]) -> None:
    pvp_profile = env.get("JOYSWORD_PVP_PROFILE", "default")
    apply_script = ROOT / "scripts" / "apply-pvp-profile.py"
    if not apply_script.exists():
        print(f"  WARNING: missing {apply_script}")
        return
    result = subprocess.run([sys.executable, str(apply_script), pvp_profile], cwd=str(ROOT))
    if result.returncode != 0:
        sys.exit(result.returncode)


def print_summary(env: dict[str, str], *, lua_changed: int, client_changed: int, runtime_synced: int, manifest_path: Path) -> None:
    elsword_root = resolve_elsword_root(env)
    db_host = env.get("DB_HOST", "127.0.0.1")
    db_port = env.get("DB_PORT", "1433")
    db_user = env.get("DB_USER", "sa")
    profile = env.get("SERVER_PROFILE", "US_SERVICE")
    login_mode = env.get("LOGIN_MODE", "PUBLIC").upper()
    admin_user = env.get("ADMIN_USER", "admin")
    channel_ip = env.get("CHANNEL_SERVER_IP", "127.0.0.1")
    channel_port = env.get("CHANNEL_SERVER_PORT", "9400")
    login_port = env.get("LOGIN_SERVER_PORT", "9200")
    center_port = env.get("CENTER_SERVER_PORT", "9100")
    global_port = env.get("GLOBAL_SERVER_PORT", "9500")
    game_port = env.get("GAME_SERVER_PORT", "9300")
    use_internal_auth = env.get("OFFLINE_AUTH", "INTERNAL").upper() != "PUBLISHER"

    print("JoySword offline configuration applied.")
    print(f"  ELSWORD_ROOT      : {elsword_root}")
    print(f"  DB target         : {db_host}:{db_port} (user: {db_user})")
    print(f"  Profile           : {profile}")
    print(f"  Login mode        : {login_mode}")
    print(f"  Admin user        : {admin_user}")
    print(f"  Channel endpoint  : {channel_ip}:{channel_port}")
    print(f"  Server ports      : center {center_port}, login {login_port}, global {global_port}, game {game_port}")
    print(f"  Offline auth      : {'AF_INTERNAL' if use_internal_auth else 'publisher (unchanged)'}")
    print(f"  Lua files updated : {lua_changed}")
    print(f"  Client configs    : {client_changed} patched in ClientScript/Major/Config*.lua")
    print(f"  Runtime overrides : {runtime_synced} synced into GameServer/")
    print(f"  Manifest          : {manifest_path}")
    print(f"  PvP profile       : {env.get('JOYSWORD_PVP_PROFILE', 'default')}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, help="repository or staged payload root (default: auto)")
    parser.add_argument(
        "--runtime-only",
        action="store_true",
        help="patch only secrets/endpoints (container startup; skips Lua tree scan)",
    )
    parser.add_argument(
        "--bake-paths",
        action="store_true",
        help="patch Lua paths and offline flags at image build time (immutable layer)",
    )
    args = parser.parse_args()
    init_context(args.repo_root)

    env = load_env()
    if sys.platform != "win32" and env.get("ELSWORD_ROOT", "").startswith("C:"):
        print("Note: ELSWORD_ROOT uses a Windows path. Set it to your actual Windows install path.")
        print(f"      macOS path for reference: {ELSWORD}")

    lua_changed = 0
    client_changed = 0
    runtime_synced = 0

    if args.runtime_only:
        client_changed = apply_client_configs(env)
        progress("Syncing GameServer runtime script overrides...")
        runtime_synced = sync_gameserver_runtime_scripts()
        apply_dsn_files(env)
        manifest_path = write_manifest(env)
        apply_pvp_profile(env)
        header_fixes = fix_runtime_lua_headers()
        if header_fixes:
            runtime_synced += sync_gameserver_runtime_scripts()
        print_summary(env, lua_changed=0, client_changed=client_changed, runtime_synced=runtime_synced, manifest_path=manifest_path)
        return

    if args.bake_paths or not args.runtime_only:
        lua_changed = apply_lua_tree(env)

    if not args.bake_paths:
        client_changed = apply_client_configs(env)
    progress("Syncing GameServer runtime script overrides...")
    runtime_synced = sync_gameserver_runtime_scripts()
    apply_dsn_files(env)
    manifest_path = write_manifest(env)

    if args.bake_paths:
        print_summary(env, lua_changed=lua_changed, client_changed=0, runtime_synced=runtime_synced, manifest_path=manifest_path)
        return

    apply_pvp_profile(env)
    header_fixes = fix_runtime_lua_headers()
    if header_fixes:
        runtime_synced += sync_gameserver_runtime_scripts()
    print_summary(env, lua_changed=lua_changed, client_changed=client_changed, runtime_synced=runtime_synced, manifest_path=manifest_path)

    print()
    print("Next steps:")
    print("  1. scripts\\setup-offline.bat          (database + configure)")
    print("  2. python scripts\\local_connect.py 127.0.0.1")
    print("  3. Elsword\\Start-Offline.bat")
    print("  4. Start-Client-Windows.bat")
    print("  5. python scripts\\verify-offline.py   (check for leftover remote refs)")
    print("  6. python scripts\\audit-billing.py    (cash shop / ES_BILLING readiness)")


if __name__ == "__main__":
    main()
