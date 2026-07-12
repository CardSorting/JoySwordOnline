USE ES_BILLING;
SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @UserUID BIGINT;
SELECT TOP (1) @UserUID = C.CD_USERUID
FROM dbo.EB_Cash AS C
JOIN Account.dbo.MUser AS U ON U.UserUID = C.CD_USERUID
JOIN Game01.dbo.users AS GU ON GU.Login = U.UserID
JOIN Game01.dbo.VCGAVirtualCash AS V ON V.LoginUID = GU.LoginUID
WHERE ISNULL
(
    (SELECT MAX(A.AuthLevel) FROM Account.dbo.MUserAuthority AS A WHERE A.UserUID = U.UserUID),
    0
) = 0
ORDER BY U.UserUID;

IF @UserUID IS NULL
    THROW 50300, 'No normal player account is available for Cash allowance tests.', 1;

BEGIN TRANSACTION;

DECLARE @BaseReward INT;
DECLARE @WeeklyBonus INT;
DECLARE @MonthlyBonus INT;
DECLARE @StarterTarget INT;
DECLARE @CashCap INT;
SELECT
    @BaseReward = BaseReward,
    @WeeklyBonus = WeeklyBonus,
    @MonthlyBonus = MonthlyBonus,
    @StarterTarget = StarterTarget,
    @CashCap = CashCap
FROM dbo.JoySwordCashAllowancePolicy
WHERE PolicyID = 1;

DELETE FROM dbo.JoySwordCashAllowanceClaim WHERE UserUID = @UserUID;
DELETE FROM dbo.JoySwordCashStarterClaim WHERE UserUID = @UserUID;
UPDATE dbo.EB_Cash SET NO_REMAIN_CASH = 0 WHERE CD_USERUID = @UserUID;
UPDATE V SET V.VCPoint = 0
FROM Game01.dbo.VCGAVirtualCash V
JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
JOIN Account.dbo.MUser U ON U.UserID = GU.Login
WHERE U.UserUID = @UserUID;

CREATE TABLE #StarterResult (AppliedReward INT, CashBalance INT, CashCap INT, AlreadyClaimed BIT);
INSERT INTO #StarterResult EXEC dbo.JoySwordCashStarter_Claim @UserUID = @UserUID;
IF NOT EXISTS
(
    SELECT 1 FROM #StarterResult
    WHERE AppliedReward = @StarterTarget AND CashBalance = @StarterTarget
      AND CashCap = @CashCap AND AlreadyClaimed = 0
)
    THROW 50301, 'Starter Cache result is incorrect.', 1;

DELETE FROM #StarterResult;
INSERT INTO #StarterResult EXEC dbo.JoySwordCashStarter_Claim @UserUID = @UserUID;
IF NOT EXISTS (SELECT 1 FROM #StarterResult WHERE AlreadyClaimed = 1 AND CashBalance = @StarterTarget)
    THROW 50302, 'Starter Cache retry was not idempotent.', 1;

UPDATE dbo.EB_Cash SET NO_REMAIN_CASH = 0 WHERE CD_USERUID = @UserUID;
UPDATE V SET V.VCPoint = 0
FROM Game01.dbo.VCGAVirtualCash V
JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
JOIN Account.dbo.MUser U ON U.UserID = GU.Login
WHERE U.UserUID = @UserUID;

CREATE TABLE #ClaimResult
(
    ClaimDate DATE,
    StreakDay INT,
    NominalReward INT,
    AppliedReward INT,
    CashBalance INT,
    CashCap INT,
    ClaimedToday BIT,
    AlreadyClaimed BIT,
    NextReward INT,
    NextMilestoneDay INT,
    CashAllowanceEligible BIT
);

INSERT INTO #ClaimResult
EXEC dbo.JoySwordCashAllowance_Claim @UserUID = @UserUID, @NowUtc = '2026-01-01T12:00:00';

IF NOT EXISTS
(
    SELECT 1 FROM #ClaimResult
    WHERE StreakDay = 1 AND NominalReward = @BaseReward AND AppliedReward = @BaseReward
      AND CashBalance = @BaseReward AND AlreadyClaimed = 0
)
    THROW 50302, 'First-day Cash allowance result is incorrect.', 1;

DELETE FROM #ClaimResult;
INSERT INTO #ClaimResult
EXEC dbo.JoySwordCashAllowance_Claim @UserUID = @UserUID, @NowUtc = '2026-01-01T23:00:00';

IF NOT EXISTS
(
    SELECT 1 FROM #ClaimResult
    WHERE StreakDay = 1 AND AppliedReward = @BaseReward AND CashBalance = @BaseReward AND AlreadyClaimed = 1
)
    THROW 50303, 'Same-day retry was not idempotent.', 1;

DECLARE @Day INT = 2;
WHILE @Day <= 30
BEGIN
    DELETE FROM #ClaimResult;
    DECLARE @NowUtc DATETIME2(0) = DATEADD(DAY, @Day - 1, CONVERT(DATETIME2(0), '2026-01-01T12:00:00'));
    INSERT INTO #ClaimResult
    EXEC dbo.JoySwordCashAllowance_Claim @UserUID = @UserUID, @NowUtc = @NowUtc;

    IF @Day = 7 AND NOT EXISTS
    (
        SELECT 1 FROM #ClaimResult
        WHERE StreakDay = 7
          AND NominalReward = @BaseReward + @WeeklyBonus
          AND AppliedReward = @BaseReward + @WeeklyBonus
          AND CashBalance = (7 * @BaseReward) + @WeeklyBonus
    )
        THROW 50304, 'Seventh-day bonus is incorrect.', 1;

    SET @Day += 1;
END;

IF NOT EXISTS
(
    SELECT 1 FROM #ClaimResult
    WHERE StreakDay = 30
      AND NominalReward = @BaseReward + @MonthlyBonus
      AND AppliedReward = @BaseReward + @MonthlyBonus
      AND CashBalance = (30 * @BaseReward) + (4 * @WeeklyBonus) + @MonthlyBonus
)
    THROW 50305, 'Thirty-day progression total or bonus is incorrect.', 1;

DECLARE @CapRoom INT = CASE WHEN @BaseReward > 1 THEN @BaseReward - 1 ELSE 0 END;
UPDATE dbo.EB_Cash SET NO_REMAIN_CASH = @CashCap - @CapRoom WHERE CD_USERUID = @UserUID;
UPDATE V SET V.VCPoint = @CashCap - @CapRoom
FROM Game01.dbo.VCGAVirtualCash V
JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
JOIN Account.dbo.MUser U ON U.UserID = GU.Login
WHERE U.UserUID = @UserUID;

DELETE FROM #ClaimResult;
INSERT INTO #ClaimResult
EXEC dbo.JoySwordCashAllowance_Claim @UserUID = @UserUID, @NowUtc = '2026-03-01T12:00:00';

IF NOT EXISTS
(
    SELECT 1 FROM #ClaimResult
    WHERE StreakDay = 1 AND NominalReward = @BaseReward
      AND AppliedReward = @CapRoom AND CashBalance = @CashCap
)
    THROW 50306, 'Wallet cap did not limit the applied reward correctly.', 1;

UPDATE dbo.EB_Cash SET NO_REMAIN_CASH = @CashCap - @BaseReward WHERE CD_USERUID = @UserUID;
UPDATE V SET V.VCPoint = @CashCap - @BaseReward
FROM Game01.dbo.VCGAVirtualCash V
JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
JOIN Account.dbo.MUser U ON U.UserID = GU.Login
WHERE U.UserUID = @UserUID;
DELETE FROM #ClaimResult;
INSERT INTO #ClaimResult
EXEC dbo.JoySwordCashAllowance_Claim @UserUID = @UserUID, @NowUtc = '2026-03-03T12:00:00';

IF NOT EXISTS
(
    SELECT 1 FROM #ClaimResult
    WHERE StreakDay = 2 AND AppliedReward = @BaseReward AND CashBalance = @CashCap
)
    THROW 50307, 'Missed days should pause, not reset, progression.', 1;

IF NOT EXISTS
   (
       SELECT 1 FROM Game01.dbo.VCGAVirtualCash V
       JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
       JOIN Account.dbo.MUser U ON U.UserID = GU.Login
       WHERE U.UserUID = @UserUID AND V.VCPoint = @CashCap
   )
    THROW 50308, 'Existing virtual Cash mirror was not synchronized.', 1;

CREATE TABLE #StatusResult
(
    CashBalance INT,
    CashCap INT,
    ClaimedToday BIT,
    StreakDay INT,
    NextReward INT,
    NextMilestoneDay INT,
    StarterTarget INT,
    StarterReward INT,
    StarterClaimed BIT,
    StarterClaimAvailable BIT,
    DailyClaimAvailable BIT,
    CashAllowanceEligible BIT
);

INSERT INTO #StatusResult
EXEC dbo.JoySwordCashAllowance_GetStatus @UserUID = @UserUID, @NowUtc = '2026-03-03T12:00:00';

IF NOT EXISTS
(
    SELECT 1 FROM #StatusResult
    WHERE CashBalance = @CashCap AND CashCap = @CashCap AND ClaimedToday = 1
      AND StreakDay = 2 AND NextReward = @BaseReward AND NextMilestoneDay = 7
      AND StarterTarget = @StarterTarget AND StarterClaimed = 1
      AND StarterClaimAvailable = 0 AND DailyClaimAvailable = 0
      AND CashAllowanceEligible = 1
)
    THROW 50309, 'Cash allowance status output is incorrect.', 1;

IF (SELECT COUNT(*) FROM dbo.JoySwordCashAllowanceClaim WHERE UserUID = @UserUID) <> 32
    THROW 50310, 'Claim ledger contains an unexpected number of rows.', 1;

DELETE FROM dbo.JoySwordCollectorReward WHERE UserUID = @UserUID;
UPDATE dbo.EB_Cash SET NO_REMAIN_CASH = 0 WHERE CD_USERUID = @UserUID;
UPDATE V SET V.VCPoint = 0
FROM Game01.dbo.VCGAVirtualCash V
JOIN Game01.dbo.users GU ON GU.LoginUID = V.LoginUID
JOIN Account.dbo.MUser U ON U.UserID = GU.Login
WHERE U.UserUID = @UserUID;

CREATE TABLE #CollectorStatus
(
    CollectorLifetimeSpend BIGINT,
    CollectorTierId INT,
    CollectorTierName NVARCHAR(24),
    CollectorTierThreshold INT,
    CollectorNextTierId INT NULL,
    CollectorNextTierName NVARCHAR(24) NULL,
    CollectorNextTierThreshold INT NULL,
    CollectorRewardAvailable BIT,
    CollectorRewardTierId INT NULL,
    CollectorRewardTierName NVARCHAR(24) NULL,
    CollectorRewardCash INT,
    CollectorRankEligible BIT,
    CollectorCashBalance INT,
    CollectorCashCap INT
);

INSERT INTO #CollectorStatus
EXEC dbo.JoySwordCollector_GetStatus @UserUID = @UserUID, @LifetimeSpendOverride = 160000;

IF NOT EXISTS
(
    SELECT 1 FROM #CollectorStatus
    WHERE CollectorTierId = 4 AND CollectorTierName = N'Vanguard'
      AND CollectorNextTierId = 5 AND CollectorNextTierThreshold = 300000
      AND CollectorRewardAvailable = 1 AND CollectorRewardTierId = 2
      AND CollectorRewardCash = 3000 AND CollectorRankEligible = 1
)
    THROW 50310, 'Collector Rank status or first unlocked reward is incorrect.', 1;

CREATE TABLE #CollectorClaim
(
    ClaimedCollectorTierId INT,
    ClaimedCollectorTierName NVARCHAR(24),
    AppliedReward INT,
    CashBalance INT
);

INSERT INTO #CollectorClaim
EXEC dbo.JoySwordCollector_ClaimReward @UserUID = @UserUID, @LifetimeSpendOverride = 160000;
IF NOT EXISTS
(
    SELECT 1 FROM #CollectorClaim
    WHERE ClaimedCollectorTierId = 2 AND AppliedReward = 3000 AND CashBalance = 3000
)
    THROW 50311, 'Explorer Collector reward is incorrect.', 1;

DELETE FROM #CollectorClaim;
INSERT INTO #CollectorClaim
EXEC dbo.JoySwordCollector_ClaimReward @UserUID = @UserUID, @LifetimeSpendOverride = 160000;
IF NOT EXISTS
(
    SELECT 1 FROM #CollectorClaim
    WHERE ClaimedCollectorTierId = 3 AND AppliedReward = 5000 AND CashBalance = 8000
)
    THROW 50312, 'Curator Collector reward is incorrect.', 1;

DELETE FROM #CollectorClaim;
INSERT INTO #CollectorClaim
EXEC dbo.JoySwordCollector_ClaimReward @UserUID = @UserUID, @LifetimeSpendOverride = 160000;
IF NOT EXISTS
(
    SELECT 1 FROM #CollectorClaim
    WHERE ClaimedCollectorTierId = 4 AND AppliedReward = 8000 AND CashBalance = 16000
)
    THROW 50313, 'Vanguard Collector reward is incorrect.', 1;

DELETE FROM #CollectorStatus;
INSERT INTO #CollectorStatus
EXEC dbo.JoySwordCollector_GetStatus @UserUID = @UserUID, @LifetimeSpendOverride = 160000;
IF EXISTS (SELECT 1 FROM #CollectorStatus WHERE CollectorRewardAvailable <> 0)
    THROW 50314, 'Claimed Collector rewards remain incorrectly available.', 1;

IF (SELECT COUNT(*) FROM dbo.JoySwordCollectorReward WHERE UserUID = @UserUID) <> 3
    THROW 50315, 'Collector reward ledger contains an unexpected number of rows.', 1;

ROLLBACK TRANSACTION;

SELECT 'OK: Cash allowance and Collector Rank transaction tests passed.' AS Result;
GO
