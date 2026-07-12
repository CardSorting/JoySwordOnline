// Configuration loaded from environment. Mirrors web/.env.example and the
// Azure App Service app_settings wired in infra/azure/web.tf.
const num = (v, d) => {
  const n = Number(v);
  return Number.isFinite(n) ? n : d;
};

const bool = (v, d = false) => {
  if (v === undefined || v === null || v === '') return d;
  return /^(1|true|yes|on)$/i.test(String(v));
};

export const config = {
  port: num(process.env.PORT, 8080),
  siteUrl: process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000',

  // Comma-separated list of allowed browser origins for CORS + same-origin
  // enforcement on mutating routes. The Cloudflare-hosted SPA origin(s) go here.
  allowedOrigins: (process.env.WEB_ALLOWED_ORIGINS || '')
    .split(',')
    .map((s) => s.trim())
    .filter(Boolean),

  postgres: {
    connectionString: process.env.POSTGRES_URL || '',
    ssl: bool(process.env.POSTGRES_SSL, false),
    poolMax: num(process.env.POSTGRES_POOL_MAX, 10),
  },

  mssql: {
    host: process.env.MSSQL_HOST || 'localhost',
    port: num(process.env.MSSQL_PORT, 1433),
    user: process.env.MSSQL_USER || 'sa',
    password: process.env.MSSQL_PASSWORD || '',
    encrypt: bool(process.env.MSSQL_ENCRYPT, false),
    trustServerCertificate: bool(process.env.MSSQL_TRUST_SERVER_CERTIFICATE, true),
    // Named instance on the game VM is localhost\SQLEXPRESS locally, but over the
    // VNet the web app connects by IP:port to the default TCP endpoint (1433).
    instanceName: process.env.MSSQL_INSTANCE || undefined,
  },

  // Starting virtual cash granted to web-created accounts (EB_Cash + VCGAVirtualCash).
  startingCash: num(process.env.JOYSWORD_STARTING_CASH, 0),

  // HMAC material for hashing client IPs in the rate-limit + session tables so
  // raw addresses are never stored. Falls back to a dev value locally.
  rateLimitSecret:
    process.env.AUTH_RATE_LIMIT_SECRET || 'dev-only-insecure-secret-change-me-32chars',

  session: {
    cookieName: 'joysword_session',
    ttlSeconds: 60 * 60 * 24 * 30, // 30 days
  },
};

export function assertProductionConfig() {
  const missing = [];
  if (!config.postgres.connectionString) missing.push('POSTGRES_URL');
  if (!config.mssql.password) missing.push('MSSQL_PASSWORD');
  if (
    process.env.NODE_ENV === 'production' &&
    config.rateLimitSecret.startsWith('dev-only')
  ) {
    missing.push('AUTH_RATE_LIMIT_SECRET');
  }
  if (missing.length) {
    throw new Error(`Missing required configuration: ${missing.join(', ')}`);
  }
}
