-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[
오현빈 // Emblem_Manager.lua

1. SHOW_EMBLEM_ID_LIST에는 출력 할 EMBLEM_ID의 영문 명을 입력
2. 엠블럼ID 영문명을 테이블명으로 만들어야 함

SHOW_EMBLEM_ID_LIST에 등록 된 EMBLEM_ID의 템플릿만 파싱하도록 하기 위한 방법임.

--]]

-- 출력 할 엠블럼 리스트
SHOW_EMBLEM_ID_LIST =
{
	--"EI_FESTIVAL", 			-- 공존의 축제	SHOW_ORDER:1
	"EI_DEFENCE_START", 	-- 어둠의 문	SHOW_ORDER:2	
	"EI_DEFENCE_SUCCESS", 	-- 어둠의 문	SHOW_ORDER:2	
	"EI_DEFENEC_FAIL", 		-- 어둠의 문	SHOW_ORDER:2	
	"EI_EVENT_CRAYONPOP", 	-- 크래용팝 이벤트	SHOW_ORDER:3	
}

-- 공존의 축제
EI_FESTIVAL=
{
	EMBLEM_ID = EMBLEM_ID["EI_FESTIVAL"],
	
	SHOW_STATE_VILLEAGE		= TRUE,	-- 마을에서 보여 줄 것인가?
	SHOW_STATE_BATTLE_FIELD = TRUE,	-- 필드에서 보여 줄 것인가?
	SHOW_STATE_DUNGEON_GAME = FALSE,-- 던전에서 보여 줄 것인가?
	
	IS_FIRST_ONLY = TRUE, -- 매회 첫 캐릭터 접속 시에만 보여 줄 것인가?
	
	CHECK_CONDITION	= FALSE, -- 조건 체크 해서 보여 줄 것인가?(FALSE = 무조건 출력)	
	
	TEXTUR_FILE_NAME = "DLG_Emblem_01.tga", -- 출력 텍스쳐 파일 명
	
	SHOW_ORDER	= 1, -- 출력 순서( 상대적인 순서, 0부터 시작 )
	
	DURATION_TIME	= 4, -- 출력 지속 시간(페이드 시간 포함)	
	FADE_IN_TIME	= 1, -- 시작 후 알파값 1이 될 때 까지 소요되는 시간
	FADE_OUT_TIME	= 1, -- 종료 전 알파값 0이 될 때 까지 소요되는 시간
}
-- 어문 침공 시작
EI_DEFENCE_START=
{
	EMBLEM_ID = EMBLEM_ID["EI_DEFENCE_START"],
	
	SHOW_STATE_VILLEAGE		= TRUE,	-- 마을에서 보여 줄 것인가?
	SHOW_STATE_BATTLE_FIELD = TRUE,	-- 필드에서 보여 줄 것인가?
	SHOW_STATE_DUNGEON_GAME = TRUE,	-- 던전에서 보여 줄 것인가?
	
	IS_FIRST_ONLY = FALSE, -- 매회 첫 캐릭터 접속 시에만 보여 줄 것인가?
	
	CHECK_CONDITION	= TRUE, -- 조건 체크 해서 보여 줄 것인가?(FALSE = 무조건 출력)	
	
	SHOW_ORDER	= 2, -- 출력 순서( 상대적인 순서, 0부터 시작 )
	
	TEXTUR_FILE_NAME = "DLG_Emblem_02.tga", -- 출력 텍스쳐 파일 명
	
	DURATION_TIME	= 4, -- 출력 지속 시간(페이드 시간 포함)
	
	FADE_IN_TIME	= 1, -- 시작 후 알파값 1이 될 때 까지 소요되는 시간
	FADE_OUT_TIME	= 1, -- 종료 전 알파값 0이 될 때 까지 소요되는 시간
}
-- 어문 침공 방어 성공
EI_DEFENCE_SUCCESS=
{
	EMBLEM_ID = EMBLEM_ID["EI_DEFENCE_SUCCESS"],
	
	SHOW_STATE_VILLEAGE		= TRUE,	-- 마을에서 보여 줄 것인가?
	SHOW_STATE_BATTLE_FIELD = TRUE,	-- 필드에서 보여 줄 것인가?
	SHOW_STATE_DUNGEON_GAME = TRUE,	-- 던전에서 보여 줄 것인가?
	
	IS_FIRST_ONLY = FALSE, -- 매회 첫 캐릭터 접속 시에만 보여 줄 것인가?
	
	CHECK_CONDITION	= TRUE, -- 조건 체크 해서 보여 줄 것인가?(FALSE = 무조건 출력)	
	
	SHOW_ORDER	= 2, -- 출력 순서( 상대적인 순서, 0부터 시작 )
	
	TEXTUR_FILE_NAME = "DLG_Emblem_03.tga", -- 출력 텍스쳐 파일 명
	
	DURATION_TIME	= 4, -- 출력 지속 시간(페이드 시간 포함)
	
	FADE_IN_TIME	= 1, -- 시작 후 알파값 1이 될 때 까지 소요되는 시간
	FADE_OUT_TIME	= 1, -- 종료 전 알파값 0이 될 때 까지 소요되는 시간
}
-- 어문 침공 방어 실패
EI_DEFENEC_FAIL=
{
	EMBLEM_ID = EMBLEM_ID["EI_DEFENEC_FAIL"],
	
	SHOW_STATE_VILLEAGE		= TRUE,	-- 마을에서 보여 줄 것인가?
	SHOW_STATE_BATTLE_FIELD = TRUE,	-- 필드에서 보여 줄 것인가?
	SHOW_STATE_DUNGEON_GAME = TRUE,	-- 던전에서 보여 줄 것인가?
	
	IS_FIRST_ONLY = FALSE, -- 매회 첫 캐릭터 접속 시에만 보여 줄 것인가?
	
	CHECK_CONDITION	= TRUE, -- 조건 체크 해서 보여 줄 것인가?(FALSE = 무조건 출력)	
	
	SHOW_ORDER	= 2, -- 출력 순서( 상대적인 순서, 0부터 시작 )
	
	TEXTUR_FILE_NAME = "DLG_Emblem_04.tga", -- 출력 텍스쳐 파일 명
	
	DURATION_TIME	= 4, -- 출력 지속 시간(페이드 시간 포함)
	
	FADE_IN_TIME	= 1, -- 시작 후 알파값 1이 될 때 까지 소요되는 시간
	FADE_OUT_TIME	= 1, -- 종료 전 알파값 0이 될 때 까지 소요되는 시간
}

-- 크래용팝 이벤트
EI_EVENT_CRAYONPOP =
{
	EMBLEM_ID = EMBLEM_ID["EI_EVENT_CRAYONPOP"],
	
	SHOW_STATE_VILLEAGE		= FALSE,	-- 마을에서 보여 줄 것인가?
	SHOW_STATE_BATTLE_FIELD = FALSE,	-- 필드에서 보여 줄 것인가?
	SHOW_STATE_DUNGEON_GAME = TRUE,	-- 던전에서 보여 줄 것인가?
	
	IS_FIRST_ONLY = FALSE, -- 매회 첫 캐릭터 접속 시에만 보여 줄 것인가?
	
	CHECK_CONDITION	= FALSE, -- 조건 체크 해서 보여 줄 것인가?(FALSE = 무조건 출력)	
	
	SHOW_ORDER	= 3, -- 출력 순서( 상대적인 순서, 0부터 시작 )
	
	TEXTUR_FILE_NAME = "DLG_Emblem_05.tga", -- 출력 텍스쳐 파일 명
	
	DURATION_TIME	= 4, -- 출력 지속 시간(페이드 시간 포함)
	
	FADE_IN_TIME	= 1, -- 시작 후 알파값 1이 될 때 까지 소요되는 시간
	FADE_OUT_TIME	= 1, -- 종료 전 알파값 0이 될 때 까지 소요되는 시간
}