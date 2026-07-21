USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordBattlePassPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordBattlePassPolicy (
        TierLevel INT NOT NULL CONSTRAINT PK_JoySwordBattlePassPolicy PRIMARY KEY CLUSTERED,
        RewardED INT NOT NULL,
        IceBurnerCount INT NOT NULL,
        MagicAmuletID INT NOT NULL,
        RewardDescription NVARCHAR(256) NOT NULL
    );

    -- Populate 50 BattlePass Tiers
    WITH Tiers AS (
        SELECT 1 AS Tier
        UNION ALL
        SELECT Tier + 1 FROM Tiers WHERE Tier < 50
    )
    INSERT INTO dbo.JoySwordBattlePassPolicy (TierLevel, RewardED, IceBurnerCount, MagicAmuletID, RewardDescription)
    SELECT 
        Tier,
        CASE 
            WHEN Tier <= 10 THEN 10000000
            WHEN Tier <= 20 THEN 20000000
            WHEN Tier <= 30 THEN 30000000
            WHEN Tier <= 40 THEN 50000000
            ELSE 100000000
        END AS RewardED,
        CASE 
            WHEN Tier <= 10 THEN 5
            WHEN Tier <= 20 THEN 10
            WHEN Tier <= 30 THEN 15
            WHEN Tier <= 40 THEN 20
            ELSE 30
        END AS IceBurnerCount,
        CASE 
            WHEN Tier <= 10 THEN 0
            WHEN Tier <= 20 THEN 130150 -- Magic Amulet Lv.8
            WHEN Tier <= 30 THEN 130151 -- Magic Amulet Lv.9
            WHEN Tier <= 40 THEN 130152 -- Magic Amulet Lv.10
            ELSE 130721                 -- Magic Amulet Lv.12
        END AS MagicAmuletID,
        N'BattlePass Tier ' + CAST(Tier AS NVARCHAR(10)) + N' Milestone Reward'
    FROM Tiers
    OPTION (MAXRECURSION 100);
END;
GO

IF OBJECT_ID(N'dbo.JoySwordBattlePassClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordBattlePassClaim (
        UserUID INT NOT NULL,
        TierLevel INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordBattlePassClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordBattlePassClaim PRIMARY KEY CLUSTERED (UserUID, TierLevel)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordBattlePass_ClaimTier
    @UserUID INT,
    @TargetTier INT
AS
BEGIN
    SET NOCOUNT ON;

    IF @TargetTier < 1 OR @TargetTier > 50
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS IceBurnerCount, 0 AS MagicAmuletID, N'Invalid BattlePass Tier' AS Message;
        RETURN;
    END;

    IF EXISTS (SELECT 1 FROM dbo.JoySwordBattlePassClaim WHERE UserUID = @UserUID AND TierLevel = @TargetTier)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS IceBurnerCount, 0 AS MagicAmuletID, N'BattlePass Tier Already Claimed' AS Message;
        RETURN;
    END;

    DECLARE @RewardED INT = 0;
    DECLARE @IceBurnerCount INT = 0;
    DECLARE @MagicAmuletID INT = 0;
    DECLARE @Desc NVARCHAR(256) = N'';

    SELECT @RewardED = RewardED, @IceBurnerCount = IceBurnerCount, @MagicAmuletID = MagicAmuletID, @Desc = RewardDescription
    FROM dbo.JoySwordBattlePassPolicy
    WHERE TierLevel = @TargetTier;

    INSERT INTO dbo.JoySwordBattlePassClaim (UserUID, TierLevel)
    VALUES (@UserUID, @TargetTier);

    -- In-Game Synchronization: Credit ED directly to player character
    IF OBJECT_ID(N'Game01.dbo.EL_UNIT', N'U') IS NOT NULL AND @RewardED > 0
    BEGIN
        UPDATE Game01.dbo.EL_UNIT
        SET NO_ED = NO_ED + @RewardED
        WHERE NO_USERUID = @UserUID;
    END;

    -- In-Game Synchronization: Insert Ice Burners into Cash Locker
    IF OBJECT_ID(N'ES_BILLING.dbo.EBP_BuyItem', N'P') IS NOT NULL AND @IceBurnerCount > 0
    BEGIN
        EXEC ES_BILLING.dbo.EBP_BuyItem
            @ST_SERVERORDERID = 'BP_REWARD',
            @ST_GROUPORDERID = 'BP_REWARD_GRP',
            @CD_USERUID = @UserUID,
            @ST_USERID = N'BP_SYSTEM',
            @NO_SERVER_SET_ID = 1,
            @NO_UNITUID = @UserUID,
            @NO_LEVEL = 99,
            @NO_PRODUCT_NUM = 215660,
            @NO_QUANTITY = @IceBurnerCount,
            @NO_PRICE = 0,
            @DI_ITEM_KEEP = 1,
            @NO_TO_USERUID = @UserUID,
            @NO_TO_UNITUID = @UserUID,
            @ST_GIFT_MESSAGE = N'BattlePass Tier Reward Ice Burners',
            @DI_BUY_CASH = 0;
    END;

    -- In-Game Synchronization: Insert Magic Amulet into Cash Locker
    IF OBJECT_ID(N'ES_BILLING.dbo.EBP_BuyItem', N'P') IS NOT NULL AND @MagicAmuletID > 0
    BEGIN
        EXEC ES_BILLING.dbo.EBP_BuyItem
            @ST_SERVERORDERID = 'BP_AMULET',
            @ST_GROUPORDERID = 'BP_AMULET_GRP',
            @CD_USERUID = @UserUID,
            @ST_USERID = N'BP_SYSTEM',
            @NO_SERVER_SET_ID = 1,
            @NO_UNITUID = @UserUID,
            @NO_LEVEL = 99,
            @NO_PRODUCT_NUM = @MagicAmuletID,
            @NO_QUANTITY = 1,
            @NO_PRICE = 0,
            @DI_ITEM_KEEP = 1,
            @NO_TO_USERUID = @UserUID,
            @NO_TO_UNITUID = @UserUID,
            @ST_GIFT_MESSAGE = N'BattlePass Tier Reward Magic Amulet',
            @DI_BUY_CASH = 0;
    END;

    SELECT 1 AS Claimed, @TargetTier AS TierLevel, @RewardED AS RewardED, @IceBurnerCount AS IceBurnerCount, @MagicAmuletID AS MagicAmuletID, @Desc AS Description, N'Success' AS Message;
END;
GO
