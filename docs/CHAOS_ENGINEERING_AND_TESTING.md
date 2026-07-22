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

### 4. Cube System Integrity & Crash Prevention Validator
* **Script**: [cube-integrity.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/cube-integrity.py)
* **Test Suite**: [test_cube_integrity.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/tests/test_cube_integrity.py)
* **Playbook**: [CUBE_INTEGRITY_AND_CRASH_PREVENTION.md](CUBE_INTEGRITY_AND_CRASH_PREVENTION.md)
* **Strategy**: Audits random drop groups (`RandomItem.lua`), package configurations (`PackageItemData.lua`), and shop listings (Echo/Ariel). Hardens `validate_state_contract` to enforce zero null groups, valid scalar rewards (`group_id == 0`), non-recursive packages, and byte-for-byte `.kom` read-back verification in `data036.kom`.
* **Usage**:
  ```powershell
  python scripts\cube-integrity.py --repair
  python -m unittest tests\test_cube_integrity.py
  ```
