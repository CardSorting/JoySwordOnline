// MSSQL connection pool for the JoySword game databases (Account, ES_BILLING,
// Game01) hosted on the single game-server VM's SQL Express instance. The web
// app reaches it over the Azure VNet on port 1433 (see infra/azure/web.tf).
import mssql from 'mssql';
import { config } from '../config.js';

let poolPromise = null;

export function mssqlTypes() {
  return mssql;
}

export function gameDb() {
  if (!poolPromise) {
    poolPromise = new mssql.ConnectionPool({
      server: config.mssql.host,
      port: config.mssql.port,
      user: config.mssql.user,
      password: config.mssql.password,
      options: {
        encrypt: config.mssql.encrypt,
        trustServerCertificate: config.mssql.trustServerCertificate,
        instanceName: config.mssql.instanceName,
        enableArithAbort: true,
      },
      pool: { max: 5, min: 0, idleTimeoutMillis: 30_000 },
      connectionTimeout: 15_000,
      requestTimeout: 20_000,
    })
      .connect()
      .catch((err) => {
        // Reset so a later request can retry a failed initial connect.
        poolPromise = null;
        throw err;
      });
  }
  return poolPromise;
}

export async function closeGameDb() {
  if (poolPromise) {
    try {
      const pool = await poolPromise;
      await pool.close();
    } catch {
      // ignore
    }
    poolPromise = null;
  }
}
