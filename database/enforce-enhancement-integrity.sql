USE [Game01];
GO

SET NOCOUNT ON;
SET XACT_ABORT ON;

/*
    Enhancement is a persisted equipment property, but GameServer also uses it
    as an index into its enhancement-rate table when assembling dungeon combat
    stats.  Values outside the binary-supported 0..20 range can therefore display in
    the client while producing an invalid effective attack/defence value on the
    server.  Repair old rows before installing the database boundary.
*/
BEGIN TRANSACTION;

UPDATE dbo.GItemEnchant WITH (UPDLOCK, HOLDLOCK)
SET ELevel = CASE WHEN ELevel IS NULL OR ELevel < 0 THEN 0 ELSE 20 END
WHERE ELevel IS NULL OR ELevel < 0 OR ELevel > 20;

IF EXISTS
(
    SELECT 1
    FROM sys.check_constraints
    WHERE parent_object_id = OBJECT_ID(N'dbo.GItemEnchant')
      AND name = N'CK_GItemEnchant_ELevel_0_12'
)
BEGIN
    ALTER TABLE dbo.GItemEnchant
        DROP CONSTRAINT CK_GItemEnchant_ELevel_0_12;
END;

IF EXISTS
(
    SELECT 1
    FROM sys.check_constraints
    WHERE parent_object_id = OBJECT_ID(N'dbo.GItemEnchant')
      AND name = N'CK_GItemEnchant_ELevel_0_20'
)
BEGIN
    ALTER TABLE dbo.GItemEnchant
        DROP CONSTRAINT CK_GItemEnchant_ELevel_0_20;
END;

ALTER TABLE dbo.GItemEnchant WITH CHECK
    ADD CONSTRAINT CK_GItemEnchant_ELevel_0_20
        CHECK (ELevel IS NOT NULL AND ELevel >= 0 AND ELevel <= 20);

ALTER TABLE dbo.GItemEnchant
    CHECK CONSTRAINT CK_GItemEnchant_ELevel_0_20;

COMMIT TRANSACTION;
GO

IF OBJECT_ID(N'dbo.EnhancementIntegrityFailure', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.EnhancementIntegrityFailure
    (
        IntegrityFailureID BIGINT IDENTITY(1,1) NOT NULL
            CONSTRAINT PK_EnhancementIntegrityFailure PRIMARY KEY,
        UnitUID BIGINT NOT NULL,
        ItemUID BIGINT NOT NULL,
        PreviousLevel SMALLINT NULL,
        RequestedLevel SMALLINT NULL,
        ReasonCode VARCHAR(64) NOT NULL,
        RecordedAtUTC DATETIME2(3) NOT NULL
            CONSTRAINT DF_EnhancementIntegrityFailure_RecordedAtUTC DEFAULT SYSUTCDATETIME()
    );
END;
GO

/*
    Defense in depth for the exact write path used by GameServer.  The runtime
    table boundary should prevent this call, but rejecting it here also protects against a
    stale process or malformed packet.  Error -3 is reserved by this procedure
    for an invalid enhancement level; no row is inserted or updated.
*/
ALTER PROCEDURE [dbo].[gup_update_Enchant]
    @iUnitUID BIGINT,
    @iItemUID BIGINT,
    @iELevel SMALLINT,
    @iOK INT = 0
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    IF @iELevel IS NULL OR @iELevel < 0 OR @iELevel > 20
    BEGIN
        SELECT @iOK = -3;
        SELECT @iOK;
        RETURN;
    END;

    DECLARE @iPreviousLevel SMALLINT = NULL;
    DECLARE @bExists BIT = 0;

    BEGIN TRANSACTION;

    SELECT @iPreviousLevel = ELevel, @bExists = 1
    FROM dbo.GItemEnchant WITH (UPDLOCK, HOLDLOCK)
    WHERE UnitUID = @iUnitUID
      AND ItemUID = @iItemUID;

    IF @bExists = 0
    BEGIN
        INSERT INTO dbo.GItemEnchant (UnitUID, ItemUID, ELevel)
        VALUES (@iUnitUID, @iItemUID, @iELevel);

        IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
        BEGIN
            SELECT @iOK = -1;
            ROLLBACK TRANSACTION;
            SELECT @iOK;
            RETURN;
        END;
    END
    ELSE
    BEGIN
        /*
            Ordinary enhancement can only raise a persisted item by one.  Any
            downgrade/reset remains valid, and initial inserts preserve valid
            legacy +0..+20 equipment.  This separates existing-item integrity
            from the rules for a newly produced transition.
        */
        IF @iELevel > @iPreviousLevel + 1
        BEGIN
            ROLLBACK TRANSACTION;
            INSERT INTO dbo.EnhancementIntegrityFailure
                (UnitUID, ItemUID, PreviousLevel, RequestedLevel, ReasonCode)
            VALUES
                (@iUnitUID, @iItemUID, @iPreviousLevel, @iELevel, 'increase_greater_than_one');
            SELECT @iOK = -4;
            SELECT @iOK;
            RETURN;
        END;

        UPDATE dbo.GItemEnchant WITH (UPDLOCK)
        SET ELevel = @iELevel
        WHERE UnitUID = @iUnitUID
          AND ItemUID = @iItemUID;

        IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
        BEGIN
            SELECT @iOK = -2;
            ROLLBACK TRANSACTION;
            SELECT @iOK;
            RETURN;
        END;
    END;

    COMMIT TRANSACTION;
    SELECT @iOK;
END;
GO
