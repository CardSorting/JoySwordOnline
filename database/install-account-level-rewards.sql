USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordAccountLevelPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordAccountLevelPolicy (
        TargetLevel INT NOT NULL CONSTRAINT PK_JoySwordAccountLevelPolicy PRIMARY KEY CLUSTERED,
        RewardED BIGINT NOT NULL,
        MagicAmuletID INT NOT NULL,
        RewardDescription NVARCHAR(256) NOT NULL
    );

    INSERT INTO dbo.JoySwordAccountLevelPolicy (TargetLevel, RewardED, MagicAmuletID, RewardDescription)
    VALUES
    (10,   25000000, 130149, N'Account Level 10: 25M ED + Magic Amulet Lv.7 Box'),
    (30,   50000000, 130150, N'Account Level 30: 50M ED + Magic Amulet Lv.8 Box'),
    (50,  100000000, 130151, N'Account Level 50: 100M ED + Magic Amulet Lv.9 Box'),
    (70,  250000000, 130152, N'Account Level 70: 250M ED + Magic Amulet Lv.10 Box'),
    (99, 1000000000, 130721, N'Account Level 99: 1 Billion ED + Magic Amulet Lv.12 Choice Box');
END;
GO

IF OBJECT_ID(N'dbo.JoySwordAccountLevelClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordAccountLevelClaim (
        UserUID INT NOT NULL,
        TargetLevel INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordAccountLevelClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordAccountLevelClaim PRIMARY KEY CLUSTERED (UserUID, TargetLevel)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordAccountLevel_Claim
    @UserUID INT,
    @TargetLevel INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM dbo.JoySwordAccountLevelPolicy WHERE TargetLevel = @TargetLevel)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS MagicAmuletID, N'Invalid Account Level Milestone' AS Message;
        RETURN;
    END;

    IF EXISTS (SELECT 1 FROM dbo.JoySwordAccountLevelClaim WHERE UserUID = @UserUID AND TargetLevel = @TargetLevel)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS MagicAmuletID, N'Account Level Milestone Already Claimed' AS Message;
        RETURN;
    END;

    DECLARE @RewardED BIGINT = 0;
    DECLARE @MagicAmuletID INT = 0;
    DECLARE @Desc NVARCHAR(256) = N'';

    SELECT @RewardED = RewardED, @MagicAmuletID = MagicAmuletID, @Desc = RewardDescription
    FROM dbo.JoySwordAccountLevelPolicy
    WHERE TargetLevel = @TargetLevel;

    INSERT INTO dbo.JoySwordAccountLevelClaim (UserUID, TargetLevel)
    VALUES (@UserUID, @TargetLevel);

    SELECT 1 AS Claimed, @TargetLevel AS TargetLevel, @RewardED AS RewardED, @MagicAmuletID AS MagicAmuletID, @Desc AS Description, N'Success' AS Message;
END;
GO
