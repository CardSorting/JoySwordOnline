USE ES_BILLING;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

-- 1. Ensure EB_Cash Table Exists
IF OBJECT_ID(N'dbo.EB_Cash', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.EB_Cash (
        CD_USERUID BIGINT NOT NULL CONSTRAINT PK_EB_Cash PRIMARY KEY CLUSTERED,
        ST_USERID NVARCHAR(50) NOT NULL DEFAULT N'',
        NO_TOTAL_CHARGE_CASH INT NOT NULL DEFAULT 0,
        NO_TOTAL_CHARGE_BONUS INT NOT NULL DEFAULT 0,
        NO_REMAIN_CASH INT NOT NULL DEFAULT 0,
        NO_REMAIN_BONUS INT NOT NULL DEFAULT 0,
        DT_USE_DATE DATETIME NULL,
        DT_FIRST_CHARGE_DATE DATETIME NOT NULL DEFAULT GETDATE(),
        DT_RECHARGE_DATE DATETIME NOT NULL DEFAULT GETDATE()
    );
END;
GO

-- 1a. Upgrade the simplified offline cash table to the native required schema.
IF COL_LENGTH(N'dbo.EB_Cash', N'ST_USERID') IS NULL
    ALTER TABLE dbo.EB_Cash
    ADD ST_USERID NVARCHAR(50) NOT NULL
        CONSTRAINT DF_EB_Cash_ST_USERID DEFAULT N'' WITH VALUES;

IF COL_LENGTH(N'dbo.EB_Cash', N'NO_TOTAL_CHARGE_BONUS') IS NULL
    ALTER TABLE dbo.EB_Cash
    ADD NO_TOTAL_CHARGE_BONUS INT NOT NULL
        CONSTRAINT DF_EB_Cash_NO_TOTAL_CHARGE_BONUS DEFAULT 0 WITH VALUES;

IF COL_LENGTH(N'dbo.EB_Cash', N'DT_USE_DATE') IS NULL
    ALTER TABLE dbo.EB_Cash ADD DT_USE_DATE DATETIME NULL;

IF COL_LENGTH(N'dbo.EB_Cash', N'DT_FIRST_CHARGE_DATE') IS NULL
    ALTER TABLE dbo.EB_Cash
    ADD DT_FIRST_CHARGE_DATE DATETIME NOT NULL
        CONSTRAINT DF_EB_Cash_DT_FIRST_CHARGE_DATE DEFAULT GETDATE() WITH VALUES;
GO

-- 2. Ensure EB_BuyCashItemLocker Table Exists
IF OBJECT_ID(N'dbo.EB_BuyCashItemLocker', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.EB_BuyCashItemLocker (
        CD_TRAN_NUM BIGINT NOT NULL,
        CD_USERUID BIGINT NOT NULL,
        NO_SERVER_SET_ID TINYINT NOT NULL DEFAULT 1,
        NO_PRODUCT_NUM BIGINT NOT NULL,
        NO_QUANTITY SMALLINT NOT NULL DEFAULT 1,
        DI_PACKAGE BIT NOT NULL DEFAULT 0,
        NO_NUMBER_PACKAGE TINYINT NOT NULL DEFAULT 0,
        NO_FROM_UNITUID BIGINT NOT NULL DEFAULT 0,
        ST_GIFT_MESSAGE NVARCHAR(50) NULL
    );
END;
GO

-- 2a. Upgrade the early offline locker schema to the native GameServer schema.
IF COL_LENGTH(N'dbo.EB_BuyCashItemLocker', N'NO_PRODUCT_NUM') IS NULL
BEGIN
    ALTER TABLE dbo.EB_BuyCashItemLocker ADD NO_PRODUCT_NUM BIGINT NULL;

    IF COL_LENGTH(N'dbo.EB_BuyCashItemLocker', N'CD_PRODUCTNO') IS NOT NULL
        EXEC(N'
            UPDATE dbo.EB_BuyCashItemLocker
            SET NO_PRODUCT_NUM = CD_PRODUCTNO
            WHERE NO_PRODUCT_NUM IS NULL;
        ');

    ALTER TABLE dbo.EB_BuyCashItemLocker ALTER COLUMN NO_PRODUCT_NUM BIGINT NOT NULL;
END;

IF COL_LENGTH(N'dbo.EB_BuyCashItemLocker', N'DI_PACKAGE') IS NULL
    ALTER TABLE dbo.EB_BuyCashItemLocker
    ADD DI_PACKAGE BIT NOT NULL CONSTRAINT DF_EB_BuyCashItemLocker_DI_PACKAGE DEFAULT 0;

IF COL_LENGTH(N'dbo.EB_BuyCashItemLocker', N'NO_NUMBER_PACKAGE') IS NULL
    ALTER TABLE dbo.EB_BuyCashItemLocker
    ADD NO_NUMBER_PACKAGE TINYINT NOT NULL CONSTRAINT DF_EB_BuyCashItemLocker_NO_NUMBER_PACKAGE DEFAULT 0;
GO

-- 2b. Ensure the native locker-count and package tables exist.
IF OBJECT_ID(N'dbo.EB_BuyCashItemLockerCount', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.EB_BuyCashItemLockerCount (
        CD_USERUID BIGINT NOT NULL,
        NO_SERVER_SET_ID TINYINT NOT NULL,
        NO_COUNT INT NOT NULL CONSTRAINT DF_EB_BuyCashItemLockerCount_NO_COUNT DEFAULT 0,
        CONSTRAINT PK_EB_BuyCashItemLockerCount_CD_USERUID_NO_SERVER_SET_ID
            PRIMARY KEY CLUSTERED (CD_USERUID, NO_SERVER_SET_ID)
    );
END;
GO

IF OBJECT_ID(N'dbo.EB_BuyCashItemLockerPackage', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.EB_BuyCashItemLockerPackage (
        CD_TRAN_NUM BIGINT NOT NULL,
        NO_PRODUCT_NUM BIGINT NOT NULL,
        CONSTRAINT PK_EB_BuyCashItemLockerPackage
            PRIMARY KEY CLUSTERED (CD_TRAN_NUM, NO_PRODUCT_NUM)
    );
END;
GO

IF OBJECT_ID(N'dbo.JoySword_CashTransactionSequence', N'SO') IS NULL
BEGIN
    DECLARE @FirstCashTransactionNumber INT = 1000000000;
    DECLARE @LastCashTransactionNumber INT;

    SELECT @LastCashTransactionNumber = MAX(
        CASE
            WHEN CD_TRAN_NUM BETWEEN 1 AND 2000000000 THEN CONVERT(INT, CD_TRAN_NUM)
        END
    )
    FROM dbo.EB_BuyCashItemLocker;

    IF @LastCashTransactionNumber IS NOT NULL
       AND @LastCashTransactionNumber >= @FirstCashTransactionNumber
        SET @FirstCashTransactionNumber = @LastCashTransactionNumber + 1;

    IF @FirstCashTransactionNumber > 2000000000
        THROW 51001, 'No client-safe Cash Shop transaction numbers remain.', 1;

    DECLARE @CreateCashTransactionSequence NVARCHAR(4000) = N'CREATE SEQUENCE dbo.JoySword_CashTransactionSequence AS INT '
        + N'START WITH ' + CONVERT(NVARCHAR(11), @FirstCashTransactionNumber)
        + N' INCREMENT BY 1 MINVALUE 1 MAXVALUE 2000000000 NO CYCLE;';
    EXEC(@CreateCashTransactionSequence);
END;
GO

-- Legacy offline builds generated date-based transaction numbers.  The native
-- GameServer stores package transaction numbers in a client-sized integer, so
-- any pending locker row above this range makes the package-component query
-- fail for the entire account.  Remap those pending rows and their audit data
-- before exposing the locker to the GameServer.
CREATE OR ALTER PROCEDURE dbo.JoySword_MigrateCashLockerTransactionNumbers
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @LegacyTransactionCount INT;
    DECLARE @ReservedRangeStart SQL_VARIANT;
    DECLARE @FirstReplacementTransaction BIGINT;

    BEGIN TRAN;

    SELECT @LegacyTransactionCount = COUNT(DISTINCT CD_TRAN_NUM)
    FROM dbo.EB_BuyCashItemLocker WITH (UPDLOCK, HOLDLOCK)
    WHERE CD_TRAN_NUM < 1
       OR CD_TRAN_NUM > 2000000000;

    IF @LegacyTransactionCount > 0
    BEGIN
        EXEC sys.sp_sequence_get_range
            @sequence_name = N'dbo.JoySword_CashTransactionSequence',
            @range_size = @LegacyTransactionCount,
            @range_first_value = @ReservedRangeStart OUTPUT;

        SET @FirstReplacementTransaction = CONVERT(BIGINT, @ReservedRangeStart);

        IF @FirstReplacementTransaction + @LegacyTransactionCount - 1 > 2000000000
            THROW 51002, 'No client-safe Cash Shop transaction numbers remain for locker migration.', 1;

        CREATE TABLE #CashLockerTransactionMap (
            OldTransactionNumber BIGINT NOT NULL PRIMARY KEY,
            NewTransactionNumber BIGINT NOT NULL UNIQUE
        );

        ;WITH LegacyTransactions AS (
            SELECT
                CD_TRAN_NUM,
                ROW_NUMBER() OVER (ORDER BY CD_TRAN_NUM) AS RowNumber
            FROM (
                SELECT DISTINCT CD_TRAN_NUM
                FROM dbo.EB_BuyCashItemLocker WITH (UPDLOCK, HOLDLOCK)
                WHERE CD_TRAN_NUM < 1
                   OR CD_TRAN_NUM > 2000000000
            ) AS LockerTransaction
        )
        INSERT INTO #CashLockerTransactionMap (OldTransactionNumber, NewTransactionNumber)
        SELECT
            CD_TRAN_NUM,
            @FirstReplacementTransaction + CONVERT(BIGINT, RowNumber) - 1
        FROM LegacyTransactions;

        DECLARE @TransactionTables TABLE (
            SortOrder TINYINT NOT NULL PRIMARY KEY,
            TableName SYSNAME NOT NULL
        );

        INSERT INTO @TransactionTables (SortOrder, TableName)
        VALUES
            (10, N'EB_BuyCashItemLockerPackage'),
            (20, N'EB_BuyCashItemPackageTakeLog'),
            (30, N'EB_BuyCashItemTakeLog'),
            (40, N'EB_BuyItemLog'),
            (50, N'EB_CashLog'),
            (60, N'EB_BillOrder'),
            (70, N'EB_BillEventJoinLog'),
            (80, N'EB_Bonus_Expire'),
            (90, N'EB_CouponOrder'),
            -- EB_TransactionNumber is an immutable identity ledger in the
            -- offline schema, not a locker foreign key.  Its legacy entries
            -- remain historical while every live locker reference is remapped.
            (100, N'EB_BuyCashItemLocker');

        DECLARE @TableName SYSNAME;
        DECLARE @UpdateTransactionSql NVARCHAR(MAX);

        WHILE EXISTS (SELECT 1 FROM @TransactionTables)
        BEGIN
            SELECT TOP (1) @TableName = TableName
            FROM @TransactionTables
            ORDER BY SortOrder;

            IF OBJECT_ID(N'dbo.' + @TableName, N'U') IS NOT NULL
               AND COL_LENGTH(N'dbo.' + @TableName, N'CD_TRAN_NUM') IS NOT NULL
            BEGIN
                SET @UpdateTransactionSql = N'
                    UPDATE Target
                    SET CD_TRAN_NUM = Mapping.NewTransactionNumber
                    FROM dbo.' + QUOTENAME(@TableName) + N' AS Target
                    INNER JOIN #CashLockerTransactionMap AS Mapping
                        ON Mapping.OldTransactionNumber = Target.CD_TRAN_NUM;';
                EXEC sys.sp_executesql @UpdateTransactionSql;
            END;

            DELETE FROM @TransactionTables WHERE TableName = @TableName;
        END;
    END;

    COMMIT TRAN;
END;
GO

EXEC dbo.JoySword_MigrateCashLockerTransactionNumbers;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.check_constraints
    WHERE parent_object_id = OBJECT_ID(N'dbo.EB_BuyCashItemLocker')
      AND name = N'CK_EB_BuyCashItemLocker_ClientSafeTransaction'
)
    ALTER TABLE dbo.EB_BuyCashItemLocker WITH CHECK
    ADD CONSTRAINT CK_EB_BuyCashItemLocker_ClientSafeTransaction
        CHECK (CD_TRAN_NUM BETWEEN 1 AND 2000000000);
GO

INSERT INTO dbo.EB_BuyCashItemLockerPackage (CD_TRAN_NUM, NO_PRODUCT_NUM)
SELECT DISTINCT L.CD_TRAN_NUM, P.CD_PRODUCTNO
FROM dbo.EB_BuyCashItemLocker AS L
JOIN dbo.EB_ProductPackage AS P
    ON P.CD_PACKAGENO = L.NO_PRODUCT_NUM
WHERE L.DI_PACKAGE = 1
  AND NOT EXISTS (
      SELECT 1
      FROM dbo.EB_BuyCashItemLockerPackage AS LP
      WHERE LP.CD_TRAN_NUM = L.CD_TRAN_NUM
        AND LP.NO_PRODUCT_NUM = P.CD_PRODUCTNO
  );

UPDATE L
SET NO_NUMBER_PACKAGE = CONVERT(TINYINT,
    CASE WHEN PackageItemCount.NO_COUNT > 255 THEN 255 ELSE PackageItemCount.NO_COUNT END)
FROM dbo.EB_BuyCashItemLocker AS L
CROSS APPLY (
    SELECT COUNT(*) AS NO_COUNT
    FROM dbo.EB_BuyCashItemLockerPackage AS LP
    WHERE LP.CD_TRAN_NUM = L.CD_TRAN_NUM
) AS PackageItemCount
WHERE L.DI_PACKAGE = 1;
GO

-- 2c. Keep the capacity cache synchronized with the actual locker rows.
CREATE OR ALTER PROCEDURE dbo.JoySword_SyncCashItemLockerCount
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT,
    @NO_COUNT INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @NO_COUNT = ISNULL(SUM(CONVERT(INT, NO_QUANTITY)), 0)
    FROM dbo.EB_BuyCashItemLocker WITH (UPDLOCK, HOLDLOCK)
    WHERE CD_USERUID = @CD_USERUID
      AND NO_SERVER_SET_ID = @NO_SERVER_SET_ID;

    UPDATE dbo.EB_BuyCashItemLockerCount WITH (UPDLOCK, SERIALIZABLE)
    SET NO_COUNT = @NO_COUNT
    WHERE CD_USERUID = @CD_USERUID
      AND NO_SERVER_SET_ID = @NO_SERVER_SET_ID;

    IF @@ROWCOUNT = 0
        INSERT INTO dbo.EB_BuyCashItemLockerCount (CD_USERUID, NO_SERVER_SET_ID, NO_COUNT)
        VALUES (@CD_USERUID, @NO_SERVER_SET_ID, @NO_COUNT);
END;
GO

-- 3. Ensure User Account Safety Initializer
CREATE OR ALTER PROCEDURE dbo.JoySword_EnsureUserCashAccount
    @UserUID BIGINT,
    @ST_USERID NVARCHAR(50) = N''
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM dbo.EB_Cash WHERE CD_USERUID = @UserUID)
    BEGIN
        INSERT INTO dbo.EB_Cash (
            CD_USERUID, ST_USERID, NO_TOTAL_CHARGE_CASH, NO_TOTAL_CHARGE_BONUS,
            NO_REMAIN_CASH, NO_REMAIN_BONUS, DT_USE_DATE,
            DT_FIRST_CHARGE_DATE, DT_RECHARGE_DATE
        )
        VALUES (@UserUID, ISNULL(@ST_USERID, N''), 0, 0, 0, 0, NULL, GETDATE(), GETDATE());
    END
    ELSE IF NULLIF(@ST_USERID, N'') IS NOT NULL
    BEGIN
        UPDATE dbo.EB_Cash
        SET ST_USERID = @ST_USERID
        WHERE CD_USERUID = @UserUID
          AND (ST_USERID IS NULL OR LEN(ST_USERID) = 0);
    END;
END;
GO

-- 4. EBI_BuyCashItemLocker_SET Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_BuyCashItemLocker_SET
    @CD_TRAN_NUM BIGINT,
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT = 1,
    @CD_PRODUCTNO BIGINT,
    @NO_QUANTITY SMALLINT = 1,
    @NO_FROM_UNITUID BIGINT = 0,
    @ST_GIFT_MESSAGE NVARCHAR(50) = N''
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsPackage TINYINT = 0;
    DECLARE @PackageItemCount TINYINT = 0;
    DECLARE @LockerCount INT;
    IF EXISTS (SELECT 1 FROM dbo.EB_ProductPackage WHERE CD_PACKAGENO = @CD_PRODUCTNO)
    BEGIN
        SET @IsPackage = 1;
        SELECT @PackageItemCount = CONVERT(TINYINT,
            CASE WHEN COUNT(*) > 255 THEN 255 ELSE COUNT(*) END)
        FROM dbo.EB_ProductPackage
        WHERE CD_PACKAGENO = @CD_PRODUCTNO;
    END;

    INSERT INTO dbo.EB_BuyCashItemLocker (
        CD_TRAN_NUM, CD_USERUID, NO_SERVER_SET_ID, NO_PRODUCT_NUM, NO_QUANTITY,
        DI_PACKAGE, NO_NUMBER_PACKAGE, NO_FROM_UNITUID, ST_GIFT_MESSAGE
    )
    VALUES (
        @CD_TRAN_NUM, @CD_USERUID, @NO_SERVER_SET_ID, @CD_PRODUCTNO, @NO_QUANTITY,
        @IsPackage, @PackageItemCount, @NO_FROM_UNITUID, @ST_GIFT_MESSAGE
    );

    IF @IsPackage = 1
        INSERT INTO dbo.EB_BuyCashItemLockerPackage (CD_TRAN_NUM, NO_PRODUCT_NUM)
        SELECT @CD_TRAN_NUM, PackageItem.NO_PRODUCT_NUM
        FROM (
            SELECT DISTINCT CD_PRODUCTNO AS NO_PRODUCT_NUM
            FROM dbo.EB_ProductPackage
            WHERE CD_PACKAGENO = @CD_PRODUCTNO
        ) AS PackageItem;

    EXEC dbo.JoySword_SyncCashItemLockerCount
        @CD_USERUID = @CD_USERUID,
        @NO_SERVER_SET_ID = @NO_SERVER_SET_ID,
        @NO_COUNT = @LockerCount OUTPUT;

    RETURN 0;
END;
GO

-- 5. EBP_BuyCashItemLocker_SEL Procedure (Queries Cash Locker Items for Game Server)
CREATE OR ALTER PROCEDURE dbo.EBP_BuyCashItemLocker_SEL
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT = 1
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        L.CD_TRAN_NUM,
        L.NO_PRODUCT_NUM AS CD_PRODUCTNO,
        L.NO_QUANTITY,
        L.DI_PACKAGE,
        L.NO_NUMBER_PACKAGE,
        L.NO_FROM_UNITUID,
        ISNULL(L.ST_GIFT_MESSAGE, N'') AS ST_GIFT_MESSAGE
    FROM dbo.EB_BuyCashItemLocker AS L
    WHERE L.CD_USERUID = @CD_USERUID
      AND (L.NO_SERVER_SET_ID = @NO_SERVER_SET_ID OR @NO_SERVER_SET_ID = 0);
END;
GO

-- The package picker opens immediately after a Cash Shop purchase by reading
-- the remaining component product IDs from this exact two-column result set.
CREATE OR ALTER PROCEDURE dbo.EBP_BuyCashItemLocker_Package_SEL
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        PackageItem.CD_TRAN_NUM,
        PackageItem.NO_PRODUCT_NUM
    FROM dbo.EB_BuyCashItemLockerPackage AS PackageItem WITH (NOLOCK)
    WHERE EXISTS (
        SELECT 1
        FROM dbo.EB_BuyCashItemLocker AS Locker WITH (NOLOCK)
        WHERE Locker.CD_TRAN_NUM = PackageItem.CD_TRAN_NUM
          AND Locker.CD_USERUID = @CD_USERUID
          AND Locker.NO_SERVER_SET_ID = @NO_SERVER_SET_ID
          AND Locker.CD_TRAN_NUM BETWEEN 1 AND 2000000000
    );
END;
GO

-- 6. EBP_BuyCashItemLocker_DEL Procedure (Deletes Item from Locker when Claimed In-Game)
CREATE OR ALTER PROCEDURE dbo.EBP_BuyCashItemLocker_DEL
    @CD_TRAN_NUM BIGINT,
    @CD_USERUID BIGINT = 0
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LockerUserUID BIGINT = @CD_USERUID;
    DECLARE @LockerServerSetID TINYINT;

    IF @LockerUserUID = 0
        SELECT TOP (1)
            @LockerUserUID = CD_USERUID,
            @LockerServerSetID = NO_SERVER_SET_ID
        FROM dbo.EB_BuyCashItemLocker
        WHERE CD_TRAN_NUM = @CD_TRAN_NUM;

    DELETE FROM dbo.EB_BuyCashItemLocker
    WHERE CD_TRAN_NUM = @CD_TRAN_NUM
      AND (CD_USERUID = @CD_USERUID OR @CD_USERUID = 0);

    IF @LockerUserUID <> 0
    BEGIN
        DECLARE @LockerCount INT;
        SET @LockerServerSetID = ISNULL(@LockerServerSetID, 1);
        EXEC dbo.JoySword_SyncCashItemLockerCount
            @CD_USERUID = @LockerUserUID,
            @NO_SERVER_SET_ID = @LockerServerSetID,
            @NO_COUNT = @LockerCount OUTPUT;
    END;

    RETURN 0;
END;
GO

CREATE OR ALTER PROCEDURE dbo.EBP_BuyCashItemTake_SET
    @CD_TRAN_NUM BIGINT,
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT,
    @NO_UNITUID BIGINT,
    @NO_PRODUCT_NUM_IN_PACKAGE BIGINT = 0,
    @DI_OUTPUT_RECORD BIT = 1
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Result INT;
    DECLARE @ST_ErrorMSG NVARCHAR(2048);
    DECLARE @NO_PRODUCT_NUM BIGINT;
    DECLARE @NO_QUANTITY SMALLINT;
    DECLARE @DI_PACKAGE BIT;
    DECLARE @NO_NUMBER_PACKAGE TINYINT;
    DECLARE @NO_FROM_UNITUID BIGINT;
    DECLARE @ST_GIFT_MESSAGE NVARCHAR(100);
    DECLARE @DI_LOCKERCOUNT BIT;
    DECLARE @CurrentDate DATETIME;
    DECLARE @DI_DELETE_LOCKER BIT;
    DECLARE @ClientTransactionNumber BIGINT = @CD_TRAN_NUM;

    SET @ST_ErrorMSG = N'[%s] dbo.EBP_BuyCashItemTake_SET %I64d, %I64d, %d, %I64d, %d';

    IF @ClientTransactionNumber < 0
        SET @ClientTransactionNumber = @ClientTransactionNumber + CONVERT(BIGINT, 4294967296);

    IF NOT EXISTS (
        SELECT 1
        FROM dbo.EB_BuyCashItemLocker
        WHERE CD_TRAN_NUM = @CD_TRAN_NUM
          AND CD_USERUID = @CD_USERUID
          AND NO_SERVER_SET_ID = @NO_SERVER_SET_ID
    )
        SELECT TOP (1) @CD_TRAN_NUM = L.CD_TRAN_NUM
        FROM dbo.EB_BuyCashItemLocker AS L
        WHERE L.CD_USERUID = @CD_USERUID
          AND L.NO_SERVER_SET_ID = @NO_SERVER_SET_ID
          AND L.CD_TRAN_NUM > 2000000000
          AND L.CD_TRAN_NUM % CONVERT(BIGINT, 4294967296) = @ClientTransactionNumber
        ORDER BY L.CD_TRAN_NUM DESC;

    SELECT
        @NO_PRODUCT_NUM = NO_PRODUCT_NUM,
        @NO_QUANTITY = NO_QUANTITY,
        @NO_FROM_UNITUID = NO_FROM_UNITUID,
        @ST_GIFT_MESSAGE = ST_GIFT_MESSAGE,
        @DI_PACKAGE = DI_PACKAGE,
        @NO_NUMBER_PACKAGE = NO_NUMBER_PACKAGE,
        @CurrentDate = GETDATE()
    FROM dbo.EB_BuyCashItemLocker WITH (NOLOCK)
    WHERE CD_TRAN_NUM = @CD_TRAN_NUM
      AND CD_USERUID = @CD_USERUID
      AND NO_SERVER_SET_ID = @NO_SERVER_SET_ID;

    IF @@ROWCOUNT = 1
    BEGIN
        IF @DI_PACKAGE = 1 AND ISNULL(@NO_PRODUCT_NUM_IN_PACKAGE, 0) = 0
            SET @Result = -98;
        ELSE
        BEGIN
            BEGIN TRY
                BEGIN TRAN;

                IF @DI_PACKAGE = 1
                BEGIN
                    DELETE dbo.EB_BuyCashItemLockerPackage
                        OUTPUT DELETED.CD_TRAN_NUM, DELETED.NO_PRODUCT_NUM, @NO_SERVER_SET_ID,
                            @NO_UNITUID, @CurrentDate
                        INTO dbo.EB_BuyCashItemPackageTakeLog (
                            CD_TRAN_NUM, NO_PRODUCT_NUM, NO_SERVER_SET_ID, NO_UNITUID, DT_LOG_DATE
                        )
                    WHERE CD_TRAN_NUM = @CD_TRAN_NUM
                      AND NO_PRODUCT_NUM = @NO_PRODUCT_NUM_IN_PACKAGE;

                    IF @@ROWCOUNT = 0
                    BEGIN
                        SET @Result = -11;
                        RAISERROR(@ST_ErrorMSG, 15, 1, N'ItemTake LockerPackage Delete',
                            @CD_TRAN_NUM, @CD_USERUID, @NO_SERVER_SET_ID, @NO_UNITUID,
                            @NO_PRODUCT_NUM_IN_PACKAGE) WITH SETERROR;
                    END;

                    SET @DI_DELETE_LOCKER = CASE WHEN EXISTS (
                        SELECT 1
                        FROM dbo.EB_BuyCashItemLockerPackage WITH (NOLOCK)
                        WHERE CD_TRAN_NUM = @CD_TRAN_NUM
                    ) THEN 0 ELSE 1 END;
                END
                ELSE
                    SET @DI_DELETE_LOCKER = 1;

                IF @DI_DELETE_LOCKER = 1
                BEGIN
                    DELETE dbo.EB_BuyCashItemLocker
                        OUTPUT DELETED.CD_TRAN_NUM, DELETED.CD_USERUID, @NO_SERVER_SET_ID,
                            DELETED.NO_PRODUCT_NUM, DELETED.NO_QUANTITY, DELETED.DI_PACKAGE,
                            DELETED.NO_NUMBER_PACKAGE, DELETED.NO_FROM_UNITUID,
                            DELETED.ST_GIFT_MESSAGE, @NO_UNITUID, @CurrentDate
                        INTO dbo.EB_BuyCashItemTakeLog (
                            CD_TRAN_NUM, CD_USERUID, NO_SERVER_SET_ID, NO_PRODUCT_NUM,
                            NO_QUANTITY, DI_PACKAGE, NO_NUMBER_PACKAGE, NO_FROM_UNITUID,
                            ST_GIFT_MESSAGE, NO_UNITUID, DT_LOG_DATE
                        )
                    WHERE CD_TRAN_NUM = @CD_TRAN_NUM;

                    IF @@ROWCOUNT = 0
                    BEGIN
                        IF @DI_PACKAGE = 0
                        BEGIN
                            SET @Result = -11;
                            RAISERROR(@ST_ErrorMSG, 15, 1, N'ItemTake Locker Delete',
                                @CD_TRAN_NUM, @CD_USERUID, @NO_SERVER_SET_ID, @NO_UNITUID,
                                @NO_PRODUCT_NUM_IN_PACKAGE) WITH SETERROR;
                        END;

                        SET @DI_LOCKERCOUNT = 0;
                    END
                    ELSE
                        SET @DI_LOCKERCOUNT = 1;
                END;

                COMMIT TRAN;
                SET @Result = 0;
            END TRY
            BEGIN CATCH
                DECLARE @NO_XACT_STATE SMALLINT = XACT_STATE();

                IF @NO_XACT_STATE <> 0
                    ROLLBACK TRAN;

                EXEC dbo.EBI_SP_ErrorLog_INT @NO_XACT_STATE;
                SET @Result = -1;
            END CATCH;
        END;
    END
    ELSE
        SET @Result = -99;

    IF @DI_OUTPUT_RECORD = 1
        SELECT @Result AS Result;

    RETURN @Result;
END;
GO

-- 7. EBI_TransactionNumber_INT Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_TransactionNumber_INT
    @DI_CASH_LOG_TYPE SMALLINT,
    @CD_TRAN_NUM BIGINT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @CD_TRAN_NUM = CONVERT(BIGINT, NEXT VALUE FOR dbo.JoySword_CashTransactionSequence);
    RETURN 0;
END;
GO

-- 8. EBI_Cash_Detial_SEL Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_Cash_Detial_SEL
    @CD_USERUID BIGINT,
    @NO_REMAIN_CASH INT OUTPUT,
    @NO_REMAIN_BONUS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID;

    SELECT @NO_REMAIN_CASH = ISNULL(NO_REMAIN_CASH, 0), @NO_REMAIN_BONUS = ISNULL(NO_REMAIN_BONUS, 0)
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @CD_USERUID;

    IF @NO_REMAIN_CASH IS NULL SET @NO_REMAIN_CASH = 0;
    IF @NO_REMAIN_BONUS IS NULL SET @NO_REMAIN_BONUS = 0;

    RETURN 0;
END;
GO

-- 9. EBI_Cash_UseFirstCash Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_Cash_UseFirstCash
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_PRICE INT,
    @DT_GETDATE SMALLDATETIME,
    @NO_REMAIN_CASH INT OUTPUT,
    @NO_REMAIN_BONUS INT OUTPUT,
    @NO_BEFOR_CASH INT OUTPUT,
    @NO_BEFOR_BONUS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;

    SELECT @NO_BEFOR_CASH = ISNULL(NO_REMAIN_CASH, 0), @NO_BEFOR_BONUS = ISNULL(NO_REMAIN_BONUS, 0)
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @CD_USERUID;

    DECLARE @TotalAvail INT = ISNULL(@NO_BEFOR_CASH, 0) + ISNULL(@NO_BEFOR_BONUS, 0);
    IF @TotalAvail < @NO_PRICE
    BEGIN
        SET @NO_REMAIN_CASH = ISNULL(@NO_BEFOR_CASH, 0);
        SET @NO_REMAIN_BONUS = ISNULL(@NO_BEFOR_BONUS, 0);
        RETURN -21; -- Insufficient Cash
    END;

    DECLARE @DeductReal INT = 0;
    DECLARE @DeductBonus INT = 0;

    IF @NO_BEFOR_CASH >= @NO_PRICE
    BEGIN
        SET @DeductReal = @NO_PRICE;
        SET @DeductBonus = 0;
    END
    ELSE
    BEGIN
        SET @DeductReal = @NO_BEFOR_CASH;
        SET @DeductBonus = @NO_PRICE - @NO_BEFOR_CASH;
    END;

    SET @NO_REMAIN_CASH = @NO_BEFOR_CASH - @DeductReal;
    SET @NO_REMAIN_BONUS = @NO_BEFOR_BONUS - @DeductBonus;

    UPDATE dbo.EB_Cash
    SET NO_REMAIN_CASH = @NO_REMAIN_CASH,
        NO_REMAIN_BONUS = @NO_REMAIN_BONUS
    WHERE CD_USERUID = @CD_USERUID;

    RETURN 0;
END;
GO

-- 10. EBI_Cash_UseRealCashOnly Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_Cash_UseRealCashOnly
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_PRICE INT,
    @DT_GETDATE SMALLDATETIME,
    @NO_REMAIN_CASH INT OUTPUT,
    @NO_REMAIN_BONUS INT OUTPUT,
    @NO_BEFOR_CASH INT OUTPUT,
    @NO_BEFOR_BONUS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;

    SELECT @NO_BEFOR_CASH = ISNULL(NO_REMAIN_CASH, 0), @NO_BEFOR_BONUS = ISNULL(NO_REMAIN_BONUS, 0)
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @CD_USERUID;

    IF ISNULL(@NO_BEFOR_CASH, 0) < @NO_PRICE
    BEGIN
        SET @NO_REMAIN_CASH = ISNULL(@NO_BEFOR_CASH, 0);
        SET @NO_REMAIN_BONUS = ISNULL(@NO_BEFOR_BONUS, 0);
        RETURN -21; -- Insufficient Real Cash
    END;

    SET @NO_REMAIN_CASH = @NO_BEFOR_CASH - @NO_PRICE;
    SET @NO_REMAIN_BONUS = @NO_BEFOR_BONUS;

    UPDATE dbo.EB_Cash
    SET NO_REMAIN_CASH = @NO_REMAIN_CASH
    WHERE CD_USERUID = @CD_USERUID;

    RETURN 0;
END;
GO

-- 11. EBI_Cash_UseBonusCashOnly Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_Cash_UseBonusCashOnly
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_PRICE INT,
    @DT_GETDATE SMALLDATETIME,
    @NO_REMAIN_CASH INT OUTPUT,
    @NO_REMAIN_BONUS INT OUTPUT,
    @NO_BEFOR_CASH INT OUTPUT,
    @NO_BEFOR_BONUS INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;

    SELECT @NO_BEFOR_CASH = ISNULL(NO_REMAIN_CASH, 0), @NO_BEFOR_BONUS = ISNULL(NO_REMAIN_BONUS, 0)
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @CD_USERUID;

    IF ISNULL(@NO_BEFOR_BONUS, 0) < @NO_PRICE
    BEGIN
        SET @NO_REMAIN_CASH = ISNULL(@NO_BEFOR_CASH, 0);
        SET @NO_REMAIN_BONUS = ISNULL(@NO_BEFOR_BONUS, 0);
        RETURN -21; -- Insufficient Bonus Cash
    END;

    SET @NO_REMAIN_CASH = @NO_BEFOR_CASH;
    SET @NO_REMAIN_BONUS = @NO_BEFOR_BONUS - @NO_PRICE;

    UPDATE dbo.EB_Cash
    SET NO_REMAIN_BONUS = @NO_REMAIN_BONUS
    WHERE CD_USERUID = @CD_USERUID;

    RETURN 0;
END;
GO

-- 12. EBP_Cash_Total_USERID_SEL Procedure (Queries Cash Balance by UserID String)
CREATE OR ALTER PROCEDURE dbo.EBP_Cash_Total_USERID_SEL
    @ST_USERID NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserUID BIGINT;
    SELECT @UserUID = UserUID FROM Account.dbo.MUser WHERE UserID = @ST_USERID;

    IF @UserUID IS NOT NULL
    BEGIN
        EXEC dbo.JoySword_EnsureUserCashAccount @UserUID, @ST_USERID;
        SELECT 
            ISNULL(C.NO_REMAIN_CASH, 0) AS NO_REMAIN_CASH,
            ISNULL(C.NO_REMAIN_BONUS, 0) AS NO_REMAIN_BONUS,
            (ISNULL(C.NO_REMAIN_CASH, 0) + ISNULL(C.NO_REMAIN_BONUS, 0)) AS TotalCash
        FROM dbo.EB_Cash AS C
        WHERE C.CD_USERUID = @UserUID;
    END
    ELSE
    BEGIN
        SELECT 0 AS NO_REMAIN_CASH, 0 AS NO_REMAIN_BONUS, 0 AS TotalCash;
    END;
END;
GO

-- 13. EBP_Cash_Total_USERUID_SEL Procedure (Queries Cash Balance by UserUID BigInt)
CREATE OR ALTER PROCEDURE dbo.EBP_Cash_Total_USERUID_SEL
    @CD_USERUID BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID;

    SELECT 
        ISNULL(NO_REMAIN_CASH, 0) AS NO_REMAIN_CASH,
        ISNULL(NO_REMAIN_BONUS, 0) AS NO_REMAIN_BONUS,
        (ISNULL(NO_REMAIN_CASH, 0) + ISNULL(NO_REMAIN_BONUS, 0)) AS TotalCash
    FROM dbo.EB_Cash
    WHERE CD_USERUID = @CD_USERUID;
END;
GO

-- 14. EBI_Cash_Charge_SET Procedure
CREATE OR ALTER PROCEDURE dbo.EBI_Cash_Charge_SET
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_CHARGE_CASH INT
AS
BEGIN
    SET NOCOUNT ON;

    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;

    UPDATE dbo.EB_Cash
    SET NO_REMAIN_CASH = NO_REMAIN_CASH + @NO_CHARGE_CASH,
        NO_TOTAL_CHARGE_CASH = NO_TOTAL_CHARGE_CASH + @NO_CHARGE_CASH,
        DT_RECHARGE_DATE = GETDATE()
    WHERE CD_USERUID = @CD_USERUID;

    RETURN 0;
END;
GO

-- 15. EBP_BillOrder_Bonus_SET Procedure
CREATE OR ALTER PROCEDURE dbo.EBP_BillOrder_Bonus_SET
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_BONUS_CASH INT
AS
BEGIN
    SET NOCOUNT ON;

    EXEC dbo.JoySword_EnsureUserCashAccount @CD_USERUID, @ST_USERID;

    UPDATE dbo.EB_Cash
    SET NO_REMAIN_BONUS = NO_REMAIN_BONUS + @NO_BONUS_CASH,
        DT_RECHARGE_DATE = GETDATE()
    WHERE CD_USERUID = @CD_USERUID;

    RETURN 0;
END;
GO

-- 16. EBI_Buy_Product_CHK Procedure
-- The native prepare-purchase procedure supplies one product ID and six
-- output values. Keep this signature even when adding custom gacha products.
CREATE OR ALTER PROCEDURE dbo.EBI_Buy_Product_CHK
    @CD_PRODUCTNO BIGINT,
    @DI_ISSALE BIT = NULL OUTPUT,
    @DT_STARTDATE SMALLDATETIME = NULL OUTPUT,
    @DT_ENDDATE SMALLDATETIME = NULL OUTPUT,
    @DI_ENABLEGIFT BIT = NULL OUTPUT,
    @NO_SALEPRICE INT = NULL OUTPUT,
    @NO_REALPRICE INT = NULL OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @DI_ISSALE = DI_ISSALE,
        @DT_STARTDATE = DT_STARTDATE,
        @DT_ENDDATE = DT_ENDDATE,
        @DI_ENABLEGIFT = DI_ENABLEGIFT,
        @NO_SALEPRICE = NO_SALEPRICE,
        @NO_REALPRICE = NO_REALPRICE
    FROM dbo.EB_Product
    WHERE CD_PRODUCTNO = @CD_PRODUCTNO;

    IF EXISTS (
        SELECT 1
        FROM dbo.EB_Product
        WHERE CD_PRODUCTNO = @CD_PRODUCTNO
          AND DI_ISSALE = 1
          AND DT_STARTDATE <= GETDATE()
          AND DT_ENDDATE >= GETDATE()
    ) OR @CD_PRODUCTNO IN (
        990001, 990010, 995000, 995001, 995002, 995003, 995100,
        215660, 130150, 130151, 130152, 130720, 130721, 160888
    )
    BEGIN
        RETURN 0;
    END;

    IF @CD_PRODUCTNO >= 100000
        RETURN 0;

    RETURN -41;
END;
GO

-- 17. EBP_Product_SEL Procedure
CREATE OR ALTER PROCEDURE dbo.EBP_Product_SEL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CONVERT(INT, CD_PRODUCTNO) AS CD_PRODUCTNO,
        NO_PRODUCTID,
        DI_ISSALE,
        DI_ISEVENT,
        DI_ISSHOW,
        DI_ISCASHINVENSKIP,
        ST_PRODUCTNAME,
        CD_CATEGORYNO,
        NO_SALEPRICE,
        NO_REALPRICE,
        NO_PERIOD,
        NO_QUANTITY,
        DI_ENABLEGIFT,
        NO_LIMITLEVEL,
        ST_PRODUCTNAME_LOCAL
    FROM dbo.EB_Product
    WHERE DI_ISSALE = 1;
END;
GO

-- 17. Cash locker capacity check used by the GameServer inventory inquiry.
CREATE OR ALTER PROCEDURE dbo.EBP_BuyCashItemLockerCount_CHK
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT = 1,
    @NO_PRODUCT_COUNT INT = 1,
    @DI_OUTPUT_RECORD BIT = 0,
    @NO_MAX_KEEP_COUNT INT = 100
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Result INT = 0;
    DECLARE @LockerCount INT = 0;

    SET @NO_PRODUCT_COUNT = ISNULL(@NO_PRODUCT_COUNT, 0);
    SET @NO_MAX_KEEP_COUNT = ISNULL(@NO_MAX_KEEP_COUNT, 100);

    EXEC dbo.JoySword_SyncCashItemLockerCount
        @CD_USERUID = @CD_USERUID,
        @NO_SERVER_SET_ID = @NO_SERVER_SET_ID,
        @NO_COUNT = @LockerCount OUTPUT;

    IF @LockerCount + @NO_PRODUCT_COUNT > @NO_MAX_KEEP_COUNT
        SET @Result = -1;

    IF @DI_OUTPUT_RECORD = 1
        SELECT @Result AS Result;

    RETURN @Result;
END;
GO

CREATE OR ALTER PROCEDURE dbo.EBP_Buy_Product_LimitedUser_CHK
    @CD_PRODUCTNO BIGINT,
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT = 1,
    @CD_PRODUCT_SM INT = NULL OUTPUT,
    @NO_LIMIT_COUN INT = NULL OUTPUT,
    @FLAG INT = 0
AS BEGIN SET NOCOUNT ON; SET @CD_PRODUCT_SM = 0; SET @NO_LIMIT_COUN = 0; RETURN 0; END;
GO

CREATE OR ALTER PROCEDURE dbo.EBI_Buy_Product_LimitedUser_Set
    @CD_PRODUCT_SM INT,
    @CD_USERUID BIGINT,
    @NO_SERVER_SET_ID TINYINT = 1,
    @NO_LIMIT_USERUID INT = 0
AS BEGIN SET NOCOUNT ON; RETURN 0; END;
GO

CREATE OR ALTER PROCEDURE dbo.EBI_CashLog_INT
    @CD_TRAN_NUM BIGINT,
    @ST_SERVERORDERID VARCHAR(50),
    @ST_GROUPORDERID VARCHAR(50),
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_SERVER_SET_ID TINYINT,
    @NO_UNITUID BIGINT,
    @NO_LEVEL TINYINT,
    @NO_TO_USERUID BIGINT,
    @NO_TO_UNITUID BIGINT,
    @DI_CASH_LOG_TYPE SMALLINT,
    @NO_PRODUCT_NUM BIGINT,
    @NO_QUANTITY SMALLINT,
    @NO_PRICE INT,
    @NO_USE_BONUS INT,
    @NO_REMAIN_CASH INT,
    @NO_REMAIN_BONUS INT,
    @DT_GETDATE SMALLDATETIME
AS BEGIN SET NOCOUNT ON; RETURN 0; END;
GO

CREATE OR ALTER PROCEDURE dbo.EBP_BuyItemLog_INS
    @ST_SERVERORDERID VARCHAR(50),
    @ST_GROUPORDERID VARCHAR(50),
    @CD_USERUID BIGINT,
    @ST_USERID NVARCHAR(50),
    @NO_SERVER_SET_ID TINYINT,
    @NO_UNITUID BIGINT,
    @NO_LEVEL TINYINT,
    @NO_PRODUCT_NUM BIGINT,
    @NO_QUANTITY SMALLINT,
    @NO_PRICE INT,
    @DI_ITEM_KEEP TINYINT,
    @NO_TO_USERUID BIGINT,
    @NO_TO_UNITUID BIGINT,
    @ST_GIFT_MESSAGE NVARCHAR(50),
    @DI_BUY_CASH TINYINT,
    @NO_CHANNEL_CODE TINYINT,
    @NO_TOTAL_CASH INT = 0,
    @CD_TRAN_NUM BIGINT = 0,
    @NO_REMAIN_CASH INT = 0,
    @NO_REMAIN_BONUS INT = 0,
    @FLAG INT = 0
AS
BEGIN
    SET NOCOUNT ON;

    IF @CD_TRAN_NUM = 0
        SELECT CAST(0 AS INT) AS Result;

    RETURN 0;
END;
GO
