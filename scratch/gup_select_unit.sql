CREATE PROCEDURE [dbo].[gup_select_unit]
	@iUnitUID_	[bigint]
,	@iOK		[int] = 0
AS
SET NOCOUNT ON;
SET XACT_ABORT ON;

-- 해당 유닛이 없는 경우.
IF NOT EXISTS( SELECT * FROM dbo.GUnit WITH( NOLOCK ) WHERE UnitUID = @iUnitUID_ AND Deleted = 0 )
BEGIN
    SELECT @iOK = -1
    GOTO END_PROC
END


DECLARE @iSpirit		smallint
,		@sdtSpiritDate	smalldatetime
,		@sdtNow			smalldatetime
,		@bSpiritFlag	bit
,		@sdtLastLogin	smalldatetime
,		@iStartCnt		smallint
,		@iSupplyCnt		smallint
,		@iStartSpirit	smallint
/*******등록 날짜 추가*******/
,		@sdtRegDate		smalldatetime
/*******등록 날짜 추가*******/
,		@iQuantity		INT
,		@istone			INT		-- 충전될 부활석 수량


SELECT @sdtNow = getdate()
SELECT @sdtLastLogin = LastDate
/*******등록 날짜 추가*******/
,	@sdtRegDate = RegDate
/*******등록 날짜 추가*******/

	FROM dbo.GUnit	WITH (NOLOCK)
		WHERE UnitUID = @iUnitUID_

SELECT @iSpirit = Spirit, @sdtSpiritDate = regdate, @bSpiritFlag = Flag
	FROM dbo.GSpirit (NOLOCK)
		WHERE unitUID = @iUnitUID_

SELECT @iStartCnt = StartCnt, @iSupplyCnt = SupplyCnt, @iStartSpirit = StartSpirit
	FROM dbo.GResurrectionStoneCnt WITH (NOLOCK)

-- 기존 캐릭터의 부활석 정보 가져오기
SELECT	@iQuantity = quantity
	FROM dbo.gresurrectionstone	(NOLOCK)
		WHERE unituid = @iUnitUID_

SELECT @istone = @iSupplyCnt - @iQuantity

BEGIN TRAN
IF CONVERT(SMALLDATETIME,CONVERT(NVARCHAR(10),dateadd(hh,+18,@sdtSpiritDate),120)+' 06:00') < @sdtNow
	BEGIN
		SELECT @iSpirit = @iStartSpirit
		SELECT @bSpiritFlag = 0

		UPDATE GAME01.dbo.GSpirit WITH (UPDLOCK)
			SET Spirit = @iStartSpirit,	Flag = 0, Regdate = @sdtNow
				WHERE UnitUID = @iUnitUID_
		IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
			BEGIN	SELECT @iOK = -11	GOTO FAIL_TRAN	END

	END



	
/*
-- 휴면 유저 아이템 지급
IF @sdtLastLogin < '2009-01-07 16:00' AND @RegDate < '2009-01-02 17:00'
	BEGIN
		-- 3개월 이상
		IF '2008-09-30 23:59' >= @sdtLastLogin
			BEGIN
				INSERT INTO dbo.GPost (FromUnitUID, ToUnitUID, Quantity, ScType, ScIndex, RegDate, DelDate, IsReceive, IsRead, Title, Message)
					SELECT @iUnitUID_, @iUnitUID_, 1, 5, 130220, @sdtNow, @sdtNow, 0, 0, '겨울 캠프 이벤트 두울', '겨울 캠프 이벤트를 맞이 하여 뜻 깊은 감사의 선물을 드립니다.'
			END
		-- 3개월 미만
		ELSE
			BEGIN
				INSERT INTO dbo.GPost (FromUnitUID, ToUnitUID, Quantity, ScType, ScIndex, RegDate, DelDate, IsReceive, IsRead, Title, Message)
					SELECT @iUnitUID_, @iUnitUID_, 1, 5, 130210, @sdtNow, @sdtNow, 0, 0, '겨울 캠프 이벤트 두울', '겨울 캠프 이벤트를 맞이 하여 뜻 깊은 감사의 선물을 드립니다.'
			END
	END
-- 휴면 유저 아이템 지급		

*/

-- 부활석 정책
  IF CONVERT(SMALLDATETIME,CONVERT(NVARCHAR(10),dateadd(hh,+18,@sdtLastLogin),120)+' 06:00') < @sdtNow
	BEGIN

	-- 신규 캐릭터라면,
	IF NOT EXISTS (SELECT * FROM DBO.GResurrectionStone WITH (NOLOCK) WHERE UnitUID = @iUnitUID_)
		BEGIN
			INSERT INTO DBO.GResurrectionStone (UnitUID, Quantity)
				SELECT @iUnitUID_, @iStartCnt
			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
				BEGIN	SELECT @iOK = -21	GOTO FAIL_TRAN	END
		END
	-- 기준치보다 보유량이 적을 때,
	ELSE
		BEGIN
			IF(@iQuantity < @iSupplyCnt)
				BEGIN
					UPDATE DBO.GResurrectionStone WITH (UPDLOCK)
						SET QUANTITY = @iSupplyCnt
							WHERE UnitUID = @iUnitUID_
					IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
						BEGIN	SELECT @iOK = -22	GOTO FAIL_TRAN	END
/*
	-- 일간 부활석 리필 숫자 저장
					IF NOT EXISTS (SELECT * FROM [Statistics].dbo.StatsStoneCnt WHERE Regdate = CONVERT(NVARCHAR(10), GETDATE(),120))
						BEGIN
							INSERT INTO [Statistics].dbo.StatsStoneCnt (RegDate, FreeInsertCnt,Plus1,Plus2,Plus3,PlusOver3)
								SELECT CONVERT(NVARCHAR(10), GETDATE(),120), 0, 0,0,0,0
							IF @@ERROR <> 0
								BEGIN	SELECT @iOK = -98	END
						END

					UPDATE [Statistics].dbo.StatsStoneCnt WITH (UPDLOCK)
						SET FreeInsertCnt = FreeInsertCnt + @iSupplyCnt - @iQuantity
						,	Plus1			= plus1 + case (@iSupplyCnt - @iQuantity) when 1 then 1 else 0 end
						,	Plus2			= plus2 + case (@iSupplyCnt - @iQuantity) when 2 then 1 else 0 end
						,	Plus3			= plus3 + case (@iSupplyCnt - @iQuantity) when 3 then 1 else 0 end
						,	PlusOver3		= plusOver3 + case (@iSupplyCnt - @iQuantity) when 4 then 1 when 5 then 1 when 6 then 1 when 7 then 1 when 8 then 1 when 9 then 1 else 0 end
						WHERE Regdate = CONVERT(NVARCHAR(10), GETDATE(),120)
							IF @@ERROR <> 0 
								BEGIN	SELECT @iOK = -99	END
					*/	
				END

		END	
	END


	IF DateDiff ( day, @sdtLastLogin, @sdtNow ) > 0
	BEGIN
		UPDATE dbo.GUnit WITH( ROWLOCK ) 
			SET PlayDayCnt = PlayDayCnt + 1 WHERE UnitUID = @iUnitUID_
			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
				BEGIN	SELECT @iOK = -31	GOTO FAIL_TRAN	END
	END

	UPDATE dbo.GUnit WITH( ROWLOCK ) 
		SET LoginCount = LoginCount + 1, LastDate = @sdtNow 
			WHERE UnitUID = @iUnitUID_
	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		BEGIN	SELECT @iOK = -32	GOTO FAIL_TRAN	END

COMMIT TRAN

GOTO END_PROC

FAIL_TRAN:
ROLLBACK TRAN

END_PROC:
SELECT @iOK, @sdtRegDate, @sdtLastLogin--,@istone


(1 rows affected)
