CREATE PROCEDURE [dbo].[gup_create_unit]

	@iUserUID_ [bigint],

	@strNickName_ [nvarchar](16),

	@iUnitClass_ [tinyint],

	@iOK [int] = 0,

	@iUnitUID [bigint] = 0

AS

SET NOCOUNT ON;



DECLARE @bDeleted bit,

        @iUsSize int,

        @sdtNow smalldatetime

,		@iStartSpirit smallint

,		@sdtNickDate smalldatetime

--	신규계정 최초 생성 캐릭터에게 큐브 주기

,		@iPopUp		tinyint

,		@sdtAccountRegDate	smalldatetime	-- 신규 계정의 모든 캐릭터에게 이벤트 아이템 주기 ( 박세훈 )

SELECT @iPopUp = 0



SELECT @sdtAccountRegDate = RegDate FROM Account.dbo.MUser WITH(NOLOCK) WHERE UserUID = @iUserUID_	-- ( 박세훈 )





SELECT  @sdtNow = GetDate()



SELECT  @iStartSpirit = StartSpirit

	FROM dbo.GResurrectionStoneCnt WITH (NOLOCK)



-- 계정의 삭제여부 및 캐릭터 슬롯 개수 정보 얻기.

SELECT @bDeleted = Deleted, @iUsSize = USSize FROM dbo.GUser WITH(NOLOCK) WHERE UserUID = @iUserUID_



IF @bDeleted = 1    -- 해당 UserUID가 이미 삭제된 경우

    BEGIN    SELECT @iOK = -1    GOTO END_PROC    END



-- 현재 보유한 캐릭터 수가 이미 제한에 걸린 경우

if (select count(*) from dbo.gunit(NOLOCK) where deleted = 0 and UserUID = @iUserUID_) >= @iUsSize

    BEGIN    SELECT @iOK = -3    GOTO END_PROC    END



-- 일일 최대 생성수에 걸리는 경우

--IF ((select count(*) from dbo.gunit with (nolock) where useruid = @iUserUID_ and regdate between convert(nvarchar(10), @sdtNow, 120)+' 00:00:00' and convert(nvarchar(10), @sdtNow, 120)+' 23:59:00') = 4)

--	BEGIN	SELECT @iOK = -23    GOTO END_PROC    END



-- 동일한 닉네임이 존재하는 경우

IF EXISTS(SELECT * FROM dbo.GUnitNickName WITH(NOLOCK) WHERE NickName = @strNickName_)

    BEGIN    SELECT @iOK = -2    GOTO END_PROC    END



-- 삭제된 닉네임 중 해당 닉네임이 존재하는 경우

--	수정 1

IF EXISTS(SELECT * FROM dbo.GDeletedNickNameHistory with (nolock) WHERE NickName = @strNickName_)

    BEGIN    

		SELECT TOP 1 @sdtNickDate = RegDate FROM dbo.GDeletedNickNameHistory WHERE NickName = @strNickName_ ORDER BY RegDate DESC

		IF (DATEADD(DD,-14,@sdtNow) < @sdtNickDate)

			BEGIN	SELECT @iOK = -222  SELECT @sdtNickDate = DATEADD(DD,14,@sdtNickDate) GOTO END_PROC	END

	END



IF @iUnitClass_ not in (1, 2, 3, 4, 5, 6, 7)

	BEGIN

		SELECT @iOK = -10

		GOTO END_PROC

	END

	



BEGIN TRAN



    -- unit 생성.

    INSERT INTO dbo.GUnit( UserUID, UnitClass, [Exp], [Level], GamePoint, BaseHP, AtkPhysic, AtkMagic, DefPhysic, DefMagic, 

							SPoint, Seceder, RegDate, DelDate, LastPosition  ) -- 배틀필드 들어가면 LastPosition 빼야됨

        SELECT  @iUserUID_, @iUnitClass_, 0, 1, 0, 0, 0, 0, 0, 0,

                 0, 0, @sdtNow, @sdtNow, 0

		    

	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

    BEGIN    

        SELECT @iOK = -11  

        GOTO FAIL_TRAN    

    END



    SELECT @iUnitUID = CONVERT(BIGINT, SCOPE_IDENTITY())

    

    -- 마지막 위치값 저장

    INSERT INTO dbo.GUnitLastPosition( UnitUID, MapID, LastLineIndex, LastPosValue )

		SELECT @iUnitUID, 2000, 0, 0

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

    BEGIN    

        SELECT @iOK = -12 

        GOTO FAIL_TRAN

    END

    

    INSERT INTO dbo.GUnitNickName( UnitUID, NickName, RegDate )

        SELECT  @iUnitUID, @strNickName_, @sdtNow

    IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

    BEGIN    

        SELECT @iOK = -13    

        GOTO FAIL_TRAN

    END





    -- 커뮤니티 옵션 생성

	INSERT INTO dbo.GDenyOption( UnitUID, QuestionNo, CodeNo )

        SELECT  @iUnitUID, 1, 1 UNION ALL

        SELECT  @iUnitUID, 2, 1 UNION ALL

        SELECT  @iUnitUID, 3, 1 UNION ALL

        SELECT  @iUnitUID, 4, 1 UNION ALL

        SELECT  @iUnitUID, 5, 1

   /*

 IF @@ERROR <> 0 OR @@ROWCOUNT <> 5

    BEGIN    

        SELECT @iOK = -14

        GOTO FAIL_TRAN

   

  END*/



	-- [[기본 스킬 셋팅]]



	-- 로우의 호출 기본 퀘스트 넣기

/*

	INSERT INTO dbo.GQuests (UnitUID, QuestID, SubQuest0, SubQuest1, SubQuest2, SubQuest3, SubQuest4, RegDate)

		SELECT @iUnitUID, 11000, 1,0,0,0,0, @sdtNow

*/



		-- 기본스킬 등록

	INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

	SELECT @iUnitUID, SkillID, 1, 0

	FROM GSkill_Default  WITH(NOLOCK)

	WHERE UnitClass= @iUnitClass_

		

	/*IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

		BEGIN    SELECT @iOK = -16    GOTO FAIL_TRAN    END*/



	-- 기본 스킬 슬롯 등록

	INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

	SELECT @iUnitUID, ISNULL([1], 0), ISNULL([2], 0), ISNULL([3], 0), ISNULL([4], 0)

	FROM (

		SELECT ROW_NUMBER() OVER(ORDER BY UnitClass) AS SkillNum, SkillID

		FROM dbo.GSkill_Default WITH(NOLOCK)

		WHERE UnitClass = @iUnitClass_

	) AS BASETABLE

	PIVOT (

		MAX(SkillID) FOR SkillNum IN ( [1], [2], [3], [4] )

	) AS PIVOTTABLE

		

	/*IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

		BEGIN    SELECT @iOK = -15    GOTO FAIL_TRAN    END*/

				

	INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

	SELECT @iUnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, 125, @sdtNow

	FROM dbo.GBase_Item WITH(NOLOCK)

	WHERE UnitClass = @iUnitClass_



	/*IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

		BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END*/

    

    

	----엘소드

	IF @iUnitClass_ = 1

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

	        SELECT  @iUnitUID, 1001, 1, 0 UNION ALL 

	        SELECT  @iUnitUID, 1205, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -16    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 1001, 1205, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -15    GOTO FAIL_TRAN    END

					

		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 128000, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128001, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128002, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128003, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128004, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 131641, 9,  9, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111094, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111095, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111096, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111097, 9,  7, 1, 0, 10000, 125, @sdtNow 



			

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END

	END



	----아이샤

	IF @iUnitClass_ = 2

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 2001, 1, 0 UNION ALL

			SELECT  @iUnitUID, 2200, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -18    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 2001, 2200, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -17    GOTO FAIL_TRAN    END





		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 128010, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128011, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128012, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128013, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128014, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 131642, 9,  9, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111098, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111099, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111100, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111101, 9,  7, 1, 0, 10000, 125, @sdtNow 

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

				BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END					

	END



	----레나

	IF @iUnitClass_ = 3

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 3001, 1, 0 UNION ALL

			SELECT  @iUnitUID, 3202, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

				BEGIN    SELECT @iOK = -20    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 3001, 3202, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -19    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 128005, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128006, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128007, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128008, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128009, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 131643, 9,  9, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111102, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111103, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111104, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111105, 9,  7, 1, 0, 10000, 125, @sdtNow

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END

	END



	----레이븐

	IF @iUnitClass_ = 4

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 4000, 1, 0 UNION ALL

			SELECT  @iUnitUID, 4205, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -25    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 4000, 4205, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -24    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 128072, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128073, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128074, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128075, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 128076, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 131644, 9,  9, 1, 0, 10000, 125, @sdtNow union all			

			SELECT @iUnitUID, 111106, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111107, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111108, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111109, 9,  7, 1, 0, 10000, 125, @sdtNow

			

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END	

	END





	----이브

	IF @iUnitClass_ = 5

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 5001, 1, 0 UNION ALL

			SELECT  @iUnitUID, 5205, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -26    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 5001, 5205, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -27    GOTO FAIL_TRAN    END

					

		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 130134, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 130135, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 130136, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 130137, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 130138, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 131645, 9,  9, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111110, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111111, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111112, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111113, 9,  7, 1, 0, 10000, 125, @sdtNow



				IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END	

	END





	----청

	IF @iUnitClass_ = 6

	BEGIN

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 6000, 1, 0 UNION ALL

			SELECT  @iUnitUID, 6203, 1, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -29    GOTO FAIL_TRAN    END



		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 6000, 6203, 0, 0

				IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -30    GOTO FAIL_TRAN    END

					

		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 133125, 9, 10, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 133126, 9,  2, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 133127, 9,  4, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 133128, 9,  6, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 133129, 9,  8, 0, 0, -1, 125, @sdtNow union all

			SELECT @iUnitUID, 111114, 9,  9, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111115, 9,  1, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111116, 9,  3, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111117, 9,  5, 1, 0, 10000, 125, @sdtNow union all

			SELECT @iUnitUID, 111118, 9,  7, 1, 0, 10000, 125, @sdtNow 

			

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END



	END					

	----아라

	IF @iUnitClass_ = 7 -- 장비 빠져있고 에러부분 체크해야함

	BEGIN

	--	-- 기본 스킬 레벨 1 찍어주기

		INSERT INTO dbo.GSkill_New( UnitUID, SkillID, [Level], CSP)

			SELECT  @iUnitUID, 7001, 1, 0 UNION ALL

			SELECT  @iUnitUID, 7204, 1, 0

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 2

					BEGIN    SELECT @iOK = -31    GOTO FAIL_TRAN    END



	--	-- 기본 스킬을 스킬 슬롯에 장착

		INSERT INTO dbo.GSkillSlot_New( UnitUID, Slot01, Slot02, Slot03, Slot04 )

			SELECT  @iUnitUID, 7001, 7204, 0, 0

				/*IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -32    GOTO FAIL_TRAN    END*/

	

	--	-- 프로모션 & 초보자용 장비 장착

		INSERT INTO dbo.GItem (UnitUID, ItemID, InventoryCategory, SlotID, UsageType, Quantity, Endurance, Inserted, RegDate)

			SELECT @iUnitUID, 41460, 9, 10, 0, 0, -1, 125, @sdtNow union all		-- 아라 프로모션 무기

		    SELECT @iUnitUID, 41470, 9,  2, 0, 0, -1, 125, @sdtNow union all		-- 아라 프로모션 상의

			SELECT @iUnitUID, 41480, 9,  4, 0, 0, -1, 125, @sdtNow union all		-- 아라 프로모션 하의

			SELECT @iUnitUID, 41490, 9,  6, 0, 0, -1, 125, @sdtNow union all		-- 아라 프로모션 장갑

			SELECT @iUnitUID, 41500, 9,  8, 0, 0, -1, 125, @sdtNow union all		-- 아라 프로모션 신발

			SELECT @iUnitUID, 112700, 9,  9, 1, 0, 10000, 125, @sdtNow union all -- 초보자용 코보 창

			SELECT @iUnitUID, 112701, 9,  1, 1, 0, 10000, 125, @sdtNow union all -- 초보자용 코보 무도가 상의

			SELECT @iUnitUID, 112702, 9,  3, 1, 0, 10000, 125, @sdtNow union all -- 초보자용 코보 무도가 바지

			SELECT @iUnitUID, 112703, 9,  5, 1, 0, 10000, 125, @sdtNow union all -- 초보자용 코보 무도가 장갑

			SELECT @iUnitUID, 112704, 9,  7, 1, 0, 10000, 125, @sdtNow			-- 초보자용 코보 무도가 신발		

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 10

					BEGIN    SELECT @iOK = -28    GOTO FAIL_TRAN    END

		

	END	



	-- 근성도 

	INSERT INTO dbo.GSpirit (UnitUID, Spirit, RegDate)

		SELECT @iUnitUID, @iStartSpirit, @sdtNow

			/*IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -41    GOTO FAIL_TRAN    END*/



	---- 대전 기본 정보(시즌 2 시작시 주석처리 필요)

	--INSERT INTO dbo.GUnitPVP(UnitUID, OfficialMatchCnt, Rating, MaxRating, RPoint, APoint, IsWinBeforeMatch, Grade, win, lose)

	--	SELECT @iUnitUID, 0, 250, 250, 0, 0, 0, 0, 0, 0

	--		IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

	--				BEGIN    SELECT @iOK = -42    GOTO FAIL_TRAN    END	

									

	

	-- 헤니르 보상 제한					

	INSERT INTO dbo.GHenirRewardCnt(UnitUID, NormalCnt, PCBangCnt, EventCnt, LastDate)

		SELECT @iUnitUID, 0, 0, 0, @sdtNow

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1

					BEGIN    SELECT @iOK = -43    GOTO FAIL_TRAN    END			

					

	-- LastGamepoint 체크

	INSERT INTO	dbo.GUnit_LastPoint WITH (UPDLOCK) (UnitUID, Gamepoint, RegDate)

		SELECT @iUnitUID, 0, @sdtNow

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 

			BEGIN    SELECT @iOK = -44   GOTO FAIL_TRAN    END

	

	-- 대전 시즌2 기본 정보				

	INSERT INTO dbo.GUnitPVP_Season2 ( UnitUID, OfficialMatchCnt, Rating, MaxRating, RPoint, APoint, IsWinBeforeMatch, Grade, win, lose, KFactor, IsRedistribution, PastSeasonWin )

		SELECT @iUnitUID, 0, 0, 0, 0, 0, 0, 2, 0, 0, 500, 0, 0	

			IF @@ERROR <> 0 OR @@ROWCOUNT <> 1 

			BEGIN    SELECT @iOK = -45   GOTO FAIL_TRAN    END

		

	-- SERV_LAUNCH_EVENT

	-- INSERT INTO [dbo].[GPet_Info]([UnitUID], [PetID], [PetName], [EvolutionStep], [Satiety],

	-- 		[Intimacy], [Extroversion], [Emotion], [RegDate], [DelDate], [IsCall],

	-- 		[AutoFeed], [LastFeedDate], [LastcallDate], [PickUP])

	-- 	VALUES(@iUnitUID, 29, 'Fox', 3, 3840, 534240, -90, -90, GETDATE(), GETDATE(), 1, 0, GETDATE(),

	-- 		GETDATE(), 0)

COMMIT TRAN



GOTO END_PROC



FAIL_TRAN:

ROLLBACK TRAN



END_PROC:

SELECT @iOK, @iUnitUID, ISNULL(@sdtNickDate,'2000-01-01 00:00')

