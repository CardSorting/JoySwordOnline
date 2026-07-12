#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

if [[ -f "$ROOT/Elsword/offline/offline.env" ]]; then
  # shellcheck disable=SC1091
  source <(grep -E '^[A-Z_]+=' "$ROOT/Elsword/offline/offline.env" | sed 's/\r$//')
fi

export MSSQL_SA_PASSWORD="${DB_PASSWORD:-JoySword!Offline123}"

sqlcmd() {
  docker compose exec -T -e MSSQL_SA_PASSWORD mssql bash -c '
    CMD=""
    if [[ -x /opt/mssql-tools18/bin/sqlcmd ]]; then
      CMD=/opt/mssql-tools18/bin/sqlcmd
      EXTRA=(-C)
    else
      CMD=/opt/mssql-tools/bin/sqlcmd
      EXTRA=()
    fi
    "$CMD" -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "${EXTRA[@]}" "$@"
  ' bash "$@"
}

restore_db() {
  local backup_file="$1"
  local db_name="$2"
  local backup_path="/backups/$(basename "$backup_file")"

  echo "Restoring ${db_name} from ${backup_file}..."

  local filelist
  filelist="$(sqlcmd -h -1 -W -Q "SET NOCOUNT ON; RESTORE FILELISTONLY FROM DISK = N'${backup_path}';")"

  local names
  names=($(echo "$filelist" | awk 'NF && $1 !~ /^Logical/ { print $1 }' | head -2))
  data_logical="${names[0]:-}"
  log_logical="${names[1]:-${data_logical}_log}"

  if [[ -z "$data_logical" ]]; then
    echo "Could not read logical file names for ${db_name}" >&2
    return 1
  fi

  local data_file="/var/opt/mssql/data/${db_name}.mdf"
  local log_file="/var/opt/mssql/data/${db_name}_log.ldf"

  sqlcmd -Q "
    IF DB_ID(N'${db_name}') IS NOT NULL
    BEGIN
      ALTER DATABASE [${db_name}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE [${db_name}];
    END;
    RESTORE DATABASE [${db_name}]
      FROM DISK = N'${backup_path}'
      WITH MOVE N'${data_logical}' TO N'${data_file}',
           MOVE N'${log_logical}' TO N'${log_file}',
           REPLACE,
           RECOVERY,
           STATS = 10;
  "
}

if ! docker compose ps mssql --status running >/dev/null 2>&1; then
  echo "SQL Server container is not running. Run ./scripts/start-database.sh first." >&2
  exit 1
fi

for db in Account ES_BILLING Game01 Statistics; do
  file="$ROOT/database/${db}.bak"
  if [[ ! -f "$file" ]]; then
    echo "Missing backup: $file" >&2
    exit 1
  fi
  restore_db "$file" "$db"
done

echo "All databases restored."
