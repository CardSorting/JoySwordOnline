// Password hashing and opaque-token / IP hashing helpers.
//
// Password hashing uses Node's built-in scrypt (OWASP-recommended, no native
// dependency — so the service deploys cleanly to any platform, including the
// Linux App Service, with zero build step). Hashes are self-describing:
//   scrypt$N$r$p$<saltB64>$<hashB64>
import crypto from 'node:crypto';
import { config } from './config.js';

const SCRYPT = { N: 16384, r: 8, p: 1, keylen: 32 };

export function hashPassword(password) {
  return new Promise((resolve, reject) => {
    const salt = crypto.randomBytes(16);
    crypto.scrypt(password, salt, SCRYPT.keylen, { N: SCRYPT.N, r: SCRYPT.r, p: SCRYPT.p }, (err, dk) => {
      if (err) return reject(err);
      resolve(`scrypt$${SCRYPT.N}$${SCRYPT.r}$${SCRYPT.p}$${salt.toString('base64')}$${dk.toString('base64')}`);
    });
  });
}

export function verifyPassword(stored, password) {
  return new Promise((resolve) => {
    try {
      const [scheme, N, r, p, saltB64, hashB64] = String(stored).split('$');
      if (scheme !== 'scrypt') return resolve(false);
      const salt = Buffer.from(saltB64, 'base64');
      const expected = Buffer.from(hashB64, 'base64');
      crypto.scrypt(
        password,
        salt,
        expected.length,
        { N: Number(N), r: Number(r), p: Number(p) },
        (err, dk) => {
          if (err) return resolve(false);
          resolve(dk.length === expected.length && crypto.timingSafeEqual(dk, expected));
        }
      );
    } catch {
      resolve(false);
    }
  });
}

// 32-byte URL-safe opaque session token; only its SHA-256 digest is stored.
export function generateSessionToken() {
  return crypto.randomBytes(32).toString('base64url');
}

export function sha256(value) {
  return crypto.createHash('sha256').update(value).digest('hex');
}

// Keyed hash of a client IP so raw addresses are never persisted.
export function hashIp(ip) {
  return crypto
    .createHmac('sha256', config.rateLimitSecret)
    .update(String(ip || 'unknown'))
    .digest('hex');
}

export function newUuid() {
  return crypto.randomUUID();
}
