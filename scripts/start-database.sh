#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if [[ -f "$ROOT/Elsword/offline/offline.env" ]]; then
  # shellcheck disable=SC1091
  source <(grep -E '^[A-Z_]+=' "$ROOT/Elsword/offline/offline.env" | sed 's/\r$//')
fi

export MSSQL_SA_PASSWORD="${DB_PASSWORD:-JoySword!Offline123}"
export MSSQL_PORT="${DB_PORT:-1433}"

echo "Starting SQL Server (Docker) on port ${MSSQL_PORT}..."
docker compose up -d mssql

echo "Waiting for SQL Server to become healthy..."
for _ in $(seq 1 60); do
  if docker compose exec -T mssql bash -c '
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -C -Q "SELECT 1" >/dev/null 2>&1 ||
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -Q "SELECT 1" >/dev/null 2>&1
  '; then
    echo "SQL Server is ready."
    exit 0
  fi
  sleep 2
done

echo "SQL Server did not become ready in time." >&2
exit 1
