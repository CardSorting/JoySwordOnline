# relay_forced — PvP runtime profile

Forces relay-path testing. **Client must run `/switchconnect 2` after entering a match.**

## Diff from default

| Setting | default | relay_forced |
|---------|---------|--------------|
| `bLanBugOutCheck` | False | **True** |
| `bLanBugOutVerify` | False | **True** |
| `UdpRelayChecker` on | false | **true** + print_log |
| `TRWorkerThreadCount` | 6 | **8** |
| Client `SwitchConnect_LUA` | 0 | **2** |

## Validation

Packet capture on UDP :8765 vs :26424 — relay_forced should show sustained traffic patterns distinct from p2p_forced. Compare `captures/session-*/summary.md` `p2p_packet_ratio`.

## Expected log

```
[PVP]
ConnectionMode=RelayForced
```

Emitted by `pvp-log-watch.py` at session start from profile metadata (server cannot read client SwitchConnect state directly).
