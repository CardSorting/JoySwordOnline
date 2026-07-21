USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordTopupTierPolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordTopupTierPolicy (
        TierID INT NOT NULL CONSTRAINT PK_JoySwordTopupTierPolicy PRIMARY KEY CLUSTERED,
        USDPrice DECIMAL(10, 2) NOT NULL,
        BaseCash INT NOT NULL,
        TierName NVARCHAR(128) NOT NULL
    );

    INSERT INTO dbo.JoySwordTopupTierPolicy (TierID, USDPrice, BaseCash, TierName)
    VALUES
    (1,  0.99,   1000, N'1,000 Cash Tier ($0.99)'),
    (2,  4.99,   5000, N'5,000 Cash Tier ($4.99)'),
    (3, 14.99,  15000, N'15,000 Cash Tier ($14.99)'),
    (4, 29.99,  30000, N'30,000 Cash Tier ($29.99)'),
    (5, 49.99,  50000, N'50,000 Cash Tier ($49.99)'),
    (6, 99.99, 100000, N'100,000 Cash Tier ($99.99)');
END;
GO

IF OBJECT_ID(N'dbo.JoySwordFirstTopupBonus', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordFirstTopupBonus (
        UserUID INT NOT NULL,
        TierID INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordFirstTopupBonus_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordFirstTopupBonus PRIMARY KEY CLUSTERED (UserUID, TierID)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySword_ProcessCashTopup
    @UserUID INT,
    @TierID INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM dbo.JoySwordTopupTierPolicy WHERE TierID = @TierID)
    BEGIN
        SELECT 0 AS Success, 0 AS BaseCash, 0 AS BonusCash, 0 AS TotalCash, 0 AS IsFirstTopup, N'Invalid Topup Tier' AS Message;
        RETURN;
    END;

    DECLARE @BaseCash INT = 0;
    DECLARE @BonusCash INT = 0;
    DECLARE @TotalCash INT = 0;
    DECLARE @IsFirstTopup BIT = 0;
    DECLARE @TierName NVARCHAR(128) = N'';

    SELECT @BaseCash = BaseCash, @TierName = TierName
    FROM dbo.JoySwordTopupTierPolicy
    WHERE TierID = @TierID;

    IF NOT EXISTS (SELECT 1 FROM dbo.JoySwordFirstTopupBonus WHERE UserUID = @UserUID AND TierID = @TierID)
    BEGIN
        SET @IsFirstTopup = 1;
        SET @BonusCash = @BaseCash; -- 100% 2x Bonus on First Top-Up
        INSERT INTO dbo.JoySwordFirstTopupBonus (UserUID, TierID)
        VALUES (@UserUID, @TierID);
    END;

    SET @TotalCash = @BaseCash + @BonusCash;

    -- In-Game Cash Account Balance Synchronization
    IF OBJECT_ID(N'ES_BILLING.dbo.EB_Cash', N'U') IS NOT NULL
    BEGIN
        IF OBJECT_ID(N'ES_BILLING.dbo.JoySword_EnsureUserCashAccount', N'P') IS NOT NULL
        BEGIN
            EXEC ES_BILLING.dbo.JoySword_EnsureUserCashAccount @UserUID;
        END;

        UPDATE ES_BILLING.dbo.EB_Cash
        SET NO_REMAIN_CASH = NO_REMAIN_CASH + @BaseCash,
            NO_REMAIN_BONUS = NO_REMAIN_BONUS + @BonusCash,
            NO_TOTAL_CHARGE_CASH = NO_TOTAL_CHARGE_CASH + @TotalCash,
            DT_RECHARGE_DATE = GETDATE()
        WHERE CD_USERUID = @UserUID;
    END;

    SELECT 
        1 AS Success, 
        @UserUID AS UserUID,
        @TierID AS TierID,
        @BaseCash AS BaseCash, 
        @BonusCash AS BonusCash, 
        @TotalCash AS TotalCash, 
        @IsFirstTopup AS IsFirstTopup, 
        @TierName AS TierName,
        N'Topup processed successfully' AS Message;
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySword_ResetFirstTopupBonuses
    @UserUID INT = 0 -- 0 resets globally for all users (e.g. Annual Reset Event)
AS
BEGIN
    SET NOCOUNT ON;

    IF @UserUID = 0
    BEGIN
        DELETE FROM dbo.JoySwordFirstTopupBonus;
        SELECT 1 AS Success, @@ROWCOUNT AS ResetCount, N'All First-Topup 2x Bonuses reset globally for Anniversary Event' AS Message;
    END
    ELSE
    BEGIN
        DELETE FROM dbo.JoySwordFirstTopupBonus WHERE UserUID = @UserUID;
        SELECT 1 AS Success, @@ROWCOUNT AS ResetCount, N'User First-Topup 2x Bonuses reset successfully' AS Message;
    END;
END;
GO

