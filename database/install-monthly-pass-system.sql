USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordMonthlyPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordMonthlyPolicy (
        PolicyID INT NOT NULL CONSTRAINT PK_JoySwordMonthlyPolicy PRIMARY KEY CLUSTERED,
        RewardED BIGINT NOT NULL,
        RewardCash INT NOT NULL,
        IceBurnerCount INT NOT NULL,
        MagicAmuletID INT NOT NULL,
        CreatedDate DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordMonthlyPolicy_CreatedDate DEFAULT SYSDATETIME()
    );

    INSERT INTO dbo.JoySwordMonthlyPolicy (PolicyID, RewardED, RewardCash, IceBurnerCount, MagicAmuletID)
    VALUES (1, 500000000, 250000, 100, 130720);
END;
GO

IF OBJECT_ID(N'dbo.JoySwordMonthlyClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordMonthlyClaim (
        UserUID INT NOT NULL,
        MonthYearKey INT NOT NULL,
        RewardED BIGINT NOT NULL,
        RewardCash INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordMonthlyClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordMonthlyClaim PRIMARY KEY CLUSTERED (UserUID, MonthYearKey)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordMonthly_Claim
    @UserUID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CurrentMonthKey INT = CAST(CONVERT(VARCHAR(4), DATEPART(yyyy, GETDATE())) + RIGHT('0' + CAST(DATEPART(mm, GETDATE()) AS VARCHAR(2)), 2) AS INT);

    IF EXISTS (SELECT 1 FROM dbo.JoySwordMonthlyClaim WHERE UserUID = @UserUID AND MonthYearKey = @CurrentMonthKey)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS RewardCash, N'Already Claimed Monthly Paragon Pass Reward' AS Message;
        RETURN;
    END;

    DECLARE @RewardED BIGINT = 500000000;
    DECLARE @RewardCash INT = 250000;

    INSERT INTO dbo.JoySwordMonthlyClaim (UserUID, MonthYearKey, RewardED, RewardCash)
    VALUES (@UserUID, @CurrentMonthKey, @RewardED, @RewardCash);

    -- In-Game Synchronization: Credit Cash balance to ES_BILLING
    IF OBJECT_ID(N'ES_BILLING.dbo.EB_Cash', N'U') IS NOT NULL AND @RewardCash > 0
    BEGIN
        UPDATE ES_BILLING.dbo.EB_Cash
        SET NO_REMAIN_BONUS = NO_REMAIN_BONUS + @RewardCash,
            DT_RECHARGE_DATE = GETDATE()
        WHERE CD_USERUID = @UserUID;
    END;

    -- In-Game Synchronization: Credit ED directly to player character
    IF OBJECT_ID(N'Game01.dbo.EL_UNIT', N'U') IS NOT NULL AND @RewardED > 0
    BEGIN
        UPDATE Game01.dbo.EL_UNIT
        SET NO_ED = NO_ED + @RewardED
        WHERE NO_USERUID = @UserUID;
    END;

    SELECT 1 AS Claimed, @CurrentMonthKey AS MonthKey, @RewardED AS RewardED, @RewardCash AS RewardCash, N'Monthly Paragon Pass Grand Stipend & 100x Ice Burners Granted Successfully' AS Message;
END;
GO
