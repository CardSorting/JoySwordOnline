# lan_tournament — PvP runtime profile

LAN/local tournament: observability on, faster host evaluation, relay health logging.

## Diff from default

| Setting | default | lan_tournament | Rationale |
|---------|---------|----------------|-----------|
| `bLanBugOutCheck` | False | **True** | Detect sync-packet timing gaps; `SetLanBugOutJustLog(True)` prevents kicks |
| `bLanBugOutVerify` | False | **True** | Log repeated suspicious timing |
| `SetCheckChangeHostTime` | 180 | **120** | Evaluate host every 2 min instead of 3 |
| `SetMaxPingScore` | 5000 | **4000** | Slightly stricter migration threshold |
| `SetBattleFieldCheckChangeHostTime` | 180 | **120** | Battlefield PvP host checks align with tournament cadence |
| `UdpRelayChecker` on | false | **true** | Log relay health on :26424 |
| `TRWorkerThreadCount` | 6 | **8** | More relay worker capacity for multi-match LAN |
| `RoomManager:SetZUTickTime` | 300 | **120** | Faster stale-room cleanup after disconnect |

## Client

`SwitchConnect_LUA(0)` — default. On LAN, P2P usually succeeds; relay remains available.

## Expected logs

- `[PVP][PROFILE]` at apply + GameServer startup (native `KGameSysVal::SetLanBugOutCheckOption_Lua` with `m_bLanBugOutCheck : true`)
- `[PVP][LANBUG]` via `scripts/pvp-log-watch.py` when native LanBug lines appear
- `[PVP][HOST_MIGRATION]` when native host-change lines appear (format mapped by log watcher)
