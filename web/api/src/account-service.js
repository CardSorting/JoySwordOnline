// Account lifecycle: registration (PG identity + idempotent MSSQL provisioning),
// login, logout, and coordinated password change. Recovered from the original
// portal's register/login flow.
import { withTx } from './db/postgres.js';
import * as users from './users.js';
import { provisionGameAccount, syncGamePassword } from './game-account.js';
import {
  normalizeEmail,
  validateEmail,
  validatePassword,
  deriveLegacyUserId,
  HttpError,
} from './validation.js';
import {
  hashPassword,
  verifyPassword,
  newUuid,
  generateSessionToken,
} from './crypto.js';
import { createSession, destroySession } from './sessions.js';

// Register (or resume a failed registration for the same email+password).
export async function registerUser({ email, password, ip, userAgent }) {
  const normEmail = normalizeEmail(email);
  validateEmail(normEmail);
  validatePassword(password);

  const existing = await users.findByEmail(normEmail);
  let user;

  if (existing) {
    // An active account, or a wrong password on a pending/failed one, is a conflict.
    if (existing.syncStatus === 'active' || !(await verifyPassword(existing.passwordHash, password))) {
      throw new HttpError('An account already exists for this email.', 409);
    }
    // Same credentials on a pending/failed account: resume provisioning.
    user = existing;
  } else {
    const id = newUuid();
    const passwordHash = await hashPassword(password);
    const legacyUserId = deriveLegacyUserId(normEmail, id);
    try {
      user = await withTx((client) =>
        users.createPending(client, { id, email: normEmail, passwordHash, legacyUserId })
      );
    } catch (err) {
      if (err.code === '23505') {
        // unique_violation on email or legacy_user_id
        throw new HttpError('An account already exists for this email.', 409);
      }
      throw err;
    }
  }

  await users.recordSyncEvent(user.id, 'provision', 'started');
  try {
    const userUid = await provisionGameAccount({
      userId: user.legacyUserId,
      password,
      userName: user.legacyUserId,
    });
    await users.markActive(user.id, userUid);
    await users.recordSyncEvent(user.id, 'provision', 'succeeded');
    user.legacyUserUid = userUid;
    user.syncStatus = 'active';
  } catch (err) {
    const detail = err instanceof Error ? err.message : 'Game account provisioning failed.';
    console.error('Game account provisioning failed.', err);
    await users.markSyncFailed(user.id, detail);
    await users.recordSyncEvent(user.id, 'provision', 'failed', detail);
    throw new HttpError('Game account provisioning failed. Please try again.', 503);
  }

  // Establish a session so registration flows straight into a signed-in state.
  const token = generateSessionToken();
  await createSession(token, user.id, ip, userAgent);
  await users.touchLastLogin(user.id);
  return { user, token };
}

export async function loginUser({ email, password, ip, userAgent }) {
  const normEmail = normalizeEmail(email);
  const user = await users.findByEmail(normEmail);
  // Uniform failure to avoid account enumeration.
  if (!user || !(await verifyPassword(user.passwordHash, password))) {
    throw new HttpError('Incorrect email or password.', 401);
  }
  // A never-synced account can be repaired on login (idempotent provisioning).
  if (user.syncStatus !== 'active') {
    try {
      const userUid = await provisionGameAccount({
        userId: user.legacyUserId,
        password,
        userName: user.legacyUserId,
      });
      await users.markActive(user.id, userUid);
      await users.recordSyncEvent(user.id, 'provision', 'succeeded');
      user.legacyUserUid = userUid;
      user.syncStatus = 'active';
      user.syncError = null;
    } catch (err) {
      // Non-fatal for login; surface via sync_status. Log for the operator.
      console.error('Login-time reprovision failed.', err);
    }
  }
  const token = generateSessionToken();
  await createSession(token, user.id, ip, userAgent);
  await users.touchLastLogin(user.id);
  return { user, token };
}

export async function logoutUser(token) {
  await destroySession(token);
}

// Change password with current-password reauthentication, coordinated across
// PostgreSQL and the three MSSQL stores. If MSSQL fails, PG is rolled back.
export async function changePassword({ userId, currentPassword, newPassword }) {
  validatePassword(newPassword);
  const user = await users.findById(userId);
  if (!user) throw new HttpError('Account not found.', 404);
  if (!(await verifyPassword(user.passwordHash, currentPassword))) {
    throw new HttpError('Current password is incorrect.', 403);
  }
  const newHash = await hashPassword(newPassword);
  try {
    await withTx(async (client) => {
      await users.updatePasswordHash(client, user.id, newHash);
      await syncGamePassword({ userId: user.legacyUserId, password: newPassword });
    });
    await users.recordSyncEvent(user.id, 'password_change', 'succeeded');
  } catch (err) {
    const detail = err instanceof Error ? err.message : 'Password synchronization failed.';
    console.error('Coordinated password change failed.', err);
    await users.recordSyncEvent(user.id, 'password_change', 'failed', detail);
    throw new HttpError('Password could not be updated on both systems.', 503);
  }
}
