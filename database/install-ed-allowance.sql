USE Game01;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID(N'dbo.JoySwordEDAllowancePolicy', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordEDAllowancePolicy (
        PolicyID INT NOT NULL CONSTRAINT PK_JoySwordEDAllowancePolicy PRIMARY KEY CLUSTERED,
        BaseEDReward INT NOT NULL,
        EDCap INT NOT NULL,
        TimeZoneName NVARCHAR(128) NOT NULL,
        CreatedDate DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordEDAllowancePolicy_CreatedDate DEFAULT SYSDATETIME(),
        UpdatedDate DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordEDAllowancePolicy_UpdatedDate DEFAULT SYSDATETIME()
    );

    INSERT INTO dbo.JoySwordEDAllowancePolicy (PolicyID, BaseEDReward, EDCap, TimeZoneName)
    VALUES (1, 5000000, 200000000, N'Mountain Standard Time');
END;
GO

IF OBJECT_ID(N'dbo.JoySwordEDAllowanceClaim', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.JoySwordEDAllowanceClaim (
        UserUID INT NOT NULL,
        ClaimDateKey INT NOT NULL,
        BaseEDClaimed INT NOT NULL,
        ClaimedAt DATETIME2(0) NOT NULL CONSTRAINT DF_JoySwordEDAllowanceClaim_ClaimedAt DEFAULT SYSDATETIME(),
        CONSTRAINT PK_JoySwordEDAllowanceClaim PRIMARY KEY CLUSTERED (UserUID, ClaimDateKey)
    );
END;
GO

CREATE OR ALTER PROCEDURE dbo.JoySwordEDAllowance_Claim
    @UserUID INT
AS
BEGIN
    SET NOCOUNT ON;
    
    IF NOT EXISTS (SELECT 1 FROM dbo.JoySwordEDAllowancePolicy WHERE PolicyID = 1)
    BEGIN
        SELECT 0 AS Claimed, 0 AS EDReward, N'Policy Not Installed' AS Message;
        RETURN;
    END;

    DECLARE @TodayKey INT = CAST(CONVERT(VARCHAR(8), GETDATE(), 112) AS INT);
    
    IF EXISTS (SELECT 1 FROM dbo.JoySwordEDAllowanceClaim WHERE UserUID = @UserUID AND ClaimDateKey = @TodayKey)
    BEGIN
        SELECT 0 AS Claimed, 0 AS EDReward, N'Already Claimed Today' AS Message;
        RETURN;
    END;

    DECLARE @RewardED INT = 5000000;

    INSERT INTO dbo.JoySwordEDAllowanceClaim (UserUID, ClaimDateKey, BaseEDClaimed)
    VALUES (@UserUID, @TodayKey, @RewardED);

    SELECT 1 AS Claimed, @RewardED AS EDReward, N'Success' AS Message;
END;
GO
