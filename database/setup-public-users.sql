USE Account;
GO

PRINT 'Configuring public multi-user account seed...';

DECLARE @AdminUser NVARCHAR(20) = N'$(ADMIN_USER)';
DECLARE @AdminPassword NVARCHAR(20) = N'$(ADMIN_PASSWORD)';
DECLARE @AdminStartingCash BIGINT = CONVERT(BIGINT, '$(ADMIN_STARTING_CASH)');
DECLARE @AdminUID BIGINT;
SELECT @AdminUID = UserUID
FROM dbo.MUser WITH (UPDLOCK, HOLDLOCK)
WHERE UserID = @AdminUser;

IF @AdminUID IS NULL
BEGIN
    INSERT INTO dbo.MUser (
        UserID,
        Password,
        UserName,
        PublisherSN,
        Gender,
        Age,
        RegDate,
        DelDate,
        PlayDayCnt,
        PlayGuide,
        LastLogin,
        IsRecommend,
        GuestUser,
        IsLogin,
        SecurityType,
        ChannelCode
    )
    VALUES (
        @AdminUser,
        @AdminPassword,
        @AdminUser,
        7,
        1,
        0,
        GETDATE(),
        GETDATE(),
        14,
        1,
        GETDATE(),
        1,
        0,
        0,
        0,
        0
    );

    SELECT @AdminUID = CONVERT(BIGINT, SCOPE_IDENTITY());
END
ELSE
BEGIN
    UPDATE dbo.MUser
    SET Password = @AdminPassword,
        UserName = @AdminUser,
        GuestUser = 0,
        IsLogin = 0,
        SecurityType = 0,
        ChannelCode = 0
    WHERE UserUID = @AdminUID;
END
GO

DECLARE @AdminUID BIGINT;
DECLARE @AdminUser NVARCHAR(20) = N'$(ADMIN_USER)';
SELECT @AdminUID = UserUID FROM dbo.MUser WHERE UserID = @AdminUser;

SET CONTEXT_INFO 0xDEADBEEF;
IF NOT EXISTS (SELECT 1 FROM dbo.MUserAuthority WHERE UserUID = @AdminUID)
BEGIN
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel)
    VALUES (@AdminUID, 4);
END
ELSE
BEGIN
    UPDATE dbo.MUserAuthority
    SET AuthLevel = 4
    WHERE UserUID = @AdminUID;
END
SET CONTEXT_INFO 0x0;
GO

DECLARE @AdminUser NVARCHAR(20) = N'$(ADMIN_USER)';
DECLARE @AdminPassword NVARCHAR(20) = N'$(ADMIN_PASSWORD)';

IF NOT EXISTS (SELECT 1 FROM dbo.TUser WHERE id = @AdminUser)
BEGIN
    INSERT INTO dbo.TUser (id, pw, comments, authlevel, MTAuthLevel)
    VALUES (@AdminUser, @AdminPassword, N'Administrator account', 4, 4);
END
ELSE
BEGIN
    UPDATE dbo.TUser
    SET pw = @AdminPassword,
        comments = N'Administrator account',
        authlevel = 4,
        MTAuthLevel = 4
    WHERE id = @AdminUser;
END
GO

DECLARE @AdminStartingCash BIGINT = CONVERT(BIGINT, '$(ADMIN_STARTING_CASH)');

-- Ensure all users in Account.dbo.MUser have a corresponding record in ES_BILLING.dbo.EB_Cash
INSERT INTO ES_BILLING.dbo.EB_Cash (
    CD_USERUID,
    ST_USERID,
    NO_TOTAL_CHARGE_CASH,
    NO_TOTAL_CHARGE_BONUS,
    NO_REMAIN_CASH,
    NO_REMAIN_BONUS,
    DT_FIRST_CHARGE_DATE,
    DT_RECHARGE_DATE
)
SELECT 
    U.UserUID,
    U.UserID,
    @AdminStartingCash,
    0,
    @AdminStartingCash,
    0,
    GETDATE(),
    GETDATE()
FROM Account.dbo.MUser U
WHERE NOT EXISTS (
    SELECT 1 FROM ES_BILLING.dbo.EB_Cash C WHERE C.CD_USERUID = U.UserUID
);

-- Repair existing placeholder cash rows, without refilling accounts that
-- legitimately spent their balance down to 0 after a prior seed.
UPDATE C
SET C.NO_TOTAL_CHARGE_CASH = @AdminStartingCash,
    C.NO_REMAIN_CASH = @AdminStartingCash,
    C.DT_RECHARGE_DATE = GETDATE()
FROM ES_BILLING.dbo.EB_Cash C
WHERE (C.NO_REMAIN_CASH IS NULL OR C.NO_REMAIN_CASH = 0)
  AND ISNULL(C.NO_TOTAL_CHARGE_CASH, 0) = 0;

-- Game01 legacy tables enforce their own users row before virtual cash can
-- exist. Keep LoginUID aligned with Account.dbo.MUser.UserUID for seeded users.
SET IDENTITY_INSERT Game01.dbo.users ON;

INSERT INTO Game01.dbo.users (
    Login,
    passwd,
    sex,
    LoginUID,
    firstLogin,
    lastConnect,
    lastLogin,
    playTime,
    gamePoint,
    IPAddress,
    Connecting,
    ModeLevel,
    Grade
)
SELECT
    U.UserID,
    U.Password,
    '0',
    CONVERT(INT, U.UserUID),
    GETDATE(),
    GETDATE(),
    GETDATE(),
    0,
    0,
    N'0.0.0.0',
    0,
    0x00000000,
    0
FROM Account.dbo.MUser U
WHERE U.UserUID BETWEEN 0 AND 2147483647
  AND NOT EXISTS (
      SELECT 1
      FROM Game01.dbo.users GU
      WHERE GU.LoginUID = CONVERT(INT, U.UserUID)
  )
  AND NOT EXISTS (
      SELECT 1
      FROM Game01.dbo.users GU
      WHERE GU.Login = U.UserID
  );

SET IDENTITY_INSERT Game01.dbo.users OFF;

-- Some game-server billing paths read the legacy Game01 virtual cash store
-- instead of ES_BILLING directly, so keep both stores in sync for seeded users.
INSERT INTO Game01.dbo.VCGAVirtualCash (LoginUID, VCPoint)
SELECT
    CONVERT(INT, U.UserUID),
    CONVERT(INT, CASE
        WHEN ISNULL(C.NO_REMAIN_CASH, 0) > 0 THEN C.NO_REMAIN_CASH
        ELSE @AdminStartingCash
    END)
FROM Account.dbo.MUser U
LEFT JOIN ES_BILLING.dbo.EB_Cash C ON C.CD_USERUID = U.UserUID
WHERE U.UserUID BETWEEN 0 AND 2147483647
  AND EXISTS (
      SELECT 1
      FROM Game01.dbo.users GU
      WHERE GU.LoginUID = CONVERT(INT, U.UserUID)
  )
  AND NOT EXISTS (
      SELECT 1
      FROM Game01.dbo.VCGAVirtualCash V
      WHERE V.LoginUID = CONVERT(INT, U.UserUID)
  );

UPDATE V
SET V.VCPoint = CONVERT(INT, CASE
        WHEN ISNULL(C.NO_REMAIN_CASH, 0) > 0 THEN C.NO_REMAIN_CASH
        ELSE @AdminStartingCash
    END)
FROM Game01.dbo.VCGAVirtualCash V
JOIN Account.dbo.MUser U ON V.LoginUID = CONVERT(INT, U.UserUID)
LEFT JOIN ES_BILLING.dbo.EB_Cash C ON C.CD_USERUID = U.UserUID
WHERE V.VCPoint IS NULL OR V.VCPoint = 0;
GO

PRINT 'Public multi-user account seed complete.';
SELECT COUNT(*) AS AccountCount FROM Account.dbo.MUser;
GO
