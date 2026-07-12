// Idempotent MSSQL game-account provisioning + coordinated password sync.
//
// The provisioning transaction below is the exact row set the game server
// requires for a fully playable account (recovered from the original portal
// build and matching database/fix-post-character-creation.sql §11):
//   Account.dbo.MUser, Account.dbo.MUserAuthority (AuthLevel 0),
//   Account.dbo.TUser, ES_BILLING.dbo.EB_Cash,
//   Game01.dbo.users (LoginUID = MUser.UserUID), Game01.dbo.VCGAVirtualCash.
//
// Every write is guarded by IF NOT EXISTS so re-running is safe (a 'failed'
// web_user can be retried). Runs at SERIALIZABLE isolation in one transaction.
import { gameDb, mssqlTypes } from './db/mssql.js';
import { config } from './config.js';
import { HttpError } from './validation.js';

const PROVISION_SQL = `
DECLARE @UserUID BIGINT;

SELECT @UserUID = UserUID
FROM Account.dbo.MUser WITH (UPDLOCK, HOLDLOCK)
WHERE UserID = @UserID;

IF @UserUID IS NULL
BEGIN
    INSERT INTO Account.dbo.MUser (
        UserID, Password, UserName, PublisherSN, Gender, Age, RegDate, DelDate,
        PlayDayCnt, PlayGuide, LastLogin, IsRecommend, GuestUser, IsLogin,
        SecurityType, ChannelCode
    )
    VALUES (
        @UserID, @Password, @UserName, 7, 1, 0, GETDATE(), GETDATE(),
        0, 1, GETDATE(), 1, 0, 0, 0, 0
    );

    SELECT @UserUID = CONVERT(BIGINT, SCOPE_IDENTITY());
END
ELSE
BEGIN
    UPDATE Account.dbo.MUser
    SET Password = @Password,
        UserName = @UserName,
        GuestUser = 0,
        IsLogin = 0,
        SecurityType = 0,
        ChannelCode = 0
    WHERE UserUID = @UserUID;
END;

IF NOT EXISTS (SELECT 1 FROM Account.dbo.MUserAuthority WHERE UserUID = @UserUID)
    INSERT INTO Account.dbo.MUserAuthority (UserUID, AuthLevel) VALUES (@UserUID, 0);
ELSE
    UPDATE Account.dbo.MUserAuthority SET AuthLevel = 0 WHERE UserUID = @UserUID AND AuthLevel <> 0;

IF NOT EXISTS (SELECT 1 FROM Account.dbo.TUser WHERE id = @UserID)
    INSERT INTO Account.dbo.TUser (id, pw, comments, authlevel, MTAuthLevel)
    VALUES (@UserID, @Password, N'JoySword web account', 0, 0);
ELSE
    UPDATE Account.dbo.TUser
    SET pw = @Password,
        comments = N'JoySword web account',
        authlevel = 0,
        MTAuthLevel = 0
    WHERE id = @UserID;

IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WHERE CD_USERUID = @UserUID)
    INSERT INTO ES_BILLING.dbo.EB_Cash (
        CD_USERUID, ST_USERID, NO_TOTAL_CHARGE_CASH, NO_TOTAL_CHARGE_BONUS,
        NO_REMAIN_CASH, NO_REMAIN_BONUS, DT_FIRST_CHARGE_DATE, DT_RECHARGE_DATE
    )
    VALUES (@UserUID, @UserID, @StartingCash, 0, @StartingCash, 0, GETDATE(), GETDATE());

SET IDENTITY_INSERT Game01.dbo.users ON;

IF @UserUID BETWEEN 0 AND 2147483647
   AND NOT EXISTS (SELECT 1 FROM Game01.dbo.users WHERE LoginUID = CONVERT(INT, @UserUID))
   AND NOT EXISTS (SELECT 1 FROM Game01.dbo.users WHERE Login = @UserID)
BEGIN
    INSERT INTO Game01.dbo.users (
        Login, passwd, sex, LoginUID, firstLogin, lastConnect, lastLogin,
        playTime, gamePoint, IPAddress, Connecting, ModeLevel, Grade
    )
    VALUES (
        @UserID, @Password, '0', CONVERT(INT, @UserUID), GETDATE(), GETDATE(), GETDATE(),
        0, 0, N'0.0.0.0', 0, 0x00000000, 0
    );
END;

SET IDENTITY_INSERT Game01.dbo.users OFF;

IF @UserUID BETWEEN 0 AND 2147483647
   AND EXISTS (SELECT 1 FROM Game01.dbo.users WHERE LoginUID = CONVERT(INT, @UserUID))
   AND NOT EXISTS (SELECT 1 FROM Game01.dbo.VCGAVirtualCash WHERE LoginUID = CONVERT(INT, @UserUID))
BEGIN
    INSERT INTO Game01.dbo.VCGAVirtualCash (LoginUID, VCPoint)
    VALUES (CONVERT(INT, @UserUID), CONVERT(INT, @StartingCash));
END;

SELECT @UserUID AS UserUID;
`;

// Coordinated password change across all three legacy account stores.
const PASSWORD_SYNC_SQL = `
DECLARE @UserUID BIGINT;
SELECT @UserUID = UserUID
FROM Account.dbo.MUser WITH (UPDLOCK, HOLDLOCK)
WHERE UserID = @UserID;

IF @UserUID IS NULL
    THROW 50001, 'Game account not found.', 1;

UPDATE Account.dbo.MUser SET Password = @Password WHERE UserUID = @UserUID;
UPDATE Account.dbo.TUser SET pw = @Password WHERE id = @UserID;
UPDATE Game01.dbo.users SET passwd = @Password WHERE Login = @UserID;

SELECT 1 AS Updated;
`;

// Provision (or idempotently repair) the MSSQL game account. Returns the UserUID.
export async function provisionGameAccount({ userId, password, userName }) {
  const mssql = mssqlTypes();
  const pool = await gameDb();
  const tx = new mssql.Transaction(pool);
  await tx.begin(mssql.ISOLATION_LEVEL.SERIALIZABLE);
  try {
    const req = new mssql.Request(tx);
    req.input('UserID', mssql.NVarChar(20), userId);
    req.input('Password', mssql.NVarChar(20), password);
    req.input('UserName', mssql.NVarChar(16), userName.slice(0, 16));
    req.input('StartingCash', mssql.BigInt, config.startingCash);
    const result = await req.query(PROVISION_SQL);
    await tx.commit();
    const uid = result.recordset?.[0]?.UserUID;
    if (uid === undefined || uid === null) {
      throw new Error('Provisioning did not return a UserUID.');
    }
    return Number(uid);
  } catch (err) {
    try {
      await tx.rollback();
    } catch {
      // ignore rollback errors
    }
    throw err;
  }
}

// Coordinated password update in MSSQL (called inside the PG password-change tx).
export async function syncGamePassword({ userId, password }) {
  const mssql = mssqlTypes();
  const pool = await gameDb();
  const tx = new mssql.Transaction(pool);
  await tx.begin(mssql.ISOLATION_LEVEL.SERIALIZABLE);
  try {
    const req = new mssql.Request(tx);
    req.input('UserID', mssql.NVarChar(20), userId);
    req.input('Password', mssql.NVarChar(20), password);
    const result = await req.query(PASSWORD_SYNC_SQL);
    await tx.commit();
    if (Number(result.recordset?.[0]?.Updated) !== 1) {
      throw new Error('Password was not updated on the game account.');
    }
  } catch (err) {
    try {
      await tx.rollback();
    } catch {
      // ignore
    }
    if (err.number === 50001) {
      throw new HttpError('Game account not found.', 409);
    }
    throw err;
  }
}
