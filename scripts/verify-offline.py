#!/usr/bin/env python3
"""Scan Elsword tree for settings that may break offline play."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"

PATTERNS: list[tuple[str, re.Pattern[str]]] = [
    ("remote channel/login IP", re.compile(r"211\.39\.155\.|10\.0\.0\.26|188\.95\.253\.215|elswordonline\.com", re.I)),
    ("FTP statistics enabled", re.compile(r"SendToFTPStatistics\(\s*true\s*\)", re.I)),
    ("SMS/mail monitoring on", re.compile(r"SetSend(?:SMS|Mail)\(\s*true\s*\)", re.I)),
    ("active publisher auth", re.compile(r"^\s*K3RComboAuthManager:|^\s*NXAuthManager:InitNexonAuthInfo", re.M)),
    ("live advertisement", re.compile(r"^\s*GameEvent:AddAdvertisement|SetAdvertisementURL\(\s*'http", re.M | re.I)),
    ("broken DSN server", re.compile(r"^SERVER=(520134|7753)\s*$", re.M)),
    ("legacy install path", re.compile(r"Andrade\\Desktop\\Elsword", re.I)),
]

ENDPOINT_PATTERNS: list[tuple[str, re.Pattern[str]]] = [
    ("remote channel server IP", re.compile(r"AddChannelServerIP_LUA\(\s*\"([^\"]+)\"", re.I)),
    ("remote ID creation game server IP", re.compile(r"AddGameServerIPForCreateID_LUA\(\s*\"([^\"]+)\"", re.I)),
]

GAMESERVER_BILLING_PATTERNS: list[tuple[str, re.Pattern[str]]] = [
    ("publisher billing flag", re.compile(r"SetBillingFlag\(\s*BF_GLOBAL_SERVICE\s*\)", re.I)),
    ("payletter billing flag", re.compile(r"SetBillingFlag\(\s*BF_PAYLETTER_US\s*\)", re.I)),
    ("publisher billing transport", re.compile(r"SetPublisherBillingConnectType\s*\(\s*PBCT_NORMAL\s*\)", re.I)),
    ("active payletter manager", re.compile(r"^\s*PayletterBillingManager:", re.M)),
]

def load_env() -> dict[str, str]:
    values: dict[str, str] = {}
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    if not path.exists():
        return values
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()
    return values


def is_commented_line(line: str) -> bool:
    stripped = line.lstrip()
    return stripped.startswith("--") or stripped.startswith("--[[")


def should_scan(path: Path, profile: str) -> bool:
    rel = str(path.relative_to(ELSWORD)).replace("\\", "/")
    if rel.endswith(".dsn"):
        return True
    if "/log/" in rel:
        return False
    if rel.startswith("ClientScript/Major/Config") and rel.endswith(".lua"):
        return True
    active_pattern = rf"^(Center|Channel|Global|Login|Game)Server/config_[a-z]+_{re.escape(profile)}\.lua$"
    if re.match(active_pattern, rel):
        return True
    if rel in ("ServerResource/GameSysValTable.lua", "ServerResource/EventData.lua", "ServerResource/ServerMornitoringConfig.lua"):
        return True
    return False


def active_lines(text: str) -> str:
    return "\n".join(line for line in text.splitlines() if not is_commented_line(line))


def main() -> int:
    env = load_env()
    profile = env.get("SERVER_PROFILE", "US_SERVICE")
    allowed_endpoints = {
        "127.0.0.1",
        "localhost",
        env.get("CHANNEL_SERVER_IP", "127.0.0.1").lower(),
    }
    issues: list[tuple[str, int, str, str]] = []

    for path in sorted(ELSWORD.rglob("*")):
        if not path.is_file() or not should_scan(path, profile):
            continue
        try:
            text = path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        scanned = active_lines(text)
        rel = str(path.relative_to(ELSWORD)).replace("\\", "/")
        patterns = list(PATTERNS)
        if rel.startswith("GameServer/config_gs_"):
            patterns.extend(GAMESERVER_BILLING_PATTERNS)
        for label, pattern in patterns:
            match = pattern.search(scanned)
            if match:
                line_no = text.count("\n", 0, match.start()) + 1
                issues.append((label, line_no, str(path.relative_to(ROOT)), match.group(0)))
        for label, pattern in ENDPOINT_PATTERNS:
            for match in pattern.finditer(scanned):
                if match.group(1).strip().lower() in allowed_endpoints:
                    continue
                line_no = text.count("\n", 0, match.start()) + 1
                issues.append((label, line_no, str(path.relative_to(ROOT)), match.group(0)))

    if not issues:
        print(f"No offline issues detected for profile {profile}.")
        return 0

    print(f"Found {len(issues)} potential offline issue(s) for profile {profile}:\n")
    for label, line_no, rel_path, snippet in issues:
        print(f"  [{label}] {rel_path}:{line_no}")
        print(f"    {snippet}\n")
    print("Re-run: python3 scripts/configure-offline.py")
    return 1


if __name__ == "__main__":
    sys.exit(main())
