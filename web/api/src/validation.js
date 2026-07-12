// Credential validation + legacy game-UserID derivation.
// Recovered from the original compiled account portal:
//  - email: standard address check
//  - password: 6-20 chars (game server stores NVARCHAR(20))
//  - legacy UserID: <email local-part, alnum, lowercased> + "_" + <first 6 of uuid>,
//    capped at 10 chars (Account.dbo.TUser.id is the narrowest legacy identifier).

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

export function normalizeEmail(email) {
  return String(email || '').trim().toLowerCase();
}

export function validateEmail(email) {
  if (!EMAIL_RE.test(normalizeEmail(email))) {
    throw new ValidationError('Enter a valid email address.');
  }
}

export function validatePassword(password) {
  const p = String(password ?? '');
  if (p.length < 6) {
    throw new ValidationError('Password must be at least 6 characters.');
  }
  if (p.length > 20) {
    throw new ValidationError('Game server passwords are limited to 20 characters.');
  }
}

// Deterministic, legacy-safe game UserID (<= 10 chars, alnum + underscore).
export function deriveLegacyUserId(email, uuid) {
  const local = (normalizeEmail(email).split('@')[0] ?? 'user')
    .replace(/[^a-z0-9]/gi, '')
    .toLowerCase() || 'user';
  const suffix = uuid.replace(/[^a-z0-9]/gi, '').slice(0, 6).toLowerCase();
  const tail = suffix ? `_${suffix}` : '';
  const headLen = 10 - tail.length;
  return `${local.slice(0, Math.max(1, headLen))}${tail}`;
}

export class ValidationError extends Error {
  constructor(message) {
    super(message);
    this.name = 'ValidationError';
    this.status = 400;
  }
}

export class HttpError extends Error {
  constructor(message, status = 400) {
    super(message);
    this.name = 'HttpError';
    this.status = status;
  }
}
