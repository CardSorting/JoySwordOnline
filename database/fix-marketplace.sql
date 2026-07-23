USE Game01;
GO

SET XACT_ABORT ON;
GO

DECLARE @OfflineShopExpiry SMALLDATETIME =
    CONVERT(SMALLDATETIME, '2070-01-01T00:00:00', 126);

BEGIN TRANSACTION;

-- Remove shop rows whose owning character no longer exists. Socket rows must
-- be removed first because they belong to the corresponding shop item.
DELETE socket_row
FROM dbo.GPShopItemSocket AS socket_row
LEFT JOIN dbo.GPShopItem AS item ON item.ItemUID = socket_row.ItemUID
LEFT JOIN dbo.GUnit AS unit ON unit.UnitUID = item.UnitUID AND unit.Deleted = 0
WHERE item.ItemUID IS NULL OR unit.UnitUID IS NULL;

DELETE item
FROM dbo.GPShopItem AS item
LEFT JOIN dbo.GUnit AS unit ON unit.UnitUID = item.UnitUID AND unit.Deleted = 0
WHERE unit.UnitUID IS NULL;

DELETE info
FROM dbo.GPShopInfo AS info
LEFT JOIN dbo.GUnit AS unit ON unit.UnitUID = info.UnitUID AND unit.Deleted = 0
WHERE unit.UnitUID IS NULL;

-- Personal-shop access is permanent in the offline environment. Every active
-- character receives a closed, empty state which the client can safely open.
UPDATE info
SET UserUID = unit.UserUID,
    ExpirationDate = @OfflineShopExpiry
FROM dbo.GPShopInfo AS info
JOIN dbo.GUnit AS unit ON unit.UnitUID = info.UnitUID
WHERE unit.Deleted = 0;

INSERT INTO dbo.GPShopInfo
    (UserUID, UnitUID, IsPShopOpen, ShopType, PShopName,
     BeginDate, ExpirationDate, On_Off)
SELECT
    unit.UserUID,
    unit.UnitUID,
    CONVERT(BIT, 0),
    CONVERT(TINYINT, 0),
    N'',
    GETDATE(),
    @OfflineShopExpiry,
    CONVERT(BIT, 0)
FROM dbo.GUnit AS unit
WHERE unit.Deleted = 0
  AND NOT EXISTS (
      SELECT 1
      FROM dbo.GPShopInfo AS info
      WHERE info.UnitUID = unit.UnitUID
  );

COMMIT TRANSACTION;
-- Ensure high-performance nonclustered indexes exist for Marketplace & Personal Shop queries
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.GPShopInfo') AND name = N'IX_GPShopInfo_UnitUID')
BEGIN
    CREATE NONCLUSTERED INDEX IX_GPShopInfo_UnitUID ON dbo.GPShopInfo (UnitUID);
END
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.GPShopItem') AND name = N'IX_GPShopItem_UnitUID')
BEGIN
    CREATE NONCLUSTERED INDEX IX_GPShopItem_UnitUID ON dbo.GPShopItem (UnitUID);
END
GO

CREATE OR ALTER PROCEDURE dbo.gup_get_PShop_info_UnitUID
    @iUnitUID BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @OfflineShopExpiry SMALLDATETIME =
        CONVERT(SMALLDATETIME, '2070-01-01T00:00:00', 126);

    IF NOT EXISTS (
        SELECT 1
        FROM dbo.GUnit WITH (NOLOCK)
        WHERE UnitUID = @iUnitUID
          AND Deleted = 0
    )
    BEGIN
        RETURN;
    END;

    IF NOT EXISTS (
        SELECT 1
        FROM dbo.GPShopInfo WITH (NOLOCK)
        WHERE UnitUID = @iUnitUID
    )
    BEGIN
        BEGIN TRANSACTION;
        IF NOT EXISTS (
            SELECT 1
            FROM dbo.GPShopInfo WITH (NOLOCK)
            WHERE UnitUID = @iUnitUID
        )
        BEGIN
            INSERT INTO dbo.GPShopInfo
                (UserUID, UnitUID, IsPShopOpen, ShopType, PShopName,
                 BeginDate, ExpirationDate, On_Off)
            SELECT
                unit.UserUID,
                unit.UnitUID,
                CONVERT(BIT, 0),
                CONVERT(TINYINT, 0),
                N'',
                GETDATE(),
                @OfflineShopExpiry,
                CONVERT(BIT, 0)
            FROM dbo.GUnit AS unit WITH (NOLOCK)
            WHERE unit.UnitUID = @iUnitUID
              AND unit.Deleted = 0;
        END;
        COMMIT TRANSACTION;
    END;

    SELECT
        CONVERT(SMALLDATETIME, info.ExpirationDate) AS ExpirationDate,
        CONVERT(BIT, info.IsPShopOpen) AS IsPShopOpen
    FROM dbo.GPShopInfo AS info WITH (NOLOCK)
    WHERE info.UnitUID = @iUnitUID;
END;
GO

PRINT 'Marketplace and personal-shop state repaired successfully.';
