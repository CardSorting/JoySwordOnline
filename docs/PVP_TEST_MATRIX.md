# PvP Stabilization Test Matrix

Repeatable LAN/local procedures. No combat feel changes — observability and config only.

**Prerequisites**

```bat
python scripts\configure-offline.py
set JOYSWORD_PVP_PROFILE=lan_tournament
Elsword\Start-Offline.bat
```

Or per-test profile:

```bat
python scripts\apply-pvp-profile.py relay_forced
```

**Artifacts**

| Path | Purpose |
|------|---------|
| `Elsword/GameServer/log/pvp-profile-startup.log` | Profile + changed values at apply |
| `Elsword/GameServer/log/pvp-diagnostics.log` | Structured `[PVP][*]` lines |
| `Elsword/offline/client-pvp-hint.txt` | Required `/switchconnect` mode |
| `captures/session-<tag>-<ts>/` | metadata.json, packets.csv, summary.md |

---

## TEST 001 — LAN, relay forced, 1v1, 5 min idle

| Step | Action |
|------|--------|
| 1 | `python scripts/apply-pvp-profile.py relay_forced` |
| 2 | Restart GameServer + CenterServer (or full stack) |
| 3 | Terminal A: `python scripts/pvp-log-watch.py --session test001 --profile relay_forced` |
| 4 | Terminal B: `python scripts/pvp-netcode-capture.py session --profile relay_forced --tag test001 --duration 300` |
| 5 | Both clients: `/switchconnect 2` then 1v1 PvP, idle 5 min |

**Expected logs**

```
[PVP][PROFILE] name=relay_forced
[PVP] ConnectionMode=RelayForced
```

GameServer native (on startup): `m_bLanBugOutCheck : true`, `UdpRelayChecker:SetUdpRelayCheckerOn( True )`

**Expected capture**

- `summary.md`: `relay_checker_packet_count` may be > 0
- `p2p_packet_ratio`: **UNKNOWN** threshold — compare vs TEST 002

**Known unknowns**

- Server cannot confirm client honored `/switchconnect 2`
- Relay game traffic port semantics not documented in repo

---

## TEST 002 — LAN, P2P forced, combo spam

| Step | Action |
|------|--------|
| 1 | `python scripts/apply-pvp-profile.py p2p_forced` |
| 2 | Restart servers |
| 3 | `python scripts/pvp-netcode-capture.py session --profile p2p_forced --tag test002 --duration 180` |
| 4 | Both clients: `/switchconnect 1` |
| 5 | 1v1 — heavy movement + combos 3 min |

**Expected logs**

```
[PVP] ConnectionMode=P2P
```

LanBug check enabled (`bLanBugOutCheck=True`); kicks disabled (`SetLanBugOutJustLog=True`)

**Expected capture**

- Higher `p2p_packet_count` vs TEST 001 under same LAN
- Higher `packets_per_second` during combo spam

**Known unknowns**

- LanBug runtime `[PVP][LANBUG]` lines depend on native server events during match

---

## TEST 003 — Intentional host disconnect

| Step | Action |
|------|--------|
| 1 | `python scripts/apply-pvp-profile.py lan_tournament` |
| 2 | `python scripts/pvp-log-watch.py --session test003` |
| 3 | Start 1v1; identify P2P host (lower ping / room host) |
| 4 | Kill host client process mid-match |
| 5 | Observe guest for 2 min |

**Expected logs**

```
[PVP][DISCONNECT]  (from AbnormalDisconnectLog if server records room)
```

`RoomManager:SetZUTickTime(120)` on lan_tournament — stale room cleanup faster than default 300s

**Expected capture**

- Packet flow stops after disconnect timestamp
- Marker: `python scripts/pvp-netcode-capture.py marker --session captures/<dir> --note host_disconnect`

**Known unknowns**

- Host migration on disconnect vs room teardown: **UNKNOWN**
- `[PVP][HOST_MIGRATION]` only if native host-change log line appears

---

## TEST 004 — WiFi latency injection

| Step | Action |
|------|--------|
| 1 | Profile: `default` or `lan_tournament` |
| 2 | Add 100–200ms latency on one peer (OS QoS, clumsy, or router) |
| 3 | `python scripts/pvp-log-watch.py` + 5 min 1v1 |
| 4 | Optional: `lan_tournament` uses `SetCheckChangeHostTime(120)` — watch for migration after 2 min |

**Expected logs**

- Possible `[PVP][LANBUG]` if sync packet gaps exceed `fLanBugOutCheckTermMin` (1.0s) — **best-effort mapping**
- Possible `[PVP][HOST_MIGRATION]` if ping score exceeds `SetMaxPingScore`

**Expected capture**

- Lower `packets_per_second` on throttled peer direction (asymmetric flows)

**Known unknowns**

- Exact ping score calculation in GameServer.exe
- LanBug runtime log format not present in offline log corpus

---

## TEST 005 — Relay fallback transition

| Step | Action |
|------|--------|
| 1 | `python scripts/apply-pvp-profile.py default` (auto mode) |
| 2 | Capture: `session --profile default --tag test005 --duration 240` |
| 3 | Client A: `/switchconnect 0` (default) |
| 4 | Block UDP 8765 on one peer briefly (firewall rule), then remove |
| 5 | Continue match 2 min |

**Expected behavior**

- Default profile: `UdpRelayChecker` off, `TRWorkerThreadCount=6`
- Capture may show shift in flow patterns when P2P blocked — **verify empirically**

**Known unknowns**

- Auto fallback heuristic inside `x2.exe` — not in repo
- Cannot assert relay cutover time without packet capture diff

---

## Quick validation (no game client)

```bat
python scripts\apply-pvp-profile.py lan_tournament
python scripts\pvp-log-watch.py --once
type Elsword\GameServer\log\pvp-profile-startup.log
type Elsword\offline\client-pvp-hint.txt
```

Fail-closed check:

```bat
python scripts\apply-pvp-profile.py not_a_profile
echo should exit 1
```
