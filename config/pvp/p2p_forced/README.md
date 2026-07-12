# p2p_forced — PvP runtime profile

Direct P2P testing. **Client must run `/switchconnect 1` after entering a match.**

## Diff from default

| Setting | default | p2p_forced |
|---------|---------|------------|
| `bLanBugOutCheck` | False | **True** |
| `bLanBugOutVerify` | False | **True** |
| `UdpRelayChecker` | off | off (isolate direct :8765) |
| `TRWorkerThreadCount` | 6 | 6 |
| Client `SwitchConnect_LUA` | 0 | **1** |

## Validation

Packet capture should show UDP :8765 traffic between peer IPs with minimal :26424 checker traffic.

## Expected log

```
[PVP]
ConnectionMode=P2P
```

From `pvp-log-watch.py` session metadata + capture tagging.
