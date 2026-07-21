USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordStreakPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordStreakPolicy (
        DayNumber INT NOT NULL CONSTRAINT PK_JoySwordStreakPolicy PRIMARY KEY CLUSTERED,
        RewardCash INT NOT NULL,
        RewardED INT NOT NULL,
        RewardDescription NVARCHAR(256) NOT NULL
    );

    INSERT INTO dbo.JoySwordStreakPolicy (DayNumber, RewardCash, RewardED, RewardDescription)
    VALUES 
    (1, 12000,  5000000, N'Day 1: 12k Cash + 5M ED'),
    (2,     0,  5000000, N'Day 2: 5M ED + 5x Fluorite Ores + 5x Scrolls'),
    (3,     0, 10000000, N'Day 3: 10M ED + Magic Amulet Lv.8 Cube'),
    (4, 12000, 10000000, N'Day 4: 12k Cash + 10M ED + 10x Ice Burners'),
    (5,     0, 15000000, N'Day 5: 15M ED + Magic Amulet Lv.9 Cube'),
    (6,     0, 15000000, N'Day 6: 15M ED + 10x Dual Magic Stones'),
    (7, 36000, 50000000, N'Day 7: 36k Cash + 50M ED + SSR Ice Burner Choice Box');
END;
GO

IF OBJECT_ID(N'dbo.JoySwordStreakClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordStreakClaim (
        UserUID INT NOT NULL,
        StreakDay INT NOT NULL,
        ClaimDateKey INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordStreakClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordStreakClaim PRIMARY KEY CLUSTERED (UserUID, StreakDay)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordStreak_Claim
    @UserUID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TodayKey INT = CAST(CONVERT(VARCHAR(8), GETDATE(), 112) AS INT);
    
    -- Check if user already claimed today
    IF EXISTS (SELECT 1 FROM dbo.JoySwordStreakClaim WHERE UserUID = @UserUID AND ClaimDateKey = @TodayKey)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardCash, 0 AS RewardED, N'Already Claimed Streak Today' AS Message;
        RETURN;
    END;

    -- Calculate current streak day
    DECLARE @LastStreakDay INT = ISNULL((SELECT MAX(StreakDay) FROM dbo.JoySwordStreakClaim WHERE UserUID = @UserUID), 0);
    DECLARE @NextStreakDay INT = (@LastStreakDay % 7) + 1;

    DECLARE @RewardCash INT = 0;
    DECLARE @RewardED INT = 0;
    DECLARE @RewardDesc NVARCHAR(256) = N'';

    SELECT @RewardCash = RewardCash, @RewardED = RewardED, @RewardDesc = RewardDescription
    FROM dbo.JoySwordStreakPolicy
    WHERE DayNumber = @NextStreakDay;

    INSERT INTO dbo.JoySwordStreakClaim (UserUID, StreakDay, ClaimDateKey)
    VALUES (@UserUID, @NextStreakDay, @TodayKey);

    SELECT 1 AS Claimed, @NextStreakDay AS StreakDay, @RewardCash AS RewardCash, @RewardED AS RewardED, @RewardDesc AS Description, N'Success' AS Message;
END;
GO
