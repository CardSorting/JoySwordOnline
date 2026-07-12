#!/usr/bin/env python3
"""PvP UDP capture — session workflow with CSV export and summaries.

Usage:
  python scripts/pvp-netcode-capture.py --list-adapters
  python scripts/pvp-netcode-capture.py session --profile lan_tournament --tag test001 --duration 300
  python scripts/pvp-netcode-capture.py session --profile p2p_forced --tag test002 --duration 120 --no-capture
  python scripts/pvp-netcode-capture.py export --session captures/session-test001-20260626

Requires scapy + Npcap for live capture.
"""

from __future__ import annotations

import argparse
import csv
import json
import sys
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CONFIG_ROOT = ROOT / "config" / "pvp"
CAPTURES = ROOT / "captures"

P2P_PORT = 8765
RELAY_CHECK_PORT = 26424
CAPTURE_FILTER = f"udp port {P2P_PORT} or udp port {RELAY_CHECK_PORT}"


def _require_scapy():
    try:
        from scapy.all import IP, UDP, Raw, sniff, wrpcap, rdpcap  # noqa: F401
        return True
    except ImportError:
        print(
            "scapy required: pip install scapy (Npcap on Windows)",
            file=sys.stderr,
        )
        return False


def load_profile(name: str) -> dict:
    path = CONFIG_ROOT / name / "profile.json"
    if not path.exists():
        print(f"ERROR: profile not found: {path}", file=sys.stderr)
        sys.exit(1)
    return json.loads(path.read_text(encoding="utf-8"))


def list_adapters() -> None:
    if not _require_scapy():
        sys.exit(1)
    from scapy.interfaces import ifaces

    for name, iface in ifaces.data.items():
        print(f"  {name}: {getattr(iface, 'description', name)}")


def packet_rows(packets) -> list[dict]:
    if not packets:
        return []
    from scapy.all import IP, UDP, Raw

    rows = []
    t0 = None
    for p in packets:
        if not p.haslayer(UDP) or not p.haslayer(IP):
            continue
        ts = float(p.time)
        if t0 is None:
            t0 = ts
        sport, dport = int(p[UDP].sport), int(p[UDP].dport)
        payload_len = len(p[Raw].load) if p.haslayer(Raw) else 0
        if P2P_PORT in (sport, dport):
            channel = "p2p"
        elif RELAY_CHECK_PORT in (sport, dport):
            channel = "relay_checker"
        else:
            channel = "other"
        rows.append(
            {
                "timestamp_epoch": ts,
                "timestamp_utc": datetime.fromtimestamp(ts, tz=timezone.utc).isoformat(),
                "relative_ms": round((ts - t0) * 1000, 3),
                "src": p[IP].src,
                "dst": p[IP].dst,
                "sport": sport,
                "dport": dport,
                "payload_bytes": payload_len,
                "channel": channel,
            }
        )
    return rows


def summarize(rows: list[dict], profile: dict, session_id: str, markers: list[dict]) -> dict:
    if not rows:
        return {
            "session_id": session_id,
            "profile": profile["name"],
            "connection_mode": profile.get("client_connection_mode_label", "Default"),
            "client_switch_connect_mode": profile.get("client_switch_connect_mode", 0),
            "packet_count": 0,
            "p2p_packet_count": 0,
            "relay_checker_packet_count": 0,
            "duration_ms": 0,
            "packets_per_second": 0,
            "p2p_packet_ratio": 0,
            "payload_bytes_min": 0,
            "payload_bytes_max": 0,
            "payload_bytes_unique": 0,
            "markers": markers,
        }
    p2p = sum(1 for r in rows if r["channel"] == "p2p")
    relay = sum(1 for r in rows if r["channel"] == "relay_checker")
    duration_ms = rows[-1]["relative_ms"] - rows[0]["relative_ms"]
    pps = len(rows) / (duration_ms / 1000) if duration_ms > 0 else len(rows)
    sizes = [r["payload_bytes"] for r in rows if r["payload_bytes"] > 0]
    summary = {
        "session_id": session_id,
        "profile": profile["name"],
        "connection_mode": profile.get("client_connection_mode_label", "Default"),
        "client_switch_connect_mode": profile.get("client_switch_connect_mode", 0),
        "packet_count": len(rows),
        "p2p_packet_count": p2p,
        "relay_checker_packet_count": relay,
        "p2p_packet_ratio": round(p2p / len(rows), 4) if rows else 0,
        "duration_ms": round(duration_ms, 3),
        "packets_per_second": round(pps, 2),
        "payload_bytes_min": min(sizes) if sizes else 0,
        "payload_bytes_max": max(sizes) if sizes else 0,
        "payload_bytes_unique": len(set(sizes)),
        "markers": markers,
    }
    return summary


def write_summary_md(path: Path, summary: dict, profile: dict) -> None:
    lines = [
        f"# PvP capture summary — {summary['session_id']}",
        "",
        f"- Profile: `{summary['profile']}`",
        f"- ConnectionMode: `{summary['connection_mode']}`",
        f"- Client SwitchConnect mode: `{summary['client_switch_connect_mode']}`",
        f"- Packets: **{summary['packet_count']}** (P2P :{P2P_PORT}: {summary['p2p_packet_count']}, relay :{RELAY_CHECK_PORT}: {summary['relay_checker_packet_count']})",
        f"- P2P packet ratio: {summary['p2p_packet_ratio']}",
        f"- Duration: {summary['duration_ms']} ms",
        f"- Rate: {summary['packets_per_second']} pkt/s",
        f"- Payload bytes: min={summary['payload_bytes_min']} max={summary['payload_bytes_max']} unique_sizes={summary['payload_bytes_unique']}",
        "",
        "## Markers",
        "",
    ]
    if summary.get("markers"):
        for m in summary["markers"]:
            lines.append(f"- `{m.get('type')}` @ {m.get('utc', '?')}: {m.get('note', '')}")
    else:
        lines.append("- (none)")
    lines.extend(
        [
            "",
            "## Interpretation (no protocol semantics claimed)",
            "",
            "- `p2p_forced` expects high `p2p_packet_ratio`",
            "- `relay_forced` may still show :8765 traffic; compare runs side-by-side",
            "- Payload field meanings: **UNKNOWN**",
            "",
            "## Client hint",
            "",
            f"See `Elsword/offline/client-pvp-hint.txt` after `apply-pvp-profile.py {profile['name']}`",
            "",
        ]
    )
    path.write_text("\n".join(lines), encoding="utf-8")


def run_session(
    profile_name: str,
    tag: str,
    duration: int,
    iface: str | None,
    no_capture: bool,
    markers: list[str],
) -> Path:
    profile = load_profile(profile_name)
    ts = datetime.now(timezone.utc).strftime("%Y%m%d-%H%M%S")
    session_id = f"session-{tag}-{ts}" if tag else f"session-{ts}"
    session_dir = CAPTURES / session_id
    session_dir.mkdir(parents=True, exist_ok=True)

    marker_records = [
        {
            "type": "session_start",
            "utc": datetime.now(timezone.utc).isoformat(),
            "note": f"profile={profile_name} connection_mode={profile.get('client_connection_mode_label')}",
        }
    ]
    for m in markers:
        marker_records.append(
            {"type": "user_marker", "utc": datetime.now(timezone.utc).isoformat(), "note": m}
        )

    metadata = {
        "session_id": session_id,
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "profile": profile_name,
        "connection_mode": profile.get("client_connection_mode_label"),
        "client_switch_connect_mode": profile.get("client_switch_connect_mode"),
        "duration_requested_sec": duration,
        "capture_filter": CAPTURE_FILTER,
        "ports": {"p2p": P2P_PORT, "relay_checker": RELAY_CHECK_PORT},
        "markers": marker_records,
    }
    (session_dir / "metadata.json").write_text(json.dumps(metadata, indent=2), encoding="utf-8")

    packets = []
    pcap_path = session_dir / "packets.pcap"
    if not no_capture:
        if not _require_scapy():
            sys.exit(1)
        from scapy.all import sniff, wrpcap

        print(f"Capturing {duration}s → {session_dir}")
        print(f"Profile={profile_name} ConnectionMode={profile.get('client_connection_mode_label')}")
        print(f"Client: run /switchconnect {profile.get('client_switch_connect_mode', 0)} if required\n")
        packets = sniff(filter=CAPTURE_FILTER, timeout=duration, iface=iface or None)
        wrpcap(str(pcap_path), packets)
    elif pcap_path.exists():
        from scapy.all import rdpcap

        packets = rdpcap(str(pcap_path))

    rows = packet_rows(packets)
    csv_path = session_dir / "packets.csv"
    if rows:
        with csv_path.open("w", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
            writer.writeheader()
            writer.writerows(rows)

    summary = summarize(rows, profile, session_id, marker_records)
    (session_dir / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    write_summary_md(session_dir / "summary.md", summary, profile)

    print(f"Session artifacts: {session_dir}")
    print(f"  metadata.json  packets.csv  summary.md  summary.json")
    if pcap_path.exists():
        print(f"  packets.pcap")
    return session_dir


def add_marker(session_dir: Path, note: str) -> None:
    meta_path = session_dir / "metadata.json"
    if not meta_path.exists():
        print(f"Session not found: {session_dir}", file=sys.stderr)
        sys.exit(1)
    meta = json.loads(meta_path.read_text(encoding="utf-8"))
    entry = {"type": "user_marker", "utc": datetime.now(timezone.utc).isoformat(), "note": note}
    meta.setdefault("markers", []).append(entry)
    meta_path.write_text(json.dumps(meta, indent=2), encoding="utf-8")
    print(f"Marker added: {note}")


def reexport(session_dir: Path) -> None:
    from scapy.all import rdpcap

    pcap = session_dir / "packets.pcap"
    meta = json.loads((session_dir / "metadata.json").read_text(encoding="utf-8"))
    profile = load_profile(meta["profile"])
    packets = rdpcap(str(pcap)) if pcap.exists() else []
    rows = packet_rows(packets)
    if rows:
        with (session_dir / "packets.csv").open("w", newline="", encoding="utf-8") as f:
            w = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
            w.writeheader()
            w.writerows(rows)
    summary = summarize(rows, profile, meta["session_id"], meta.get("markers", []))
    (session_dir / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    write_summary_md(session_dir / "summary.md", summary, profile)
    print(f"Re-exported {session_dir}")


def main() -> None:
    parser = argparse.ArgumentParser(description="JoySword PvP capture workflow")
    sub = parser.add_subparsers(dest="cmd")

    sub.add_parser("list-adapters", help="List NICs")

    sp = sub.add_parser("session", help="Run tagged capture session")
    sp.add_argument("--profile", required=True, choices=["default", "lan_tournament", "relay_forced", "p2p_forced"])
    sp.add_argument("--tag", default="001", help="Session tag (session-<tag>-<timestamp>)")
    sp.add_argument("--duration", type=int, default=120)
    sp.add_argument("--iface", default=None)
    sp.add_argument("--no-capture", action="store_true", help="Skip live capture (re-export only)")
    sp.add_argument("--marker", action="append", default=[], dest="markers")

    mp = sub.add_parser("marker", help="Add marker to existing session")
    mp.add_argument("--session", type=Path, required=True)
    mp.add_argument("--note", required=True)

    ep = sub.add_parser("export", help="Re-export CSV/summary from session pcap")
    ep.add_argument("--session", type=Path, required=True)

    args = parser.parse_args()
    if args.cmd == "list-adapters":
        list_adapters()
    elif args.cmd == "session":
        run_session(args.profile, args.tag, args.duration, args.iface, args.no_capture, args.markers)
    elif args.cmd == "marker":
        add_marker(args.session, args.note)
    elif args.cmd == "export":
        reexport(args.session)
    else:
        parser.print_help()


if __name__ == "__main__":
    main()
