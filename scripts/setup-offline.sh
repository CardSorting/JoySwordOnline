#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

ENV_FILE="$ROOT/Elsword/offline/offline.env"
ENV_EXAMPLE="$ROOT/Elsword/offline/offline.env.example"

if [[ ! -f "$ENV_FILE" ]]; then
  cp "$ENV_EXAMPLE" "$ENV_FILE"
  echo "Created $ENV_FILE from example."
fi

echo "==> Applying offline configuration"
python3 "$ROOT/scripts/configure-offline.py"

if command -v docker >/dev/null 2>&1; then
  echo "==> Starting SQL Server"
  "$ROOT/scripts/start-database.sh"
  echo "==> Restoring databases"
  python3 "$ROOT/scripts/restore_db_tcp.py"

  if [[ -f "$ENV_FILE" ]]; then
    # shellcheck disable=SC1091
    source <(grep -E '^[A-Z_]+=' "$ENV_FILE" | sed 's/\r$//')
  fi

  LOGIN_MODE="${LOGIN_MODE:-PUBLIC}"
  export MSSQL_SA_PASSWORD="${DB_PASSWORD:-JoySword!Offline123}"
  export ADMIN_USER="${ADMIN_USER:-admin}"
  export ADMIN_PASSWORD="${ADMIN_PASSWORD:-admin}"
  export ADMIN_STARTING_CASH="${ADMIN_STARTING_CASH:-2000000000}"

  run_sql_file() {
    local sql_file="$1"
    docker compose exec -T -e MSSQL_SA_PASSWORD mssql bash -c '
      if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
        CMD=/opt/mssql-tools18/bin/sqlcmd
        EXTRA=(-C)
      else
        CMD=/opt/mssql-tools/bin/sqlcmd
        EXTRA=()
      fi
      "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" -i "$1"
    ' bash "$sql_file"
  }

  LOGIN_MODE_NORMALIZED="$(printf '%s' "$LOGIN_MODE" | tr '[:lower:]' '[:upper:]')"
  echo "==> Applying login mode: ${LOGIN_MODE_NORMALIZED}"
  case "$LOGIN_MODE_NORMALIZED" in
    PUBLIC)
      docker compose exec -T -e MSSQL_SA_PASSWORD -e ADMIN_USER -e ADMIN_PASSWORD -e ADMIN_STARTING_CASH mssql bash -c '
        if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
          CMD=/opt/mssql-tools18/bin/sqlcmd
          EXTRA=(-C)
        else
          CMD=/opt/mssql-tools/bin/sqlcmd
          EXTRA=()
        fi
        "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" \
          -v ADMIN_USER="$ADMIN_USER" ADMIN_PASSWORD="$ADMIN_PASSWORD" ADMIN_STARTING_CASH="$ADMIN_STARTING_CASH" \
          -i /backups/setup-public-users.sql
      '
      ;;
    SINGLE_ADMIN)
      echo "Refactoring login system (single-admin development mode)..."
      run_sql_file /backups/refactor-login.sql
      ;;
    *)
      echo "Unsupported LOGIN_MODE: ${LOGIN_MODE}. Use PUBLIC or SINGLE_ADMIN." >&2
      exit 1
      ;;
  esac


  echo "==> Installing character creation database fixes"
  python3 "$ROOT/scripts/install-creation-fixes.py"

  echo "==> Installing daily Cash allowance"
  python3 "$ROOT/scripts/install-cash-allowance.py"

  echo "==> Installing Cash Shop credit sync and deduction fixes"
  run_sql_file /backups/fix-cashshop-billing-transactions.sql
  run_sql_file /backups/fix-cash-deduction.sql
  run_sql_file /backups/fix-credit-sync.sql
  echo "==> Disabling unsafe class-change mailbox rewards"
  run_sql_file /backups/disable-class-change-mail-rewards.sql


  echo "==> Restoring rare Ice Burner costume sets"
  python3 "$ROOT/scripts/restore-iceburner-sets.py"

  echo "==> Restoring Cash Shop items"
  python3 "$ROOT/scripts/restore-cashshop.py"




  echo "==> Checking database health"
  python3 "$ROOT/scripts/db-healthcheck.py"
else
  echo "Docker not found - skipped database setup."
  echo "Install Docker and run ./scripts/start-database.sh && ./scripts/restore-databases.sh"
fi

echo "==> Verifying offline settings"
if python3 "$ROOT/scripts/verify-offline.py"; then
  echo
  echo "Offline setup complete."
  echo "On Windows, launch: Elsword\\Start-Offline.bat"
else
  echo
  echo "Setup finished with warnings - review verify-offline output above."
fi
