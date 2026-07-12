// web_users repository — PostgreSQL identity persistence and sync-state tracking.
import { db } from './db/postgres.js';

const COLS = `
  id, email, password_hash, legacy_user_id, legacy_user_uid,
  sync_status, sync_error, created_at, last_login_at
`;

function rowToUser(r) {
  if (!r) return null;
  return {
    id: r.id,
    email: r.email,
    passwordHash: r.password_hash,
    legacyUserId: r.legacy_user_id,
    legacyUserUid: r.legacy_user_uid === null ? null : Number(r.legacy_user_uid),
    syncStatus: r.sync_status,
    syncError: r.sync_error,
    createdAt: r.created_at,
    lastLoginAt: r.last_login_at,
  };
}

export async function findByEmail(email) {
  const res = await db().query(`SELECT ${COLS} FROM web_users WHERE email = $1`, [email]);
  return rowToUser(res.rows[0]);
}

export async function findById(id) {
  const res = await db().query(`SELECT ${COLS} FROM web_users WHERE id = $1`, [id]);
  return rowToUser(res.rows[0]);
}

// Insert a pending identity inside a caller-supplied transaction client.
export async function createPending(client, { id, email, passwordHash, legacyUserId }) {
  const res = await client.query(
    `INSERT INTO web_users(id, email, password_hash, legacy_user_id)
     VALUES ($1, $2, $3, $4)
     RETURNING ${COLS}`,
    [id, email, passwordHash, legacyUserId]
  );
  return rowToUser(res.rows[0]);
}

export async function markActive(id, legacyUserUid) {
  const client = await db().connect();
  try {
    await client.query('BEGIN');
    // MSSQL is authoritative for game UIDs. After a game-database restore its
    // identity sequence can reuse a UID still referenced by persistent web
    // data. Clear and flag that stale mapping before activating the account
    // whose MUser row was just verified by provisionGameAccount().
    const displaced = await client.query(
      `UPDATE web_users
       SET legacy_user_uid = NULL,
           sync_status = 'failed',
           sync_error = 'Game UID changed after a database restore; sign in to repair.',
           updated_at = NOW()
       WHERE legacy_user_uid = $2 AND id <> $1
       RETURNING id, legacy_user_id`,
      [id, legacyUserUid]
    );
    await client.query(
      `UPDATE web_users
       SET legacy_user_uid = $2, sync_status = 'active', sync_error = NULL,
           synced_at = NOW(), updated_at = NOW()
       WHERE id = $1`,
      [id, legacyUserUid]
    );
    await client.query('COMMIT');
    if (displaced.rowCount) {
      console.warn(
        `Reconciled stale web identity mapping for MSSQL UserUID ${legacyUserUid}:`,
        displaced.rows.map((row) => row.legacy_user_id).join(', ')
      );
    }
  } catch (err) {
    try {
      await client.query('ROLLBACK');
    } catch {
      // ignore rollback errors
    }
    throw err;
  } finally {
    client.release();
  }
}

export async function markSyncFailed(id, error) {
  await db().query(
    `UPDATE web_users
     SET sync_status = 'failed', sync_error = $2, updated_at = NOW()
     WHERE id = $1`,
    [id, error?.slice(0, 2000) ?? null]
  );
}

export async function updatePasswordHash(client, id, passwordHash) {
  await client.query(
    `UPDATE web_users SET password_hash = $2, updated_at = NOW() WHERE id = $1`,
    [id, passwordHash]
  );
}

export async function touchLastLogin(id) {
  await db().query(`UPDATE web_users SET last_login_at = NOW() WHERE id = $1`, [id]);
}

export async function recordSyncEvent(userId, eventType, status, detail) {
  await db().query(
    `INSERT INTO account_sync_events(user_id, event_type, status, detail)
     VALUES ($1, $2, $3, $4)`,
    [userId, eventType, status, detail?.slice(0, 2000) ?? null]
  );
}

// Public serialization — never exposes the password hash.
export function serializeUser(u) {
  return {
    id: u.id,
    email: u.email,
    legacyUserId: u.legacyUserId,
    legacyUserUid: u.legacyUserUid,
    syncStatus: u.syncStatus,
    createdAt: u.createdAt instanceof Date ? u.createdAt.toISOString() : u.createdAt,
    lastLoginAt:
      u.lastLoginAt instanceof Date ? u.lastLoginAt.toISOString() : u.lastLoginAt ?? null,
  };
}
