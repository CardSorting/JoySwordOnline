// Opaque session + IP rate-limit persistence (PostgreSQL). Recovered queries.
import { db } from './db/postgres.js';
import { config } from './config.js';
import { sha256, hashIp } from './crypto.js';

// Create a 30-day session; store only the token digest. Also opportunistically
// purges expired sessions.
export async function createSession(token, userId, ip, userAgent) {
  await db().query(
    `WITH expired AS (
       DELETE FROM web_sessions WHERE expires_at <= NOW()
     )
     INSERT INTO web_sessions(token_hash, user_id, expires_at, ip_hash, user_agent)
     VALUES ($1, $2, NOW() + ($3 * INTERVAL '1 second'), $4, $5)`,
    [sha256(token), userId, config.session.ttlSeconds, hashIp(ip), String(userAgent || '').slice(0, 400)]
  );
}

// Resolve the current user from a session token, refreshing last_seen_at.
export async function resolveSession(token) {
  if (!token) return null;
  const res = await db().query(
    `UPDATE web_sessions
     SET last_seen_at = NOW()
     WHERE token_hash = $1 AND expires_at > NOW()
     RETURNING user_id`,
    [sha256(token)]
  );
  return res.rows[0]?.user_id ?? null;
}

export async function destroySession(token) {
  if (!token) return;
  await db().query('DELETE FROM web_sessions WHERE token_hash = $1', [sha256(token)]);
}

// Sliding-window IP rate limit. Throws HttpError(429) when the window is exceeded.
export async function enforceRateLimit(scope, ip, maxAttempts, windowMinutes) {
  const scopeKey = sha256(`${scope}:${hashIp(ip)}`);
  const res = await db().query(
    `INSERT INTO auth_rate_limits(scope_key, attempts, window_started_at)
     VALUES ($1, 1, NOW())
     ON CONFLICT (scope_key) DO UPDATE SET
       attempts = CASE
         WHEN auth_rate_limits.window_started_at < NOW() - ($2 * INTERVAL '1 minute')
         THEN 1 ELSE auth_rate_limits.attempts + 1 END,
       window_started_at = CASE
         WHEN auth_rate_limits.window_started_at < NOW() - ($2 * INTERVAL '1 minute')
         THEN NOW() ELSE auth_rate_limits.window_started_at END,
       updated_at = NOW()
     RETURNING attempts`,
    [scopeKey, windowMinutes]
  );
  const attempts = res.rows[0]?.attempts ?? 1;
  if (attempts > maxAttempts) {
    const err = new Error('Too many attempts. Please wait and try again.');
    err.status = 429;
    throw err;
  }
}
