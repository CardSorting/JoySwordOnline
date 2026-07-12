CREATE PROCEDURE [dbo].[gup_select_unit_new]
	@iUnitUID_		bigint
,	@iUserUID	[bigint]
AS
	SET NOCOUNT ON

	-- 기존 파라미터에서 변수로 변경
	DECLARE @Result		int

	DECLARE @sdtNow			smalldatetime
	,		@sdtSpiritDate	smalldatetime
	,		@iSpirit		smallint
	,		@bSpiritFlag	bit
	,		@sdtLastLogin	smalldatetime
	,		@iStartCnt		smallint
	,		@iSupplyCnt		smallint
	,		@iStartSpirit	smallint
	,		@sdtRegDate		smalldatetime
	DECLARE @strErrorMSG	nvarchar(max)

	SET @strErrorMSG = N'%s [gup_select_unit_new @iUnitUID_ = %I64d, @iUserUID = %I64d, @Result = %d]'

	SELECT @sdtLastLogin = LastDate, @sdtRegDate = RegDate, @sdtNow = GETDATE()
	FROM dbo.GUnit WITH(NOLOCK)
	WHERE UnitUID = @iUnitUID_
		AND Deleted = 0

	-- 해당 유닛이 없는 경우.
	IF @@ROWCOUNT = 0
		SET @Result = -1

	SELECT @sdtSpiritDate = regdate
	, @iSpirit = Spirit, @bSpiritFlag = Flag
	FROM dbo.GSpirit WITH(NOLOCK)
	WHERE unitUID = @iUnitUID_

	SELECT @iStartCnt = StartCnt, @iSupplyCnt = SupplyCnt, @iStartSpirit = StartSpirit
	FROM dbo.GResurrectionStoneCnt WITH(NOLOCK)


	BEGIN TRY

		BEGIN TRAN

			IF NOT EXISTS ( SELECT * FROM dbo.GUnit WITH(NOLOCK) WHERE UnitUID = @iUnitUID_ AND UserUID = @iUserUID ) BEGIN
				SET @Result = -10
				
				RAISERROR(@strErrorMSG, 15, 1, N'GUnit ', @iUnitUID_, @iUserUID, @Result) WITH SETERROR
			END
			
			IF CONVERT(smalldatetime, CONVERT(varchar(10), DATEADD(hh, 18, @sdtSpiritDate), 120) + ' 06:00') < @sdtNow BEGIN

				SET @Result = -11

				UPDATE dbo.GSpirit
				SET Spirit = @iStartSpirit
				,	Flag = 0
				,	Regdate = @sdtNow
				WHERE UnitUID = @iUnitUID_
			END
			
					
			UPDATE dbo.GEventDungeonData
			SET PlayCount = 0
			,	SuccessCount = 0
			,	LastResetTime = @sdtNow
			WHERE UnitUID = @iUnitUID_
			AND CONVERT(varchar(10), DATEADD(dd, 1, LastResetTime), 120) < @sdtNow


			-- 부활석 정책

			-- 기존 캐릭터의 부활석 정보 가져오기
			DECLARE @iQuantity	int

			SELECT @iQuantity = Quantity
			FROM dbo.GResurrectionStone	WITH(NOLOCK)
			WHERE unituid =@iUnitUID_

			IF @@ROWCOUNT = 0 BEGIN
				SET @Result = -21

				INSERT INTO dbo.GResurrectionStone ( UnitUID, Quantity )
				VALUES ( @iUnitUID_, @iStartCnt )
			END
			ELSE IF CONVERT(smalldatetime, CONVERT(varchar(10), DATEADD(hh, 18, @sdtLastLogin), 120) + ' 06:00') < @sdtNow BEGIN
				-- 기준치보다 보유량이 적을 때
				IF(@iQuantity < @iSupplyCnt) BEGIN
					SET @Result = -22

					UPDATE dbo.GResurrectionStone
					SET Quantity = @iSupplyCnt
					WHERE UnitUID = @iUnitUID_
				END
			END

			SET @Result = -32

			UPDATE dbo.GUnit
			SET LoginCount = LoginCount + 1
			,	LastDate = @sdtNow
			,	PlayDayCnt = CASE WHEN DATEDIFF(dd, @sdtLastLogin, @sdtNow) > 0 THEN PlayDayCnt + 1 ELSE PlayDayCnt END
			WHERE UnitUID = @iUnitUID_

		COMMIT TRAN
		
		IF(@iQuantity < @iSupplyCnt)
			EXEC [Statistics].dbo.P_StatsStoneCnt_SET 0, @iSupplyCnt, @iQuantity


		SET @Result = 0
	END TRY
	BEGIN CATCH
		DECLARE @NO_XACT_STATE		smallint
		SET @NO_XACT_STATE			= XACT_STATE()		-- 트랜잭션 상태 정보

		IF @NO_XACT_STATE <> 0
			ROLLBACK TRAN

		EXEC dbo.SYS_SP_ErrorLog_INT @NO_XACT_STATE

		IF @Result = 0 OR @Result IS NULL
			SET @Result = -1
	END CATCH

	SELECT @Result AS Result, @sdtRegDate AS RegDate, @sdtLastLogin AS LastLogin, @iSupplyCnt, @iQuantity


(1 rows affected)
