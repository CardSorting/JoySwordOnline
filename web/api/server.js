// JoySword account API server. Endpoints mirror the original portal contract:
//   GET  /api/health
//   POST /api/auth/register    { email, password }
//   POST /api/auth/login       { email, password }
//   POST /api/auth/logout
//   POST /api/auth/password    { currentPassword, newPassword }  (auth required)
//   GET  /api/account          (auth required)
//   GET  /api/account/economy  (auth required)
//   POST /api/account/economy/claim { type: 'starter' | 'daily' } (auth required)
//
// Runs behind the Azure Linux App Service (VNet-integrated) so it can reach the
// game VM's SQL over 1433. The Cloudflare-hosted SPA calls it cross-origin at
// api.onjoysword.top; WEB_ALLOWED_ORIGINS gates that.
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { config, assertProductionConfig } from './src/config.js';
import {
  clientIp,
  readJson,
  applyCors,
  enforceAllowedOrigin,
  sendJson,
  setSessionCookie,
  clearSessionCookie,
  readCookie,
  errorResponse,
} from './src/http.js';
import { enforceRateLimit, resolveSession } from './src/sessions.js';
import {
  registerUser,
  loginUser,
  logoutUser,
  changePassword,
} from './src/account-service.js';
import * as users from './src/users.js';
import { serializeUser } from './src/users.js';
import { db } from './src/db/postgres.js';
import { getCashAllowance, claimCashAllowance } from './src/cash-allowance.js';

const staticRoot = path.resolve(
  process.env.STATIC_ROOT || path.join(path.dirname(fileURLToPath(import.meta.url)), 'public')
);

const contentTypes = new Map([
  ['.avif', 'image/avif'],
  ['.css', 'text/css; charset=utf-8'],
  ['.gif', 'image/gif'],
  ['.html', 'text/html; charset=utf-8'],
  ['.ico', 'image/x-icon'],
  ['.jpeg', 'image/jpeg'],
  ['.jpg', 'image/jpeg'],
  ['.js', 'text/javascript; charset=utf-8'],
  ['.json', 'application/json; charset=utf-8'],
  ['.map', 'application/json; charset=utf-8'],
  ['.png', 'image/png'],
  ['.svg', 'image/svg+xml'],
  ['.txt', 'text/plain; charset=utf-8'],
  ['.webmanifest', 'application/manifest+json; charset=utf-8'],
  ['.webp', 'image/webp'],
  ['.woff', 'font/woff'],
  ['.woff2', 'font/woff2'],
  ['.xml', 'application/xml; charset=utf-8'],
  ['.zip', 'application/zip'],
]);

function safeStaticFile(urlPath) {
  let decoded;
  try {
    decoded = decodeURIComponent(urlPath);
  } catch {
    return null;
  }
  const relative = decoded.replace(/^\/+/, '').replaceAll('\\', '/');
  if (relative.split('/').includes('..')) return null;

  const requested = path.resolve(staticRoot, relative);
  if (requested !== staticRoot && !requested.startsWith(`${staticRoot}${path.sep}`)) return null;
  const candidates = [requested, path.join(requested, 'index.html'), path.join(staticRoot, 'index.html')];
  return candidates.find((candidate) => {
    try {
      return fs.statSync(candidate).isFile();
    } catch {
      return false;
    }
  }) ?? null;
}

function serveStatic(req, res, pathname) {
  if (!['GET', 'HEAD'].includes(req.method) || !fs.existsSync(staticRoot)) return false;
  const file = safeStaticFile(pathname);
  if (!file) return false;
  const ext = path.extname(file).toLowerCase();
  const hashedAsset = pathname.startsWith('/assets/') && /-[A-Za-z0-9_-]{6,}\./.test(path.basename(file));
  res.writeHead(200, {
    'Content-Type': contentTypes.get(ext) || 'application/octet-stream',
    'Content-Length': fs.statSync(file).size,
    'Cache-Control': hashedAsset ? 'public, max-age=31536000, immutable' : 'no-cache',
    'X-Content-Type-Options': 'nosniff',
    'Referrer-Policy': 'strict-origin-when-cross-origin',
  });
  if (req.method === 'HEAD') res.end();
  else fs.createReadStream(file).pipe(res);
  return true;
}

async function requireUser(req) {
  const token = readCookie(req, config.session.cookieName);
  const userId = await resolveSession(token);
  if (!userId) throw Object.assign(new Error('Authentication required.'), { status: 401 });
  const user = await users.findById(userId);
  if (!user) throw Object.assign(new Error('Authentication required.'), { status: 401 });
  return user;
}

const routes = {
  'GET /api/health': async (_req, res) => {
    // Liveness + PG connectivity (health_check_path in web.tf).
    await db().query('SELECT 1');
    sendJson(res, 200, { status: 'ok' });
  },

  'POST /api/auth/register': async (req, res) => {
    enforceAllowedOrigin(req);
    const ip = clientIp(req);
    await enforceRateLimit('register', ip, 5, 15);
    const body = await readJson(req);
    const { user, token } = await registerUser({
      email: body.email ?? '',
      password: body.password ?? '',
      ip,
      userAgent: req.headers['user-agent'],
    });
    setSessionCookie(res, token);
    sendJson(res, 201, { user: serializeUser(user) });
  },

  'POST /api/auth/login': async (req, res) => {
    enforceAllowedOrigin(req);
    const ip = clientIp(req);
    await enforceRateLimit('login', ip, 10, 15);
    const body = await readJson(req);
    const { user, token } = await loginUser({
      email: body.email ?? '',
      password: body.password ?? '',
      ip,
      userAgent: req.headers['user-agent'],
    });
    setSessionCookie(res, token);
    sendJson(res, 200, { user: serializeUser(user) });
  },

  'POST /api/auth/logout': async (req, res) => {
    enforceAllowedOrigin(req);
    await logoutUser(readCookie(req, config.session.cookieName));
    clearSessionCookie(res);
    sendJson(res, 200, { ok: true });
  },

  'POST /api/auth/password': async (req, res) => {
    enforceAllowedOrigin(req);
    const user = await requireUser(req);
    const ip = clientIp(req);
    await enforceRateLimit('password', ip, 5, 15);
    const body = await readJson(req);
    await changePassword({
      userId: user.id,
      currentPassword: body.currentPassword ?? '',
      newPassword: body.newPassword ?? '',
    });
    sendJson(res, 200, { ok: true });
  },

  'GET /api/account': async (req, res) => {
    const user = await requireUser(req);
    sendJson(res, 200, { user: serializeUser(user) });
  },

  'GET /api/account/economy': async (req, res) => {
    const user = await requireUser(req);
    const allowance = await getCashAllowance(user);
    sendJson(res, 200, { allowance });
  },

  'POST /api/account/economy/claim': async (req, res) => {
    enforceAllowedOrigin(req);
    const user = await requireUser(req);
    await enforceRateLimit('cash-claim', clientIp(req), 20, 15);
    const body = await readJson(req);
    const result = await claimCashAllowance(user, body.type);
    sendJson(res, 200, result);
  },
};

const server = http.createServer(async (req, res) => {
  applyCors(req, res);
  if (req.method === 'OPTIONS') {
    res.writeHead(204);
    res.end();
    return;
  }
  const url = new URL(req.url, `http://${req.headers.host || 'localhost'}`);
  const key = `${req.method} ${url.pathname}`;
  const handler = routes[key];
  if (!handler) {
    if (!url.pathname.startsWith('/api/') && serveStatic(req, res, url.pathname)) return;
    sendJson(res, 404, { error: 'Not found.' });
    return;
  }
  try {
    await handler(req, res);
  } catch (err) {
    const { status, message } = errorResponse(err, 'Request failed.');
    if (!res.headersSent) sendJson(res, status, { error: message });
  }
});

assertProductionConfig();
server.listen(config.port, () => {
  console.log(`JoySword account API listening on :${config.port}`);
});

function shutdown(signal) {
  console.log(`Received ${signal}, shutting down.`);
  server.close(() => process.exit(0));
  setTimeout(() => process.exit(0), 5000).unref();
}
process.on('SIGTERM', () => shutdown('SIGTERM'));
process.on('SIGINT', () => shutdown('SIGINT'));
