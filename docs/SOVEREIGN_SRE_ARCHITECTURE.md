# Sovereign SRE Architecture & Supervisor Strategy Guide

## Overview

The **JoySword Elsword Offline** SRE architecture provides enterprise-grade self-healing, process monitoring, zero-downtime recovery, and real-time observability for legacy Windows game server executables (`CenterServer.exe`, `LoginServer.exe`, `GlobalServer.exe`, `GameServer.exe`, `ChannelServer.exe`).

---

## Architecture Diagram

```mermaid
flowchart TD
    subgraph Supervisor ["Supervised Process Manager (start-offline.py)"]
        Tracker[Exponential Backoff & 5-Restart Circuit Breaker]
        Liveness[Dual TCP Liveness Probe (Ports 9100-9500)]
        RAMWatchdog[32-Bit RAM Working Set Guard (1.5 GB Limit)]
    end

    subgraph CrashHandler ["Diagnostic & Alert Pipeline"]
        CrashJSON[JSON Crash Dump Generator (offline/crashes/)]
        WebhookAlert[Discord / Slack Webhook Alert Dispatcher]
    end

    subgraph MasterTool ["Sovereign SRE Guard (sovereign-guard.py)"]
        Audit[--audit: 4-Layer System Check]
        Heal[--auto-heal: Orphan Releaser & Bloat Pruner]
        Status[--status: Telemetry Table Observer]
        Rollback[--rollback: Snapshot Restore Engine]
    end

    Supervisor --> CrashHandler
    MasterTool --> Supervisor
```

---

## Core SRE Strategies

### 1. Process Supervision & Exponential Backoff
* **Script**: [start-offline.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/start-offline.py)
* **Strategy**: `RestartTracker` tracks restart frequencies across rolling 3-minute windows.
  - **Backoff Delays**: Exponential backoff ($2\text{s}, 4\text{s}, 8\text{s}, 16\text{s}, 32\text{s}, 60\text{s}$).
  - **Circuit Breaker**: If a binary crashes > 5 times in 180 seconds, supervision automatically trips and halts the process tree to prevent CPU spinning or log flooding.

### 2. Dual-Socket TCP Liveness & RAM Watchdogs
* **Strategy**:
  - **TCP Liveness Probing**: Periodically probes primary server ports (9100, 9200, 9300, 9400, 9500) and secondary ports (9201, 9301, 9401). If a socket remains unresponsive for > 30 seconds, the supervisor terminates and auto-restarts the frozen binary.
  - **32-Bit RAM Watchdog**: Queries working set size (`ctypes.windll.psapi.GetProcessMemoryInfo`). If memory exceeds 1.5 GB, dispatches warnings before `0xC0000005` virtual memory exhaustion occurs.

### 3. Diagnostic JSON Crash Dumps & Webhook Alerts
* **Crash Dumps**: Written to `Elsword/offline/crashes/<server>_<timestamp>.json` with decoded NTSTATUS hex codes (e.g. `0xC0000005 Access Violation`, `0xC00000FD Stack Overflow`).
* **Webhook Alerting**: If `JOY_SWORD_ALERT_WEBHOOK_URL` is configured in `offline.env`, dispatches real-time JSON embed alerts to Discord/Slack on process failures or memory alerts.

### 4. Master Sovereign SRE Command Suite
* **Script**: [sovereign-guard.py](file:///c:/Users/media/Downloads/JoySwordOffline%20-%20Copy/scripts/sovereign-guard.py)
* **Commands**:
  - `python scripts/sovereign-guard.py --audit`: Runs 4-layer preflight audit.
  - `python scripts/sovereign-guard.py --auto-heal`: Executes automated self-healing, releases orphan ports, and prunes log bloat.
  - `python scripts/sovereign-guard.py --status`: Prints stack telemetry table.
  - `python scripts/sovereign-guard.py --rollback`: Restores previous configuration snapshot.
