-- JoySword web account portal schema (PostgreSQL).
-- Owns web identities, scrypt password hashes, opaque sessions, IP rate
-- limits, and account-sync audit events. The game account rows live in MSSQL
-- (Account/ES_BILLING/Game01) and are provisioned idempotently at registration.
--
-- Note: UUIDs are generated in the application (crypto.randomUUID()), so no
-- uuid-ossp / pgcrypto extension is required — the id columns are plain UUID
-- with no DB-side default. (Azure PostgreSQL Flexible Server allow-lists
-- extensions, so we avoid depending on one.)

-- Web identities. sync_status tracks whether the MSSQL game account has been
-- provisioned: 'pending' (row created, MSSQL not yet synced), 'active' (synced),
-- 'failed' (provisioning failed; safe to retry — provisioning is idempotent).
CREATE TABLE IF NOT EXISTS web_users (
  id              UUID PRIMARY KEY,
  email           TEXT NOT NULL UNIQUE,
  password_hash   TEXT NOT NULL,
  legacy_user_id  TEXT NOT NULL,               -- derived game UserID (<= 10 chars)
  legacy_user_uid BIGINT,                       -- MSSQL Account.dbo.MUser.UserUID once synced
  sync_status     TEXT NOT NULL DEFAULT 'pending',
  sync_error      TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  synced_at       TIMESTAMPTZ,
  last_login_at   TIMESTAMPTZ
);

CREATE UNIQUE INDEX IF NOT EXISTS web_users_legacy_user_id_key ON web_users (legacy_user_id);

-- Opaque 30-day sessions. Only a SHA-256 digest of the token is stored; the raw
-- token lives only in the browser's HttpOnly cookie.
CREATE TABLE IF NOT EXISTS web_sessions (
  token_hash   TEXT PRIMARY KEY,
  user_id      UUID NOT NULL REFERENCES web_users(id) ON DELETE CASCADE,
  expires_at   TIMESTAMPTZ NOT NULL,
  ip_hash      TEXT,
  user_agent   TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS web_sessions_user_id_idx ON web_sessions (user_id);
CREATE INDEX IF NOT EXISTS web_sessions_expires_at_idx ON web_sessions (expires_at);

-- Database-backed IP rate limiting keyed on a hashed (scope + ip) value so raw
-- client addresses are never persisted.
CREATE TABLE IF NOT EXISTS auth_rate_limits (
  scope_key         TEXT PRIMARY KEY,
  attempts          INT NOT NULL DEFAULT 0,
  window_started_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Append-only audit trail of MSSQL provisioning / password-sync events.
CREATE TABLE IF NOT EXISTS account_sync_events (
  id         BIGSERIAL PRIMARY KEY,
  user_id    UUID NOT NULL REFERENCES web_users(id) ON DELETE CASCADE,
  event_type TEXT NOT NULL,     -- 'provision' | 'password_change'
  status     TEXT NOT NULL,     -- 'started' | 'succeeded' | 'failed'
  detail     TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS account_sync_events_user_id_idx ON account_sync_events (user_id);
