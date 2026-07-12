USE ES_BILLING;
GO

-- 1. Create trigger on EB_Cash in ES_BILLING database
IF OBJECT_ID(N'dbo.tr_EB_Cash_Sync_VirtualCash', N'TR') IS NOT NULL
    DROP TRIGGER dbo.tr_EB_Cash_Sync_VirtualCash;
GO

CREATE TRIGGER tr_EB_Cash_Sync_VirtualCash
ON dbo.EB_Cash
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    -- Prevent infinite recursion
    IF TRIGGER_NESTLEVEL() > 2 RETURN;
    
    -- Sync to VCGAVirtualCash if changed
    UPDATE v
    SET v.VCPoint = i.NO_REMAIN_CASH + i.NO_REMAIN_BONUS
    FROM Game01.dbo.VCGAVirtualCash v
    JOIN inserted i ON v.LoginUID = CONVERT(INT, i.CD_USERUID)
    WHERE v.VCPoint <> (i.NO_REMAIN_CASH + i.NO_REMAIN_BONUS);
    
    -- Insert missing
    INSERT INTO Game01.dbo.VCGAVirtualCash (LoginUID, VCPoint)
    SELECT CONVERT(INT, i.CD_USERUID), i.NO_REMAIN_CASH + i.NO_REMAIN_BONUS
    FROM inserted i
    JOIN Game01.dbo.users gu ON gu.LoginUID = CONVERT(INT, i.CD_USERUID)
    WHERE NOT EXISTS (
        SELECT 1 FROM Game01.dbo.VCGAVirtualCash v
        WHERE v.LoginUID = CONVERT(INT, i.CD_USERUID)
    )
    AND i.CD_USERUID BETWEEN 0 AND 2147483647;
END;
GO

USE Game01;
GO

-- 2. Create trigger on VCGAVirtualCash in Game01 database
IF OBJECT_ID(N'dbo.tr_VCGAVirtualCash_Sync_RealCash', N'TR') IS NOT NULL
    DROP TRIGGER dbo.tr_VCGAVirtualCash_Sync_RealCash;
GO

CREATE TRIGGER tr_VCGAVirtualCash_Sync_RealCash
ON dbo.VCGAVirtualCash
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    -- Prevent infinite recursion
    IF TRIGGER_NESTLEVEL() > 2 RETURN;
    
    -- Sync to EB_Cash if changed
    UPDATE c
    SET c.NO_REMAIN_CASH = i.VCPoint,
        c.NO_REMAIN_BONUS = 0,
        c.DT_RECHARGE_DATE = GETDATE()
    FROM ES_BILLING.dbo.EB_Cash c
    JOIN inserted i ON c.CD_USERUID = CONVERT(BIGINT, i.LoginUID)
    WHERE c.NO_REMAIN_CASH <> i.VCPoint OR c.NO_REMAIN_BONUS <> 0;
    
    -- Insert missing
    INSERT INTO ES_BILLING.dbo.EB_Cash (CD_USERUID, ST_USERID, NO_TOTAL_CHARGE_CASH, NO_TOTAL_CHARGE_BONUS, NO_REMAIN_CASH, NO_REMAIN_BONUS, DT_FIRST_CHARGE_DATE, DT_RECHARGE_DATE)
    SELECT CONVERT(BIGINT, i.LoginUID), u.Login, i.VCPoint, 0, i.VCPoint, 0, GETDATE(), GETDATE()
    FROM inserted i
    JOIN Game01.dbo.users u ON u.LoginUID = i.LoginUID
    WHERE NOT EXISTS (
        SELECT 1 FROM ES_BILLING.dbo.EB_Cash c
        WHERE c.CD_USERUID = CONVERT(BIGINT, i.LoginUID)
    );
END;
GO
