// Minimal HTTP helpers over Node's built-in http (no framework dependency).
import { config } from './config.js';

export function clientIp(req) {
  const xff = req.headers['x-forwarded-for'];
  if (xff) return String(xff).split(',')[0].trim();
  return req.socket?.remoteAddress || 'unknown';
}

export async function readJson(req, maxBytes = 64 * 1024) {
  return new Promise((resolve, reject) => {
    let size = 0;
    const chunks = [];
    req.on('data', (c) => {
      size += c.length;
      if (size > maxBytes) {
        reject(Object.assign(new Error('Request body too large.'), { status: 413 }));
        req.destroy();
        return;
      }
      chunks.push(c);
    });
    req.on('end', () => {
      if (!chunks.length) return resolve({});
      try {
        resolve(JSON.parse(Buffer.concat(chunks).toString('utf8')));
      } catch {
        reject(Object.assign(new Error('Invalid JSON body.'), { status: 400 }));
      }
    });
    req.on('error', reject);
  });
}

function corsOrigin(req) {
  const origin = req.headers.origin;
  if (!origin) return null;
  if (config.allowedOrigins.includes(origin)) return origin;
  return null;
}

export function applyCors(req, res) {
  const origin = corsOrigin(req);
  if (origin) {
    res.setHeader('Access-Control-Allow-Origin', origin);
    res.setHeader('Vary', 'Origin');
    res.setHeader('Access-Control-Allow-Credentials', 'true');
    res.setHeader('Access-Control-Allow-Methods', 'GET,POST,OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  }
}

// Same-origin / allowed-origin enforcement for mutating requests (CSRF guard).
export function enforceAllowedOrigin(req) {
  // No configured allowlist (local dev) => allow.
  if (config.allowedOrigins.length === 0) return;
  const origin = req.headers.origin;
  if (origin && config.allowedOrigins.includes(origin)) return;
  throw Object.assign(new Error('Cross-origin request rejected.'), { status: 403 });
}

export function sendJson(res, status, body, headers = {}) {
  const payload = JSON.stringify(body);
  res.writeHead(status, {
    'Content-Type': 'application/json; charset=utf-8',
    'Cache-Control': 'no-store',
    ...headers,
  });
  res.end(payload);
}

export function setSessionCookie(res, token) {
  const secure = config.siteUrl.startsWith('https');
  res.setHeader('Set-Cookie', [
    `${config.session.cookieName}=${token}; HttpOnly; Path=/; Max-Age=${config.session.ttlSeconds}; SameSite=Lax${secure ? '; Secure' : ''}`,
  ]);
}

export function clearSessionCookie(res) {
  const secure = config.siteUrl.startsWith('https');
  res.setHeader('Set-Cookie', [
    `${config.session.cookieName}=; HttpOnly; Path=/; Max-Age=0; SameSite=Lax${secure ? '; Secure' : ''}`,
  ]);
}

export function readCookie(req, name) {
  const raw = req.headers.cookie;
  if (!raw) return null;
  for (const part of raw.split(';')) {
    const idx = part.indexOf('=');
    if (idx === -1) continue;
    if (part.slice(0, idx).trim() === name) return part.slice(idx + 1).trim();
  }
  return null;
}

export function errorResponse(err, fallback = 'Request failed.') {
  const status = Number(err?.status) || 500;
  const message = status >= 500 ? fallback : err?.message || fallback;
  if (status >= 500) console.error('Unhandled API error:', err);
  return { status, message };
}
