# default — PvP runtime profile

Baseline JoySword offline values. Re-applies audit-documented defaults.

## Changed files (via `apply-pvp-profile.py`)

| File | What changes |
|------|----------------|
| `Elsword/ServerResource/GameSysValTable.lua` | LanBug/host block |
| `Elsword/Resources/GameSysValTable.lua` | mirror |
| `Elsword/ServerResource/UdpRelayCheckerConfig.lua` | relay checker off |
| `Elsword/Resources/UdpRelayCheckerConfig.lua` | mirror |
| `Elsword/GameServer/config_gs_<SERVER_PROFILE>.lua` | `TRServer:TRWorkerThreadCount(6)` |
| `Elsword/CenterServer/config_cn_<SERVER_PROFILE>.lua` | `RoomManager:SetZUTickTime(300)` |

## GameSysVal (baseline)

```lua
GameSysVal:SetLanBugOutJustLog( True )  -- log only, no kick

GameSysVal:SetLanBugOutCheckOption { bLanBugOutCheck = False, ... }
GameSysVal:SetLanBugOutVerifyOption { bLanBugOutVerify = False, ... }

GameSysVal:SetCheckChangeHostTime( 180 )
GameSysVal:SetMaxPingScore( 5000 )
GameSysVal:SetHostCheckTerm( 3.0 )
GameSysVal:SetBattleFieldCheckChangeHostTime( 180 )  -- added by JoySword profile applier
```

## Client

`SwitchConnect_LUA(0)` — default auto P2P/relay selection.

## Rationale

Reference profile for A/B comparisons. LanBug remains off so behavior matches legacy offline installs.
