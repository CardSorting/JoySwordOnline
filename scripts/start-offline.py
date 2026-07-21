#!/usr/bin/env python3
"""Start the local JoySword Elsword server stack with preflight checks."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import socket
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ELSWORD = ROOT / "Elsword"
ENV_FILE = ELSWORD / "offline" / "offline.env"
ENV_EXAMPLE = ELSWORD / "offline" / "offline.env.example"
PID_FILE = ELSWORD / "offline" / "server-pids.json"
DB_HEALTHCHECK = ROOT / "scripts" / "db-healthcheck.py"
ENHANCEMENT_INTEGRITY_SQL = ROOT / "database" / "enforce-enhancement-integrity.sql"
ENHANCEMENT_VALIDATOR = ROOT / "scripts" / "validate-enhancement-probabilities.py"
ENHANCEMENT_RUNTIME_TABLE = ELSWORD / "GameServer" / "EnchantTable.lua"
ENHANCEMENT_RECEIPT = ELSWORD / "offline" / "enhancement-validation.json"
ENHANCEMENT_CANARY = ROOT / "scripts" / "enhancement-runtime-canary.py"
PVP_MATCHMAKING_VALIDATOR = ROOT / "scripts" / "validate-pvp-matchmaking.py"
PVP_MATCHMAKING_PATCHER = ROOT / "scripts" / "patch-globalserver-solo-pvp.py"

if str(ROOT / "scripts") not in sys.path:
    sys.path.insert(0, str(ROOT / "scripts"))
from deploy_excludes import is_runtime_artifact  # noqa: E402


@dataclass(frozen=True)
class ServerSpec:
    name: str
    directory: str
    executable: str
    port_env: str | None
    default_port: int | None
    delay_env: str | None = None
    default_delay: int = 3
    secondary_port: int | None = None


SERVERS: tuple[ServerSpec, ...] = (
    ServerSpec("CenterServer", "CenterServer", "CenterServer.exe", "CENTER_SERVER_PORT", 9100, "START_DELAY_SECONDS", 5, None),
    ServerSpec("ChannelServer", "ChannelServer", "ChannelServer.exe", "CHANNEL_SERVER_PORT", 9400, None, 3, 9401),
    ServerSpec("GlobalServer", "GlobalServer", "GlobalServer.exe", "GLOBAL_SERVER_PORT", 9500, None, 3, None),
    ServerSpec("LoginServer", "LoginServer", "LoginServer.exe", "LOGIN_SERVER_PORT", 9200, "START_DELAY_SECONDS", 5, 9201),
    ServerSpec("GameServer", "GameServer", "GameServer.exe", "GAME_SERVER_PORT", 9300, None, 0, 9301),
)

DEFAULTS = {
    "SERVER_PROFILE": "US_SERVICE",
    "DB_HOST": "127.0.0.1",
    "DB_PORT": "1433",
    "START_DELAY_SECONDS": "5",
    "SERVER_STARTUP_TIMEOUT_SECONDS": "20",
    "SERVER_READINESS_TIMEOUT_SECONDS": "12",
    "SERVER_READINESS_MODE": "warn",
    "JOY_SWORD_LOG_BUDGET_MIB": "50",
}


def load_env() -> dict[str, str]:
    path = ENV_FILE if ENV_FILE.exists() else ENV_EXAMPLE
    values = dict(DEFAULTS)
    if not path.exists():
        return values

    for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        values[key.strip()] = value.strip()
    return values


def env_int(env: dict[str, str], key: str, default: int, minimum: int = 0) -> int:
    value = env.get(key, str(default)).strip()
    try:
        parsed = int(value)
    except ValueError:
        raise SystemExit(f"Invalid integer for {key}: {value}") from None
    if parsed < minimum:
        raise SystemExit(f"{key} must be >= {minimum}, got {parsed}")
    return parsed


def env_bool(env: dict[str, str], key: str, default: bool = False) -> bool:
    value = env.get(key, "1" if default else "0").strip().lower()
    if value in {"1", "true", "yes", "on"}:
        return True
    if value in {"0", "false", "no", "off"}:
        return False
    raise SystemExit(f"Invalid boolean for {key}: {value}")


def tcp_open(host: str, port: int, timeout: float = 0.75) -> bool:
    try:
        with socket.create_connection((host, port), timeout=timeout):
            return True
    except OSError:
        return False


def validate_files() -> list[str]:
    issues: list[str] = []
    for spec in SERVERS:
        exe_path = ELSWORD / spec.directory / spec.executable
        if not exe_path.exists():
            issues.append(f"Missing {exe_path}")
    return issues


def server_ports(env: dict[str, str]) -> list[tuple[str, int]]:
    ports: list[tuple[str, int]] = []
    for spec in SERVERS:
        if spec.port_env is None or spec.default_port is None:
            continue
        port = env_int(env, spec.port_env, spec.default_port)
        ports.append((spec.name, port))
    return ports


def fail_with_issues(issues: list[str]) -> None:
    if not issues:
        return
    print("Preflight failed:")
    for issue in issues:
        print(f"  - {issue}")
    raise SystemExit(1)


def runtime_artifact_bytes() -> int:
    total = 0
    for path in ELSWORD.rglob("*"):
        if not path.is_file():
            continue
        rel = str(path.relative_to(ROOT)).replace("\\", "/")
        if rel.startswith("Elsword/") and is_runtime_artifact(rel):
            total += path.stat().st_size
    return total


def guard_log_budget(env: dict[str, str]) -> None:
    budget_mib = env_int(env, "JOY_SWORD_LOG_BUDGET_MIB", 50, minimum=1)
    used = runtime_artifact_bytes()
    if used <= budget_mib * 1024 * 1024:
        return
    script = ROOT / "scripts" / "prune-runtime-artifacts.py"
    if not script.exists():
        print(
            f"Warning: Elsword runtime artifacts exceed {budget_mib} MiB; "
            f"run scripts\\prune-runtime-artifacts.py"
        )
        return
    print(f"Elsword runtime artifacts exceeded {budget_mib} MiB; pruning logs/statistics...")
    subprocess.run([sys.executable, str(script)], cwd=str(ROOT), check=False)


def check_runtime(args: argparse.Namespace, env: dict[str, str]) -> None:
    guard_log_budget(env)
    issues = validate_files()

    if not args.skip_db_check:
        try:
            result = subprocess.run(
                [sys.executable, str(DB_HEALTHCHECK), "--quiet", "--allow-tcp-only", "--timeout", "30"],
                cwd=ROOT,
                capture_output=True,
                text=True,
                timeout=35,
            )
        except subprocess.TimeoutExpired:
            issues.append("Database healthcheck timed out; run scripts\\db-healthcheck.py for details")
        except OSError as exc:
            issues.append(f"Could not run database healthcheck: {exc}")
        else:
            if result.returncode != 0:
                detail = (result.stderr or result.stdout).strip()
                issues.append(detail or "Database healthcheck failed")

    if not args.skip_port_checks:
        bind_ip = "127.0.0.1"
        for name, port in server_ports(env):
            if tcp_open(bind_ip, port, timeout=0.25):
                message = f"{name} port {port} is already in use on {bind_ip}"
                if args.allow_existing_ports:
                    print(f"Warning: {message}")
                else:
                    issues.append(f"{message}; run Elsword\\Stop-Offline.bat before starting again")

    fail_with_issues(issues)





def wait_for_processes(processes: dict[str, subprocess.Popen[bytes]], seconds: int) -> None:
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        for name, process in processes.items():
            code = process.poll()
            if code is not None:
                raise RuntimeError(f"{name} exited during startup with code {code}")
        time.sleep(0.5)


def stop_started_processes(processes: dict[str, subprocess.Popen[bytes]]) -> None:
    for name, process in processes.items():
        if process.poll() is None:
            print(f"Stopping {name} after failed startup...")
            process.terminate()


def readiness_mode(env: dict[str, str]) -> str:
    mode = env.get("SERVER_READINESS_MODE", "warn").strip().lower()
    if mode not in {"warn", "strict", "off"}:
        raise SystemExit(f"SERVER_READINESS_MODE must be warn, strict, or off; got {mode}")
    return mode


def wait_for_readiness(
    spec: ServerSpec,
    env: dict[str, str],
    processes: dict[str, subprocess.Popen[bytes]],
    timeout: int,
) -> None:
    mode = readiness_mode(env)
    if mode == "off" or spec.port_env is None or spec.default_port is None:
        return

    bind_ip = "127.0.0.1"

    port = env_int(env, spec.port_env, spec.default_port)
    deadline = time.monotonic() + timeout
    next_status = time.monotonic() + 5
    print(f"Waiting for {spec.name} on {bind_ip}:{port}...")

    while time.monotonic() < deadline:
        for name, process in processes.items():
            code = process.poll()
            if code is not None:
                raise RuntimeError(f"{name} exited during startup with code {code}")
        if tcp_open(bind_ip, port, timeout=0.25):
            print(f"{spec.name} is accepting connections on port {port}.")
            return
        now = time.monotonic()
        if now >= next_status:
            remaining = max(0, int(deadline - now))
            print(f"  still waiting for {spec.name} ({remaining}s left)...")
            next_status = now + 5
        time.sleep(0.5)

    message = f"{spec.name} did not open {bind_ip}:{port} within {timeout} seconds"
    if mode == "strict":
        raise RuntimeError(message)
    print(f"Warning: {message}; continuing because SERVER_READINESS_MODE=warn.")


def apply_pvp_profile(env: dict[str, str]) -> None:
    profile = os.environ.get("JOYSWORD_PVP_PROFILE") or env.get("JOYSWORD_PVP_PROFILE", "default")
    script = ROOT / "scripts" / "apply-pvp-profile.py"
    if not script.exists():
        raise SystemExit(f"Missing PvP profile script: {script}")
    print(f"Applying PvP profile: {profile}")
    result = subprocess.run(
        [sys.executable, str(script), profile],
        cwd=str(ROOT),
        check=False,
    )
    if result.returncode != 0:
        raise SystemExit(f"PvP profile apply failed (exit {result.returncode}): {profile}")


def process_creation_flags(headless: bool) -> int:
    if not headless or os.name != "nt":
        return getattr(subprocess, "CREATE_NEW_CONSOLE", 0)
    flags = 0
    if hasattr(subprocess, "CREATE_NO_WINDOW"):
        flags |= subprocess.CREATE_NO_WINDOW
    if hasattr(subprocess, "DETACHED_PROCESS"):
        flags |= subprocess.DETACHED_PROCESS
    return flags


def get_process_rss(pid: int) -> int | None:
    if os.name != "nt":
        return None
    try:
        import ctypes
        from ctypes import wintypes

        PROCESS_QUERY_INFORMATION = 0x0400
        PROCESS_VM_READ = 0x0010

        class PROCESS_MEMORY_COUNTERS(ctypes.Structure):
            _fields_ = [
                ("cb", wintypes.DWORD),
                ("PageFaultCount", wintypes.DWORD),
                ("PeakWorkingSetSize", ctypes.c_size_t),
                ("WorkingSetSize", ctypes.c_size_t),
                ("QuotaPeakPagedPoolUsage", ctypes.c_size_t),
                ("QuotaPagedPoolUsage", ctypes.c_size_t),
                ("QuotaPeakNonPagedPoolUsage", ctypes.c_size_t),
                ("QuotaNonPagedPoolUsage", ctypes.c_size_t),
                ("PagefileUsage", ctypes.c_size_t),
                ("PeakPagefileUsage", ctypes.c_size_t),
            ]

        handle = ctypes.windll.kernel32.OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, False, pid)
        if not handle:
            return None
        try:
            counters = PROCESS_MEMORY_COUNTERS()
            counters.cb = ctypes.sizeof(PROCESS_MEMORY_COUNTERS)
            if ctypes.windll.psapi.GetProcessMemoryInfo(handle, ctypes.byref(counters), counters.cb):
                return int(counters.WorkingSetSize)
        finally:
            ctypes.windll.kernel32.CloseHandle(handle)
    except Exception:
        pass
    return None


def send_webhook_alert(env: dict[str, str], title: str, description: str, color: int = 15158332) -> None:
    url = os.environ.get("JOY_SWORD_ALERT_WEBHOOK_URL") or env.get("JOY_SWORD_ALERT_WEBHOOK_URL", "").strip()
    if not url:
        return
    try:
        import urllib.request
        payload = {
            "content": f"**[JoySword SRE Alert]** {title}",
            "embeds": [
                {
                    "title": title,
                    "description": description,
                    "color": color,
                    "timestamp": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
                }
            ],
        }
        data = json.dumps(payload).encode("utf-8")
        req = urllib.request.Request(url, data=data, headers={"Content-Type": "application/json", "User-Agent": "JoySword-SRE/1.0"})
        with urllib.request.urlopen(req, timeout=3.0):
            pass
    except Exception:
        pass


def record_crash_diagnostic(
    spec: ServerSpec,
    exit_code: int | None,
    uptime_seconds: float,
    rss_bytes: int | None,
    reason: str,
    env: dict[str, str] | None = None,
) -> Path:
    crash_dir = ELSWORD / "offline" / "crashes"
    crash_dir.mkdir(parents=True, exist_ok=True)
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    path = crash_dir / f"{spec.name}_{timestamp}.json"

    hex_code = f"0x{exit_code & 0xFFFFFFFF:08X}" if exit_code is not None else "N/A"
    code_desc = (
        "C0000005 (Access Violation)"
        if hex_code == "0xC0000005"
        else ("C00000FD (Stack Overflow)" if hex_code == "0xC00000FD" else f"Exit code {exit_code}")
    )

    payload = {
        "timestamp": time.strftime("%Y-%m-%d %H:%M:%S"),
        "server": spec.name,
        "executable": spec.executable,
        "exit_code": exit_code,
        "hex_exit_code": hex_code,
        "description": code_desc,
        "reason": reason,
        "uptime_seconds": round(uptime_seconds, 2),
        "rss_bytes": rss_bytes,
        "rss_mib": round(rss_bytes / (1024 * 1024), 2) if rss_bytes else None,
    }
    path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")

    if env:
        send_webhook_alert(
            env,
            f"Process Stopped: {spec.name}",
            f"Reason: {reason}\nExit code: {hex_code} ({code_desc})\nUptime: {round(uptime_seconds, 1)}s",
        )

    crash_files = sorted(crash_dir.glob("*.json"), key=lambda p: p.stat().st_mtime)
    while len(crash_files) > 20:
        crash_files.pop(0).unlink(missing_ok=True)
    return path


def write_stack_status_telemetry(
    processes: dict[str, subprocess.Popen[bytes]],
    start_times: dict[str, float],
    env: dict[str, str],
) -> None:
    telemetry_path = ELSWORD / "offline" / "stack-status.json"
    bind_ip = "127.0.0.1"
    now = time.monotonic()
    server_reports: dict[str, dict[str, object]] = {}
    healthy_count = 0
    total_count = len(SERVERS)

    for spec in SERVERS:
        process = processes.get(spec.name)
        pid = process.pid if process else None
        code = process.poll() if process else -1
        is_running = process is not None and code is None
        rss = get_process_rss(pid) if (is_running and pid) else None

        primary_port = env_int(env, spec.port_env, spec.default_port) if spec.port_env and spec.default_port else None
        primary_open = tcp_open(bind_ip, primary_port, timeout=0.2) if primary_port and is_running else False
        secondary_open = tcp_open(bind_ip, spec.secondary_port, timeout=0.2) if spec.secondary_port and is_running else None

        uptime = round(now - start_times.get(spec.name, now), 1) if is_running else 0.0
        if is_running and (primary_port is None or primary_open):
            healthy_count += 1

        server_reports[spec.name] = {
            "pid": pid,
            "status": "RUNNING" if is_running else (f"STOPPED (exit {code})" if process else "NOT_STARTED"),
            "primary_port": primary_port,
            "primary_open": primary_open,
            "secondary_port": spec.secondary_port,
            "secondary_open": secondary_open,
            "rss_bytes": rss,
            "rss_mib": round(rss / (1024 * 1024), 1) if rss else None,
            "uptime_seconds": uptime,
        }

    health_score = int((healthy_count / total_count) * 100) if total_count > 0 else 0
    payload = {
        "updated_at": time.strftime("%Y-%m-%d %H:%M:%S"),
        "health_score": health_score,
        "status": "HEALTHY" if health_score == 100 else ("DEGRADED" if health_score > 0 else "UNHEALTHY"),
        "profile": env.get("SERVER_PROFILE", "US_SERVICE"),
        "servers": server_reports,
    }
    telemetry_path.parent.mkdir(parents=True, exist_ok=True)
    telemetry_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")


class RestartTracker:
    def __init__(self, window_seconds: float = 180.0, max_restarts: int = 5) -> None:
        self.window_seconds = window_seconds
        self.max_restarts = max_restarts
        self.history: dict[str, list[float]] = {}
        self.unresponsive_since: dict[str, float] = {}

    def record_restart(self, name: str) -> float:
        now = time.monotonic()
        timestamps = [t for t in self.history.get(name, []) if now - t <= self.window_seconds]
        timestamps.append(now)
        self.history[name] = timestamps
        if len(timestamps) > self.max_restarts:
            raise RuntimeError(
                f"CRITICAL: {name} has crashed {len(timestamps)} times within {int(self.window_seconds)} seconds. "
                "Halting supervisor to prevent crash flapping and process storms."
            )
        count = len(timestamps)
        backoff = min(60.0, 2.0 ** min(count, 6))
        return backoff

    def check_liveness(self, spec: ServerSpec, env: dict[str, str], process: subprocess.Popen[bytes]) -> bool:
        if spec.port_env is None or spec.default_port is None:
            return True
        port = env_int(env, spec.port_env, spec.default_port)
        bind_ip = "127.0.0.1"
        is_open = tcp_open(bind_ip, port, timeout=0.3)
        now = time.monotonic()
        if is_open:
            self.unresponsive_since.pop(spec.name, None)
            # Monitor 32-bit memory limit (1.5 GB working set threshold)
            rss = get_process_rss(process.pid)
            if rss and rss > 1500 * 1024 * 1024:
                print(
                    f"Warning: {spec.name} (PID {process.pid}) RAM usage is {rss / (1024 * 1024):.1f} MiB; "
                    "approaching 32-bit Virtual Memory limit!"
                )
            return True
        first_unresponsive = self.unresponsive_since.setdefault(spec.name, now)
        duration = now - first_unresponsive
        if duration >= 30.0:
            print(f"Warning: {spec.name} (PID {process.pid}) port {port} has been unresponsive for {duration:.1f}s.")
            return False
        return True


def supervise_processes(
    processes: dict[str, subprocess.Popen[bytes]],
    env: dict[str, str],
    profile: str,
    enhancement_hash: str,
) -> None:
    print("Supervisor mode enabled; monitoring server processes.")
    tracker = RestartTracker(window_seconds=180.0, max_restarts=5)
    start_times: dict[str, float] = {name: time.monotonic() for name in processes}
    last_log_prune = time.monotonic()
    last_telemetry = time.monotonic()

    while True:
        current_hash = hashlib.sha256(ENHANCEMENT_RUNTIME_TABLE.read_bytes()).hexdigest()
        if current_hash != enhancement_hash:
            print(
                "CRITICAL: enhancement runtime table changed after validation; "
                "stopping the server stack and refusing traffic."
            )
            stop_started_processes(processes)
            raise SystemExit(78)

        now = time.monotonic()
        if now - last_log_prune >= 60.0:
            guard_log_budget(env)
            last_log_prune = now

        if now - last_telemetry >= 5.0:
            write_stack_status_telemetry(processes, start_times, env)
            last_telemetry = now

        for spec in SERVERS:
            process = processes.get(spec.name)
            if process is None:
                continue

            code = process.poll()
            is_deadlocked = False
            if code is None:
                if not tracker.check_liveness(spec, env, process):
                    is_deadlocked = True
                    print(f"Terminating deadlocked process {spec.name} (PID {process.pid})...")
                    process.terminate()
                    try:
                        code = process.wait(timeout=3)
                    except subprocess.TimeoutExpired:
                        process.kill()
                        code = process.wait()

            if code is not None or is_deadlocked:
                reason = "deadlock / socket failure" if is_deadlocked else f"exit code {code}"
                uptime = now - start_times.get(spec.name, now)
                rss = get_process_rss(process.pid) if process else None
                crash_log = record_crash_diagnostic(spec, code, uptime, rss, reason)
                print(f"Warning: {spec.name} stopped ({reason}); crash diagnostic written to {crash_log.name}")

                try:
                    delay = tracker.record_restart(spec.name)
                except RuntimeError as exc:
                    print(str(exc))
                    stop_started_processes(processes)
                    raise SystemExit(79) from exc

                print(f"Restarting {spec.name} in {delay:.1f}s...")
                time.sleep(delay)
                server_dir = ELSWORD / spec.directory
                exe_path = server_dir / spec.executable
                new_proc = subprocess.Popen(
                    [str(exe_path), profile, "0"],
                    cwd=str(server_dir),
                    creationflags=process_creation_flags(headless=True),
                )
                processes[spec.name] = new_proc
                start_times[spec.name] = time.monotonic()

        time.sleep(2)



def apply_gameserver_patches() -> None:
    patches = (
        "patch-gameserver-unit-class-limit.py",
        "patch-gameserver-max-level-scroll.py",
    )
    for name in patches:
        script = ROOT / "scripts" / name
        if not script.exists():
            continue
        print(f"Applying GameServer patch: {name}")
        result = subprocess.run(
            [sys.executable, str(script)],
            cwd=str(ROOT),
            check=False,
        )
        if result.returncode != 0:
            raise SystemExit(f"GameServer patch failed (exit {result.returncode}): {name}")


def enforce_enhancement_integrity(force: bool = False) -> None:
    """Repair invalid enhancement rows and install the legacy 0..20 boundary."""
    if not ENHANCEMENT_INTEGRITY_SQL.exists():
        raise SystemExit(f"Missing enhancement integrity migration: {ENHANCEMENT_INTEGRITY_SQL}")

    cache_script = ROOT / "scripts" / "db-patch-cache.py"
    if not force and cache_script.exists():
        cache_check = subprocess.run([sys.executable, str(cache_script), "--check"], capture_output=True)
        if cache_check.returncode == 0:
            print("DB patch receipt valid (SHA-256 match); skipping redundant SQL migration.")
            return

    print("Enforcing equipment enhancement integrity (legacy 0..20 range)...")
    result = subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts" / "run_sql_file.py"),
            str(ENHANCEMENT_INTEGRITY_SQL),
        ],
        cwd=str(ROOT),
        check=False,
    )
    if result.returncode != 0:
        raise SystemExit(
            "Enhancement integrity migration failed; refusing to start GameServer "
            "with potentially invalid equipped-item combat stats."
        )


def validate_enhancement_probabilities() -> None:
    """Refuse startup when an authoritative probability row is malformed."""
    if not ENHANCEMENT_VALIDATOR.exists():
        raise SystemExit(f"Missing enhancement table validator: {ENHANCEMENT_VALIDATOR}")
    print("Validating server-authoritative enhancement probability tables...")
    result = subprocess.run(
        [
            sys.executable,
            str(ENHANCEMENT_VALIDATOR),
            "--check-only",
            "--receipt",
            str(ENHANCEMENT_RECEIPT),
        ],
        cwd=str(ROOT),
        check=False,
    )
    if result.returncode != 0:
        raise SystemExit("Enhancement probability validation failed; refusing to start GameServer.")


def validate_pvp_matchmaking() -> None:
    """Refuse startup when the solo queue or fallback NPC pool is malformed."""
    if not PVP_MATCHMAKING_VALIDATOR.exists():
        raise SystemExit(f"Missing PvP matchmaking validator: {PVP_MATCHMAKING_VALIDATOR}")
    print("Validating solo PvP matchmaking and fallback NPCs...")
    result = subprocess.run(
        [sys.executable, str(PVP_MATCHMAKING_VALIDATOR)],
        cwd=str(ROOT),
        check=False,
    )
    if result.returncode != 0:
        raise SystemExit("PvP matchmaking validation failed; refusing to start the server stack.")


def apply_globalserver_pvp_patch(*, dry_run: bool = False) -> None:
    """Make the native GlobalServer solo gate agree with the Lua queue policy."""
    if not PVP_MATCHMAKING_PATCHER.exists():
        raise SystemExit(f"Missing PvP matchmaking patcher: {PVP_MATCHMAKING_PATCHER}")
    action = "Validating" if dry_run else "Applying"
    print(f"{action} native solo PvP matchmaking patch...")
    command = [sys.executable, str(PVP_MATCHMAKING_PATCHER)]
    if dry_run:
        command.append("--dry-run")
    result = subprocess.run(command, cwd=str(ROOT), check=False)
    if result.returncode != 0:
        raise SystemExit(
            "GlobalServer solo PvP patch failed; refusing to start with a dead solo queue."
        )


def launch_stack(
    env: dict[str, str],
    *,
    headless: bool = False,
    supervise: bool = False,
    force_db_patch: bool = False,
) -> dict[str, int]:
    if os.name != "nt":
        raise SystemExit("The Elsword server binaries are Windows .exe files. Run this launcher on Windows.")

    creationflags = process_creation_flags(headless)
    profile = env.get("SERVER_PROFILE", "US_SERVICE")
    startup_timeout = env_int(env, "SERVER_STARTUP_TIMEOUT_SECONDS", 20, minimum=1)
    readiness_timeout = env_int(env, "SERVER_READINESS_TIMEOUT_SECONDS", 12, minimum=1)
    mode = readiness_mode(env)
    processes: dict[str, subprocess.Popen[bytes]] = {}
    started_at = time.strftime("%Y-%m-%d %H:%M:%S")

    print("============================================")
    print(" JoySword Offline - Elsword Server Stack")
    print(f" Profile: {profile}")
    pvp_profile = os.environ.get("JOYSWORD_PVP_PROFILE") or env.get("JOYSWORD_PVP_PROFILE", "default")
    print(f" PvP profile: {pvp_profile}")
    print(f" Readiness: {mode} ({readiness_timeout}s)")
    print("============================================")
    print()

    configure_script = ROOT / "scripts" / "configure-offline.py"
    if configure_script.exists():
        print("Applying runtime configuration...")
        result = subprocess.run(
            [sys.executable, str(configure_script)],
            cwd=str(ROOT),
            check=False,
        )
        if result.returncode != 0:
            raise SystemExit(f"Runtime configure failed (exit {result.returncode})")
    else:
        apply_pvp_profile(env)

    validate_pvp_matchmaking()
    apply_globalserver_pvp_patch()
    validate_enhancement_probabilities()
    validated_enhancement_hash = hashlib.sha256(ENHANCEMENT_RUNTIME_TABLE.read_bytes()).hexdigest()
    enforce_enhancement_integrity(force=force_db_patch)
    apply_gameserver_patches()

    try:
        for spec in SERVERS:
            server_dir = ELSWORD / spec.directory
            exe_path = server_dir / spec.executable
            delay = env_int(env, spec.delay_env, spec.default_delay) if spec.delay_env else spec.default_delay

            print(f"Starting {spec.name}...")
            process = subprocess.Popen(
                [str(exe_path), profile, "0"],
                cwd=str(server_dir),
                creationflags=creationflags,
            )
            processes[spec.name] = process

            if mode == "off" and delay:
                wait_for_processes(processes, min(delay, startup_timeout))
            elif mode != "off":
                wait_for_readiness(spec, env, processes, min(readiness_timeout, startup_timeout))

        wait_for_processes(processes, min(3, startup_timeout))
        if hashlib.sha256(ENHANCEMENT_RUNTIME_TABLE.read_bytes()).hexdigest() != validated_enhancement_hash:
            raise RuntimeError("enhancement runtime table changed while GameServer was starting")
        canary = subprocess.run(
            [
                sys.executable,
                str(ENHANCEMENT_CANARY),
                "--pid",
                str(processes["GameServer"].pid),
            ],
            cwd=str(ROOT),
            check=False,
        )
        if canary.returncode != 0:
            raise RuntimeError("live enhancement runtime canary failed")
    except Exception:
        stop_started_processes(processes)
        raise

    payload = {
        "started_at": started_at,
        "profile": profile,
        "supervisor_pid": os.getpid() if supervise else None,
        "processes": {name: process.pid for name, process in processes.items()},
        "enhancement_table_sha256": validated_enhancement_hash,
        "enhancement_validation_receipt": str(ENHANCEMENT_RECEIPT),
    }
    PID_FILE.parent.mkdir(parents=True, exist_ok=True)
    PID_FILE.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")

    print()
    print("All offline servers launched.")
    print(f"PID file: {PID_FILE}")
    print(f"Enhancement table SHA-256: {validated_enhancement_hash}")
    print(f"Enhancement validation receipt: {ENHANCEMENT_RECEIPT}")
    if supervise:
        supervise_processes(processes, env, profile, validated_enhancement_hash)
    elif headless:
        print("Headless mode: processes run without console windows.")
    else:
        print("Use Elsword\\Stop-Offline.bat to stop the stack.")
    return payload["processes"]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true", help="validate configuration without starting server processes")
    parser.add_argument("--skip-db-check", action="store_true", help="do not require SQL Server to be accepting TCP connections")
    parser.add_argument("--skip-port-checks", action="store_true", help="do not check whether game stack ports are already bound")
    parser.add_argument("--allow-existing-ports", action="store_true", help="warn instead of failing when server ports are already bound")
    parser.add_argument("--headless", action="store_true", help="start servers without opening console windows (container mode)")
    parser.add_argument("--supervise", action="store_true", help="restart crashed server processes (implies --headless)")
    parser.add_argument("--force-db-patch", action="store_true", help="bypass SHA-256 DB patch cache and re-execute all SQL migrations")
    args = parser.parse_args()
    if args.supervise:
        args.headless = True

    env = load_env()
    if os.name != "nt" and not args.dry_run:
        print("The Elsword server binaries are Windows .exe files. Run this launcher on Windows.")
        return 2

    if args.dry_run:
        args.skip_db_check = True
        args.skip_port_checks = True



    check_runtime(args, env)

    if args.dry_run:
        validate_pvp_matchmaking()
        apply_globalserver_pvp_patch(dry_run=True)
        validate_enhancement_probabilities()
        print("Offline server startup preflight passed.")
        print(f"Profile: {env.get('SERVER_PROFILE', 'US_SERVICE')}")
        print(f"Readiness: {readiness_mode(env)} ({env_int(env, 'SERVER_READINESS_TIMEOUT_SECONDS', 12, minimum=1)}s)")
        for name, port in server_ports(env):
            print(f"{name}: port {port}")
        return 0

    try:
        launch_stack(env, headless=args.headless, supervise=args.supervise, force_db_patch=args.force_db_patch)
    except (OSError, RuntimeError) as exc:
        print(f"Startup failed: {exc}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
