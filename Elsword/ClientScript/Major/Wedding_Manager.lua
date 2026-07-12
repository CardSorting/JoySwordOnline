-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 공지
WEDDING_BEHAVIOR_NOTICE =
{
	-- 시작시간 , --유지시간,  -- 공지 내용
	{ 1,			3,			STR_ID_24497, }, --잠시 후 결혼식이 시작됩니다.\n신랑/신부는 준비해주세요.
	{ 6,			5,			STR_ID_24498, }, --결혼식을 시작하겠습니다.
	{ 8,			5,			STR_ID_24499, }, --신랑, 신부 입장-!
	{ 16, 		5,			STR_ID_24500, }, --주례사가 있겠습니다. 모두 정숙해주세요.
	{ 52, 		5,			STR_ID_24501, TRUE, }, --이로서 신랑 "@1"님과 신부 "@2"님은 부부가 되었습니다.
	{ 56, 		3,			STR_ID_24502, }, --모두 축하해주세요!
	{ 60, 		3,			STR_ID_24503, }, --결혼식을 마치겠습니다, 즐거운 시간 보내세요!
}

WEDDING_BEHAVIOR_MOVE =
{
--[[
	WEDDING_POS_MOVE_TYPE["WPMT_WEDDING_START"]   -- 결혼식 시작 위치
	WEDDING_POS_MOVE_TYPE["WPMT_OFFICIANT_START"] -- 결혼식 주례사 시작 위치		
	
	주례사 시작 위치로 이동되는 시간이 주례사 시작 시간임.
--]]
	
	-- 시작시간, 	-- 위치 이동 타입.
	{ 6,			WEDDING_POS_MOVE_TYPE["WPMT_WEDDING_START"], }, -- 결혼식 시작 위치
	{ 16,			WEDDING_POS_MOVE_TYPE["WPMT_OFFICIANT_START"], }, -- 결혼식 주례사 시작 위치	
}

WEDDING_BEHAVIOR_SOUND =
{
	-- 시작시간 , 	-- 출력 사운드
	{ 8,			"WeddingMarch_Enter.ogg", }, -- 결혼식 입장 사운드
	{ 52,			"WeddingMarch_Exit.ogg", }, -- 결혼식 퇴장 사운드
}

WEDDING_BEHAVIOR_EFFECTSET =
{
--[[
	WEDDING_EFFECTSET_POS_TYPE["WEPT_CUSTOM"]				= 0,	-- 사용자 지정 위치
	WEDDING_EFFECTSET_POS_TYPE["WEPT_BRIDE"]				= 1,	-- 신랑 위치
	WEDDING_EFFECTSET_POS_TYPE["WEPT_GROOM"]				= 2,	-- 신부 위치
	
	UIEffectSet에 등록된 이펙트만 출력 가능함.
--]]
	-- 시작시간 , 	-- 이펙트셋 이름								-- 위치 지정 타입							-- X, Y, Z 좌표
	{ 52,			"EffectSet_Wedding_Heart_07",  		WEDDING_EFFECTSET_POS_TYPE["WEPT_BRIDE"],},
	{ 52,			"EffectSet_Wedding_Heart_07",  		WEDDING_EFFECTSET_POS_TYPE["WEPT_GROOM"],},
	{ 56,			"EffectSet_Wedding_Heart_08",  		WEDDING_EFFECTSET_POS_TYPE["WEPT_CUSTOM"],		-25, 46, 1124, },
}