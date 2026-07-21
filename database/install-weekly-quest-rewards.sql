USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordWeeklyPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordWeeklyPolicy (
        PolicyID INT NOT NULL CONSTRAINT PK_JoySwordWeeklyPolicy PRIMARY KEY CLUSTERED,
        RewardED INT NOT NULL,
        RewardCash INT NOT NULL,
        IceBurnerCount INT NOT NULL,
        MagicAmuletID INT NOT NULL,
        CreatedDate DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordWeeklyPolicy_CreatedDate DEFAULT SYSDATETIME()
    );

    INSERT INTO dbo.JoySwordWeeklyPolicy (PolicyID, RewardED, RewardCash, IceBurnerCount, MagicAmuletID)
    VALUES (1, 100000000, 50000, 50, 130152);
END;
GO

IF OBJECT_ID(N'dbo.JoySwordWeeklyClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordWeeklyClaim (
        UserUID INT NOT NULL,
        WeekYearKey INT NOT NULL,
        RewardED INT NOT NULL,
        RewardCash INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordWeeklyClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordWeeklyClaim PRIMARY KEY CLUSTERED (UserUID, WeekYearKey)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordWeekly_Claim
    @UserUID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CurrentWeekKey INT = CAST(CONVERT(VARCHAR(4), DATEPART(yyyy, GETDATE())) + RIGHT('0' + CAST(DATEPART(ww, GETDATE()) AS VARCHAR(2)), 2) AS INT);

    IF EXISTS (SELECT 1 FROM dbo.JoySwordWeeklyClaim WHERE UserUID = @UserUID AND WeekYearKey = @CurrentWeekKey)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS RewardCash, N'Already Claimed Weekly Quest Reward' AS Message;
        RETURN;
    END;

    DECLARE @RewardED INT = 100000000;
    DECLARE @RewardCash INT = 50000;

    INSERT INTO dbo.JoySwordWeeklyClaim (UserUID, WeekYearKey, RewardED, RewardCash)
    VALUES (@UserUID, @CurrentWeekKey, @RewardED, @RewardCash);

    SELECT 1 AS Claimed, @CurrentWeekKey AS WeekKey, @RewardED AS RewardED, @RewardCash AS RewardCash, N'Weekly Quest Stipend & 50x Ice Burners Granted Successfully' AS Message;
END;
GO
