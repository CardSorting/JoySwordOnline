USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordStarlightWallet', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordStarlightWallet (
        UserUID INT NOT NULL CONSTRAINT PK_JoySwordStarlightWallet PRIMARY KEY CLUSTERED,
        StarlightBalance INT NOT NULL CONSTRAINT DF_JoySwordStarlightWallet_Balance DEFAULT 0,
        TotalEarned INT NOT NULL CONSTRAINT DF_JoySwordStarlightWallet_TotalEarned DEFAULT 0,
        LastUpdated DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordStarlightWallet_LastUpdated DEFAULT SYSDATETIME()
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySword_SpendCashback
    @UserUID INT,
    @CashSpent INT
AS
BEGIN
    SET NOCOUNT ON;

    IF @CashSpent <= 0
    BEGIN
        SELECT 0 AS Success, 0 AS CashbackEarned, 0 AS NewBalance, N'Invalid Spend Amount' AS Message;
        RETURN;
    END;

    DECLARE @Cashback INT = @CashSpent / 10; -- 10% Starlight Cashback Rate

    IF NOT EXISTS (SELECT 1 FROM dbo.JoySwordStarlightWallet WHERE UserUID = @UserUID)
    BEGIN
        INSERT INTO dbo.JoySwordStarlightWallet (UserUID, StarlightBalance, TotalEarned)
        VALUES (@UserUID, @Cashback, @Cashback);
    END
    ELSE
    BEGIN
        UPDATE dbo.JoySwordStarlightWallet
        SET StarlightBalance = StarlightBalance + @Cashback,
            TotalEarned = TotalEarned + @Cashback,
            LastUpdated = SYSDATETIME()
        WHERE UserUID = @UserUID;
    END;

    DECLARE @NewBalance INT = 0;
    SELECT @NewBalance = StarlightBalance FROM dbo.JoySwordStarlightWallet WHERE UserUID = @UserUID;

    SELECT 
        1 AS Success,
        @UserUID AS UserUID,
        @CashSpent AS CashSpent,
        @Cashback AS CashbackEarned,
        @NewBalance AS NewStarlightBalance,
        N'Starlight Cashback awarded successfully' AS Message;
END;
GO
