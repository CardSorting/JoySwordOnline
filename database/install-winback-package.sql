USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordWinbackClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordWinbackClaim (
        UserUID INT NOT NULL CONSTRAINT PK_JoySwordWinbackClaim PRIMARY KEY CLUSTERED,
        GrantED INT NOT NULL,
        GrantCash INT NOT NULL,
        WinbackCubeID INT NOT NULL,
        MagicAmuletID INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordWinbackClaim_ClaimedAt DEFAULT SYSDATETIME()
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordWinback_Claim
    @UserUID INT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM dbo.JoySwordWinbackClaim WHERE UserUID = @UserUID)
    BEGIN
        SELECT 0 AS Claimed, 0 AS GrantED, 0 AS GrantCash, 0 AS WinbackCubeID, 0 AS MagicAmuletID, N'Winback Package Already Claimed' AS Message;
        RETURN;
    END;

    DECLARE @GrantED INT = 50000000;
    DECLARE @GrantCash INT = 36000;
    DECLARE @WinbackCubeID INT = 132580; -- Returned Warrior Welcoming Cube
    DECLARE @MagicAmuletID INT = 130152; -- Magic Amulet Lv.10 (Instant Endgame Weapon Upgrade Boost)

    INSERT INTO dbo.JoySwordWinbackClaim (UserUID, GrantED, GrantCash, WinbackCubeID, MagicAmuletID)
    VALUES (@UserUID, @GrantED, @GrantCash, @WinbackCubeID, @MagicAmuletID);

    SELECT 1 AS Claimed, @GrantED AS GrantED, @GrantCash AS GrantCash, @WinbackCubeID AS WinbackCubeID, @MagicAmuletID AS MagicAmuletID, N'Winback Welcome Package & Magic Amulet Lv.10 Granted Successfully' AS Message;
END;
GO
