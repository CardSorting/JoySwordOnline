USE [Account];
GO

IF OBJECT_ID(N'dbo.JoySwordEnsurePublicIdentity', N'P') IS NOT NULL
    DROP PROCEDURE dbo.JoySwordEnsurePublicIdentity;
GO

CREATE PROCEDURE dbo.JoySwordEnsurePublicIdentity
    @strUserID_ nvarchar(20),
    @strPassword_ nvarchar(20),
    @strUserName_ nvarchar(16) = NULL,
    @iPublisherSN_ int = 7,
    @bGender_ bit = 1,
    @iAge_ tinyint = 0,
    @iGuestUser_ bit = 0,
    @iChannelCode tinyint = 0,
    @iUserUID bigint OUTPUT,
    @iOK int OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    SET @iOK = 0;
    SET @iUserUID = 0;

    IF @strUserName_ IS NULL OR LEN(@strUserName_) = 0
        SET @strUserName_ = LEFT(@strUserID_, 16);

    IF LEN(@strUserID_) < 3 OR LEN(@strUserID_) > 20
    BEGIN
        SET @iOK = -16;
        RETURN;
    END

    IF @strUserID_ COLLATE Latin1_General_BIN LIKE '%[^a-zA-Z0-9_]%'
    BEGIN
        SET @iOK = -16;
        RETURN;
    END

    IF LEN(@strPassword_) < 1 OR LEN(@strPassword_) > 20
    BEGIN
        SET @iOK = -15;
        RETURN;
    END

    IF @strUserID_ LIKE '%admin%'
       OR @strUserID_ LIKE 'gm%'
       OR @strUserID_ LIKE '% gm%'
       OR @strUserID_ LIKE '%[_]gm%'
       OR @strUserID_ LIKE '%[-]gm%'
       OR @strUserID_ LIKE '%system%'
       OR @strUserID_ LIKE '%support%'
       OR @strUserID_ LIKE '%moderator%'
       OR @strUserID_ = 'sa'
    BEGIN
        SET @iOK = -10;
        RETURN;
    END

    BEGIN TRY
        BEGIN TRAN;

        SELECT @iUserUID = CONVERT(bigint, UserUID)
        FROM dbo.MUser WITH (UPDLOCK, HOLDLOCK)
        WHERE UserID = @strUserID_;

        IF ISNULL(@iUserUID, 0) = 0
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
                @strUserID_,
                @strPassword_,
                @strUserName_,
                @iPublisherSN_,
                @bGender_,
                @iAge_,
                GETDATE(),
                GETDATE(),
                0,
                1,
                GETDATE(),
                0,
                @iGuestUser_,
                0,
                0,
                @iChannelCode
            );

            SET @iUserUID = CONVERT(bigint, SCOPE_IDENTITY());
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.MUserAuthority WITH (UPDLOCK, HOLDLOCK) WHERE UserUID = @iUserUID)
            INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel) VALUES (@iUserUID, 0);

        IF OBJECT_ID(N'dbo.MUserSkillOption', N'U') IS NOT NULL
           AND NOT EXISTS (SELECT 1 FROM dbo.MUserSkillOption WITH (UPDLOCK, HOLDLOCK) WHERE UserUID = @iUserUID)
            INSERT INTO dbo.MUserSkillOption (UserUID, SkillOption) VALUES (@iUserUID, 1);

        IF OBJECT_ID(N'dbo.MUserOTP', N'U') IS NOT NULL
           AND NOT EXISTS (SELECT 1 FROM dbo.MUserOTP WITH (UPDLOCK, HOLDLOCK) WHERE UserUID = @iUserUID)
            INSERT INTO dbo.MUserOTP (UserUID, OTP) VALUES (@iUserUID, @strPassword_);

        IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WITH (UPDLOCK, HOLDLOCK) WHERE CD_USERUID = @iUserUID)
        BEGIN
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
            VALUES (
                @iUserUID,
                @strUserID_,
                0,
                0,
                0,
                0,
                GETDATE(),
                GETDATE()
            );
        END

        IF @iUserUID BETWEEN 0 AND 2147483647
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM Game01.dbo.users WITH (UPDLOCK, HOLDLOCK)
                WHERE LoginUID = CONVERT(int, @iUserUID) OR Login = @strUserID_
            )
            BEGIN
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
                VALUES (
                    @strUserID_,
                    @strPassword_,
                    '0',
                    CONVERT(int, @iUserUID),
                    GETDATE(),
                    GETDATE(),
                    GETDATE(),
                    0,
                    0,
                    N'0.0.0.0',
                    0,
                    0x00000000,
                    0
                );

                SET IDENTITY_INSERT Game01.dbo.users OFF;
            END

            IF NOT EXISTS (
                SELECT 1
                FROM Game01.dbo.VCGAVirtualCash WITH (UPDLOCK, HOLDLOCK)
                WHERE LoginUID = CONVERT(int, @iUserUID)
            )
                INSERT INTO Game01.dbo.VCGAVirtualCash (LoginUID, VCPoint)
                VALUES (CONVERT(int, @iUserUID), 0);
        END

        COMMIT TRAN;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRAN;
        BEGIN TRY
            SET IDENTITY_INSERT Game01.dbo.users OFF;
        END TRY
        BEGIN CATCH
        END CATCH
        SET @iOK = -100;
        SET @iUserUID = 0;
    END CATCH
END
GO

ALTER PROCEDURE [dbo].[mup_auth_user]
    @bDebugAuth [bit],
    @strUserID_ [nvarchar](20),
    @strPassword_ [nvarchar](20),
    @iAge_ [int],
    @iPublisherSN_ [int],
    @iOK [int] = 0,
    @iUserUID [bigint] = 0,
    @bPlayGuide [bit] = 1,
    @iAuthLevel [int] = 0,
    @bInternalUser [bit] = 0
AS
SET NOCOUNT ON;

DECLARE @strPassword nvarchar(20),
        @strUserName nvarchar(16),
        @iAge int,
        @bDeleted bit,
        @sdtEnddate smalldatetime,
        @strReason nvarchar(100),
        @bIsRecommend bit,
        @iSkillOption bit,
        @sdtRegDate smalldatetime,
        @sdtLastLogin smalldatetime;

SELECT @sdtEnddate = GETDATE(),
       @strReason = N'blocked',
       @iOK = 0,
       @iUserUID = 0,
       @iAuthLevel = 0,
       @bInternalUser = 0,
       @bPlayGuide = 1,
       @bIsRecommend = 0,
       @iSkillOption = 0;

SELECT @iUserUID = CONVERT(bigint, UserUID),
       @strPassword = Password,
       @strUserName = UserName,
       @iAge = Age,
       @bPlayGuide = PlayGuide,
       @bDeleted = Deleted,
       @bIsRecommend = IsRecommend,
       @sdtRegDate = RegDate,
       @sdtLastLogin = LastLogin
FROM dbo.MUser WITH (NOLOCK)
WHERE UserID = @strUserID_;

IF ISNULL(@iUserUID, 0) = 0
BEGIN
    EXEC dbo.JoySwordEnsurePublicIdentity
        @strUserID_ = @strUserID_,
        @strPassword_ = @strPassword_,
        @strUserName_ = @strUserID_,
        @iPublisherSN_ = @iPublisherSN_,
        @bGender_ = 1,
        @iAge_ = @iAge_,
        @iGuestUser_ = 0,
        @iChannelCode = 0,
        @iUserUID = @iUserUID OUTPUT,
        @iOK = @iOK OUTPUT;

    IF @iOK <> 0
        GOTO END_PROC;

    SELECT @strPassword = Password,
           @strUserName = UserName,
           @iAge = Age,
           @bPlayGuide = PlayGuide,
           @bDeleted = Deleted,
           @bIsRecommend = IsRecommend,
           @sdtRegDate = RegDate,
           @sdtLastLogin = LastLogin
    FROM dbo.MUser WITH (NOLOCK)
    WHERE UserUID = @iUserUID;
END
ELSE
BEGIN
    EXEC dbo.JoySwordEnsurePublicIdentity
        @strUserID_ = @strUserID_,
        @strPassword_ = @strPassword,
        @strUserName_ = @strUserName,
        @iPublisherSN_ = @iPublisherSN_,
        @bGender_ = 1,
        @iAge_ = @iAge_,
        @iGuestUser_ = 0,
        @iChannelCode = 0,
        @iUserUID = @iUserUID OUTPUT,
        @iOK = @iOK OUTPUT;

    IF @iOK <> 0
        GOTO END_PROC;
END

IF ISNULL(@iUserUID, 0) = 0
BEGIN
    SELECT @iOK = -1;
    GOTO END_PROC;
END

IF ISNULL(@bDeleted, 0) = 1
BEGIN
    SELECT @iOK = -2;
    GOTO END_PROC;
END

IF @strPassword_ <> @strPassword
BEGIN
    SELECT @iOK = -3;
    GOTO END_PROC;
END

UPDATE dbo.MUser
SET LastLogin = GETDATE(),
    IsLogin = 0
WHERE UserUID = @iUserUID;

SELECT @sdtLastLogin = LastLogin
FROM dbo.MUser WITH (NOLOCK)
WHERE UserUID = @iUserUID;

IF @iAge_ <> ISNULL(@iAge, @iAge_)
    UPDATE dbo.MUser SET Age = @iAge_ WHERE UserUID = @iUserUID;

SELECT @iSkillOption = SkillOption
FROM dbo.MUserSkillOption WITH (NOLOCK)
WHERE UserUID = @iUserUID;

SELECT @iAuthLevel = ISNULL(MAX(AuthLevel), 0)
FROM dbo.MUserAuthority WITH (NOLOCK)
WHERE UserUID = @iUserUID;

IF EXISTS (SELECT 1 FROM dbo.MInternalID WITH (NOLOCK) WHERE ID = @strUserID_)
    SET @bInternalUser = 1;

END_PROC:
SELECT @iOK, @iUserUID, @strUserName, @iAuthLevel, @bPlayGuide, @bInternalUser,
       @sdtEnddate, @strReason, @bIsRecommend, ISNULL(@iSkillOption, 0),
       @sdtRegDate, @sdtLastLogin;
GO

ALTER PROCEDURE [dbo].[mup_create_user]
    @strUserID_ [nvarchar](20),
    @strPassword_ [nvarchar](20),
    @strUserName_ [nvarchar](16),
    @iGuestUser_ [bit],
    @iOK [int] = 0,
    @iUserUID [bigint] = 0
AS
SET NOCOUNT ON;

EXEC dbo.JoySwordEnsurePublicIdentity
    @strUserID_ = @strUserID_,
    @strPassword_ = @strPassword_,
    @strUserName_ = @strUserName_,
    @iPublisherSN_ = 7,
    @bGender_ = 1,
    @iAge_ = 0,
    @iGuestUser_ = @iGuestUser_,
    @iChannelCode = 0,
    @iUserUID = @iUserUID OUTPUT,
    @iOK = @iOK OUTPUT;

SELECT @iOK, @iUserUID;
GO

ALTER PROCEDURE [dbo].[mup_create_nx_user]
    @strUserID_ [nvarchar](20),
    @strPassword_ [nvarchar](20),
    @iPublisherSN_ [int],
    @bGender_ [bit],
    @iAge_ [tinyint],
    @strUserName_ [nvarchar](16),
    @iGuestUser_ [bit],
    @iOK [int] = 0,
    @iUserUID [bigint] = 0,
    @bPlayGuide [bit] = 1,
    @bInternalUser [bit] = 0
AS
SET NOCOUNT ON;

EXEC dbo.JoySwordEnsurePublicIdentity
    @strUserID_ = @strUserID_,
    @strPassword_ = @strPassword_,
    @strUserName_ = @strUserName_,
    @iPublisherSN_ = @iPublisherSN_,
    @bGender_ = @bGender_,
    @iAge_ = @iAge_,
    @iGuestUser_ = @iGuestUser_,
    @iChannelCode = 0,
    @iUserUID = @iUserUID OUTPUT,
    @iOK = @iOK OUTPUT;

IF EXISTS (SELECT 1 FROM dbo.MInternalID WITH (NOLOCK) WHERE ID = @strUserID_)
    SET @bInternalUser = 1;

SELECT @iOK, @iUserUID, @bPlayGuide, @bInternalUser, 0, 1;
GO

ALTER PROCEDURE [dbo].[mup_create_global_user]
    @strUserID_ [nvarchar](20),
    @strPassword_ [nvarchar](20),
    @iPublisherSN_ [int],
    @bGender_ [bit],
    @iAge_ [tinyint],
    @strUserName_ [nvarchar](16),
    @iGuestUser_ [bit],
    @iChannelCode tinyint = 0,
    @iUserUID [bigint] = 0,
    @bPlayGuide [bit] = 1,
    @bInternalUser [bit] = 0,
    @iOK [int] = 0
AS
SET NOCOUNT ON;

EXEC dbo.JoySwordEnsurePublicIdentity
    @strUserID_ = @strUserID_,
    @strPassword_ = @strPassword_,
    @strUserName_ = @strUserName_,
    @iPublisherSN_ = @iPublisherSN_,
    @bGender_ = @bGender_,
    @iAge_ = @iAge_,
    @iGuestUser_ = @iGuestUser_,
    @iChannelCode = @iChannelCode,
    @iUserUID = @iUserUID OUTPUT,
    @iOK = @iOK OUTPUT;

IF EXISTS (SELECT 1 FROM dbo.MInternalID WITH (NOLOCK) WHERE ID = @strUserID_)
    SET @bInternalUser = 1;

SELECT @iOK, @iUserUID, @bPlayGuide, @bInternalUser, 0;
GO

PRINT 'JoySword hotpath account creation repair installed.';
GO
