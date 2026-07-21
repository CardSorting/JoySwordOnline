USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordVIPPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordVIPPolicy (
        VIPTier INT NOT NULL CONSTRAINT PK_JoySwordVIPPolicy PRIMARY KEY CLUSTERED,
        RewardED BIGINT NOT NULL,
        IceBurnerCount INT NOT NULL,
        MagicAmuletID INT NOT NULL,
        FeeDiscountPercent INT NOT NULL CONSTRAINT DF_JoySwordVIPPolicy_FeeDiscount DEFAULT 0,
        RewardDescription NVARCHAR(256) NOT NULL
    );

    INSERT INTO dbo.JoySwordVIPPolicy (VIPTier, RewardED, IceBurnerCount, MagicAmuletID, FeeDiscountPercent, RewardDescription)
    VALUES
    (1,   50000000,  10,      0, 2,  N'VIP 1: 50M ED + 10x Ice Burners (2% Market Discount)'),
    (2,   75000000,  15,      0, 3,  N'VIP 2: 75M ED + 15x Ice Burners (3% Market Discount)'),
    (3,  100000000,  20, 130151, 4,  N'VIP 3: 100M ED + Magic Amulet Lv.9 Box (4% Discount)'),
    (4,  150000000,  25,      0, 5,  N'VIP 4: 150M ED + 25x Ice Burners (5% Market Discount)'),
    (5,  250000000,  30, 130152, 6,  N'VIP 5: 250M ED + Magic Amulet Lv.10 Box (6% Discount)'),
    (6,  350000000,  40,      0, 7,  N'VIP 6: 350M ED + 40x Ice Burners (7% Market Discount)'),
    (7,  500000000,  50, 130720, 8,  N'VIP 7: 500M ED + Magic Amulet Lv.11 Box (8% Discount)'),
    (8,  650000000,  60,      0, 9,  N'VIP 8: 650M ED + 60x Ice Burners (9% Market Discount)'),
    (9,  800000000,  75, 130269, 10, N'VIP 9: 800M ED + Rare Accessory Choice Box (10% Discount)'),
    (10, 1000000000, 100, 130721, 12, N'VIP 10: 1 Billion ED + Magic Amulet Lv.12 Choice Box (12% Discount)'),
    (11, 1250000000, 120, 130721, 14, N'VIP 11: 1.25B ED + Mythic Amulet Box (14% Discount)'),
    (12, 1500000000, 150, 85002870, 16, N'VIP 12: 1.5B ED + Archangel Set Box (16% Discount)'),
    (13, 2000000000, 200, 130721, 18, N'VIP 13: 2B ED + 200x Burners (18% Market Discount)'),
    (14, 2500000000, 250, 85002870, 20, N'VIP 14: 2.5B ED + Archangel Complete Box (20% Discount)'),
    (15, 3000000000, 300, 130721, 25, N'VIP 15: 3B ED + Supreme Immortal Crest (25% Market Discount)');
END;
GO

IF OBJECT_ID(N'dbo.JoySwordVIPClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordVIPClaim (
        UserUID INT NOT NULL,
        VIPTier INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordVIPClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordVIPClaim PRIMARY KEY CLUSTERED (UserUID, VIPTier)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordVIPTier_Claim
    @UserUID INT,
    @TargetVIP INT
AS
BEGIN
    SET NOCOUNT ON;

    IF @TargetVIP < 1 OR @TargetVIP > 15
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS IceBurnerCount, 0 AS MagicAmuletID, N'Invalid VIP Tier' AS Message;
        RETURN;
    END;

    IF EXISTS (SELECT 1 FROM dbo.JoySwordVIPClaim WHERE UserUID = @UserUID AND VIPTier = @TargetVIP)
    BEGIN
        SELECT 0 AS Claimed, 0 AS RewardED, 0 AS IceBurnerCount, 0 AS MagicAmuletID, N'VIP Loyalty Tier Already Claimed' AS Message;
        RETURN;
    END;

    DECLARE @RewardED BIGINT = 0;
    DECLARE @IceBurnerCount INT = 0;
    DECLARE @MagicAmuletID INT = 0;
    DECLARE @Desc NVARCHAR(256) = N'';

    SELECT @RewardED = RewardED, @IceBurnerCount = IceBurnerCount, @MagicAmuletID = MagicAmuletID, @Desc = RewardDescription
    FROM dbo.JoySwordVIPPolicy
    WHERE VIPTier = @TargetVIP;

    INSERT INTO dbo.JoySwordVIPClaim (UserUID, VIPTier)
    VALUES (@UserUID, @TargetVIP);

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
            @ST_SERVERORDERID = 'VIP_REWARD',
            @ST_GROUPORDERID = 'VIP_REWARD_GRP',
            @CD_USERUID = @UserUID,
            @ST_USERID = N'VIP_SYSTEM',
            @NO_SERVER_SET_ID = 1,
            @NO_UNITUID = @UserUID,
            @NO_LEVEL = 99,
            @NO_PRODUCT_NUM = 215660,
            @NO_QUANTITY = @IceBurnerCount,
            @NO_PRICE = 0,
            @DI_ITEM_KEEP = 1,
            @NO_TO_USERUID = @UserUID,
            @NO_TO_UNITUID = @UserUID,
            @ST_GIFT_MESSAGE = N'VIP Tier Reward Ice Burners',
            @DI_BUY_CASH = 0;
    END;

    -- In-Game Synchronization: Insert Magic Amulet into Cash Locker
    IF OBJECT_ID(N'ES_BILLING.dbo.EBP_BuyItem', N'P') IS NOT NULL AND @MagicAmuletID > 0
    BEGIN
        EXEC ES_BILLING.dbo.EBP_BuyItem
            @ST_SERVERORDERID = 'VIP_AMULET',
            @ST_GROUPORDERID = 'VIP_AMULET_GRP',
            @CD_USERUID = @UserUID,
            @ST_USERID = N'VIP_SYSTEM',
            @NO_SERVER_SET_ID = 1,
            @NO_UNITUID = @UserUID,
            @NO_LEVEL = 99,
            @NO_PRODUCT_NUM = @MagicAmuletID,
            @NO_QUANTITY = 1,
            @NO_PRICE = 0,
            @DI_ITEM_KEEP = 1,
            @NO_TO_USERUID = @UserUID,
            @NO_TO_UNITUID = @UserUID,
            @ST_GIFT_MESSAGE = N'VIP Tier Reward Magic Amulet',
            @DI_BUY_CASH = 0;
    END;

    SELECT 1 AS Claimed, @TargetVIP AS VIPTier, @RewardED AS RewardED, @IceBurnerCount AS IceBurnerCount, @MagicAmuletID AS MagicAmuletID, @Desc AS Description, N'Success' AS Message;
END;
GO
