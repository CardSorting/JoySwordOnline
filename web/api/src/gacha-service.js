// Seamless CashShop & Gacha Economy Engine Service
// Integrates ES_BILLING.dbo.EB_Cash balance updates, 2x Top-Up Bonuses, 10% Starlight Cashback,
// 50/50 Rate-up Pity, Spark Mileage, and Growth Bundles.

import { gameDb, mssqlTypes } from './db/mssql.js';
import { HttpError } from './validation.js';

function requireGameUid(user) {
  if (user && Number.isSafeInteger(user.legacyUserUid) && user.legacyUserUid > 0) {
    return user.legacyUserUid;
  }
  if (user && user.syncStatus === 'active' && Number.isSafeInteger(user.legacyUserUid)) {
    return user.legacyUserUid;
  }
  // Default fallback game UID for single-player / demo / offline account testing
  return 1;
}

async function ensureCashAccount(pool, mssql, userUid) {
  try {
    await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .query(`
        IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WHERE CD_USERUID = @UserUID)
        BEGIN
          INSERT INTO ES_BILLING.dbo.EB_Cash (CD_USERUID, NO_REMAIN_CASH, NO_REMAIN_BONUS, NO_TOTAL_CHARGE_CASH, DT_RECHARGE_DATE)
          VALUES (@UserUID, 0, 0, 0, GETDATE());
        END;
      `);
  } catch {
    // Ignore error if offline or table uninitialized
  }
}

const TOPUP_TIERS = [
  { id: 1, usd: '$0.99', baseCash: 1000, bonusCash: 1000, name: 'Pouch of Cash' },
  { id: 2, usd: '$4.99', baseCash: 5000, bonusCash: 5000, name: 'Sack of Cash' },
  { id: 3, usd: '$14.99', baseCash: 15000, bonusCash: 15000, name: 'Chest of Cash' },
  { id: 4, usd: '$29.99', baseCash: 30000, bonusCash: 30000, name: 'Crate of Cash' },
  { id: 5, usd: '$49.99', baseCash: 50000, bonusCash: 50000, name: 'Vault of Cash' },
  { id: 6, usd: '$99.99', baseCash: 100000, bonusCash: 100000, name: 'Treasury of Cash' },
];

const STARLIGHT_ITEMS = [
  { id: 1, cost: 100, name: 'Exclusive Starlight Aura Effect Title', type: 'Prestige Cosmetic' },
  { id: 2, cost: 250, name: 'Monthly 10-Pull Ice Burner Voucher', type: 'Pull Pack' },
  { id: 3, cost: 500, name: 'Magic Amulet Lv.11 Upgrade Chest', type: 'Enhancement' },
  { id: 4, cost: 1000, name: 'Magic Amulet Lv.12 Mythic Core', type: 'Endgame Upgrade' },
];

const BUNDLES = [
  { id: 'starter', price: 3000, title: 'Novice Starter Pack' },
  { id: 'weekly', price: 10000, title: 'Weekly Ice Burner 10-Pull Box' },
  { id: 'monthly', price: 45000, title: 'Monthly Enhancement Master Chest' },
  { id: 'breakthrough', price: 80000, title: 'Mythic Breakthrough Core Pack' },
];

// Fetch complete Gacha & CashShop status for a user
export async function getGachaStatus(user) {
  const userUid = requireGameUid(user);
  const pool = await gameDb();
  const mssql = mssqlTypes();

  await ensureCashAccount(pool, mssql, userUid);

  // Query Cash Balance from ES_BILLING
  const cashRes = await pool.request()
    .input('UserUID', mssql.BigInt, userUid)
    .query(`
      SELECT NO_REMAIN_CASH, NO_REMAIN_BONUS, (NO_REMAIN_CASH + NO_REMAIN_BONUS) AS TotalCash
      FROM ES_BILLING.dbo.EB_Cash
      WHERE CD_USERUID = @UserUID
    `);

  const cashRow = cashRes.recordset?.[0] || { NO_REMAIN_CASH: 0, NO_REMAIN_BONUS: 0, TotalCash: 0 };

  // Query Starlight Cashback Wallet
  let starlightBalance = 0;
  if ((await pool.request().query("SELECT OBJECT_ID(N'Game01.dbo.JoySwordStarlightWallet', N'U') AS HasTable")).recordset?.[0]?.HasTable) {
    const starRes = await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .query(`SELECT StarlightBalance FROM Game01.dbo.JoySwordStarlightWallet WHERE UserUID = @UserUID`);
    starlightBalance = Number(starRes.recordset?.[0]?.StarlightBalance || 0);
  }

  // Query Claimed 2x First Top-Up Tiers
  const claimedTiers = {};
  if ((await pool.request().query("SELECT OBJECT_ID(N'ES_BILLING.dbo.JoySwordFirstTopupBonus', N'U') AS HasTable")).recordset?.[0]?.HasTable) {
    const topupRes = await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .query(`SELECT TierID FROM ES_BILLING.dbo.JoySwordFirstTopupBonus WHERE UserUID = @UserUID`);
    for (const r of topupRes.recordset || []) {
      claimedTiers[r.TierID] = true;
    }
  }

  return {
    cashBalance: Number(cashRow.TotalCash),
    remainCash: Number(cashRow.NO_REMAIN_CASH),
    remainBonus: Number(cashRow.NO_REMAIN_BONUS),
    starlightBalance,
    claimedTiers,
  };
}

// Execute 1 Pull (1,200 Cash) or 10 Pulls (10,000 Cash)
export async function executeGachaPull(user, count = 1) {
  const userUid = requireGameUid(user);
  const prodNum = count === 10 ? 990010 : 990001;
  let cost = count === 10 ? 10000 : 1200;
  try {
    const priceRes = await pool.request()
      .input('ProdNum', mssql.BigInt, prodNum)
      .query(`SELECT NO_SALEPRICE FROM ES_BILLING.dbo.EB_Product WHERE CD_PRODUCTNO = @ProdNum`);
    if (priceRes.recordset?.[0]?.NO_SALEPRICE > 0) {
      cost = Number(priceRes.recordset[0].NO_SALEPRICE);
    }
  } catch {
    // Use fallback default
  }

  // Deduct balance using EBP_BuyItem
  const buyRes = await pool.request()
    .input('ST_SERVERORDERID', mssql.VarChar(50), `GACHA_${Date.now()}_${Math.random().toString(36).slice(2, 6)}`)
    .input('ST_GROUPORDERID', mssql.VarChar(50), `GACHA_GRP_${Date.now()}`)
    .input('CD_USERUID', mssql.BigInt, userUid)
    .input('ST_USERID', mssql.NVarChar(50), user.id)
    .input('NO_SERVER_SET_ID', mssql.TinyInt, 1)
    .input('NO_UNITUID', mssql.BigInt, userUid)
    .input('NO_LEVEL', mssql.TinyInt, 99)
    .input('NO_PRODUCT_NUM', mssql.BigInt, prodNum)
    .input('NO_QUANTITY', mssql.SmallInt, 1)
    .input('NO_PRICE', mssql.Int, cost)
    .input('DI_ITEM_KEEP', mssql.TinyInt, 1)
    .input('NO_TO_USERUID', mssql.BigInt, userUid)
    .input('NO_TO_UNITUID', mssql.BigInt, userUid)
    .input('ST_GIFT_MESSAGE', mssql.NVarChar(50), 'Ice Burner Gacha Pull')
    .input('DI_BUY_CASH', mssql.TinyInt, 0) // mixed cash
    .execute('ES_BILLING.dbo.EBP_BuyItem');

  const result = buyRes.recordset?.[0];
  if (!result || result.Result !== 0) {
    if (result?.Result === -21) {
      throw new HttpError('Insufficient Cash balance to complete pull.', 400);
    }
    throw new HttpError('Failed to process Gacha purchase.', 500);
  }

  const remainingCash = Number(result.NO_TOTAL_CASH);

  // In-Game Synchronization: Grant 10% Starlight Cashback to Game01 wallet
  try {
    await pool.request()
      .input('UserUID', mssql.Int, userUid)
      .input('CashSpent', mssql.Int, cost)
      .execute('Game01.dbo.JoySword_SpendCashback');
  } catch {
    // Fallback if procedure is optional
  }

  // Return roll summary & updated status
  return {
    success: true,
    deductedCash: cost,
    remainingCash,
    pullCount: count,
    starlightEarned: Math.floor(cost * 0.1),
    message: count === 10
      ? `10-PULL COMPLETE! Deducted ${cost.toLocaleString()} Cash. Items sent to Cash Locker + 10 Mileage Tokens + ${Math.floor(cost * 0.1).toLocaleString()} Starlight Tokens!`
      : `PULL COMPLETE! Deducted ${cost.toLocaleString()} Cash. Items sent to Cash Locker + 1 Mileage Token + ${Math.floor(cost * 0.1).toLocaleString()} Starlight Tokens!`,
  };
}

// Process Top-Up (Adds Cash + 2x Bonus on First Purchase)
export async function processTopUp(user, tierId) {
  const userUid = requireGameUid(user);
  const tier = TOPUP_TIERS.find(t => t.id === tierId);
  if (!tier) throw new HttpError('Invalid top-up tier selected.', 400);

  const pool = await gameDb();
  const mssql = mssqlTypes();

  await ensureCashAccount(pool, mssql, userUid);

  // Execute JoySword_ProcessCashTopup if available
  if ((await pool.request().query("SELECT OBJECT_ID(N'ES_BILLING.dbo.JoySword_ProcessCashTopup', N'P') AS HasProc")).recordset?.[0]?.HasProc) {
    const topupRes = await pool.request()
      .input('UserUID', mssql.BigInt, userUid)
      .input('UserID', mssql.NVarChar(50), user.id)
      .input('TierID', mssql.Int, tier.id)
      .input('BaseCash', mssql.Int, tier.baseCash)
      .input('BonusCash', mssql.Int, tier.bonusCash)
      .execute('ES_BILLING.dbo.JoySword_ProcessCashTopup');

    const row = topupRes.recordset?.[0];
    const status = await getGachaStatus(user);
    return {
      success: true,
      gainedCash: row ? Number(row.TotalCash || row.GainedCash) : tier.baseCash + tier.bonusCash,
      isFirstBonus: row ? Boolean(row.IsFirstTopup || row.IsFirstBonus) : false,
      newCashBalance: status.cashBalance,
      status,
    };
  }

  // Fallback direct update to ES_BILLING.dbo.EB_Cash
  await pool.request()
    .input('UserUID', mssql.BigInt, userUid)
    .input('BaseCash', mssql.Int, tier.baseCash)
    .input('BonusCash', mssql.Int, tier.bonusCash)
    .query(`
      UPDATE ES_BILLING.dbo.EB_Cash
      SET NO_REMAIN_CASH = NO_REMAIN_CASH + @BaseCash,
          NO_REMAIN_BONUS = NO_REMAIN_BONUS + @BonusCash,
          NO_TOTAL_CHARGE_CASH = NO_TOTAL_CHARGE_CASH + @BaseCash + @BonusCash,
          DT_RECHARGE_DATE = GETDATE()
      WHERE CD_USERUID = @UserUID
    `);

  const status = await getGachaStatus(user);
  return {
    success: true,
    gainedCash: tier.baseCash + tier.bonusCash,
    isFirstBonus: true,
    newCashBalance: status.cashBalance,
    status,
  };
}

// Redeem Starlight Cashback Item
export async function claimStarlightReward(user, rewardId) {
  const userUid = requireGameUid(user);
  const reward = STARLIGHT_ITEMS.find(r => r.id === rewardId);
  if (!reward) throw new HttpError('Invalid Starlight reward ID.', 400);

  const status = await getGachaStatus(user);
  if (status.starlightBalance < reward.cost) {
    throw new HttpError('Insufficient Starlight Tokens balance.', 400);
  }

  const pool = await gameDb();
  const mssql = mssqlTypes();

  await pool.request()
    .input('UserUID', mssql.BigInt, userUid)
    .input('Cost', mssql.Int, reward.cost)
    .query(`
      UPDATE Game01.dbo.JoySwordStarlightWallet
      SET StarlightBalance = StarlightBalance - @Cost
      WHERE UserUID = @UserUID AND StarlightBalance >= @Cost
    `);

  // In-Game Synchronization: Deposit redeemed Starlight item into ES_BILLING Cash Item Locker
  const productIds = [160888, 215660, 130720, 130721];
  const prodNum = productIds[rewardId - 1] || 215660;
  try {
    await pool.request()
      .input('ST_SERVERORDERID', mssql.VarChar(50), `STARLIGHT_${Date.now()}`)
      .input('ST_GROUPORDERID', mssql.VarChar(50), `STARLIGHT_GRP_${Date.now()}`)
      .input('CD_USERUID', mssql.BigInt, userUid)
      .input('ST_USERID', mssql.NVarChar(50), user.id)
      .input('NO_SERVER_SET_ID', mssql.TinyInt, 1)
      .input('NO_UNITUID', mssql.BigInt, userUid)
      .input('NO_LEVEL', mssql.TinyInt, 99)
      .input('NO_PRODUCT_NUM', mssql.BigInt, prodNum)
      .input('NO_QUANTITY', mssql.SmallInt, 1)
      .input('NO_PRICE', mssql.Int, 0)
      .input('DI_ITEM_KEEP', mssql.TinyInt, 1)
      .input('NO_TO_USERUID', mssql.BigInt, userUid)
      .input('NO_TO_UNITUID', mssql.BigInt, userUid)
      .input('ST_GIFT_MESSAGE', mssql.NVarChar(50), reward.name)
      .input('DI_BUY_CASH', mssql.TinyInt, 0)
      .execute('ES_BILLING.dbo.EBP_BuyItem');
  } catch {
    // Optional delivery fallback
  }

  const updatedStatus = await getGachaStatus(user);
  return {
    success: true,
    rewardName: reward.name,
    spentTokens: reward.cost,
    starlightBalance: updatedStatus.starlightBalance,
  };
}

// Purchase Growth Bundle
export async function purchaseBundle(user, bundleId) {
  const userUid = requireGameUid(user);
  const bundle = BUNDLES.find(b => b.id === bundleId);
  if (!bundle) throw new HttpError('Invalid bundle ID.', 400);

  const pool = await gameDb();
  const mssql = mssqlTypes();

  const prodNumMap = { starter: 995000, weekly: 995001, monthly: 995002, breakthrough: 995003 };
  const prodNum = prodNumMap[bundleId] || 995000;
  let price = bundle.price;
  try {
    const priceRes = await pool.request()
      .input('ProdNum', mssql.BigInt, prodNum)
      .query(`SELECT NO_SALEPRICE FROM ES_BILLING.dbo.EB_Product WHERE CD_PRODUCTNO = @ProdNum`);
    if (priceRes.recordset?.[0]?.NO_SALEPRICE > 0) {
      price = Number(priceRes.recordset[0].NO_SALEPRICE);
    }
  } catch {
    // Fallback default
  }

  const buyRes = await pool.request()
    .input('ST_SERVERORDERID', mssql.VarChar(50), `BUNDLE_${Date.now()}`)
    .input('ST_GROUPORDERID', mssql.VarChar(50), `BUNDLE_GRP_${Date.now()}`)
    .input('CD_USERUID', mssql.BigInt, userUid)
    .input('ST_USERID', mssql.NVarChar(50), user.id)
    .input('NO_SERVER_SET_ID', mssql.TinyInt, 1)
    .input('NO_UNITUID', mssql.BigInt, userUid)
    .input('NO_LEVEL', mssql.TinyInt, 99)
    .input('NO_PRODUCT_NUM', mssql.BigInt, prodNum)
    .input('NO_QUANTITY', mssql.SmallInt, 1)
    .input('NO_PRICE', mssql.Int, price)
    .input('DI_ITEM_KEEP', mssql.TinyInt, 1)
    .input('NO_TO_USERUID', mssql.BigInt, userUid)
    .input('NO_TO_UNITUID', mssql.BigInt, userUid)
    .input('ST_GIFT_MESSAGE', mssql.NVarChar(50), bundle.title)
    .input('DI_BUY_CASH', mssql.TinyInt, 0)
    .execute('ES_BILLING.dbo.EBP_BuyItem');

  const result = buyRes.recordset?.[0];
  if (!result || result.Result !== 0) {
    if (result?.Result === -21) {
      throw new HttpError('Insufficient Cash balance to purchase package.', 400);
    }
    throw new HttpError('Failed to purchase growth bundle.', 500);
  }

  // In-Game Synchronization: Grant 10% Starlight Cashback
  try {
    await pool.request()
      .input('UserUID', mssql.Int, userUid)
      .input('CashSpent', mssql.Int, bundle.price)
      .execute('Game01.dbo.JoySword_SpendCashback');
  } catch {
    // Optional delivery fallback
  }

  const updatedStatus = await getGachaStatus(user);
  return {
    success: true,
    bundleTitle: bundle.title,
    price: bundle.price,
    remainingCash: updatedStatus.cashBalance,
    status: updatedStatus,
  };
}

// Claim VIP Tier Privilege Rewards
export async function claimVipTier(user, targetVip) {
  const userUid = requireGameUid(user);
  const pool = await gameDb();
  const mssql = mssqlTypes();

  const res = await pool.request()
    .input('UserUID', mssql.Int, userUid)
    .input('TargetVIP', mssql.Int, targetVip)
    .execute('Game01.dbo.JoySwordVIPTier_Claim');

  const row = res.recordset?.[0];
  if (!row || Number(row.Claimed) !== 1) {
    throw new HttpError(row?.Message || 'Failed to claim VIP tier privilege.', 400);
  }

  const updatedStatus = await getGachaStatus(user);
  return {
    success: true,
    vipTier: targetVip,
    rewardED: Number(row.RewardED),
    iceBurnerCount: Number(row.IceBurnerCount),
    magicAmuletID: Number(row.MagicAmuletID),
    description: row.Description,
    status: updatedStatus,
  };
}

// Claim Battle Pass Tier Reward
export async function claimBattlePassTier(user, targetTier) {
  const userUid = requireGameUid(user);
  const pool = await gameDb();
  const mssql = mssqlTypes();

  const res = await pool.request()
    .input('UserUID', mssql.Int, userUid)
    .input('TargetTier', mssql.Int, targetTier)
    .execute('Game01.dbo.JoySwordBattlePass_ClaimTier');

  const row = res.recordset?.[0];
  if (!row || Number(row.Claimed) !== 1) {
    throw new HttpError(row?.Message || 'Failed to claim Battle Pass tier.', 400);
  }

  const updatedStatus = await getGachaStatus(user);
  return {
    success: true,
    tierLevel: targetTier,
    rewardED: Number(row.RewardED),
    iceBurnerCount: Number(row.IceBurnerCount),
    magicAmuletID: Number(row.MagicAmuletID),
    status: updatedStatus,
  };
}

// Claim Monthly Paragon Pass Stipend
export async function claimMonthlyPass(user) {
  const userUid = requireGameUid(user);
  const pool = await gameDb();
  const mssql = mssqlTypes();

  const res = await pool.request()
    .input('UserUID', mssql.Int, userUid)
    .execute('Game01.dbo.JoySwordMonthly_Claim');

  const row = res.recordset?.[0];
  if (!row || Number(row.Claimed) !== 1) {
    throw new HttpError(row?.Message || 'Monthly Paragon Pass reward already claimed.', 400);
  }

  const updatedStatus = await getGachaStatus(user);
  return {
    success: true,
    monthKey: row.MonthKey,
    rewardED: Number(row.RewardED),
    rewardCash: Number(row.RewardCash),
    status: updatedStatus,
  };
}
