-- REBALANCE_FIELD_BONUS_DROPS: 5x Field Middle-Boss Drop Multiplier Engine
-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 초기 설정안 (2013.03.06 폐기)
	-- 중간보스 공통 보너스 아이템 ( 필드, 아이템 )
	-- g_pBattleFieldManager:SetMiddleBossCommonBonusItemID( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"] , 99988 )	-- 루벤00 필드에 XXXX 아이템 (중간보스의 혼)
	-- 중간보스 공통 보너스 아이템 수량 ( 필드, 수량 )
	-- g_pBattleFieldManager:SetMiddleBossCommonBonusItemCount( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"] , 1 )	-- 루벤00 필드에 1개 
	-- 중간보스 별 보너스 아이템 ( 필드, 아이템 )
	-- g_pBattleFieldManager:SetMiddleBossBonusItemID( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"] , 160712 )	-- 루벤00 필드에 XXXX 아이템 (중간보스의 큐브)
------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------
--작성법 (2013.03.06 By. 공솔)
-- --지역명_배틀필드넘버_필드명													--빠른 검색을 위해 귀찮으셔도 작성해주세요.
-- g_pBattleFieldManager:BattleFieldMiddleBossDropInfo 			--시작
-- {
	-- BattleFieldID = 40006,														--필드 Enum ID
	-- MonsterID = 5025,															--몬스터 Enum ID
	-- SetMiddleBossCommonBonusItemID = 99988,						--사념의 영혼구슬	(지역별 공통 드랍아이템)
	-- SetMiddleBossCommonBonusItemCount = 25,						--드랍량
	-- SetMiddleBossBonusItemID	= 160712,								--필드중간보스큐브 (기여도별 드랍아이템)
	-- SetMiddleBossBonusItemIDCount_High	= 50,						--상위 30%
	-- SetMiddleBossBonusItemIDCount_Low	= 25,						--그 외
-- }																						--끝

-- 주의 사항
	-- 필드중간보스큐브는 기여도에 따라 드랍량이 다릅니다.
		-- 기여도 상위 30% : 2개	(high 값)
		-- 그 외 				  : 1개	(low	값)
------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------- 
--	엘더 필드 셋팅 시작
--------------------------------------------------------------------- 

--	엘더_01_월리기념교
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40001,												-- 월리 기념교
	MonsterID = 5115,													-- 울
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40001,												-- 월리 기념교
	MonsterID = 5116,													-- 일리
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	엘더_02_쌍둥이 감시탑
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40002,												-- 월리 기념교
	MonsterID = 5115,													-- 울
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40002,												-- 월리 기념교
	MonsterID = 5116,													-- 일리
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
----------------------------------------------------------------------
--	엘더 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	베스마 필드 셋팅 시작
--------------------------------------------------------------------- 

--	베스마_01_베스아가라 폭포
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40003,												-- 베스아가라 폭포
	MonsterID = 5117,													-- 베스쿠
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	베스마_02_레이키키 호수
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40004,												-- 레이키키 호수
	MonsterID = 5117,													-- 베스쿠
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	베스마_03_토리투게라 캐년
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40005,												-- 토리투게라 캐년
	MonsterID = 5117,													-- 베스쿠
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
----------------------------------------------------------------------
--	베스마 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	알테라 필드 셋팅 시작
--------------------------------------------------------------------- 

--	알테라_01_정화의 무덤
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40006,												-- 베스아가라 폭포
	MonsterID = 5118,													-- 슬레슈
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	알테라_02_나소드 폐기장
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40007,												-- 나소드 폐기장
	MonsterID = 5118,													-- 슬레슈
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	알테라_03_천공의 기지
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40008,												-- 천공의 기지
	MonsterID = 5118,													-- 슬레슈
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
----------------------------------------------------------------------
--	알테라 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	페이타 필드 셋팅 시작
--------------------------------------------------------------------- 

--	페이타_01_순례자의 관문
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40009,												-- 순례자의 관문
	MonsterID = 5119,													-- 배터
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	페이타_02_순례자의 터
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40010,												-- 순례자의 터
	MonsterID = 5119,													-- 배터
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	페이타_03_망자의 언덕
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40011,												-- 망자의 언덕
	MonsterID = 5119,													-- 배터
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
----------------------------------------------------------------------
--	페이타 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	벨더 필드 셋팅 시작
--------------------------------------------------------------------- 

--	벨더_01_번영의 길
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40012,												-- 번영의 길
	MonsterID = 5120,													-- 라노스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40012,												-- 번영의 길
	MonsterID = 5121,													-- 샤이니
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40012,												-- 번영의 길
	MonsterID = 5122,													-- 문스타
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	벨더_02_평화의 길
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40013,												-- 평화의 길
	MonsterID = 5120,													-- 라노스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40013,												-- 평화의 길
	MonsterID = 5121,													-- 샤이니
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40013,												-- 평화의 길
	MonsterID = 5122,													-- 문스타
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	벨더_03_공존의 길
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40014,												-- 공존의 길
	MonsterID = 5120,													-- 라노스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40014,												-- 공존의 길
	MonsterID = 5121,													-- 샤이니
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40014,												-- 공존의 길
	MonsterID = 5122,													-- 문스타
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	벨더_04_루렌시아 항구
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40015,												-- 루렌시아 항구
	MonsterID = 5120,													-- 라노스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40015,												-- 루렌시아 항구
	MonsterID = 5121,													-- 샤이니
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40015,												-- 루렌시아 항구
	MonsterID = 5122,													-- 문스타
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}
----------------------------------------------------------------------
--	벨더 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	하멜 필드 셋팅 시작
--------------------------------------------------------------------- 

--	하멜_01_엘라임의 물결
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40016,												-- 엘라임의 물결
	MonsterID = 5123,													-- 스톤 갓
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	하멜_02_휩쓸린 도시
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40017,												-- 휩쓸린 도시
	MonsterID = 5123,													-- 스톤 갓
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	하멜_03_원형 수로
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40018,												-- 원형 수로
	MonsterID = 5123,													-- 스톤 갓
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	하멜_04_노아호의 무덤
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40019,												-- 노아호의 무덤
	MonsterID = 5123,													-- 스톤 갓
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

----------------------------------------------------------------------
--	하멜 필드 셋팅 끝
----------------------------------------------------------------------

--------------------------------------------------------------------- 
--	샌더 필드 셋팅 시작
--------------------------------------------------------------------- 

--	샌더_01_바람의 사원
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40022,												-- 바람의 사원
	MonsterID = 5124,													-- 카르베로스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

--	샌더_02_칼루소 부족 정찰지대
g_pBattleFieldManager:BattleFieldMiddleBossDropInfo	--2013.03.06
{
	BattleFieldID = 40023,												-- 칼루소 부족 정찰지대
	MonsterID = 5124,													-- 카르베로스
	SetMiddleBossCommonBonusItemID = 99988,			
	SetMiddleBossCommonBonusItemCount = 12500,
	SetMiddleBossBonusItemID	= 160712,	
	SetMiddleBossBonusItemIDCount_High	= 25000,
	SetMiddleBossBonusItemIDCount_Low	= 12500,
}

----------------------------------------------------------------------
--	샌더 필드 셋팅 끝
----------------------------------------------------------------------