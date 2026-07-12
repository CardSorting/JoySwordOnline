USE Account;
GO

-- 1. Clean up MUser table and force single admin account (UserUID = 10029, which corresponds to the pre-existing test8 character in Game01)
PRINT 'Cleaning up MUser...';
DELETE FROM dbo.MUser WHERE UserUID <> 10029;

IF NOT EXISTS (SELECT 1 FROM dbo.MUser WHERE UserUID = 10029)
BEGIN
    SET IDENTITY_INSERT dbo.MUser ON;
    INSERT INTO dbo.MUser (UserUID, UserID, Password, UserName, PublisherSN, Gender, Age, RegDate, DelDate, PlayDayCnt, PlayGuide, LastLogin, IsRecommend, GuestUser, IsLogin, SecurityType, ChannelCode)
    VALUES (10029, 'admin', 'admin', 'admin', 7, 1, 0, GETDATE(), GETDATE(), 14, 1, GETDATE(), 1, 0, 0, 0, 0);
    SET IDENTITY_INSERT dbo.MUser OFF;
END
ELSE
BEGIN
    UPDATE dbo.MUser
    SET UserID = 'admin',
        Password = 'admin',
        UserName = 'admin'
    WHERE UserUID = 10029;
END
GO

-- 2. Clean up and insert into TUser
PRINT 'Cleaning up TUser...';
DELETE FROM dbo.TUser;
INSERT INTO dbo.TUser (id, pw, comments, authlevel, MTAuthLevel)
VALUES ('admin', 'admin', 'Administrator account', 4, 4);
GO

-- 3. Clean up and ensure MUserAuthority has admin level (AuthLevel = 4 is Admin/GM)
PRINT 'Setting up MUserAuthority...';
SET CONTEXT_INFO 0xDEADBEEF;
DELETE FROM dbo.MUserAuthority WHERE UserUID <> 10029;
IF NOT EXISTS (SELECT 1 FROM dbo.MUserAuthority WHERE UserUID = 10029)
BEGIN
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel) VALUES (10029, 4);
END
ELSE
BEGIN
    UPDATE dbo.MUserAuthority SET AuthLevel = 4 WHERE UserUID = 10029;
END
SET CONTEXT_INFO 0x0;
GO

-- 4. Refactor mup_auth_user to map ANY login attempt to the 'admin' account and bypass password validation
PRINT 'Refactoring mup_auth_user...';
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

-- Force the login to always authenticate as the single 'admin' account
SET @strUserID_ = 'admin';

DECLARE @strPassword nvarchar(20)
,       @strUserName nvarchar(16)
,		@iAge int
,       @bDeleted bit
,		@sdtEnddate smalldatetime
,		@strReason	nvarchar(100)
,		@bIsRecommend bit
,		@iPublisherSN	int
,		@iSkillOption bit

SELECT  @sdtEnddate = getdate()
,		@strReason = 'Á¦Àç ÀÌÀ¯'

SELECT  @iUserUID = UserUID
,       @strPassword = Password
,       @strUserName = UserName
,		@iAge = Age
,       @bPlayGuide = PlayGuide
,       @bDeleted = Deleted
,		@bIsRecommend = IsRecommend
,		@iPublisherSN = PublisherSN
    FROM dbo.MUser WITH(NOLOCK)
    WHERE UserID = @strUserID_

-- Skill options
SELECT @iSkillOption = SkillOption 
	FROM dbo.MUserSkillOption WITH (NOLOCK)
	WHERE USERUID = @iUserUID

IF @iUserUID = 0
    BEGIN    SELECT @iOK = -1    GOTO END_PROC    END

-- Always succeed password check for the admin user
SELECT @iOK = 0;

SELECT @iAuthLevel = AuthLevel FROM dbo.MUserAuthority( NOLOCK ) WHERE UserUID = @iUserUID

-- PC room or Nexon internal check
IF EXISTS( SELECT * FROM dbo.MInternalID WITH( NOLOCK ) WHERE ID = @strUserID_ )
BEGIN
    SET @bInternalUser = 1
END

END_PROC:
SELECT @iOK, @iUserUID, @strUserName, @iAuthLevel, @bPlayGuide, @bInternalUser, @sdtEnddate, @strReason, @bIsRecommend, ISNULL(@iSkillOption, 0)
GO

-- 5. Refactor mup_get_userinfo to always resolve to the admin account
PRINT 'Refactoring mup_get_userinfo...';
GO
ALTER PROCEDURE [dbo].[mup_get_userinfo]
	@strUserID		NVARCHAR(20),
	@iOK			INT = 0	
AS
SET NOCOUNT ON;

DECLARE @iUserUID	BIGINT

-- Always force the UserID to be 'admin'
SET @strUserID = 'admin';

IF NOT EXISTS(SELECT * FROM dbo.Muser WITH(NOLOCK) WHERE UserID = @strUserID )
    BEGIN    SELECT @iOK = -1    GOTO END_PROC    END

SELECT @iUserUID = UserUID
	FROM dbo.MUser WITH (NOLOCK)
	WHERE UserID = @strUserID
		
END_PROC:
	SELECT @iUserUID, @iOK
GO

-- 6. Refactor mup_auth_global_user
PRINT 'Refactoring mup_auth_global_user...';
GO
ALTER PROCEDURE [dbo].[mup_auth_global_user]
	@strUserID_ [nvarchar](20),
	@iOK [int] = 0,
	@iUserUID [bigint] = 0
AS
SET NOCOUNT ON;

SET @strUserID_ = 'admin';

DECLARE @PublisherSN	INT

SELECT @iUserUID = UserUID, @PublisherSN = PublisherSN FROM dbo.Muser WITH(NOLOCK) WHERE UserID = @strUserID_ 

IF @iUserUID = 0
BEGIN
    SELECT @iOK = -1
    GOTO END_PROC
END

DECLARE @iAuthLevel int
SELECT @iAuthLevel = AuthLevel FROM dbo.MUserAuthority( NOLOCK ) WHERE UserUID = @iUserUID

IF @iAuthLevel = -4
	Begin
		SELECT @iOK = -5    GOTO END_PROC
	End

END_PROC:
SELECT @iOK, @iUserUID, @PublisherSN
GO

-- 7. Refactor mup_login_mornitor_user
PRINT 'Refactoring mup_login_mornitor_user...';
GO
ALTER PROCEDURE [dbo].[mup_login_mornitor_user]
	@strUserID_ [nvarchar](10),
	@strPassword_ [nvarchar](20),
    @iOK [int] = 0
AS
SET NOCOUNT ON;

SET @strUserID_ = 'admin';

DECLARE @iMTAuthLevel_ [tinyint]

BEGIN TRAN
	IF NOT EXISTS (SELECT * FROM dbo.TUser WITH (NOLOCK) WHERE ID = @strUserID_)
		BEGIN
			SELECT @iOK = -1
			GOTO END_PROC
		END
	ELSE
		BEGIN
			SELECT @iMTauthLevel_ = MTAuthLevel
				FROM dbo.TUser
				WHERE id = @strUserID_
			
			SELECT @iOK = @iMTauthLevel_
		END

COMMIT TRAN
GOTO END_PROC

FAIL_TRAN:
ROLLBACK TRAN

END_PROC:
SELECT @iOK
GO

PRINT 'Login refactoring complete.';
GO

-- 8. Clean up and set up Cash for admin in ES_BILLING
PRINT 'Setting up Cash for admin...';
GO
DELETE FROM ES_BILLING.dbo.EB_Cash;
INSERT INTO ES_BILLING.dbo.EB_Cash (CD_USERUID, ST_USERID, NO_TOTAL_CHARGE_CASH, NO_TOTAL_CHARGE_BONUS, NO_REMAIN_CASH, NO_REMAIN_BONUS, DT_FIRST_CHARGE_DATE, DT_RECHARGE_DATE)
VALUES (10029, 'admin', 2000000000, 2000000000, 2000000000, 2000000000, GETDATE(), GETDATE());
GO
PRINT 'Cash setup complete.';
