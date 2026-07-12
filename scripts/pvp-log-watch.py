#!/usr/bin/env python3
"""Tail GameServer logs and emit structured [PVP] diagnostic lines.

Reads native KOG GameServer HTML logs and AbnormalDisconnect logs, maps known
patterns to structured output in GameServer/log/pvp-diagnostics.log.

Usage:
  python scripts/pvp-log-watch.py
  python scripts/pvp-log-watch.py --session session-001 --profile lan_tournament
  python scripts/pvp-log-watch.py --once   # process existing logs and exit
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
LOG_DIR = ELSWORD / "GameServer" / "log"
DIAG_LOG = LOG_DIR / "pvp-diagnostics.log"
ACTIVE_PROFILE = ELSWORD / "offline" / "pvp-profile.active"
CONFIG_ROOT = ROOT / "config" / "pvp"

HTML_TAG_RE = re.compile(r"<[^>]+>")
WS_RE = re.compile(r"\s+")


def strip_html(line: str) -> str:
    return WS_RE.sub(" ", HTML_TAG_RE.sub("", line)).strip()


def load_active_profile() -> tuple[str, str]:
    if not ACTIVE_PROFILE.exists():
        return "unknown", "Default"
    lines = ACTIVE_PROFILE.read_text(encoding="utf-8").strip().splitlines()
    name = lines[0] if lines else "unknown"
    label = name
    profile_json = CONFIG_ROOT / name / "profile.json"
    if profile_json.exists():
        data = json.loads(profile_json.read_text(encoding="utf-8"))
        label = data.get("client_connection_mode_label", name)
    return name, label


def emit(diag: Path, line: str) -> None:
    diag.parent.mkdir(parents=True, exist_ok=True)
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    with diag.open("a", encoding="utf-8") as f:
        f.write(f"{ts} {line}\n")
    try:
        print(line, flush=True)
    except UnicodeEncodeError:
        print(line.encode("ascii", errors="replace").decode("ascii"), flush=True)


def emit_session_start(diag: Path, session: str | None, profile: str | None, mode_label: str) -> None:
    emit(diag, f"[PVP][SESSION] id={session or 'live'} profile={profile or 'unknown'}")
    emit(diag, f"[PVP] ConnectionMode={mode_label}")


def is_config_dump_line(text: str) -> bool:
    if "KGameSysVal::Set" in text:
        return True
    if "인자 정보 수정" in text:
        return True
    if re.search(r"\bm_[a-zA-Z]+\s*:", text):
        return True
    return False


def parse_lanbug_line(text: str) -> dict[str, str] | None:
    """Map native LanBug runtime events only (skips config dump lines)."""
    if is_config_dump_line(text):
        return None
    lower = text.lower()
    if "lanbug" not in lower and "랜선" not in text:
        return None
    if not any(
        token in text
        for token in ("LanBugOut", "OutCheck", "OutVerify", "Suspect", "랜선렉", "Block")
    ):
        return None
    fields: dict[str, str] = {}
    room = re.search(r"(?:Room|RoomUID)[=:\s]+(\d+)", text)
    peer = re.search(r"(?:User|Nick|Peer|UID)[=:\s]+(\S+)", text)
    gap = re.search(r"(?:Gap|Term|gap|RecvGap)[=:\s]+([\d.]+)", text)
    count = re.search(r"(?:Count|count)[=:\s]+(\d+)", text)
    if room:
        fields["Room"] = room.group(1)
    if peer:
        fields["Peer"] = peer.group(1)
    if gap:
        fields["GapMs"] = gap.group(1)
    if count:
        fields["SuspiciousCount"] = count.group(1)
    if not fields:
        fields["Note"] = text[:200]
    return fields


def parse_profile_startup_lines(text: str) -> list[str]:
    return [line.rstrip() for line in text.splitlines() if line.strip()]


def format_lanbug(fields: dict[str, str], mode_label: str) -> str:
    lines = ["[PVP][LANBUG]"]
    lines.append(f"Mode={mode_label}")
    for k in ("Room", "Peer", "GapMs", "ThresholdMs", "SuspiciousCount"):
        if k in fields:
            lines.append(f"{k}={fields[k]}")
    if "Note" in fields:
        lines.append(f"Note={fields['Note']}")
    return "\n".join(lines)


def parse_host_migration(text: str) -> dict[str, str] | None:
    if not any(
        x in text
        for x in (
            "ChangeHost",
            "change host",
            "방장",
            "호스트",
            "PingScore",
            "m_iMaxPingScore",
            "MaxPingScore",
        )
    ):
        return None
    if "SetCheckChangeHostTime_LUA" in text or "SetMaxPingScore" in text:
        return None  # config at startup
    fields: dict[str, str] = {}
    for pattern, key in (
        (r"(?:OldHost|old host)[=:\s]+(\S+)", "OldHost"),
        (r"(?:NewHost|new host)[=:\s]+(\S+)", "NewHost"),
        (r"(?:Room|RoomUID)[=:\s]+(\d+)", "Room"),
        (r"(?:PingScore|ping score)[=:\s]+(\d+)", "OldPingScore"),
        (r"(?:MaxPingScore|threshold)[=:\s]+(\d+)", "Threshold"),
        (r"(?:Reason)[=:\s]+(\S+)", "Reason"),
    ):
        m = re.search(pattern, text, re.IGNORECASE)
        if m:
            fields[key] = m.group(1)
    if "PingScore" in text or "ping" in text.lower():
        if "Reason" not in fields:
            fields["Reason"] = "PingScoreExceeded"
    return fields if fields else None


def format_host_migration(fields: dict[str, str]) -> str:
    lines = ["[PVP][HOST_MIGRATION]"]
    for k in ("OldHost", "NewHost", "Reason", "OldPingScore", "Threshold", "Room"):
        if k in fields:
            lines.append(f"{k}={fields[k]}")
    return "\n".join(lines)


def parse_disconnect(text: str) -> dict[str, str] | None:
    if "AbnormalDisconnect" in text or "DISCONNECT" in text.upper():
        fields = {}
        for pattern, key in (
            (r"RoomUID\s+(\d+)", "Room"),
            (r"UserUID\s+(\S+)", "Peer"),
            (r"RecvGap\s+(\d+)", "GapMs"),
        ):
            m = re.search(pattern, text)
            if m:
                fields[key] = m.group(1)
        if fields:
            fields["Reason"] = "AbnormalDisconnect"
            return fields
    return None


def format_disconnect(fields: dict[str, str]) -> str:
    lines = ["[PVP][DISCONNECT]"]
    for k in ("Room", "Peer", "GapMs", "Reason"):
        if k in fields:
            lines.append(f"{k}={fields[k]}")
    return "\n".join(lines)


def latest_htm_log() -> Path | None:
    logs = sorted(LOG_DIR.glob("log_*.htm"), key=lambda p: p.stat().st_mtime, reverse=True)
    return logs[0] if logs else None


def process_file(path: Path, diag: Path, mode_label: str, seen: set[str]) -> int:
    count = 0
    if path.name in seen:
        return 0
    try:
        raw = path.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return 0

    if path.name == "pvp-profile-startup.log":
        for pline in parse_profile_startup_lines(raw):
            emit(diag, pline)
        seen.add(path.name)
        return len(parse_profile_startup_lines(raw))

    for line in raw.splitlines():
        text = strip_html(line)
        if not text:
            continue
        key = f"{path.name}:{hash(text)}"
        if key in seen:
            continue

        handled = False
        lanbug = parse_lanbug_line(text)
        if lanbug:
            emit(diag, format_lanbug(lanbug, mode_label))
            handled = True

        migration = parse_host_migration(text)
        if migration:
            emit(diag, format_host_migration(migration))
            handled = True

        disconnect = parse_disconnect(text)
        if disconnect:
            emit(diag, format_disconnect(disconnect))
            handled = True

        if handled:
            seen.add(key)
            count += 1
    return count


def watch(session: str | None, profile: str | None, once: bool, poll: float) -> int:
    profile_name, mode_label = load_active_profile()
    if profile:
        profile_name = profile
        pj = CONFIG_ROOT / profile / "profile.json"
        if pj.exists():
            mode_label = json.loads(pj.read_text(encoding="utf-8")).get(
                "client_connection_mode_label", profile
            )

    diag = DIAG_LOG
    seen: set[str] = set()
    emit_session_start(diag, session, profile_name, mode_label)

    files = [LOG_DIR / "pvp-profile-startup.log"]
    files.extend(sorted(LOG_DIR.glob("AbnormalDisconnectLog_*.txt")))
    if not once:
        files.extend(sorted(LOG_DIR.glob("log_*.htm"), key=lambda p: p.stat().st_mtime, reverse=True)[:1])

    if once:
        for f in sorted(files, key=lambda p: p.stat().st_mtime if p.exists() else 0):
            if f.exists():
                process_file(f, diag, mode_label, seen)
        return 0

    print(f"Watching {LOG_DIR} → {diag}", flush=True)
    offsets: dict[str, int] = {}
    while True:
        for f in sorted(LOG_DIR.glob("log_*.htm"), key=lambda p: p.stat().st_mtime, reverse=True)[:3]:
            try:
                size = f.stat().st_size
            except OSError:
                continue
            start = offsets.get(str(f), 0)
            if size < start:
                start = 0
            with f.open("r", encoding="utf-8", errors="replace") as fh:
                fh.seek(start)
                chunk = fh.read()
                offsets[str(f)] = fh.tell()
            for line in chunk.splitlines():
                text = strip_html(line)
                if not text or is_config_dump_line(text):
                    continue
                lanbug = parse_lanbug_line(text)
                if lanbug:
                    emit(diag, format_lanbug(lanbug, mode_label))
                migration = parse_host_migration(text)
                if migration:
                    emit(diag, format_host_migration(migration))
        for f in LOG_DIR.glob("AbnormalDisconnectLog_*.txt"):
            process_file(f, diag, mode_label, seen)
        time.sleep(poll)


def main() -> None:
    parser = argparse.ArgumentParser(description="JoySword PvP structured log watcher")
    parser.add_argument("--session", type=str, default=None)
    parser.add_argument("--profile", type=str, default=None)
    parser.add_argument("--once", action="store_true", help="Process existing logs and exit")
    parser.add_argument("--poll", type=float, default=2.0)
    args = parser.parse_args()
    try:
        sys.exit(watch(args.session, args.profile, args.once, args.poll))
    except KeyboardInterrupt:
        print("\nStopped.", flush=True)
        sys.exit(0)


if __name__ == "__main__":
    main()
