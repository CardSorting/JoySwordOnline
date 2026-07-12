#!/usr/bin/env python3
"""Apply JoySword PvP stabilization profile to server Lua configs.

Usage:
  python scripts/apply-pvp-profile.py [profile_name]
  JOYSWORD_PVP_PROFILE=lan_tournament python scripts/apply-pvp-profile.py

Fails closed (exit 1) if profile directory or profile.json is missing.
"""

from __future__ import annotations

import json
import os
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CONFIG_ROOT = ROOT / "config" / "pvp"
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"

PROFILE_BEGIN = "--[[ JOYSWORD_PVP_PROFILE_BEGIN"
PROFILE_END = "--[[ JOYSWORD_PVP_PROFILE_END ]]"

VALID_PROFILES = ("default", "lan_tournament", "relay_forced", "p2p_forced")


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    env: dict[str, str] = {}
    if not path.exists():
        return env
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        env[key.strip()] = value.strip()
    return env


def load_profile(name: str) -> dict:
    profile_dir = CONFIG_ROOT / name
    profile_file = profile_dir / "profile.json"
    if not profile_dir.is_dir() or not profile_file.is_file():
        print(f"ERROR: PvP profile not found: {profile_file}", file=sys.stderr)
        print(f"Valid profiles: {', '.join(VALID_PROFILES)}", file=sys.stderr)
        sys.exit(1)
    return json.loads(profile_file.read_text(encoding="utf-8"))


def bool_lua(value: bool) -> str:
    return "True" if value else "False"


def render_lan_bug_check(opts: dict) -> str:
    return f"""GameSysVal:SetLanBugOutCheckOption
{{
\tbLanBugOutCheck\t\t\t\t= {bool_lua(opts['bLanBugOutCheck'])},\t\t-- JoySword PvP profile
\tbyteLanBugOutCheckMaxCount\t= {opts['byteLanBugOutCheckMaxCount']},\t\t-- 최대 체크 횟수 ( 0 이면 무제한 )
\tfLanBugOutCheckTime\t\t\t= {opts['fLanBugOutCheckTime']},\t\t-- 판정 시간
\tbyteLanBugOutCheckCount\t\t= {opts['byteLanBugOutCheckCount']},\t\t-- 판정 횟수
\tfLanBugOutCheckTermMin\t\t= {opts['fLanBugOutCheckTermMin']},\t\t-- 판정 패킷 최소 간격
\tfLanBugOutCheckTerm\t\t\t= {opts['fLanBugOutCheckTerm']},\t\t-- 판정 패킷 최대 텀
\tfLanBugOutCheckRepeatTerm\t= {opts['fLanBugOutCheckRepeatTerm']},\t\t-- 반복 전송 간격
}}"""


def render_lan_bug_verify(opts: dict) -> str:
    return f"""GameSysVal:SetLanBugOutVerifyOption
{{
\tbLanBugOutVerify\t\t\t= {bool_lua(opts['bLanBugOutVerify'])},\t\t-- JoySword PvP profile
\tbyteLanBugOutVerifyMaxCount\t= {opts['byteLanBugOutVerifyMaxCount']},\t\t-- 최대 체크 횟수
\tfLanBugOutVerifyTime\t\t= {opts['fLanBugOutVerifyTime']},\t\t-- 판정 시간
\tbyteLanBugOutVerifyCount\t= {opts['byteLanBugOutVerifyCount']},\t\t-- 판정 횟수
\tfLanBugOutVerifyTermMin\t\t= {opts['fLanBugOutVerifyTermMin']},\t\t-- 판정 패킷 최소 간격
\tfLanBugOutVerifyTerm\t\t= {opts['fLanBugOutVerifyTerm']},\t\t-- 판정 패킷 최대 텀
\tfLanBugOutVerifyRepeatTerm\t= {opts['fLanBugOutVerifyRepeatTerm']},\t\t-- 반복 전송 간격
}}"""


def render_gamesysval_profile_block(profile: dict, applied_at: str) -> str:
    gs = profile["gamesysval"]
    name = profile["name"]
    lines = [
        f"{PROFILE_BEGIN} {name} ]]",
        f"-- applied_utc: {applied_at}",
        f"-- client_connection_mode: {profile.get('client_connection_mode_label', 'Default')}",
        f"-- client_switch_connect_mode: {profile.get('client_switch_connect_mode', 0)}",
        "",
        f"GameSysVal:SetLanBugOutJustLog( {bool_lua(gs['lan_bug_out_just_log'])} )",
        "",
        render_lan_bug_check(gs["lan_bug_out_check"]),
        "",
        render_lan_bug_verify(gs["lan_bug_out_verify"]),
        "",
        f"GameSysVal:SetCheckChangeHostTime( {gs['check_change_host_time']} )",
        f"GameSysVal:SetMaxPingScore( {gs['max_ping_score']} )",
        f"GameSysVal:SetHostCheckTerm( {gs['host_check_term']} )",
        f"GameSysVal:SetBattleFieldCheckChangeHostTime( {gs['battle_field_check_change_host_time']} )",
        "",
        PROFILE_END,
    ]
    return "\n".join(lines) + "\n"


def render_udp_relay_checker(profile: dict) -> str:
    urc = profile["udp_relay_checker"]
    return f"""-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- JoySword PvP profile: {profile['name']}

-- UDP Relay Checker 설정
UdpRelayChecker:SetUdpRelayCheckerOn( {bool_lua(urc['enabled'])} )
UdpRelayChecker:AddUdpRelayCheckerOnServerClass( {urc['server_class']} )
UdpRelayChecker:SetUdpRelayCheckerPrintLog( {bool_lua(urc['print_log'])} )
UdpRelayChecker:SetUdpRelayCheckerPort( {urc['port']} )
UdpRelayChecker:SetUdpRelayCheckerTimeGap( {urc['time_gap']} )
UdpRelayChecker:SetDBUpdateTimeGap( {urc['db_update_time_gap']} )
"""


def patch_gamesysval_table_v2(text: str, profile: dict, block: str) -> str:
    gs = profile["gamesysval"]
    if PROFILE_BEGIN in text:
        text = re.sub(
            re.escape(PROFILE_BEGIN) + r".*?" + re.escape(PROFILE_END) + r"\s*",
            "",
            text,
            flags=re.DOTALL,
        )
    anchor = "-----------------------------------------------------------------------------\n\n--PC방 프리미엄 아이템"
    if anchor not in text:
        anchor = "--PC방 프리미엄 아이템"
    if anchor in text:
        text = text.replace(anchor, block + "\n" + anchor, 1)
    else:
        text = text.rstrip() + "\n\n" + block

    text = re.sub(
        r"GameSysVal:SetCheckChangeHostTime\(\s*\d+\s*\)",
        f"GameSysVal:SetCheckChangeHostTime( {gs['check_change_host_time']} )",
        text,
        count=1,
    )
    text = re.sub(
        r"GameSysVal:SetMaxPingScore\(\s*\d+\s*\)",
        f"GameSysVal:SetMaxPingScore( {gs['max_ping_score']} )",
        text,
        count=1,
    )
    text = re.sub(
        r"GameSysVal:SetHostCheckTerm\(\s*[\d.]+\s*\)",
        f"GameSysVal:SetHostCheckTerm( {gs['host_check_term']} )",
        text,
        count=1,
    )
    text = re.sub(
        r"(bLanBugOutCheck\s*=\s*)(True|False)",
        rf"\g<1>{bool_lua(gs['lan_bug_out_check']['bLanBugOutCheck'])}",
        text,
        count=1,
    )
    text = re.sub(
        r"(bLanBugOutVerify\s*=\s*)(True|False)",
        rf"\g<1>{bool_lua(gs['lan_bug_out_verify']['bLanBugOutVerify'])}",
        text,
        count=1,
    )
    return text


def patch_tr_server(text: str, count: int) -> str:
    if "TRServer:TRWorkerThreadCount" not in text:
        return text
    return re.sub(
        r"TRServer:TRWorkerThreadCount\(\s*\d+\s*\)",
        f"TRServer:TRWorkerThreadCount( {count} )",
        text,
        count=1,
    )


def patch_room_manager(text: str, zu: int, bf_zu: int) -> str:
    text = re.sub(
        r"RoomManager:SetZUTickTime\(\s*\d+\s*\)",
        f"RoomManager:SetZUTickTime( {zu} )",
        text,
        count=1,
    )
    text = re.sub(
        r"RoomManager:SetBattleFieldZUTickTime\(\s*\d+\s*\)",
        f"RoomManager:SetBattleFieldZUTickTime( {bf_zu} )",
        text,
        count=1,
    )
    return text


def write_if_changed(path: Path, content: str) -> bool:
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and path.read_text(encoding="utf-8", errors="replace") == content:
        return False
    path.write_text(content, encoding="utf-8")
    return True


def write_startup_log(profile: dict, changed_files: list[str], applied_at: str) -> Path:
    log_dir = ELSWORD / "GameServer" / "log"
    log_dir.mkdir(parents=True, exist_ok=True)
    log_path = log_dir / "pvp-profile-startup.log"
    gs = profile["gamesysval"]
    urc = profile["udp_relay_checker"]
    lines = [
        f"[PVP][PROFILE] name={profile['name']}",
        f"[PVP][PROFILE] applied_utc={applied_at}",
        f"[PVP][PROFILE] connection_mode={profile.get('client_connection_mode_label', 'Default')}",
        f"[PVP][PROFILE] client_switch_connect_mode={profile.get('client_switch_connect_mode', 0)}",
        "[PVP][PROFILE] gamesysval_changes:",
        f"  bLanBugOutCheck={gs['lan_bug_out_check']['bLanBugOutCheck']}",
        f"  bLanBugOutVerify={gs['lan_bug_out_verify']['bLanBugOutVerify']}",
        f"  SetLanBugOutJustLog={gs['lan_bug_out_just_log']}",
        f"  SetCheckChangeHostTime={gs['check_change_host_time']}",
        f"  SetMaxPingScore={gs['max_ping_score']}",
        f"  SetHostCheckTerm={gs['host_check_term']}",
        f"  SetBattleFieldCheckChangeHostTime={gs['battle_field_check_change_host_time']}",
        "[PVP][PROFILE] udp_relay_checker_changes:",
        f"  enabled={urc['enabled']}",
        f"  print_log={urc['print_log']}",
        f"  port={urc['port']}",
        "[PVP][PROFILE] tr_server_changes:",
        f"  TRWorkerThreadCount={profile['tr_server']['worker_thread_count']}",
        "[PVP][PROFILE] room_manager_changes:",
        f"  SetZUTickTime={profile['room_manager']['zu_tick_time']}",
        f"  SetBattleFieldZUTickTime={profile['room_manager']['battle_field_zu_tick_time']}",
        "[PVP][PROFILE] changed_files:",
    ]
    for f in changed_files:
        lines.append(f"  {f}")
    lines.append("")
    log_path.write_text("\n".join(lines), encoding="utf-8")
    return log_path


def write_client_hint(profile: dict) -> Path:
    hint_path = ELSWORD / "offline" / "client-pvp-hint.txt"
    mode = profile.get("client_switch_connect_mode", 0)
    label = profile.get("client_connection_mode_label", "Default")
    lines = [
        f"JoySword PvP profile: {profile['name']}",
        f"ConnectionMode={label}",
        f"SwitchConnect_LUA mode value: {mode}",
        "",
        "In-game (debug/GM chat), before PvP match:",
    ]
    if mode == 0:
        lines.append("  /switchconnect 0   (default — auto P2P/relay)")
    elif mode == 1:
        lines.append("  /switchconnect 1   (force P2P — required for p2p_forced profile)")
    elif mode == 2:
        lines.append("  /switchconnect 2   (force relay — required for relay_forced profile)")
    lines.extend(
        [
            "",
            "Verify with packet capture:",
            "  python scripts/pvp-netcode-capture.py session --profile "
            + profile["name"]
            + " --tag test",
            "",
        ]
    )
    hint_path.write_text("\n".join(lines), encoding="utf-8")
    return hint_path


def write_active_marker(profile_name: str, applied_at: str) -> Path:
    marker = ELSWORD / "offline" / "pvp-profile.active"
    marker.write_text(f"{profile_name}\n{applied_at}\n", encoding="utf-8")
    return marker


def apply_profile(profile_name: str) -> int:
    profile = load_profile(profile_name)
    env = load_env()
    server_profile = env.get("SERVER_PROFILE", "US_SERVICE")
    applied_at = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    block = render_gamesysval_profile_block(profile, applied_at)

    changed: list[str] = []

    for rel in ("ServerResource/GameSysValTable.lua", "Resources/GameSysValTable.lua"):
        path = ELSWORD / rel.replace("/", os.sep)
        if not path.exists():
            continue
        original = path.read_text(encoding="utf-8", errors="replace")
        updated = patch_gamesysval_table_v2(original, profile, block)
        if write_if_changed(path, updated):
            changed.append(rel)

    relay_content = render_udp_relay_checker(profile)
    for rel in ("ServerResource/UdpRelayCheckerConfig.lua", "Resources/UdpRelayCheckerConfig.lua"):
        path = ELSWORD / rel.replace("/", os.sep)
        if write_if_changed(path, relay_content):
            changed.append(rel)

    gs_config = ELSWORD / "GameServer" / f"config_gs_{server_profile}.lua"
    if gs_config.exists():
        original = gs_config.read_text(encoding="utf-8", errors="replace")
        updated = patch_tr_server(original, profile["tr_server"]["worker_thread_count"])
        if write_if_changed(gs_config, updated):
            changed.append(f"GameServer/config_gs_{server_profile}.lua")

    cs_config = ELSWORD / "CenterServer" / f"config_cn_{server_profile}.lua"
    if cs_config.exists():
        original = cs_config.read_text(encoding="utf-8", errors="replace")
        rm = profile["room_manager"]
        updated = patch_room_manager(original, rm["zu_tick_time"], rm["battle_field_zu_tick_time"])
        if write_if_changed(cs_config, updated):
            changed.append(f"CenterServer/config_cn_{server_profile}.lua")

    log_path = write_startup_log(profile, changed, applied_at)
    hint_path = write_client_hint(profile)
    marker_path = write_active_marker(profile_name, applied_at)

    print(f"[PVP][PROFILE] Applied profile={profile_name}")
    print(f"[PVP][PROFILE] server_profile={server_profile}")
    print(f"[PVP][PROFILE] ConnectionMode={profile.get('client_connection_mode_label')}")
    print(f"[PVP][PROFILE] startup_log={log_path}")
    print(f"[PVP][PROFILE] client_hint={hint_path}")
    print(f"[PVP][PROFILE] active_marker={marker_path}")
    if changed:
        print(f"[PVP][PROFILE] changed_files={len(changed)}")
        for c in changed:
            print(f"  - {c}")
    else:
        print("[PVP][PROFILE] changed_files=0 (already applied)")
    return 0


def main() -> None:
    env = load_env()
    profile_name = (
        (sys.argv[1] if len(sys.argv) > 1 else None)
        or os.environ.get("JOYSWORD_PVP_PROFILE")
        or env.get("JOYSWORD_PVP_PROFILE", "default")
    )
    if profile_name not in VALID_PROFILES:
        print(f"ERROR: Unknown profile '{profile_name}'", file=sys.stderr)
        print(f"Valid: {', '.join(VALID_PROFILES)}", file=sys.stderr)
        sys.exit(1)
    sys.exit(apply_profile(profile_name))


if __name__ == "__main__":
    main()
