// Applies pending SQL migrations from ./migrations in filename order, tracked in
// a dedicated web_api_migrations table (named to avoid colliding with any
// pre-existing schema_migrations table from other tooling on the same database).
// Idempotent and safe to run on every deploy — this is the
// `node scripts/migrate.mjs` half of the App Service start command.
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { db, closeDb } from '../src/db/postgres.js';
import { assertProductionConfig } from '../src/config.js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const migrationsDir = path.join(__dirname, '..', 'migrations');
const TRACK_TABLE = 'web_api_migrations';

async function main() {
  assertProductionConfig();
  const pool = db();

  await pool.query(`
    CREATE TABLE IF NOT EXISTS ${TRACK_TABLE} (
      filename   TEXT PRIMARY KEY,
      applied_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    )
  `);

  const applied = new Set(
    (await pool.query(`SELECT filename FROM ${TRACK_TABLE}`)).rows.map((r) => r.filename)
  );

  const files = fs
    .readdirSync(migrationsDir)
    .filter((f) => f.endsWith('.sql'))
    .sort();

  let count = 0;
  for (const file of files) {
    if (applied.has(file)) continue;
    const sql = fs.readFileSync(path.join(migrationsDir, file), 'utf8');
    const client = await pool.connect();
    try {
      await client.query('BEGIN');
      await client.query(sql);
      await client.query(`INSERT INTO ${TRACK_TABLE}(filename) VALUES ($1)`, [file]);
      await client.query('COMMIT');
      console.log(`Applied migration ${file}`);
      count += 1;
    } catch (err) {
      await client.query('ROLLBACK');
      console.error(`Migration ${file} failed:`, err.message);
      throw err;
    } finally {
      client.release();
    }
  }

  console.log(count === 0 ? 'No pending migrations.' : `Applied ${count} migration(s).`);
  await closeDb();
}

main().catch((err) => {
  console.error('Migration run failed:', err);
  process.exit(1);
});
