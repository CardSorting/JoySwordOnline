// PostgreSQL connection pool. Owns web identities, Argon2id password hashes,
// opaque sessions, IP rate limits, and account-sync audit events.
import pg from 'pg';
import { config } from '../config.js';

let pool = null;

export function db() {
  if (!pool) {
    pool = new pg.Pool({
      connectionString: config.postgres.connectionString,
      max: config.postgres.poolMax,
      idleTimeoutMillis: 30_000,
      connectionTimeoutMillis: 10_000,
      ssl: config.postgres.ssl ? { rejectUnauthorized: true } : undefined,
    });
    pool.on('error', (err) => {
      console.error('Unexpected PostgreSQL pool error', err);
    });
  }
  return pool;
}

// Run a callback inside a BEGIN/COMMIT transaction; ROLLBACK on throw.
export async function withTx(fn) {
  const client = await db().connect();
  try {
    await client.query('BEGIN');
    const result = await fn(client);
    await client.query('COMMIT');
    return result;
  } catch (err) {
    await client.query('ROLLBACK');
    throw err;
  } finally {
    client.release();
  }
}

export async function closeDb() {
  if (pool) {
    await pool.end();
    pool = null;
  }
}
