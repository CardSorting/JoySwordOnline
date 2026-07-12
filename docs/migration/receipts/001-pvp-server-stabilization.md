# Receipt 001 — PvP Server Stabilization Pass

**Date:** 2026-06-26  
**Scope:** Server/Lua observability only. No `x2.exe` changes.

---

## Changed files

| File | Change |
|------|--------|
| `config/pvp/default/profile.json` | Baseline profile definition |
| `config/pvp/lan_tournament/profile.json` | Tournament profile |
| `config/pvp/relay_forced/profile.json` | Relay test profile |
| `config/pvp/p2p_forced/profile.json` | P2P test profile |
| `config/pvp/*/README.md` | Per-profile diffs + rationale |
| `scripts/apply-pvp-profile.py` | Profile applier (fail-closed) |
| `scripts/pvp-log-watch.py` | Structured `[PVP][*]` log emitter |
| `scripts/pvp-netcode-capture.py` | Session capture + CSV + summary |
| `scripts/start-pvp-session.bat` | One-command diagnostic session |
| `scripts/configure-offline.py` | Calls profile applier after configure |
| `scripts/start-offline.py` | Applies profile before server launch |
| `Elsword/5GameServer.bat` | Applies profile before GameServer start |
| `Elsword/1CenterServer.bat` | Applies profile before CenterServer start |
| `Elsword/offline/offline.env.example` | `JOYSWORD_PVP_PROFILE=default` |
| `docs/PVP_TEST_MATRIX.md` | TEST 001–005 procedures |

**Runtime-patched on apply** (example: `lan_tournament`):

- `Elsword/ServerResource/GameSysValTable.lua`
- `Elsword/Resources/GameSysValTable.lua`
- `Elsword/ServerResource/UdpRelayCheckerConfig.lua`
- `Elsword/Resources/UdpRelayCheckerConfig.lua`
- `Elsword/GameServer/config_gs_<SERVER_PROFILE>.lua`
- `Elsword/CenterServer/config_cn_<SERVER_PROFILE>.lua`

---

## Exact value changes (`lan_tournament` vs `default`)

| Setting | default | lan_tournament |
|---------|---------|----------------|
| `bLanBugOutCheck` | False | **True** |
| `bLanBugOutVerify` | False | **True** |
| `SetLanBugOutJustLog` | True | True (no kick) |
| `SetCheckChangeHostTime` | 180 | **120** |
| `SetMaxPingScore` | 5000 | **4000** |
| `SetHostCheckTerm` | 3.0 | 3.0 |
| `SetBattleFieldCheckChangeHostTime` | (not in original lua) | **120** (new API call) |
| `UdpRelayChecker` on | false | **true** |
| `UdpRelayChecker` print_log | false | **true** |
| `TRWorkerThreadCount` | 6 | **8** |
| `RoomManager:SetZUTickTime` | 300 | **120** |

`relay_forced` / `p2p_forced`: see `config/pvp/*/profile.json` and README.

---

## Implemented logs

**At profile apply** (`Elsword/GameServer/log/pvp-profile-startup.log`):

```
[PVP][PROFILE] name=lan_tournament
[PVP][PROFILE] applied_utc=...
[PVP][PROFILE] connection_mode=Default
  bLanBugOutCheck=True
  SetCheckChangeHostTime=120
  ...
```

**At watch session start** (`pvp-diagnostics.log`):

```
[PVP][SESSION] id=<tag> profile=<name>
[PVP] ConnectionMode=Default|RelayForced|P2P
```

**Runtime (when native server emits matching lines):**

```
[PVP][LANBUG]
Room=...
Peer=...
GapMs=...
Mode=...

[PVP][HOST_MIGRATION]
OldHost=...
NewHost=...
Reason=PingScoreExceeded
...

[PVP][DISCONNECT]
Room=...
Peer=...
Reason=AbnormalDisconnect
```

---

## Tested scenarios (this pass)

| Test | Result |
|------|--------|
| `python scripts/apply-pvp-profile.py lan_tournament` | **PASS** — 6 files patched, startup log written |
| `python scripts/apply-pvp-profile.py not_a_profile` | **PASS** — exit 1, fail-closed |
| `python scripts/pvp-log-watch.py --once` | **PASS** — session + profile lines, no config-dump spam |
| Live PvP match + packet capture | **NOT RUN** — requires 2 clients + Npcap |
| LanBug runtime `[PVP][LANBUG]` during match | **NOT OBSERVED** — no runtime LanBug corpus in repo logs |
| Host migration `[PVP][HOST_MIGRATION]` | **NOT OBSERVED** — requires live match >2 min with ping skew |

---

## Unresolved blockers

1. **Client connection mode** — `SwitchConnect_LUA` is client-only; server logs *expected* mode from profile, not actual peer path.
2. **LanBug runtime log format** — GameServer.exe does not ship documented runtime strings in this repo; watcher uses strict heuristics.
3. **Host migration native logs** — Only `SetCheckChangeHostTime_LUA` config lines found in historical logs, not live migration events.
4. **Packet semantics** — Capture records sizes/timing only; no opcode/field claims.
5. **GameServer.exe** — Cannot add `--pvp-profile` flag; profile applied via Python before process start.

---

## How to use

```bat
set JOYSWORD_PVP_PROFILE=lan_tournament
python scripts\configure-offline.py
Elsword\Start-Offline.bat
```

Or:

```bat
scripts\start-pvp-session.bat relay_forced test001 300
```

See `docs/PVP_TEST_MATRIX.md` for full procedures.

---

## Not claimed

- Rollback netcode
- Deterministic combat
- Modernized sync layer
- Anti-cheat solved
- Combat feel changes
