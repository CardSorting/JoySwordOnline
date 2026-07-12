$Content = @'
-- =============================================================================
-- fix-post-character-creation.sql
-- Fixes server errors after character creation:
--   1. mup_auth_user returns RegDate & LastLogin to eliminate empty-date warnings
--   2. P_GEvent_GateOfDarkness_SET uses UPSERT to avoid duplicate rows
--   3. P_GEvent_GateOfDarkness_UPD is created (was missing, caused cerr at GSGameDBThread.cpp:5490)
--   4. TEvent_GateOfDarkness is deduplicated and given a unique index on UnitUID
-- =============================================================================

USE Account;
GO

-- Create or upgrade UserLoginAttempts table for hashed lockout tracking
IF OBJECT_ID(N'dbo.UserLoginAttempts', N'U') IS NOT NULL AND COL_LENGTH(N'dbo.UserLoginAttempts', N'UserHash') IS NULL
BEGIN
    DROP TABLE dbo.UserLoginAttempts;
END

IF OBJECT_ID(N'dbo.UserLoginAttempts', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.UserLoginAttempts (
        UserHash VARBINARY(32) PRIMARY KEY,
        FailedAttempts INT DEFAULT 0,
        LockoutUntil DATETIME NULL
    );
END
GO

-- Create or upgrade RegistrationHistory table to native In-Memory OLTP if supported
IF OBJECT_ID(N'dbo.RegistrationHistory', N'U') IS NOT NULL 
   AND ((SELECT is_memory_optimized FROM sys.tables WHERE name = 'RegistrationHistory') = 0 
        OR (SELECT durability_desc FROM sys.tables WHERE name = 'RegistrationHistory') <> 'SCHEMA_AND_DATA')
BEGIN
    IF OBJECT_ID(N'dbo.mup_check_and_record_rate_limit', N'P') IS NOT NULL
        DROP PROCEDURE dbo.mup_check_and_record_rate_limit;
    DROP TABLE dbo.RegistrationHistory;
END

IF OBJECT_ID(N'dbo.RegistrationHistory', N'U') IS NULL
BEGIN
    IF 1 = 0 -- Disable memory-optimized tables for Windows VM compatibility
    BEGIN
        -- Enable memory-optimized filegroup dynamically if missing
        IF NOT EXISTS (SELECT 1 FROM sys.filegroups WHERE type = 'FX')
        BEGIN
            EXEC('ALTER DATABASE Account ADD FILEGROUP Account_mem CONTAINS MEMORY_OPTIMIZED_DATA;');
            EXEC('ALTER DATABASE Account ADD FILE (name=''Account_mem_dir'', filename=''/var/opt/mssql/data/Account_mem_dir'') TO FILEGROUP Account_mem;');
        END
        
        -- Create native in-memory lock-free table with SCHEMA_AND_DATA durability (persists on restart)
        CREATE TABLE dbo.RegistrationHistory (
            Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY NONCLUSTERED,
            RegTime DATETIME NOT NULL,
            PasswordHash VARBINARY(32) NOT NULL,
            INDEX IX_RegistrationHistory_RegTime NONCLUSTERED (RegTime)
        ) WITH (MEMORY_OPTIMIZED = ON, DURABILITY = SCHEMA_AND_DATA);
    END
    ELSE
    BEGIN
        -- Fallback to standard disk table if in-memory OLTP is not supported on this instance
        CREATE TABLE dbo.RegistrationHistory (
            Id INT IDENTITY(1,1) PRIMARY KEY,
            RegTime DATETIME NOT NULL,
            PasswordHash VARBINARY(32) NOT NULL
        );
        CREATE NONCLUSTERED INDEX IX_RegistrationHistory_RegTime ON dbo.RegistrationHistory (RegTime);
    END
END
-- Create or upgrade rate limit helper procedure
IF OBJECT_ID(N'dbo.mup_check_and_record_rate_limit', N'P') IS NOT NULL
    DROP PROCEDURE dbo.mup_check_and_record_rate_limit;
GO

IF 1 = 0 -- Disable native compilation block for Windows VM compatibility
BEGIN
    EXEC('
    CREATE PROCEDURE dbo.mup_check_and_record_rate_limit
        @PassHash VARBINARY(32),
        @iOK INT OUTPUT,
        @DelaySeconds INT OUTPUT
    WITH NATIVE_COMPILATION, SCHEMABINDING
    AS
    BEGIN ATOMIC WITH (
        TRANSACTION ISOLATION LEVEL = SNAPSHOT,
        LANGUAGE = N''us_english''
    )
        -- Clean up history older than 5 minutes
        DELETE FROM dbo.RegistrationHistory WHERE RegTime < DATEADD(minute, -5, GETDATE());

        DECLARE @RecentRegCount INT = 0;
        DECLARE @BurstRegCount INT = 0;
        DECLARE @PasswordReuseCount INT = 0;

        -- Combined single-pass query
        SELECT 
            @RecentRegCount = COUNT(CASE WHEN RegTime >= DATEADD(second, -60, GETDATE()) THEN 1 END),
            @BurstRegCount = COUNT(CASE WHEN RegTime >= DATEADD(second, -10, GETDATE()) THEN 1 END),
            @PasswordReuseCount = COUNT(CASE WHEN PasswordHash = @PassHash AND RegTime >= DATEADD(minute, -5, GETDATE()) THEN 1 END)
        FROM dbo.RegistrationHistory;

        SET @DelaySeconds = 0;
        SET @iOK = 0;

        -- Calculate base delay
        IF @RecentRegCount >= 20 OR @BurstRegCount >= 5
        BEGIN
            SET @DelaySeconds = 5;
            IF @RecentRegCount >= 50
            BEGIN
                SET @iOK = -17; -- Block
                RETURN;
            END
        END
        ELSE IF @RecentRegCount >= 10 OR @BurstRegCount >= 3
        BEGIN
            SET @DelaySeconds = 3;
        END
        ELSE IF @RecentRegCount >= 4 OR @BurstRegCount >= 2
        BEGIN
            SET @DelaySeconds = 1;
        END

        -- Apply password reuse penalty
        IF @PasswordReuseCount >= 2
        BEGIN
            SET @DelaySeconds = @DelaySeconds + 3;
        END

        IF @DelaySeconds > 10
        BEGIN
            SET @DelaySeconds = 10;
        END

        -- Record the attempt
        INSERT INTO dbo.RegistrationHistory (RegTime, PasswordHash)
        VALUES (GETDATE(), @PassHash);
    END
    ');
END
ELSE
BEGIN
    EXEC('
    CREATE PROCEDURE dbo.mup_check_and_record_rate_limit
        @PassHash VARBINARY(32),
        @iOK INT OUTPUT,
        @DelaySeconds INT OUTPUT
    AS
    BEGIN
        SET NOCOUNT ON;
        
        -- Clean up history older than 5 minutes
        DELETE FROM dbo.RegistrationHistory WHERE RegTime < DATEADD(minute, -5, GETDATE());

        DECLARE @RecentRegCount INT = 0;
        DECLARE @BurstRegCount INT = 0;
        DECLARE @PasswordReuseCount INT = 0;

        -- Combined single-pass query
        SELECT 
            @RecentRegCount = COUNT(CASE WHEN RegTime >= DATEADD(second, -60, GETDATE()) THEN 1 END),
            @BurstRegCount = COUNT(CASE WHEN RegTime >= DATEADD(second, -10, GETDATE()) THEN 1 END),
            @PasswordReuseCount = COUNT(CASE WHEN PasswordHash = @PassHash AND RegTime >= DATEADD(minute, -5, GETDATE()) THEN 1 END)
        FROM dbo.RegistrationHistory WITH (NOLOCK);

        SET @DelaySeconds = 0;
        SET @iOK = 0;

        -- Calculate base delay
        IF @RecentRegCount >= 20 OR @BurstRegCount >= 5
        BEGIN
            SET @DelaySeconds = 5;
            IF @RecentRegCount >= 50
            BEGIN
                SET @iOK = -17; -- Block
                RETURN;
            END
        END
        ELSE IF @RecentRegCount >= 10 OR @BurstRegCount >= 3
        BEGIN
            SET @DelaySeconds = 3;
        END
        ELSE IF @RecentRegCount >= 4 OR @BurstRegCount >= 2
        BEGIN
            SET @DelaySeconds = 1;
        END

        -- Apply password reuse penalty
        IF @PasswordReuseCount >= 2
        BEGIN
            SET @DelaySeconds = @DelaySeconds + 3;
        END

        IF @DelaySeconds > 10
        BEGIN
            SET @DelaySeconds = 10;
        END

        -- Record the attempt
        INSERT INTO dbo.RegistrationHistory (RegTime, PasswordHash)
        VALUES (GETDATE(), @PassHash);
    END
    ');
END
GO

-- 1. Alter mup_auth_user to return RegDate and LastLogin as the last two columns.
--    The LoginServer binary reads these into m_kAccountInfo.m_wstrLastLogin and
--    wstrAccountRegDate; without them, UserStatistics.cpp:213 and
--    GSUserSession.cpp:1006 log conversion-failure warnings.
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

DECLARE @strPassword nvarchar(20)
,       @strUserName nvarchar(16)
,       @iAge int
,       @bDeleted bit
,       @sdtEnddate smalldatetime
,       @strReason  nvarchar(100)
,       @bIsRecommend bit
,       @iPublisherSN   int
,       @iSkillOption bit
,       @sdtRegDate smalldatetime
,       @sdtLastLogin smalldatetime

SELECT  @sdtEnddate = getdate()
,       @strReason = N'제재 이유'

SELECT  @iUserUID = UserUID
,       @strPassword = Password
,       @strUserName = UserName
,       @iAge = Age
,       @bPlayGuide = PlayGuide
,       @bDeleted = Deleted
,       @bIsRecommend = IsRecommend
,       @iPublisherSN = PublisherSN
,       @sdtRegDate = RegDate
,       @sdtLastLogin = LastLogin
    FROM dbo.MUser WITH(NOLOCK)
        WHERE UserID = @strUserID_

-- Skill option lookup
SELECT @iSkillOption = SkillOption
    FROM dbo.MUserSkillOption WITH (NOLOCK)
        WHERE USERUID = @iUserUID

IF @iUserUID = 0
    BEGIN    SELECT @iOK = -1    GOTO END_PROC    END

-- Check if the account is currently locked out
DECLARE @IsAdminAccount BIT = 0;
IF @strUserID_ = 'admin' OR EXISTS (SELECT 1 FROM dbo.MUserAuthority WITH (NOLOCK) WHERE UserUID = @iUserUID AND AuthLevel >= 4)
BEGIN
    SET @IsAdminAccount = 1;
END

DECLARE @UserHash VARBINARY(32) = HASHBYTES('SHA2_256', LOWER(@strUserID_));

IF EXISTS (SELECT 1 FROM dbo.UserLoginAttempts WITH (NOLOCK) WHERE UserHash = @UserHash AND LockoutUntil > GETDATE())
BEGIN
    -- Mask the lockout by returning -3 (Incorrect Password) instead of -4 to prevent account enumeration
    SELECT @iOK = -3
    GOTO END_PROC
END

IF @bDeleted = 1
    BEGIN    SELECT @iOK = -2    GOTO END_PROC    END

IF @strPassword_ <> @strPassword
BEGIN
    -- Record failed attempt using hashed UserID for database masking
    IF EXISTS (SELECT 1 FROM dbo.UserLoginAttempts WHERE UserHash = @UserHash)
    BEGIN
        UPDATE dbo.UserLoginAttempts
        SET FailedAttempts = FailedAttempts + 1,
            LockoutUntil = CASE 
                WHEN @IsAdminAccount = 1 AND FailedAttempts + 1 >= 3 THEN DATEADD(hour, 24, GETDATE()) -- Admin lockout: 3 attempts, 24 hours
                WHEN @IsAdminAccount = 0 AND FailedAttempts + 1 >= 5 THEN DATEADD(minute, 15, GETDATE()) -- Normal lockout: 5 attempts, 15 minutes
                ELSE NULL 
            END
        WHERE UserHash = @UserHash
    END
    ELSE
    BEGIN
        INSERT INTO dbo.UserLoginAttempts (UserHash, FailedAttempts, LockoutUntil)
        VALUES (@UserHash, 1, NULL)
    END

    SELECT @iOK = -3
    GOTO END_PROC
END

-- Reset failed attempts on successful login
IF EXISTS (SELECT 1 FROM dbo.UserLoginAttempts WHERE UserHash = @UserHash)
BEGIN
    UPDATE dbo.UserLoginAttempts
    SET FailedAttempts = 0,
        LockoutUntil = NULL
    WHERE UserHash = @UserHash
END

IF @iAge_ <> @iAge
BEGIN
    UPDATE dbo.MUser SET Age = @iAge_ WHERE UserID = @strUserID_
END

SELECT @iAuthLevel = AuthLevel FROM dbo.MUserAuthority WITH(NOLOCK) WHERE UserUID = @iUserUID

IF @iAuthLevel = 0
    BEGIN
        SELECT @iAuthLevel = authlevel, @sdtEndDate = enddate, @strReason = reason
            from dbo.userauthlevel with (nolock)
                where useruid = @iUserUID
    END

IF @iAuthLevel < 0
    BEGIN
        IF @sdtEnddate < getdate()
            BEGIN
                UPDATE dbo.userauthlevel
                    SET authlevel = 0
                        WHERE userUID = @iuserUID
                SELECT @iAuthLevel = 0
            END
    END

IF EXISTS( SELECT * FROM dbo.MInternalID WITH( NOLOCK ) WHERE ID = @strUserID_ )
BEGIN
    SET @bInternalUser = 1
END

END_PROC:
-- Original 10 columns + RegDate (col 10) + LastLogin (col 11)
SELECT @iOK, @iUserUID, @strUserName, @iAuthLevel, @bPlayGuide, @bInternalUser,
       @sdtEnddate, @strReason, @bIsRecommend, ISNULL(@iSkillOption, 0),
       @sdtRegDate, @sdtLastLogin
GO

-- =============================================================================
USE Game01;
GO

-- 2. Deduplicate TEvent_GateOfDarkness (keep one row per UnitUID)
;WITH CTE AS (
    SELECT UnitUID, GateOfDarknessSupportEventTime,
           ROW_NUMBER() OVER (PARTITION BY UnitUID ORDER BY GateOfDarknessSupportEventTime DESC) AS rn
    FROM dbo.TEvent_GateOfDarkness
)
DELETE FROM CTE WHERE rn > 1;
GO

-- 3. Add unique index if not already present
IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
     WHERE object_id = OBJECT_ID('dbo.TEvent_GateOfDarkness')
       AND name = 'IX_TEvent_GateOfDarkness_UnitUID'
)
BEGIN
    CREATE UNIQUE NONCLUSTERED INDEX IX_TEvent_GateOfDarkness_UnitUID
        ON dbo.TEvent_GateOfDarkness (UnitUID);
END
GO

-- 4. Fix P_GEvent_GateOfDarkness_SET to use UPSERT semantics
ALTER PROCEDURE [dbo].[P_GEvent_GateOfDarkness_SET]
   @iUnitUID bigint,
   @iGateOfDarknessSupportEventTime bigint
AS
SET NOCOUNT ON;
IF EXISTS (SELECT 1 FROM dbo.TEvent_GateOfDarkness WHERE UnitUID = @iUnitUID)
BEGIN
    UPDATE dbo.TEvent_GateOfDarkness
       SET GateOfDarknessSupportEventTime = @iGateOfDarknessSupportEventTime
     WHERE UnitUID = @iUnitUID
END
ELSE
BEGIN
    INSERT INTO dbo.TEvent_GateOfDarkness (UnitUID, GateOfDarknessSupportEventTime)
    VALUES (@iUnitUID, @iGateOfDarknessSupportEventTime)
END
GO

-- 5. Create P_GEvent_GateOfDarkness_UPD (missing; called by GameServer at GSGameDBThread.cpp:5490)
IF OBJECT_ID('dbo.P_GEvent_GateOfDarkness_UPD', 'P') IS NOT NULL
    DROP PROCEDURE dbo.P_GEvent_GateOfDarkness_UPD;
GO

CREATE PROCEDURE [dbo].[P_GEvent_GateOfDarkness_UPD]
   @iUnitUID bigint,
   @iGateOfDarknessSupportEventTime bigint
AS
SET NOCOUNT ON;
DECLARE @Result INT = 0;

IF EXISTS (SELECT 1 FROM dbo.TEvent_GateOfDarkness WHERE UnitUID = @iUnitUID)
BEGIN
    UPDATE dbo.TEvent_GateOfDarkness
       SET GateOfDarknessSupportEventTime = @iGateOfDarknessSupportEventTime
     WHERE UnitUID = @iUnitUID;

    IF @@ERROR <> 0
        SET @Result = -1;
END
ELSE
BEGIN
    INSERT INTO dbo.TEvent_GateOfDarkness (UnitUID, GateOfDarknessSupportEventTime)
    VALUES (@iUnitUID, @iGateOfDarknessSupportEventTime);

    IF @@ERROR <> 0
        SET @Result = -1;
END

SELECT @Result AS Result;
GO

-- 6. Deduplicate GItemInventorySize (keep one row per UnitUID, InventoryCategory combination with maximum NumSlot)
PRINT 'Deduplicating GItemInventorySize...';
GO
USE Game01;
GO
;WITH CTE AS (
    SELECT UnitUID, InventoryCategory, NumSlot,
           ROW_NUMBER() OVER (PARTITION BY UnitUID, InventoryCategory ORDER BY NumSlot DESC, RegDate DESC) AS rn
    FROM dbo.GItemInventorySize
)
DELETE FROM CTE WHERE rn > 1;
GO

-- 7. Add unique index on GItemInventorySize (UnitUID, InventoryCategory) if not already present
PRINT 'Creating UNIQUE index UIX_GItemInventorySize_UnitUID_Category...';
GO
IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
     WHERE object_id = OBJECT_ID('dbo.GItemInventorySize')
       AND name = 'UIX_GItemInventorySize_UnitUID_Category'
)
BEGIN
    CREATE UNIQUE NONCLUSTERED INDEX UIX_GItemInventorySize_UnitUID_Category
        ON dbo.GItemInventorySize (UnitUID, InventoryCategory);
END
GO

-- 8. Seed missing GDenyCode for QuestionNo 5 to allow Elesis/Ara creation options
PRINT 'Seeding missing GDenyCode entries...';
GO
USE Game01;
GO
IF NOT EXISTS (SELECT 1 FROM dbo.GDenyCode WHERE QuestionNo = 5 AND CodeNo = 0)
BEGIN
    INSERT INTO dbo.GDenyCode (QuestionNo, CodeNo, Comment) VALUES
    (5, 0, N'거래 On'),
    (5, 1, N'거래 Off'),
    (5, 2, N'거래 Only Friends');
END
GO

-- 9. Enable hardened account creation on-the-fly from the game client
PRINT 'Enabling hardened account creation on-the-fly...';
GO
USE Account;
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

-- Hardening check for reserved usernames
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
    SELECT @iOK = -10 -- Reserved name / Creation not allowed
    GOTO END_PROC
END

-- 1. Username length and character validation (alphanumeric + underscore only)
IF LEN(@strUserID_) < 4 OR LEN(@strUserID_) > 20
BEGIN
    SELECT @iOK = -16 -- Invalid username length
    GOTO END_PROC
END

IF @strUserID_ COLLATE Latin1_General_BIN LIKE '%[^a-zA-Z0-9_]%'
BEGIN
    SELECT @iOK = -16 -- Invalid characters in username
    GOTO END_PROC
END

-- 2. Password strength validation (min 8 chars, must contain upper, lower, number, special char)
IF LEN(@strPassword_) < 8 OR LEN(@strPassword_) > 20
BEGIN
    SELECT @iOK = -15 -- Weak password length
    GOTO END_PROC
END

IF @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[0-9]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[a-z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[A-Z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[^a-zA-Z0-9]%'
BEGIN
    SELECT @iOK = -15 -- Weak password requirements not met
    GOTO END_PROC
END

-- 2.2 Password blacklist validation
IF LOWER(@strPassword_) IN ('password', '12345678', 'qwertyuiop', 'password123', 'letmein123', 'admin123', 'elsword123', 'joysword123')
   OR LOWER(@strPassword_) = LOWER(@strUserID_)
BEGIN
    SELECT @iOK = -15 -- Weak/blacklisted password
    GOTO END_PROC
END

-- 3. Dynamic Rate Throttling & Recording
DECLARE @DelaySeconds INT = 0;
DECLARE @PassHash VARBINARY(32) = HASHBYTES('SHA2_256', @strPassword_);
EXEC dbo.mup_check_and_record_rate_limit @PassHash = @PassHash, @iOK = @iOK OUTPUT, @DelaySeconds = @DelaySeconds OUTPUT;

IF @iOK = -17
BEGIN
    GOTO END_PROC
END

IF @DelaySeconds > 0
BEGIN
    DECLARE @DelayStr VARCHAR(8);
    SET @DelayStr = '00:00:' + RIGHT('00' + CAST(@DelaySeconds AS VARCHAR(2)), 2);
    WAITFOR DELAY @DelayStr;
END

IF EXISTS(SELECT * FROM dbo.Muser WITH(NOLOCK) WHERE UserID = @strUserID_ )
    BEGIN    SELECT @iOK = -1    GOTO END_PROC    END --중복되는 유저ID 있삼
 
DECLARE @sdtNow smalldatetime
SELECT @sdtNow = GetDate()

BEGIN TRAN
    INSERT INTO   dbo.MUser(
                            UserID
,                           Password
,                           UserName
,                           RegDate
,                           DelDate
,                           PlayGuide
,							GuestUser
                           )
        SELECT  @strUserID_
,               @strPassword_
,               @strUserName_
,               @sdtNow
,               @sdtNow
,               1
,				@iGuestUser_

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 --이건 한개만 입력되어야 하삼
    BEGIN    SELECT @iOK = -11   GOTO FAIL_TRAN    END

    SELECT @iUserUID = @@IDENTITY

    -- Insert explicitly with AuthLevel = 0 (Normal User) to harden admin path
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel)
    VALUES (@iUserUID, 0);

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
    BEGIN    SELECT @iOK = -12   GOTO FAIL_TRAN    END

    -- Ensure ES_BILLING cash record exists
    IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WITH(NOLOCK) WHERE CD_USERUID = @iUserUID)
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
        IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
        BEGIN    SELECT @iOK = -13   GOTO FAIL_TRAN    END
    END
    
COMMIT TRAN

GOTO END_PROC

FAIL_TRAN:
ROLLBACK TRAN

END_PROC:
SELECT @iOK, @iUserUID
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

-- Hardening check for reserved usernames
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
    SELECT @iOK = -10 -- Reserved name / Creation not allowed
    GOTO END_PROC
END

-- 1. Username length and character validation (alphanumeric + underscore only)
IF LEN(@strUserID_) < 4 OR LEN(@strUserID_) > 20
BEGIN
    SELECT @iOK = -16 -- Invalid username length
    GOTO END_PROC
END

IF @strUserID_ COLLATE Latin1_General_BIN LIKE '%[^a-zA-Z0-9_]%'
BEGIN
    SELECT @iOK = -16 -- Invalid characters in username
    GOTO END_PROC
END

-- 2. Password strength validation (min 8 chars, must contain upper, lower, number, special char)
IF LEN(@strPassword_) < 8 OR LEN(@strPassword_) > 20
BEGIN
    SELECT @iOK = -15 -- Weak password length
    GOTO END_PROC
END

IF @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[0-9]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[a-z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[A-Z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[^a-zA-Z0-9]%'
BEGIN
    SELECT @iOK = -15 -- Weak password requirements not met
    GOTO END_PROC
END

-- 2.2 Password blacklist validation
IF LOWER(@strPassword_) IN ('password', '12345678', 'qwertyuiop', 'password123', 'letmein123', 'admin123', 'elsword123', 'joysword123')
   OR LOWER(@strPassword_) = LOWER(@strUserID_)
BEGIN
    SELECT @iOK = -15 -- Weak/blacklisted password
    GOTO END_PROC
END

-- 3. Dynamic Rate Throttling & Recording
DECLARE @DelaySeconds INT = 0;
DECLARE @PassHash VARBINARY(32) = HASHBYTES('SHA2_256', @strPassword_);
EXEC dbo.mup_check_and_record_rate_limit @PassHash = @PassHash, @iOK = @iOK OUTPUT, @DelaySeconds = @DelaySeconds OUTPUT;

IF @iOK = -17
BEGIN
    GOTO END_PROC
END

IF @DelaySeconds > 0
BEGIN
    DECLARE @DelayStr VARCHAR(8);
    SET @DelayStr = '00:00:' + RIGHT('00' + CAST(@DelaySeconds AS VARCHAR(2)), 2);
    WAITFOR DELAY @DelayStr;
END

-- 중복되는 UserID
IF EXISTS( SELECT * FROM dbo.Muser WITH(NOLOCK) WHERE UserID = @strUserID_ )
BEGIN
    SELECT @iOK = -1
    GOTO END_PROC
END

DECLARE @sdtNow smalldatetime
SELECT @sdtNow = GetDate()

BEGIN TRAN
    INSERT INTO   dbo.MUser(
                            UserID
,                           Password
,                           PublisherSN
,                           Gender
,                           Age
,                           UserName
,                           RegDate
,                           DelDate
,                           PlayGuide
,							GuestUser
                           )
        SELECT  @strUserID_
,               @strPassword_
,               @iPublisherSN_
,               @bGender_
,               @iAge_
,               @strUserName_
,               @sdtNow
,               @sdtNow
,               1
,				@iGuestUser_
    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 --이건 한개만 입력되어야 하삼
    BEGIN
        SELECT @iOK = -11
        GOTO FAIL_TRAN
    END

    SELECT @iUserUID = @@IDENTITY

--	스킬 시전 옵션 INSERT
INSERT INTO dbo.MUserSkillOption (UserUID, SkillOption)
	SELECT @iUserUID, 1

    -- Insert explicitly with AuthLevel = 0 (Normal User) to harden admin path
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel)
    VALUES (@iUserUID, 0);

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
    BEGIN    SELECT @iOK = -12   GOTO FAIL_TRAN    END

    -- Ensure ES_BILLING cash record exists
    IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WITH(NOLOCK) WHERE CD_USERUID = @iUserUID)
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
        IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
        BEGIN    SELECT @iOK = -13   GOTO FAIL_TRAN    END
    END

COMMIT TRAN

-- 사내 또는 넥슨 유저인지 식별한다.
IF EXISTS( SELECT * FROM dbo.MInternalID WITH( NOLOCK ) WHERE ID = @strUserID_ )
BEGIN
    SET @bInternalUser = 1
END

GOTO END_PROC

FAIL_TRAN:
ROLLBACK TRAN

END_PROC:
SELECT @iOK, @iUserUID, @bPlayGuide, @bInternalUser, 0, 1
GO

ALTER PROCEDURE [dbo].[mup_create_global_user]
	@strUserID_ [nvarchar](20),
	@strPassword_ [nvarchar](20),
    @iPublisherSN_ [int],
    @bGender_ [bit],
    @iAge_ [tinyint],
	@strUserName_ [nvarchar](16),
	@iGuestUser_ [bit],
	@iChannelCode	tinyint	= 0,	
	@iUserUID [bigint] = 0,
	@bPlayGuide [bit] = 1,
	@bInternalUser [bit] = 0,
	@iOK [int] = 0
AS
SET NOCOUNT ON;

-- Hardening check for reserved usernames
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
    SELECT @iOK = -10 -- Reserved name / Creation not allowed
    GOTO END_PROC
END

-- 1. Username length and character validation (alphanumeric + underscore only)
IF LEN(@strUserID_) < 4 OR LEN(@strUserID_) > 20
BEGIN
    SELECT @iOK = -16 -- Invalid username length
    GOTO END_PROC
END

IF @strUserID_ COLLATE Latin1_General_BIN LIKE '%[^a-zA-Z0-9_]%'
BEGIN
    SELECT @iOK = -16 -- Invalid characters in username
    GOTO END_PROC
END

-- 2. Password strength validation (min 8 chars, must contain upper, lower, number, special char)
IF LEN(@strPassword_) < 8 OR LEN(@strPassword_) > 20
BEGIN
    SELECT @iOK = -15 -- Weak password length
    GOTO END_PROC
END

IF @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[0-9]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[a-z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[A-Z]%'
   OR @strPassword_ COLLATE Latin1_General_BIN NOT LIKE '%[^a-zA-Z0-9]%'
BEGIN
    SELECT @iOK = -15 -- Weak password requirements not met
    GOTO END_PROC
END

-- 2.2 Password blacklist validation
IF LOWER(@strPassword_) IN ('password', '12345678', 'qwertyuiop', 'password123', 'letmein123', 'admin123', 'elsword123', 'joysword123')
   OR LOWER(@strPassword_) = LOWER(@strUserID_)
BEGIN
    SELECT @iOK = -15 -- Weak/blacklisted password
    GOTO END_PROC
END

-- 3. Dynamic Rate Throttling & Recording
DECLARE @DelaySeconds INT = 0;
DECLARE @PassHash VARBINARY(32) = HASHBYTES('SHA2_256', @strPassword_);
EXEC dbo.mup_check_and_record_rate_limit @PassHash = @PassHash, @iOK = @iOK OUTPUT, @DelaySeconds = @DelaySeconds OUTPUT;

IF @iOK = -17
BEGIN
    GOTO END_PROC
END

IF @DelaySeconds > 0
BEGIN
    DECLARE @DelayStr VARCHAR(8);
    SET @DelayStr = '00:00:' + RIGHT('00' + CAST(@DelaySeconds AS VARCHAR(2)), 2);
    WAITFOR DELAY @DelayStr;
END

-- 중복되는 UserID
IF EXISTS( SELECT * FROM dbo.Muser WITH(NOLOCK) WHERE UserID = @strUserID_ )
BEGIN
    SELECT @iOK = -1
    GOTO END_PROC
END

DECLARE @sdtNow smalldatetime
SELECT @sdtNow = GetDate()

BEGIN TRAN
    INSERT INTO   dbo.MUser(
                            UserID
,                           Password
,                           PublisherSN
,                           Gender
,                           Age
,                           UserName
,                           RegDate
,                           DelDate
,                           PlayGuide
,							GuestUser
,							ChannelCode
                           )
        SELECT  @strUserID_
,               @strPassword_
,               @iPublisherSN_
,               @bGender_
,               @iAge_
,               @strUserName_
,               @sdtNow
,               @sdtNow
,               1
,				@iGuestUser_
,				@iChannelCode
    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 --이건 한개만 입력되어야 하삼
    BEGIN
        SELECT @iOK = -11
        GOTO FAIL_TRAN
    END

    SELECT @iUserUID = @@IDENTITY

	INSERT INTO dbo.MUserOTP( UserUID, OTP ) SELECT @iUserUID, @strPassword_
    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 --이건 한개만 입력되어야 하삼
    BEGIN
        SELECT @iOK = -12
        GOTO FAIL_TRAN
    END

    -- Insert explicitly with AuthLevel = 0 (Normal User) to harden admin path
    INSERT INTO dbo.MUserAuthority (UserUID, AuthLevel)
    VALUES (@iUserUID, 0);

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
    BEGIN    SELECT @iOK = -13   GOTO FAIL_TRAN    END

    -- Ensure ES_BILLING cash record exists
    IF NOT EXISTS (SELECT 1 FROM ES_BILLING.dbo.EB_Cash WITH(NOLOCK) WHERE CD_USERUID = @iUserUID)
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
        IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
        BEGIN    SELECT @iOK = -14   GOTO FAIL_TRAN    END
    END

COMMIT TRAN

-- 사내 또는 gash 유저인지 식별한다.
IF EXISTS( SELECT * FROM dbo.MInternalID WITH( NOLOCK ) WHERE ID = @strUserID_ )
BEGIN
    SET @bInternalUser = 1
END

GOTO END_PROC

FAIL_TRAN:
ROLLBACK TRAN

END_PROC:
SELECT @iOK, @iUserUID, @bPlayGuide, @bInternalUser, 0
GO

-- 10. Admin Authority Hardening Trigger
PRINT 'Installing admin authority hardening trigger...';
GO
USE Account;
GO

IF OBJECT_ID(N'dbo.tr_MUserAuthority_HardenAdmin', N'TR') IS NOT NULL
    DROP TRIGGER dbo.tr_MUserAuthority_HardenAdmin;
GO

CREATE TRIGGER tr_MUserAuthority_HardenAdmin
ON dbo.MUserAuthority
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    -- Require CONTEXT_INFO to be set to 0xDEADBEEF when creating/modifying accounts with GM/admin levels (AuthLevel >= 4)
    IF EXISTS (SELECT 1 FROM inserted WHERE AuthLevel >= 4)
    BEGIN
        DECLARE @Context VARBINARY(128);
        SELECT @Context = CONTEXT_INFO();
        IF @Context IS NULL OR @Context <> 0xDEADBEEF
        BEGIN
            ROLLBACK TRAN;
            THROW 50000, 'Security Constraint: Elevating an account to GM/Admin (AuthLevel >= 4) is blocked. You must set CONTEXT_INFO to 0xDEADBEEF before executing.', 1;
        END
    END
END
GO



'@
Set-Content -Path D:\JoySword\Server\database\fix-post-character-creation.sql -Value $Content -Force
