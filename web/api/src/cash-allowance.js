import { gameDb, mssqlTypes } from './db/mssql.js';
import { HttpError } from './validation.js';

function requireGameUid(user) {
  if (user.syncStatus !== 'active' || !Number.isSafeInteger(user.legacyUserUid)) {
    throw new HttpError('Your game account must finish syncing before Cash can be claimed.', 409);
  }
  return user.legacyUserUid;
}

function bool(value) {
  return value === true || value === 1;
}

function serializeStatus(row) {
  return {
    balance: Number(row.CashBalance),
    cap: Number(row.CashCap),
    claimedToday: bool(row.ClaimedToday),
    progressDay: Number(row.StreakDay),
    nextReward: Number(row.NextReward),
    nextMilestoneDay: Number(row.NextMilestoneDay),
    starterTarget: Number(row.StarterTarget),
    starterReward: Number(row.StarterReward),
    starterClaimed: bool(row.StarterClaimed),
    starterClaimAvailable: bool(row.StarterClaimAvailable),
    dailyClaimAvailable: bool(row.DailyClaimAvailable),
    eligible: bool(row.CashAllowanceEligible),
  };
}

function cashError(error) {
  const messages = new Map([
    [50200, ['Cash rewards are temporarily unavailable.', 503]],
    [50201, ['Your Cash wallet could not be found.', 409]],
    [50202, ['Your game account could not be found.', 409]],
    [50203, ['This account is not eligible for player Cash rewards.', 403]],
    [50204, ['Spend some Cash before claiming today’s allowance.', 409]],
    [50205, ['The Starter Cache has already been claimed.', 409]],
    [50206, ['This account is already above the Starter Cache target.', 409]],
    [50207, ['Your game wallet needs repair before Cash can be claimed.', 409]],
  ]);
  const mapped = messages.get(Number(error?.number));
  return mapped ? new HttpError(mapped[0], mapped[1]) : error;
}

export async function getCashAllowance(user) {
  const userUid = requireGameUid(user);
  try {
    const pool = await gameDb();
    const mssql = mssqlTypes();
    const result = await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .execute('ES_BILLING.dbo.JoySwordCashAllowance_GetStatus');
    const row = result.recordset?.[0];
    if (!row) throw new Error('Cash status did not return a result.');
    return serializeStatus(row);
  } catch (error) {
    throw cashError(error);
  }
}

export async function claimCashAllowance(user, claimType) {
  const userUid = requireGameUid(user);
  const procedures = {
    starter: 'ES_BILLING.dbo.JoySwordCashStarter_Claim',
    daily: 'ES_BILLING.dbo.JoySwordCashAllowance_Claim',
  };
  const procedure = procedures[claimType];
  if (!procedure) throw new HttpError('Unknown Cash claim type.', 400);

  try {
    const pool = await gameDb();
    const mssql = mssqlTypes();
    const result = await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .execute(procedure);
    const claim = result.recordset?.[0];
    if (!claim) throw new Error('Cash claim did not return a result.');
    const status = await getCashAllowance(user);
    return {
      claim: {
        type: claimType,
        appliedReward: Number(claim.AppliedReward),
        alreadyClaimed: bool(claim.AlreadyClaimed),
      },
      allowance: status,
    };
  } catch (error) {
    throw cashError(error);
  }
}
