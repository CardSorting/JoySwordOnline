USE ES_BILLING;
GO

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
GO

-- Ensure EB_Cash Table Has Auto-Initialization Trigger / Safety Procedures
IF OBJECT_ID(N'dbo.JoySword_EnsureUserCashAccount', N'P') IS NULL
BEGIN
    EXEC('CREATE PROCEDURE dbo.JoySword_EnsureUserCashAccount @UserUID BIGINT AS BEGIN SET NOCOUNT ON; END;');
END;
GO

ALTER PROCEDURE dbo.JoySword_EnsureUserCashAccount
    @UserUID BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM dbo.EB_Cash WHERE CD_USERUID = @UserUID)
    BEGIN
        INSERT INTO dbo.EB_Cash (CD_USERUID, NO_REMAIN_CASH, NO_REMAIN_BONUS, NO_TOTAL_CHARGE_CASH, DT_RECHARGE_DATE)
        VALUES (@UserUID, 0, 0, 0, GETDATE());
    END;
END;
GO

-- Register Custom Gacha & Store Products in ES_BILLING.dbo.EB_Product
MERGE dbo.EB_Product AS Target
USING (
    VALUES
    (990001, 990001, 1, 0, 1, 1, N'Single Ice Burner Gacha Pull', N'Single Ice Burner Gacha Pull', 32, 1200, 1200, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (990010, 990010, 1, 0, 1, 1, N'10-Pull Ice Burner Gacha Box', N'10-Pull Ice Burner Gacha Box', 51, 10000, 10000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (995000, 995000, 1, 0, 1, 1, N'Novice Starter Pack', N'Novice Starter Pack', 51, 3000, 3000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (995001, 995001, 1, 0, 1, 1, N'Weekly Ice Burner 10-Pull Box', N'Weekly Ice Burner 10-Pull Box', 51, 10000, 10000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (995002, 995002, 1, 0, 1, 1, N'Monthly Enhancement Master Chest', N'Monthly Enhancement Master Chest', 51, 45000, 45000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (995003, 995003, 1, 0, 1, 1, N'Mythic Breakthrough Core Pack', N'Mythic Breakthrough Core Pack', 51, 80000, 80000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (995100, 995100, 1, 0, 1, 1, N'Starlight Cashback Core', N'Starlight Cashback Core', 32, 100, 100, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (215660, 215660, 1, 0, 1, 1, N'Ice Burner (Archangel)', N'Ice Burner (Archangel)', 32, 2500, 2500, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (130150, 130150, 1, 0, 1, 1, N'Magic Amulet Lv.8', N'Magic Amulet Lv.8', 32, 1000, 1000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (130151, 130151, 1, 0, 1, 1, N'Magic Amulet Lv.9', N'Magic Amulet Lv.9', 32, 3000, 3000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (130152, 130152, 1, 0, 1, 1, N'Magic Amulet Lv.10', N'Magic Amulet Lv.10', 32, 7000, 7000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (130720, 130720, 1, 0, 1, 1, N'Magic Amulet Lv.11', N'Magic Amulet Lv.11', 32, 15000, 15000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (130721, 130721, 1, 0, 1, 1, N'Magic Amulet Lv.12', N'Magic Amulet Lv.12', 32, 30000, 30000, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00'),
    (160888, 160888, 1, 0, 1, 1, N'Exclusive Starlight Aura Effect Title', N'Exclusive Starlight Aura Effect Title', 22, 1200, 1200, 0, 1, 1, 1, 0, '2020-01-01 00:00:00', '2050-01-01 00:00:00')
) AS Source (
    CD_PRODUCTNO, NO_PRODUCTID, DI_ISSALE, DI_ISEVENT, DI_ISSHOW, DI_ISCASHINVENSKIP,
    ST_PRODUCTNAME, ST_PRODUCTNAME_LOCAL, CD_CATEGORYNO, NO_SALEPRICE, NO_REALPRICE,
    NO_PERIOD, NO_QUANTITY, DI_ENABLEGIFT, NO_LIMITLEVEL, NO_LIMIT_USERUID, DT_STARTDATE, DT_ENDDATE
)
ON Target.CD_PRODUCTNO = Source.CD_PRODUCTNO
WHEN MATCHED THEN
    UPDATE SET
        DI_ISSALE = Source.DI_ISSALE,
        DI_ISSHOW = Source.DI_ISSHOW,
        ST_PRODUCTNAME = Source.ST_PRODUCTNAME,
        NO_SALEPRICE = Source.NO_SALEPRICE,
        NO_REALPRICE = Source.NO_REALPRICE,
        DT_STARTDATE = Source.DT_STARTDATE,
        DT_ENDDATE = Source.DT_ENDDATE
WHEN NOT MATCHED THEN
    INSERT (
        CD_PRODUCTNO, NO_PRODUCTID, DI_ISSALE, DI_ISEVENT, DI_ISSHOW, DI_ISCASHINVENSKIP,
        ST_PRODUCTNAME, ST_PRODUCTNAME_LOCAL, CD_CATEGORYNO, NO_SALEPRICE, NO_REALPRICE,
        NO_PERIOD, NO_QUANTITY, DI_ENABLEGIFT, NO_LIMITLEVEL, NO_LIMIT_USERUID, DT_STARTDATE, DT_ENDDATE
    )
    VALUES (
        Source.CD_PRODUCTNO, Source.NO_PRODUCTID, Source.DI_ISSALE, Source.DI_ISEVENT, Source.DI_ISSHOW, Source.DI_ISCASHINVENSKIP,
        Source.ST_PRODUCTNAME, Source.ST_PRODUCTNAME_LOCAL, Source.CD_CATEGORYNO, Source.NO_SALEPRICE, Source.NO_REALPRICE,
        Source.NO_PERIOD, Source.NO_QUANTITY, Source.DI_ENABLEGIFT, Source.NO_LIMITLEVEL, Source.NO_LIMIT_USERUID, Source.DT_STARTDATE, Source.DT_ENDDATE
    );
GO

-- Preserve the native prepare-purchase contract while accepting gacha products.
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
