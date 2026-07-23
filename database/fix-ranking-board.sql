USE Game01;
GO

SET XACT_ABORT ON;
GO

BEGIN TRANSACTION;

-- Old database snapshots can contain Henir records for characters that no
-- longer exist while newly-created characters have no row at all.  The game
-- client expects its personal record query to return one fully-populated row.
DELETE record
FROM dbo.Rank_SpaceTime_MyRecord AS record
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.GUnit AS unit
    WHERE unit.UnitUID = record.UnitUID
);

INSERT INTO dbo.Rank_SpaceTime_MyRecord
    (UnitUID, Stage, [Level], UnitClass, PlayTime, RegDate)
SELECT
    unit.UnitUID,
    CONVERT(TINYINT, 0),
    unit.[Level],
    unit.UnitClass,
    CONVERT(SMALLINT, 0),
    GETDATE()
FROM dbo.GUnit AS unit
WHERE unit.Deleted = 0
  AND NOT EXISTS (
      SELECT 1
      FROM dbo.Rank_SpaceTime_MyRecord AS record
      WHERE record.UnitUID = unit.UnitUID
  );

UPDATE record
SET Stage = ISNULL(record.Stage, CONVERT(TINYINT, 0)),
    [Level] = ISNULL(record.[Level], unit.[Level]),
    UnitClass = ISNULL(record.UnitClass, unit.UnitClass),
    PlayTime = ISNULL(record.PlayTime, CONVERT(SMALLINT, 0)),
    RegDate = ISNULL(record.RegDate, unit.RegDate)
FROM dbo.Rank_SpaceTime_MyRecord AS record
JOIN dbo.GUnit AS unit ON unit.UnitUID = record.UnitUID
WHERE record.Stage IS NULL
   OR record.[Level] IS NULL
   OR record.UnitClass IS NULL
   OR record.PlayTime IS NULL
   OR record.RegDate IS NULL;

COMMIT TRANSACTION;
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.Rank_SpaceTime_MyRecord') AND name = N'IX_Rank_SpaceTime_MyRecord_UnitUID')
BEGIN
    CREATE NONCLUSTERED INDEX IX_Rank_SpaceTime_MyRecord_UnitUID ON dbo.Rank_SpaceTime_MyRecord (UnitUID);
END
GO

CREATE OR ALTER PROCEDURE dbo.gup_get_rank_myrecord
    @iUnitUID BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- LEFT JOIN is intentional: characters created after server startup still
    -- receive a valid default record instead of an empty/null result.
    SELECT TOP (1)
        CONVERT(TINYINT, ISNULL(record.Stage, 0)) AS Stage,
        CONVERT(SMALLINT, ISNULL(record.PlayTime, 0)) AS PlayTime,
        CONVERT(TINYINT, ISNULL(record.[Level], unit.[Level])) AS [Level],
        CONVERT(TINYINT, ISNULL(record.UnitClass, unit.UnitClass)) AS UnitClass,
        CONVERT(SMALLDATETIME, ISNULL(record.RegDate, unit.RegDate)) AS RegDate
    FROM dbo.GUnit AS unit WITH (NOLOCK)
    LEFT JOIN dbo.Rank_SpaceTime_MyRecord AS record WITH (NOLOCK)
        ON record.UnitUID = unit.UnitUID
    WHERE unit.UnitUID = @iUnitUID
      AND unit.Deleted = 0;
END;
GO

PRINT 'Ranking-board personal records repaired successfully.';
