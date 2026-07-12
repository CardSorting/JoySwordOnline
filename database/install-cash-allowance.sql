USE ES_BILLING;
SET NOCOUNT ON;
SET XACT_ABORT ON;

IF OBJECT_ID(N'dbo.JoySwordCashAllowancePolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordCashAllowancePolicy
    (
        PolicyID TINYINT NOT NULL
            CONSTRAINT PK_JoySwordCashAllowancePolicy PRIMARY KEY,
        BaseReward INT NOT NULL,
        WeeklyBonus INT NOT NULL,
        MonthlyBonus INT NOT NULL,
        StarterTarget INT NOT NULL,
        CashCap INT NOT NULL,
        TimeZoneName SYSNAME NOT NULL,
        UpdatedAt DATETIME2(0) NOT NULL
            CONSTRAINT DF_JoySwordCashAllowancePolicy_UpdatedAt DEFAULT SYSUTCDATETIME(),
        CONSTRAINT CK_JoySwordCashAllowancePolicy_Singleton CHECK (PolicyID = 1),
        CONSTRAINT CK_JoySwordCashAllowancePolicy_Amounts CHECK
            (BaseReward > 0 AND WeeklyBonus >= 0 AND MonthlyBonus >= 0
             AND StarterTarget >= BaseReward AND CashCap >= StarterTarget)
    );
END;
GO

IF COL_LENGTH(N'dbo.JoySwordCashAllowancePolicy', N'StarterTarget') IS NULL
BEGIN
    ALTER TABLE dbo.JoySwordCashAllowancePolicy
        ADD StarterTarget INT NOT NULL
            CONSTRAINT DF_JoySwordCashAllowancePolicy_StarterTarget DEFAULT ($(CASH_STARTER_TARGET));
END;
GO

MERGE dbo.JoySwordCashAllowancePolicy AS Target
USING
(
    VALUES
    (
        CONVERT(TINYINT, 1),
        CONVERT(INT, $(CASH_ALLOWANCE_BASE)),
        CONVERT(INT, $(CASH_ALLOWANCE_WEEKLY_BONUS)),
        CONVERT(INT, $(CASH_ALLOWANCE_MONTHLY_BONUS)),
        CONVERT(INT, $(CASH_STARTER_TARGET)),
        CONVERT(INT, $(CASH_ALLOWANCE_CAP)),
        CONVERT(SYSNAME, N'$(CASH_ALLOWANCE_TIME_ZONE)')
    )
) AS Source (PolicyID, BaseReward, WeeklyBonus, MonthlyBonus, StarterTarget, CashCap, TimeZoneName)
ON Target.PolicyID = Source.PolicyID
WHEN MATCHED THEN
    UPDATE SET
        BaseReward = Source.BaseReward,
        WeeklyBonus = Source.WeeklyBonus,
        MonthlyBonus = Source.MonthlyBonus,
        StarterTarget = Source.StarterTarget,
        CashCap = Source.CashCap,
        TimeZoneName = Source.TimeZoneName,
        UpdatedAt = SYSUTCDATETIME()
WHEN NOT MATCHED THEN
    INSERT (PolicyID, BaseReward, WeeklyBonus, MonthlyBonus, StarterTarget, CashCap, TimeZoneName)
    VALUES (Source.PolicyID, Source.BaseReward, Source.WeeklyBonus, Source.MonthlyBonus, Source.StarterTarget, Source.CashCap, Source.TimeZoneName);
GO

IF OBJECT_ID(N'dbo.JoySwordCashStarterClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordCashStarterClaim
    (
        UserUID BIGINT NOT NULL CONSTRAINT PK_JoySwordCashStarterClaim PRIMARY KEY,
        TargetBalance INT NOT NULL,
        AppliedReward INT NOT NULL,
        BalanceAfter INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL
            CONSTRAINT DF_JoySwordCashStarterClaim_ClaimedAt DEFAULT SYSUTCDATETIME(),
        CONSTRAINT CK_JoySwordCashStarterClaim_Values CHECK
            (TargetBalance > 0 AND AppliedReward > 0 AND BalanceAfter >= AppliedReward)
    );
END;
GO

IF OBJECT_ID(N'dbo.JoySwordCashAllowanceClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordCashAllowanceClaim
    (
        UserUID BIGINT NOT NULL,
        ClaimDate DATE NOT NULL,
        StreakDay TINYINT NOT NULL,
        NominalReward INT NOT NULL,
        AppliedReward INT NOT NULL,
        BalanceAfter INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL
            CONSTRAINT DF_JoySwordCashAllowanceClaim_ClaimedAt DEFAULT SYSUTCDATETIME(),
        CONSTRAINT PK_JoySwordCashAllowanceClaim PRIMARY KEY CLUSTERED (UserUID, ClaimDate),
        CONSTRAINT CK_JoySwordCashAllowanceClaim_Streak CHECK (StreakDay BETWEEN 1 AND 30),
        CONSTRAINT CK_JoySwordCashAllowanceClaim_Rewards CHECK
            (NominalReward > 0 AND AppliedReward >= 0 AND AppliedReward <= NominalReward),
        CONSTRAINT CK_JoySwordCashAllowanceClaim_Balance CHECK (BalanceAfter >= 0)
    );
END;
GO

IF OBJECT_ID(N'dbo.JoySwordCollectorTier', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordCollectorTier
    (
        TierID TINYINT NOT NULL CONSTRAINT PK_JoySwordCollectorTier PRIMARY KEY,
        TierName NVARCHAR(24) NOT NULL CONSTRAINT UQ_JoySwordCollectorTier_Name UNIQUE,
        SpendThreshold INT NOT NULL CONSTRAINT UQ_JoySwordCollectorTier_Threshold UNIQUE,
        RewardCash INT NOT NULL,
        CONSTRAINT CK_JoySwordCollectorTier_Values CHECK (SpendThreshold >= 0 AND RewardCash >= 0)
    );
END;
GO

MERGE dbo.JoySwordCollectorTier AS Target
USING
(
    VALUES
        (CONVERT(TINYINT, 1), N'Adventurer',       0,      0),
        (CONVERT(TINYINT, 2), N'Explorer',      25000,   3000),
        (CONVERT(TINYINT, 3), N'Curator',       75000,   5000),
        (CONVERT(TINYINT, 4), N'Vanguard',     150000,   8000),
        (CONVERT(TINYINT, 5), N'Luminary',     300000,  12000),
        (CONVERT(TINYINT, 6), N'Legend',       600000,  20000),
        (CONVERT(TINYINT, 7), N'Ascendant',   1000000,  30000)
) AS Source (TierID, TierName, SpendThreshold, RewardCash)
ON Target.TierID = Source.TierID
WHEN MATCHED THEN UPDATE SET
    TierName = Source.TierName,
    SpendThreshold = Source.SpendThreshold,
    RewardCash = Source.RewardCash
WHEN NOT MATCHED THEN
    INSERT (TierID, TierName, SpendThreshold, RewardCash)
    VALUES (Source.TierID, Source.TierName, Source.SpendThreshold, Source.RewardCash);
GO

IF OBJECT_ID(N'dbo.JoySwordCollectorReward', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordCollectorReward
    (
        UserUID BIGINT NOT NULL,
        TierID TINYINT NOT NULL,
        AppliedReward INT NOT NULL,
        BalanceAfter INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL
            CONSTRAINT DF_JoySwordCollectorReward_ClaimedAt DEFAULT SYSUTCDATETIME(),
        CONSTRAINT PK_JoySwordCollectorReward PRIMARY KEY CLUSTERED (UserUID, TierID),
        CONSTRAINT FK_JoySwordCollectorReward_Tier FOREIGN KEY (TierID)
            REFERENCES dbo.JoySwordCollectorTier (TierID),
        CONSTRAINT CK_JoySwordCollectorReward_Values CHECK (AppliedReward > 0 AND BalanceAfter >= 0)
    );
END;
GO

IF NOT EXISTS
(
    SELECT 1 FROM sys.indexes
    WHERE object_id = OBJECT_ID(N'dbo.EB_BuyItemLog')
      AND name = N'IX_EB_BuyItemLog_JoySwordCollector'
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_EB_BuyItemLog_JoySwordCollector
        ON dbo.EB_BuyItemLog (CD_USERUID)
        INCLUDE (NO_PRICE, NO_QUANTITY);
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordCashAllowance_GetStatus
    @UserUID BIGINT,
    @NowUtc DATETIME2(0) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EffectiveUtc DATETIME2(0) = ISNULL(@NowUtc, SYSUTCDATETIME());
    DECLARE @BaseReward INT;
    DECLARE @WeeklyBonus INT;
    DECLARE @MonthlyBonus INT;
    DECLARE @StarterTarget INT;
    DECLARE @CashCap INT;
    DECLARE @TimeZoneName SYSNAME;

    SELECT
        @BaseReward = BaseReward,
        @WeeklyBonus = WeeklyBonus,
        @MonthlyBonus = MonthlyBonus,
        @StarterTarget = StarterTarget,
        @CashCap = CashCap,
        @TimeZoneName = TimeZoneName
    FROM dbo.JoySwordCashAllowancePolicy
    WHERE PolicyID = 1;

    IF @CashCap IS NULL
        THROW 50200, 'Cash allowance policy is not installed.', 1;

    DECLARE @Today DATE = CONVERT(DATE, @EffectiveUtc AT TIME ZONE 'UTC' AT TIME ZONE @TimeZoneName);
    DECLARE @Balance INT;
    DECLARE @AuthLevel INT;
    DECLARE @ClaimedToday BIT = 0;
    DECLARE @CurrentStreak INT = 0;
    DECLARE @CandidateStreak INT = 1;
    DECLARE @StarterClaimed BIT = 0;

    SELECT @Balance = CONVERT(INT, ISNULL(NO_REMAIN_CASH, 0))
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @UserUID;

    IF @Balance IS NULL
        THROW 50201, 'Cash balance was not found for this account.', 1;

    IF EXISTS (SELECT 1 FROM dbo.JoySwordCashStarterClaim WHERE UserUID = @UserUID)
        SET @StarterClaimed = 1;

    SELECT @AuthLevel = ISNULL(MAX(AuthLevel), 0)
    FROM Account.dbo.MUserAuthority
    WHERE UserUID = @UserUID;

    SELECT
        @ClaimedToday = 1,
        @CurrentStreak = StreakDay
    FROM dbo.JoySwordCashAllowanceClaim
    WHERE UserUID = @UserUID AND ClaimDate = @Today;

    IF @ClaimedToday = 0
    BEGIN
        SELECT TOP (1)
            @CurrentStreak = StreakDay
        FROM dbo.JoySwordCashAllowanceClaim
        WHERE UserUID = @UserUID
        ORDER BY ClaimDate DESC;
    END;

    SET @CandidateStreak = CASE
        WHEN @ClaimedToday = 1 THEN CASE WHEN @CurrentStreak >= 30 THEN 1 ELSE @CurrentStreak + 1 END
        WHEN @CurrentStreak BETWEEN 1 AND 29 THEN @CurrentStreak + 1
        ELSE 1
    END;

    DECLARE @NextReward INT = @BaseReward
        + CASE WHEN @CandidateStreak % 7 = 0 THEN @WeeklyBonus ELSE 0 END
        + CASE WHEN @CandidateStreak = 30 THEN @MonthlyBonus ELSE 0 END;
    DECLARE @NextMilestoneDay INT = CASE
        WHEN @CandidateStreak <= 7 THEN 7
        WHEN @CandidateStreak <= 14 THEN 14
        WHEN @CandidateStreak <= 21 THEN 21
        WHEN @CandidateStreak <= 28 THEN 28
        ELSE 30
    END;

    SELECT
        @Balance AS CashBalance,
        @CashCap AS CashCap,
        @ClaimedToday AS ClaimedToday,
        CONVERT(INT, @CurrentStreak) AS StreakDay,
        @NextReward AS NextReward,
        @NextMilestoneDay AS NextMilestoneDay,
        @StarterTarget AS StarterTarget,
        CONVERT(INT, CASE WHEN @StarterClaimed = 0 AND @Balance < @StarterTarget
            THEN @StarterTarget - @Balance ELSE 0 END) AS StarterReward,
        @StarterClaimed AS StarterClaimed,
        CONVERT(BIT, CASE WHEN @StarterClaimed = 0 AND @Balance < @StarterTarget
            THEN 1 ELSE 0 END) AS StarterClaimAvailable,
        CONVERT(BIT, CASE WHEN @ClaimedToday = 0 AND @Balance < @CashCap
            THEN 1 ELSE 0 END) AS DailyClaimAvailable,
        CONVERT(BIT, CASE WHEN ISNULL(@AuthLevel, 0) = 0 THEN 1 ELSE 0 END) AS CashAllowanceEligible;
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordCashStarter_Claim
    @UserUID BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @StarterTarget INT;
    DECLARE @CashCap INT;
    DECLARE @Balance INT;
    DECLARE @AppliedReward INT;
    DECLARE @AuthLevel INT;
    DECLARE @AlreadyClaimed BIT = 0;

    SELECT @StarterTarget = StarterTarget, @CashCap = CashCap
    FROM dbo.JoySwordCashAllowancePolicy
    WHERE PolicyID = 1;

    IF @CashCap IS NULL
        THROW 50200, 'Cash allowance policy is not installed.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        IF NOT EXISTS (SELECT 1 FROM Account.dbo.MUser WHERE UserUID = @UserUID)
            THROW 50202, 'Game account was not found.', 1;

        SELECT @AuthLevel = ISNULL(MAX(AuthLevel), 0)
        FROM Account.dbo.MUserAuthority WITH (HOLDLOCK)
        WHERE UserUID = @UserUID;

        IF ISNULL(@AuthLevel, 0) <> 0
            THROW 50203, 'Administrator accounts are not eligible for player allowances.', 1;

        SELECT @Balance = CONVERT(INT, ISNULL(NO_REMAIN_CASH, 0))
        FROM dbo.EB_Cash WITH (UPDLOCK, HOLDLOCK)
        WHERE CD_USERUID = @UserUID;

        IF @Balance IS NULL
            THROW 50201, 'Cash balance was not found for this account.', 1;

        SELECT @AlreadyClaimed = 1, @AppliedReward = AppliedReward
        FROM dbo.JoySwordCashStarterClaim WITH (UPDLOCK, HOLDLOCK)
        WHERE UserUID = @UserUID;

        IF @AlreadyClaimed = 0
        BEGIN
            IF @Balance >= @StarterTarget
                THROW 50206, 'This account is already above the Starter Cache target.', 1;

            SET @AppliedReward = CASE
                WHEN @StarterTarget > @CashCap THEN @CashCap - @Balance
                ELSE @StarterTarget - @Balance
            END;
            SET @Balance += @AppliedReward;

            UPDATE dbo.EB_Cash
            SET NO_REMAIN_CASH = @Balance,
                NO_TOTAL_CHARGE_CASH = ISNULL(NO_TOTAL_CHARGE_CASH, 0) + @AppliedReward,
                DT_RECHARGE_DATE = GETDATE()
            WHERE CD_USERUID = @UserUID;

            UPDATE V
            SET V.VCPoint = @Balance
            FROM Game01.dbo.VCGAVirtualCash AS V
            JOIN Game01.dbo.users AS U ON U.LoginUID = V.LoginUID
            JOIN Account.dbo.MUser AS A ON A.UserID = U.Login
            WHERE A.UserUID = @UserUID;

            IF @@ROWCOUNT <> 1
                THROW 50207, 'The game Cash mirror is unavailable; repair the game account before claiming.', 1;

            INSERT INTO dbo.JoySwordCashStarterClaim
                (UserUID, TargetBalance, AppliedReward, BalanceAfter, ClaimedAt)
            VALUES
                (@UserUID, @StarterTarget, @AppliedReward, @Balance, SYSUTCDATETIME());
        END;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;

    SELECT @AppliedReward AS AppliedReward, @Balance AS CashBalance, @CashCap AS CashCap,
        @AlreadyClaimed AS AlreadyClaimed;
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordCashAllowance_Claim
    @UserUID BIGINT,
    @NowUtc DATETIME2(0) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @EffectiveUtc DATETIME2(0) = ISNULL(@NowUtc, SYSUTCDATETIME());
    DECLARE @BaseReward INT;
    DECLARE @WeeklyBonus INT;
    DECLARE @MonthlyBonus INT;
    DECLARE @CashCap INT;
    DECLARE @TimeZoneName SYSNAME;

    SELECT
        @BaseReward = BaseReward,
        @WeeklyBonus = WeeklyBonus,
        @MonthlyBonus = MonthlyBonus,
        @CashCap = CashCap,
        @TimeZoneName = TimeZoneName
    FROM dbo.JoySwordCashAllowancePolicy
    WHERE PolicyID = 1;

    IF @CashCap IS NULL
        THROW 50200, 'Cash allowance policy is not installed.', 1;

    DECLARE @Today DATE = CONVERT(DATE, @EffectiveUtc AT TIME ZONE 'UTC' AT TIME ZONE @TimeZoneName);
    DECLARE @Balance INT;
    DECLARE @AuthLevel INT;
    DECLARE @StreakDay INT;
    DECLARE @NominalReward INT;
    DECLARE @AppliedReward INT;
    DECLARE @AlreadyClaimed BIT = 0;

    BEGIN TRY
        BEGIN TRANSACTION;

        IF NOT EXISTS (SELECT 1 FROM Account.dbo.MUser WHERE UserUID = @UserUID)
            THROW 50202, 'Game account was not found.', 1;

        SELECT @AuthLevel = ISNULL(MAX(AuthLevel), 0)
        FROM Account.dbo.MUserAuthority WITH (HOLDLOCK)
        WHERE UserUID = @UserUID;

        IF ISNULL(@AuthLevel, 0) <> 0
            THROW 50203, 'Administrator accounts are not eligible for player allowances.', 1;

        SELECT @Balance = CONVERT(INT, ISNULL(NO_REMAIN_CASH, 0))
        FROM dbo.EB_Cash WITH (UPDLOCK, HOLDLOCK)
        WHERE CD_USERUID = @UserUID;

        IF @Balance IS NULL
            THROW 50201, 'Cash balance was not found for this account.', 1;

        SELECT
            @AlreadyClaimed = 1,
            @StreakDay = StreakDay,
            @NominalReward = NominalReward,
            @AppliedReward = AppliedReward
        FROM dbo.JoySwordCashAllowanceClaim WITH (UPDLOCK, HOLDLOCK)
        WHERE UserUID = @UserUID AND ClaimDate = @Today;

        IF @AlreadyClaimed = 0
        BEGIN
            DECLARE @PreviousStreak INT;

            IF @Balance >= @CashCap
                THROW 50204, 'Spend some Cash before claiming today''s allowance.', 1;

            SELECT TOP (1)
                @PreviousStreak = StreakDay
            FROM dbo.JoySwordCashAllowanceClaim WITH (UPDLOCK, HOLDLOCK)
            WHERE UserUID = @UserUID
            ORDER BY ClaimDate DESC;

            SET @StreakDay = CASE
                WHEN @PreviousStreak BETWEEN 1 AND 29
                    THEN @PreviousStreak + 1
                ELSE 1
            END;
            SET @NominalReward = @BaseReward
                + CASE WHEN @StreakDay % 7 = 0 THEN @WeeklyBonus ELSE 0 END
                + CASE WHEN @StreakDay = 30 THEN @MonthlyBonus ELSE 0 END;
            SET @AppliedReward = CASE
                WHEN @Balance >= @CashCap THEN 0
                WHEN @NominalReward > @CashCap - @Balance THEN @CashCap - @Balance
                ELSE @NominalReward
            END;
            SET @Balance = @Balance + @AppliedReward;

            UPDATE dbo.EB_Cash
            SET NO_REMAIN_CASH = @Balance,
                NO_TOTAL_CHARGE_CASH = ISNULL(NO_TOTAL_CHARGE_CASH, 0) + @AppliedReward,
                DT_RECHARGE_DATE = GETDATE()
            WHERE CD_USERUID = @UserUID;

            UPDATE V
            SET V.VCPoint = @Balance
            FROM Game01.dbo.VCGAVirtualCash AS V
            JOIN Game01.dbo.users AS U ON U.LoginUID = V.LoginUID
            JOIN Account.dbo.MUser AS A ON A.UserID = U.Login
            WHERE A.UserUID = @UserUID;

            IF @@ROWCOUNT <> 1
                THROW 50207, 'The game Cash mirror is unavailable; repair the game account before claiming.', 1;

            INSERT INTO dbo.JoySwordCashAllowanceClaim
                (UserUID, ClaimDate, StreakDay, NominalReward, AppliedReward, BalanceAfter, ClaimedAt)
            VALUES
                (@UserUID, @Today, @StreakDay, @NominalReward, @AppliedReward, @Balance, @EffectiveUtc);
        END;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;

    DECLARE @CandidateStreak INT = CASE WHEN @StreakDay >= 30 THEN 1 ELSE @StreakDay + 1 END;
    DECLARE @NextReward INT = @BaseReward
        + CASE WHEN @CandidateStreak % 7 = 0 THEN @WeeklyBonus ELSE 0 END
        + CASE WHEN @CandidateStreak = 30 THEN @MonthlyBonus ELSE 0 END;
    DECLARE @NextMilestoneDay INT = CASE
        WHEN @CandidateStreak <= 7 THEN 7
        WHEN @CandidateStreak <= 14 THEN 14
        WHEN @CandidateStreak <= 21 THEN 21
        WHEN @CandidateStreak <= 28 THEN 28
        ELSE 30
    END;

    SELECT
        @Today AS ClaimDate,
        @StreakDay AS StreakDay,
        @NominalReward AS NominalReward,
        @AppliedReward AS AppliedReward,
        @Balance AS CashBalance,
        @CashCap AS CashCap,
        CONVERT(BIT, 1) AS ClaimedToday,
        @AlreadyClaimed AS AlreadyClaimed,
        @NextReward AS NextReward,
        @NextMilestoneDay AS NextMilestoneDay,
        CONVERT(BIT, 1) AS CashAllowanceEligible;
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordCollector_GetStatus
    @UserUID BIGINT,
    @LifetimeSpendOverride BIGINT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LifetimeSpend BIGINT = @LifetimeSpendOverride;
    DECLARE @AuthLevel INT;
    DECLARE @CashBalance INT;
    DECLARE @CashCap INT = (SELECT CashCap FROM dbo.JoySwordCashAllowancePolicy WHERE PolicyID = 1);

    IF @LifetimeSpend IS NULL
    BEGIN
        SELECT @LifetimeSpend = ISNULL(SUM(CONVERT(BIGINT, NO_PRICE) * CONVERT(BIGINT, NO_QUANTITY)), 0)
        FROM dbo.EB_BuyItemLog
        WHERE CD_USERUID = @UserUID
          AND NO_PRICE > 0
          AND NO_QUANTITY > 0;
    END;

    SELECT @AuthLevel = ISNULL(MAX(AuthLevel), 0)
    FROM Account.dbo.MUserAuthority
    WHERE UserUID = @UserUID;

    SELECT @CashBalance = CONVERT(INT, ISNULL(NO_REMAIN_CASH, 0))
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @UserUID;

    IF @CashBalance IS NULL
        THROW 50201, 'Cash balance was not found for this account.', 1;

    DECLARE @TierID INT;
    DECLARE @TierName NVARCHAR(24);
    DECLARE @TierThreshold INT;
    SELECT TOP (1)
        @TierID = TierID,
        @TierName = TierName,
        @TierThreshold = SpendThreshold
    FROM dbo.JoySwordCollectorTier
    WHERE SpendThreshold <= @LifetimeSpend
    ORDER BY SpendThreshold DESC;

    DECLARE @NextTierID INT;
    DECLARE @NextTierName NVARCHAR(24);
    DECLARE @NextTierThreshold INT;
    SELECT TOP (1)
        @NextTierID = TierID,
        @NextTierName = TierName,
        @NextTierThreshold = SpendThreshold
    FROM dbo.JoySwordCollectorTier
    WHERE SpendThreshold > @LifetimeSpend
    ORDER BY SpendThreshold;

    DECLARE @RewardTierID INT;
    DECLARE @RewardTierName NVARCHAR(24);
    DECLARE @RewardCash INT;
    SELECT TOP (1)
        @RewardTierID = T.TierID,
        @RewardTierName = T.TierName,
        @RewardCash = T.RewardCash
    FROM dbo.JoySwordCollectorTier AS T
    WHERE T.RewardCash > 0
      AND T.SpendThreshold <= @LifetimeSpend
      AND NOT EXISTS
      (
          SELECT 1 FROM dbo.JoySwordCollectorReward AS R
          WHERE R.UserUID = @UserUID AND R.TierID = T.TierID
      )
    ORDER BY T.SpendThreshold;

    SELECT
        @LifetimeSpend AS CollectorLifetimeSpend,
        @TierID AS CollectorTierId,
        @TierName AS CollectorTierName,
        @TierThreshold AS CollectorTierThreshold,
        @NextTierID AS CollectorNextTierId,
        @NextTierName AS CollectorNextTierName,
        @NextTierThreshold AS CollectorNextTierThreshold,
        CONVERT(BIT, CASE WHEN @RewardTierID IS NULL THEN 0 ELSE 1 END) AS CollectorRewardAvailable,
        @RewardTierID AS CollectorRewardTierId,
        @RewardTierName AS CollectorRewardTierName,
        ISNULL(@RewardCash, 0) AS CollectorRewardCash,
        CONVERT(BIT, CASE WHEN ISNULL(@AuthLevel, 0) = 0 THEN 1 ELSE 0 END) AS CollectorRankEligible,
        @CashBalance AS CollectorCashBalance,
        @CashCap AS CollectorCashCap;
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordCollector_ClaimReward
    @UserUID BIGINT,
    @LifetimeSpendOverride BIGINT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @LifetimeSpend BIGINT = @LifetimeSpendOverride;
    DECLARE @AuthLevel INT;
    DECLARE @CashBalance INT;
    DECLARE @CashCap INT = (SELECT CashCap FROM dbo.JoySwordCashAllowancePolicy WHERE PolicyID = 1);
    DECLARE @TierID INT;
    DECLARE @TierName NVARCHAR(24);
    DECLARE @RewardCash INT;

    BEGIN TRY
        BEGIN TRANSACTION;

        SELECT @AuthLevel = ISNULL(MAX(AuthLevel), 0)
        FROM Account.dbo.MUserAuthority WITH (HOLDLOCK)
        WHERE UserUID = @UserUID;

        IF ISNULL(@AuthLevel, 0) <> 0
            THROW 50203, 'Administrator accounts are not eligible for player rewards.', 1;

        SELECT @CashBalance = CONVERT(INT, ISNULL(NO_REMAIN_CASH, 0))
        FROM dbo.EB_Cash WITH (UPDLOCK, HOLDLOCK)
        WHERE CD_USERUID = @UserUID;

        IF @CashBalance IS NULL
            THROW 50201, 'Cash balance was not found for this account.', 1;

        IF @LifetimeSpend IS NULL
        BEGIN
            SELECT @LifetimeSpend = ISNULL(SUM(CONVERT(BIGINT, NO_PRICE) * CONVERT(BIGINT, NO_QUANTITY)), 0)
            FROM dbo.EB_BuyItemLog WITH (HOLDLOCK)
            WHERE CD_USERUID = @UserUID
              AND NO_PRICE > 0
              AND NO_QUANTITY > 0;
        END;

        SELECT TOP (1)
            @TierID = T.TierID,
            @TierName = T.TierName,
            @RewardCash = T.RewardCash
        FROM dbo.JoySwordCollectorTier AS T WITH (UPDLOCK, HOLDLOCK)
        WHERE T.RewardCash > 0
          AND T.SpendThreshold <= @LifetimeSpend
          AND NOT EXISTS
          (
              SELECT 1 FROM dbo.JoySwordCollectorReward AS R WITH (UPDLOCK, HOLDLOCK)
              WHERE R.UserUID = @UserUID AND R.TierID = T.TierID
          )
        ORDER BY T.SpendThreshold;

        IF @TierID IS NULL
            THROW 50210, 'No Collector Rank reward is currently available.', 1;

        IF @CashBalance + @RewardCash > @CashCap
            THROW 50211, 'Spend enough Cash to make room for the full Collector Rank reward.', 1;

        SET @CashBalance += @RewardCash;

        UPDATE dbo.EB_Cash
        SET NO_REMAIN_CASH = @CashBalance,
            NO_TOTAL_CHARGE_CASH = ISNULL(NO_TOTAL_CHARGE_CASH, 0) + @RewardCash,
            DT_RECHARGE_DATE = GETDATE()
        WHERE CD_USERUID = @UserUID;

        UPDATE V
        SET V.VCPoint = @CashBalance
        FROM Game01.dbo.VCGAVirtualCash AS V
        JOIN Game01.dbo.users AS U ON U.LoginUID = V.LoginUID
        JOIN Account.dbo.MUser AS A ON A.UserID = U.Login
        WHERE A.UserUID = @UserUID;

        IF @@ROWCOUNT <> 1
            THROW 50207, 'The game Cash mirror is unavailable; repair the game account before claiming.', 1;

        INSERT INTO dbo.JoySwordCollectorReward
            (UserUID, TierID, AppliedReward, BalanceAfter, ClaimedAt)
        VALUES
            (@UserUID, @TierID, @RewardCash, @CashBalance, SYSUTCDATETIME());

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;

    SELECT
        @TierID AS ClaimedCollectorTierId,
        @TierName AS ClaimedCollectorTierName,
        @RewardCash AS AppliedReward,
        @CashBalance AS CashBalance;
END;
GO

/* Enforce the launch cap for player accounts while preserving GM/operator funds. */
DECLARE @LaunchCap INT = (SELECT CashCap FROM dbo.JoySwordCashAllowancePolicy WHERE PolicyID = 1);

UPDATE C
SET C.NO_REMAIN_CASH = @LaunchCap
FROM dbo.EB_Cash AS C
WHERE ISNULL(C.NO_REMAIN_CASH, 0) > @LaunchCap
  AND ISNULL
  (
      (SELECT MAX(A.AuthLevel) FROM Account.dbo.MUserAuthority AS A WHERE A.UserUID = C.CD_USERUID),
      0
  ) = 0;

UPDATE V
SET V.VCPoint = CONVERT(INT, C.NO_REMAIN_CASH)
FROM Game01.dbo.VCGAVirtualCash AS V
JOIN dbo.EB_Cash AS C ON C.CD_USERUID = CONVERT(BIGINT, V.LoginUID)
WHERE ISNULL
(
    (SELECT MAX(A.AuthLevel) FROM Account.dbo.MUserAuthority AS A WHERE A.UserUID = C.CD_USERUID),
    0
) = 0
  AND V.VCPoint <> CONVERT(INT, C.NO_REMAIN_CASH);
GO

SELECT
    P.BaseReward,
    P.WeeklyBonus,
    P.MonthlyBonus,
    P.StarterTarget,
    P.CashCap,
    P.TimeZoneName,
    (SELECT COUNT(*) FROM dbo.JoySwordCashAllowanceClaim) AS ExistingClaims,
    (SELECT COUNT(*) FROM dbo.JoySwordCollectorTier) AS CollectorTiers
FROM dbo.JoySwordCashAllowancePolicy AS P
WHERE P.PolicyID = 1;
GO
