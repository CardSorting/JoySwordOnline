USE ES_BILLING;
GO

ALTER PROCEDURE [dbo].[EBP_BuyItem]
	@ST_SERVERORDERID		varchar(50) ,			-- 주문 서버 주문 ID
	@ST_GROUPORDERID		varchar(50) ,			-- 그룹 주문 ID
	@CD_USERUID				bigint ,				-- 계정 UID
	@ST_USERID				nvarchar(50) ,			-- 계정 아이디
	@NO_SERVER_SET_ID		tinyint ,				-- 서버 군 ID
	@NO_UNITUID				bigint ,				-- 캐릭터 UID
	@NO_LEVEL				tinyint ,				-- 캐릭터 레벨
	@NO_PRODUCT_NUM			bigint ,				-- 상품 번호
	@NO_QUANTITY			smallint ,				-- 구매 수량
	@NO_PRICE				int ,					-- 가격
	@DI_ITEM_KEEP			tinyint ,				-- 보관함 보관 여부
	@NO_TO_USERUID			bigint ,				-- 받는 계정 UID
	@NO_TO_UNITUID			bigint ,				-- 받는 캐릭터 UID
	@ST_GIFT_MESSAGE		nvarchar(50) ,			-- 선물 메시지
	@DI_BUY_CASH			tinyint ,				-- 구매 캐시 타입
	@NO_TOTAL_CASH			int = NULL OUTPUT ,		-- 총 잔여 캐시
	@CD_TRAN_NUM			bigint = NULL OUTPUT ,	-- 거래 번호
	@NO_REMAIN_CASH			int = NULL OUTPUT ,		-- 남은 캐시
	@NO_REMAIN_BONUS		int = NULL OUTPUT ,		-- 남은 보너스 캐시
	@DI_OUTPUT_RECORD		bit = 1 ,				-- 결과 레코드셋 출력 여부
	@NO_FROM_UNITUID		bigint = 0 ,			-- 보낸 캐릭터 UID
	@NO_CHANNEL_CODE		tinyint = 0				-- 채널 코드
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	-- 로컬 변수 선언
	DECLARE @Result					int
	DECLARE @DT_GETDATE				smalldatetime
	DECLARE @DI_CASH_LOG_TYPE		smallint
	DECLARE @NO_LIMIT_USERUID		int
	DECLARE @CD_PRODUCT_SM			int
	DECLARE @NO_USE_CASH			int
	DECLARE @NO_USE_BONUS			int
	DECLARE @NO_BEFOR_CASH			int
	DECLARE @NO_BEFOR_BONUS			int
	DECLARE @ST_ErrorMSG			nvarchar(1000)

	SET @Result						= 0
	SET @DT_GETDATE					= GETDATE()
	SET @DI_CASH_LOG_TYPE			= 10
	SET @ST_ErrorMSG				= N'Error : %s(OrderID : %s, GroupOrderID : %s, UserUID : %I64d, UserID : %s, ServerID : %d, UnitUID : %I64d, Level : %d, ProductNum : %I64d, Qty : %d, Price : %d, Keep : %d, ToUserUID : %I64d, ToUnitUID : %I64d, GiftMsg : %s, BuyCash : %d, TotalCash : %d, TranNum : %I64d, RemainCash : %d, RemainBonus : %d)'
	
	-- 서버 주문 ID 검사
	IF @ST_SERVERORDERID IS NULL OR LEN(@ST_SERVERORDERID) = 0 BEGIN
		SET @Result = -30
		GOTO END_PROC
	END

	-- 필수 매개변수 값 검사
	IF @NO_PRICE < 0 OR @NO_QUANTITY <= 0 OR @CD_USERUID <= 0 OR @NO_PRODUCT_NUM <= 0 BEGIN
		SET @Result = -31
		GOTO END_PROC
	END

	-- 받는 사용자 UID 검사
	IF @NO_TO_USERUID <= 0 BEGIN
		SET @Result = -32
		GOTO END_PROC
	END

	-- 타인에게 보낼 때 보관함이 아닌 경우 에러
	IF @CD_USERUID <> @NO_TO_USERUID AND @DI_ITEM_KEEP <> 1 BEGIN
		SET @Result = -33
		GOTO END_PROC
	END

	-- 보관함 보관 수량 제한 검사
	IF @DI_ITEM_KEEP = 1 BEGIN
		EXEC @Result = dbo.EBP_BuyCashItemLockerCount_CHK @NO_TO_USERUID, @NO_SERVER_SET_ID, @NO_QUANTITY, 0, 100
		
		IF @Result <> 0 BEGIN
			GOTO END_PROC
		END
	END

	-- 상품 유효성 및 가격 검사
	DECLARE @DB_UnitPrice INT = 0
	DECLARE @DB_IsSale TINYINT = 1
	SELECT TOP 1 @DB_UnitPrice = ISNULL(NO_SALEPRICE, 0), @DB_IsSale = ISNULL(DI_ISSALE, 0)
	FROM dbo.EB_Product
	WHERE CD_PRODUCTNO = @NO_PRODUCT_NUM

	IF @DB_IsSale = 0 BEGIN
		SET @Result = -41
		GOTO END_PROC
	END

	IF @DB_UnitPrice > 0 BEGIN
		IF @NO_PRICE <= 0 OR @NO_PRICE <> (@DB_UnitPrice * @NO_QUANTITY) BEGIN
			SET @NO_PRICE = @DB_UnitPrice * @NO_QUANTITY
		END
	END

	EXEC @Result = dbo.EBI_Buy_Product_CHK @NO_PRODUCT_NUM
	
	IF @Result <> 0 BEGIN
		GOTO END_PROC
	END

	-- 상품 구매 제한 검사
	EXEC @Result = dbo.EBP_Buy_Product_LimitedUser_CHK @NO_PRODUCT_NUM, @NO_TO_USERUID, @NO_SERVER_SET_ID, @CD_PRODUCT_SM OUTPUT, @NO_LIMIT_USERUID OUTPUT, 0
	
	IF @Result <> 0
		GOTO END_PROC
		
	-- 로그 타입 결정
	SET @DI_CASH_LOG_TYPE = @DI_CASH_LOG_TYPE - @DI_BUY_CASH

	-- 트랜잭션 번호 발급
	EXEC @Result = dbo.EBI_TransactionNumber_INT @DI_CASH_LOG_TYPE, @CD_TRAN_NUM OUTPUT

	IF @Result = 0 BEGIN
		BEGIN TRY
			BEGIN TRAN

				-- 가격이 0원 초과일 때 캐시 차감 처리 진행
				IF @NO_PRICE > 0 BEGIN
					IF @DI_BUY_CASH = 1 BEGIN
						-- 리얼 캐시만 사용
						EXEC @Result = dbo.EBI_Cash_UseRealCashOnly @CD_USERUID, @ST_USERID, @NO_PRICE, @DT_GETDATE, @NO_REMAIN_CASH OUTPUT, @NO_REMAIN_BONUS OUTPUT, @NO_BEFOR_CASH OUTPUT, @NO_BEFOR_BONUS OUTPUT
					END
					ELSE IF @DI_BUY_CASH = 2 BEGIN
						-- 보너스 캐시만 사용
						EXEC @Result = dbo.EBI_Cash_UseBonusCashOnly @CD_USERUID, @ST_USERID, @NO_PRICE, @DT_GETDATE, @NO_REMAIN_CASH OUTPUT, @NO_REMAIN_BONUS OUTPUT, @NO_BEFOR_CASH OUTPUT, @NO_BEFOR_BONUS OUTPUT
					END
					ELSE BEGIN
						-- 혼합 사용 (캐시 우선 사용)
						EXEC @Result = dbo.EBI_Cash_UseFirstCash @CD_USERUID, @ST_USERID, @NO_PRICE, @DT_GETDATE, @NO_REMAIN_CASH OUTPUT, @NO_REMAIN_BONUS OUTPUT, @NO_BEFOR_CASH OUTPUT, @NO_BEFOR_BONUS OUTPUT
					END

					IF @NO_REMAIN_CASH < 0 OR @NO_REMAIN_BONUS < 0 OR @Result <> 0 BEGIN
						-- 잔액 부족
						SET @Result = -21
						RAISERROR(@ST_ErrorMSG, 15, 1, N'BuyItem Buy', @ST_SERVERORDERID, @CD_USERUID, @ST_USERID, @NO_SERVER_SET_ID, @NO_UNITUID, @NO_LEVEL, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_PRICE, @DI_ITEM_KEEP, @NO_TO_USERUID, @NO_TO_UNITUID, @ST_GIFT_MESSAGE, @DI_BUY_CASH, @NO_TOTAL_CASH, @CD_TRAN_NUM, @NO_REMAIN_CASH, @NO_REMAIN_BONUS) WITH SETERROR
					END

					-- 사용액 계산 (양수 값으로 기록)
					SELECT @NO_USE_CASH = (@NO_BEFOR_CASH - @NO_REMAIN_CASH), @NO_USE_BONUS = (@NO_BEFOR_BONUS - @NO_REMAIN_BONUS)
				END
				ELSE BEGIN
					-- 무료 아이템일 경우 단순히 잔액 조회 및 사용액 0 처리
					EXEC dbo.EBI_Cash_Detial_SEL @CD_USERUID, @NO_REMAIN_CASH OUTPUT, @NO_REMAIN_BONUS OUTPUT
					SELECT @NO_USE_CASH = 0, @NO_USE_BONUS = 0
				END

				-- 아이템 보관함 저장 처리
				IF @DI_ITEM_KEEP = 1 BEGIN
					EXEC @Result = dbo.EBI_BuyCashItemLocker_SET @CD_TRAN_NUM, @NO_TO_USERUID, @NO_SERVER_SET_ID, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_FROM_UNITUID, @ST_GIFT_MESSAGE

					IF @Result <> 0 BEGIN
						RAISERROR(@ST_ErrorMSG, 15, 1, N'BuyItem ItemLocker', @ST_SERVERORDERID, @ST_GROUPORDERID, @CD_USERUID, @ST_USERID, @NO_SERVER_SET_ID, @NO_UNITUID, @NO_LEVEL, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_PRICE, @DI_ITEM_KEEP, @NO_TO_USERUID, @NO_TO_UNITUID, @ST_GIFT_MESSAGE, @DI_BUY_CASH, @NO_TOTAL_CASH, @CD_TRAN_NUM, @NO_REMAIN_CASH, @NO_REMAIN_BONUS) WITH SETERROR
					END
				END

				-- 개인 구매 수량 제한 정보 업데이트
				IF @NO_LIMIT_USERUID > 0 BEGIN
					EXEC @Result = dbo.EBI_Buy_Product_LimitedUser_Set @CD_PRODUCT_SM, @NO_TO_USERUID, @NO_SERVER_SET_ID, @NO_LIMIT_USERUID

					IF @Result <> 0 BEGIN
						RAISERROR(@ST_ErrorMSG, 15, 1, N'BuyItem LimitedUser', @ST_SERVERORDERID, @ST_GROUPORDERID, @CD_USERUID, @ST_USERID, @NO_SERVER_SET_ID, @NO_UNITUID, @NO_LEVEL, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_PRICE, @DI_ITEM_KEEP, @NO_TO_USERUID, @NO_TO_UNITUID, @ST_GIFT_MESSAGE, @DI_BUY_CASH, @NO_TOTAL_CASH, @CD_TRAN_NUM, @NO_REMAIN_CASH, @NO_REMAIN_BONUS) WITH SETERROR
					END
				END
				
				-- 캐시 소진 내역 로그 기록
				EXEC dbo.EBI_CashLog_INT @CD_TRAN_NUM, @ST_SERVERORDERID, @ST_GROUPORDERID, @CD_USERUID, @ST_USERID, @NO_SERVER_SET_ID, @NO_UNITUID, @NO_LEVEL, @NO_TO_USERUID, @NO_TO_UNITUID, @DI_CASH_LOG_TYPE, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_PRICE, @NO_USE_BONUS, @NO_REMAIN_CASH, @NO_REMAIN_BONUS, @DT_GETDATE

				-- 아이템 구입 진행 로그 기록
				EXEC dbo.EBP_BuyItemLog_INS @ST_SERVERORDERID, @ST_GROUPORDERID, @CD_USERUID, @ST_USERID, @NO_SERVER_SET_ID, @NO_UNITUID, @NO_LEVEL, @NO_PRODUCT_NUM, @NO_QUANTITY, @NO_PRICE, @DI_ITEM_KEEP, @NO_TO_USERUID, @NO_TO_UNITUID, @ST_GIFT_MESSAGE, @DI_BUY_CASH, @NO_CHANNEL_CODE, @NO_TOTAL_CASH, @CD_TRAN_NUM, @NO_REMAIN_CASH, @NO_REMAIN_BONUS, 0

				-- Starlight Cashback (10% Cash return) + VIP Spend Progress Hook
				IF @NO_PRICE > 0 AND OBJECT_ID(N'Game01.dbo.JoySword_SpendCashback', N'P') IS NOT NULL BEGIN
					EXEC Game01.dbo.JoySword_SpendCashback @CD_USERUID, @NO_PRICE
				END

			COMMIT TRAN

			-- 잔액 갱신 및 결과 출력 설정
			EXEC dbo.EBI_Cash_Detial_SEL @CD_USERUID, @NO_REMAIN_CASH OUTPUT, @NO_REMAIN_BONUS OUTPUT
			SET @NO_TOTAL_CASH = @NO_REMAIN_CASH + @NO_REMAIN_BONUS

		END TRY
		BEGIN CATCH
			DECLARE @NO_XACT_STATE		smallint
			SET @NO_XACT_STATE			= XACT_STATE()

			IF @NO_XACT_STATE <> 0
				ROLLBACK TRAN

			EXEC dbo.EBI_SP_ErrorLog_INT @NO_XACT_STATE

			IF @Result = 0
				SET @Result = -1
		END CATCH
	END

END_PROC:
	SELECT ISNULL(@Result, -1) AS Result, ISNULL(@NO_TOTAL_CASH, 0) AS NO_TOTAL_CASH, ISNULL(@CD_TRAN_NUM, 0) AS CD_TRAN_NUM, ISNULL(@NO_REMAIN_CASH, 0) AS NO_REMAIN_CASH, ISNULL(@NO_REMAIN_BONUS, 0) AS NO_REMAIN_BONUS
		
	RETURN @Result
END
GO
