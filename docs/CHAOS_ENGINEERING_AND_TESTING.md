# Chaos Engineering & Resilience Testing Guide

## Overview

To validate that the **JoySword Elsword Offline** server stack withstands real-world environment glitches, process crashes, network latency drops, and corruption threats, the project incorporates automated Chaos Engineering fault injection testing and static analysis.

---

## Testing & Audit Suite Summary

```mermaid
flowchart TD
    subgraph Testing ["Chaos & Audit Pipeline"]
        Chaos[Chaos Engine (chaos-test.py)]
        LuaVal[Lua Pre-Compiler (validate-lua-syntax.py)]
        SyncAudit[Data Sync Auditor (audit-client-server-sync.py)]
        Preflight[Startup Preflight (start-offline.py --dry-run)]
    end

    Chaos -->|Simulates Faults| Verification[Zero-Downtime Verification]
    LuaVal -->|Pre-compiles 4287 Files| SyntaxCheck[100% Syntax Verification]
    SyncAudit -->|Audits Endpoints| SyncCheck[Client-Server Manifest Sync]
    Preflight -->|Dry-Run Validation| BootCheck[Preflight Readiness Pass]
```

---

## Tools & Testing Procedures

### 1. Chaos Engineering Fault Test Engine
* **Script**: [chaos-test.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/chaos-test.py)
* **Scenarios**:
  1. `process_crash`: Simulates sudden process termination of `ChannelServer.exe` and verifies supervisor auto-restarts it within 10s.
  2. `liveness_freeze`: Simulates socket unresponsiveness timeout.
  3. `memory_pressure`: Verifies 32-bit RAM working set watchdog limits (1.5 GB threshold).
* **Usage**:
  ```powershell
  python scripts\chaos-test.py --dry-run
  ```

### 2. Client-Server Data Sync Auditor
* **Script**: [audit-client-server-sync.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/audit-client-server-sync.py)
* **Strategy**: Cross-audits client `.kom` patched configs (`ClientScript/Major/Config*.lua`) against server Lua manifests (`config_gs_*.lua`) to ensure endpoint IP alignment before player connection.
* **Usage**:
  ```powershell
  python scripts\audit-client-server-sync.py
  ```

### 3. Lua Runtime Pre-Compiler & Sanitizer
* **Script**: [validate-lua-syntax.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/validate-lua-syntax.py)
* **Strategy**: Uses `luac` pre-compilation to parse and compile all **4,287 Lua files** in the server tree, catching syntax errors, bracket mismatches, or UTF-8 BOM corruption preflight.
* **Usage**:
  ```powershell
  python scripts\validate-lua-syntax.py
  ```
