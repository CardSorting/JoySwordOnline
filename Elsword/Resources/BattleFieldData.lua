-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---루벤 0번 필드------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_1.tga",									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_RUBEN_0",	-- 필드명 텍스쳐 키

	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_RUBEN"],						-- 입장 마을
		
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_RUBEN_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Ruben_Stage0_Linemap.lua", 					-- 해당 필드의 라인맵 파일
	
	NPC_TABLE_FILE_NAME 	= "Ruben_Field_00.lua",							-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL 	= 2, 											-- 필드에 나오는 몬스터들의 기준 레벨
		
	BATTLE_FIELD_NAME = STR_ID_19986,									-- 노아스의 호수
	
	BATTLE_FIELD_PORTAL_MOVING_INFO =									    -- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_RUBEN"],					-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 2, 									-- 이동할 마을 내에서의 위치
		},
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 115,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_ELDER"], 				-- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 20, 									--이동할 필드 내에서의 위치
		},
	},

	MAX_JOIN_USER_COUNT = 1,									-- 최대 입장 가능한 유저 수	
	
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 21,			-- 이 필드 내의 최대 몬스터 수(3+2+2 : 3+3 : 3+3+2 : 3+3: 2+5 
	
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_RUBEN"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	
	-----루벤은 필드 보스 없음---
	
	-- --테스트를 위해 임시로 보스 출현하도록 세팅하였음: 2012.05.22 최육사
	-- BATTLE_FIELD_RISK_INFO =												-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 50,											 	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"],			-- 스폰될 몬스터 ID
			-- SPAWN_GROUP_ID = 999,											-- 보스가 스폰될 그룹ID
			-- SHOW_BOSS_NAME = TRUE, 										-- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = TRUE, 									-- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
}




---엘더 0 필드------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_ELDER"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_elder_Stage0_Linemap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME	 	= "DLG_UI_Common_Texture_Fieldname_1.tga",									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY		= "FIELD_NAME_ELDER_0",	-- 필드명 텍스쳐 키

	NPC_TABLE_FILE_NAME 			= "Elder_Field_00.lua",	
	
	
	STANDARD_MONSTER_LEVEL = 9, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19987,										-- 월리 기념교	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO =									    -- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_ELDER"],					-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 21, 									-- 이동할 마을 내에서의 위치
		},
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 153,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_REST_00"], 				-- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 300, 									--이동할 필드 내에서의 위치
		},
	},

	MAX_JOIN_USER_COUNT = 4,									-- 최대 입장 가능한 유저 수	
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 25,			-- 이 필드 내의 최대 몬스터 수(3+2+2 : 3+3 : 3+3+2 : 3+3: 2+5 
	
	RETURN_VILLAGE_ID		= VILLAGE_MAP_ID["VMI_ELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	-- BATTLE_FIELD_RISK_INFO =												-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 5000,											 	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],			-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, 										-- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, 									-- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {210, 211,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {220, 221,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {240, 241,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {250, 251,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {270, 271,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {280, 281,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {300, 301,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {310, 311,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {330, 331,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {340, 341,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {360, 361,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {370, 371,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
	},
}


---엘더 1번 필드---

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_ELDER"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_elder_Stage1_Linemap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_1.tga",									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_ELDER_1",	-- 필드명 텍스쳐 키
	
	NPC_TABLE_FILE_NAME = "Elder_Field_01.lua",					-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL = 14, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19989,							--쌍둥이 감시탑
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO =									    -- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_REST_00"], 				-- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 302, 									--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 35,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BESMA"], 				-- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 40, 									--이동할 필드 내에서의 위치
		},
	},

	MAX_JOIN_USER_COUNT = 8,									-- 최대 입장 가능한 유저 수	
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 24,			-- 이 필드 내의 최대 몬스터 수(3+2+2 : 3+3 : 3+3+2 : 3+3: 2+5 
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_ELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	-- BATTLE_FIELD_RISK_INFO =												-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 30,											 	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_WALLY_7TH_HELL"],			-- 스폰될 몬스터 ID
			-- SPAWN_GROUP_ID = 999,
			-- SHOW_BOSS_NAME = TRUE, 										-- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = TRUE, 									-- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {210, 211,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {220, 221,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {240, 241,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {250, 251,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {270, 271,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {280, 281,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {300, 301,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {310, 311,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {330, 331,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {340, 341,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {360, 361,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = {370, 371,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381,},	-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23578, -- 2인조 도둑 : 울&일리
		},
	},
}


--베스마 0번 필드----
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_BESMA"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Besma_Stage0_LineMap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME 	= "DLG_UI_Common_Texture_Fieldname_1.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_BESMA_0",	-- 필드명 텍스쳐 키
	
	NPC_TABLE_FILE_NAME = "Besma_Field_00.lua",					-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL = 21, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19990,										--베스아라가라 폭포
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],		-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,												-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BESMA"],					-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 41, 									-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],								-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 148,																		-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"],				-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 310, 														-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, 						-- 이 필드 내의 최대 몬스터 수(3+5+3+      1+3+3+5+1(2) : 3+5 : 4+4+4+4 +3+3 )  -- 가운데 3+ 5 + 5
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_BESMA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	-- BATTLE_FIELD_RISK_INFO =												-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 3500,												-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],			-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE,										    -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, 									-- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 4800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23579, -- 떠돌이 사우러스 : 베스쿠
		},
	},
}





---베스마 1번 필드 페이타 가는길-------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_BESMA"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Besma_Stage1_LineMap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_2.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_BESMA_2",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_19992,						--레이키키 호수
	
	NPC_TABLE_FILE_NAME = "Besma_Field_01.lua",								-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL = 23, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],								-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 207,																		-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"],				-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 312, 														-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 16,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 29, -- 이 필드 내의 최대 몬스터 수
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_BESMA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 94800,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 94800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23579, -- 떠돌이 사우러스 : 베스쿠
		},
	},
}



--베스마 2번 필드 알테라 가는길 ------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_BESMA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_02"], 						-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Besma_Stage2_LineMap.lua", 						-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_2.tga", 										-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_BESMA_1",	-- 필드명 텍스쳐 키
	
	NPC_TABLE_FILE_NAME = "Besma_Field_02.lua",					-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL = 27, 												-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19993,			---토리 투게라 캐년
	
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO =											 -- 포탈로 이동하는 곳의 정보
	{	
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],								-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,																		-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"],				-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 314, 														-- 이동할 마을 내에서의 위치
		},
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 200,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_ALTERA"], -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 60, -- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_BESMA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 3500,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 4800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23579, -- 떠돌이 사우러스 : 베스쿠
		},
	},
}



---알테라 0번 필드----------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_ALTERA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_00"], -- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Altera_Stage0_LineMap.lua", -- 해당 필드의 라인맵 파일

	
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_2.tga", -- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_ALTERA_0",	-- 필드명 텍스쳐 키
	
	NPC_TABLE_FILE_NAME = "Altera_Field_00.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 28, -- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19994,		---정화의 무덤
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = -- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_ALTERA"], -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 61, -- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 169,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"], -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 320, --이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 32, -- 이 필드 내의 최대 몬스터 수w
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_ALTERA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 94800,											-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, 									-- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, 								-- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 94800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23580, -- 잔혹한 학살자 : 슬레슈
		},
	},
}

-----알테라 1번 필드------------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_ALTERA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_01"], -- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Altera_Stage1_LineMap.lua", -- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME 	= "DLG_UI_Common_Texture_Fieldname_2.tga", -- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_ALTERA_1",	-- 필드명 텍스쳐 키
	
	NPC_TABLE_FILE_NAME = "Altera_Field_01.lua",
	STANDARD_MONSTER_LEVEL = 30, -- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19996,		--나소드 폐기장
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = -- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 116,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"], -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 322, --이동할 필드 내에서의 위치
		},
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"], -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, --이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 30, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_ALTERA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- -- {
			-- -- RISK_VALUE = 3500,	-- 위험도
			-- -- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- -- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- -- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- -- },
		
		-- -- {
			-- -- RISK_VALUE = 4800,
			-- -- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- -- SHOW_BOSS_NAME = TRUE,
			-- -- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- -- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23580, -- 잔혹한 학살자 : 슬레슈
		},
	},
}

------------알테라 2번 필드--------------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_ALTERA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_02"], -- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Altera_Stage2_LineMap.lua", -- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_3.tga", -- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_ALTERA_2",	-- 필드명 텍스쳐 키
	
	STANDARD_MONSTER_LEVEL = 32, -- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_NAME = STR_ID_19997,				---천공의 기지
	
	NPC_TABLE_FILE_NAME = "Altera_Field_02.lua",
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = -- 포탈로 이동하는 곳의 정보
	{		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_ALTERA"], -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 68, -- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],	-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 173,	-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"], -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, --이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 30, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_ALTERA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 93500,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 49800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23580, -- 잔혹한 학살자 : 슬레슈
		},
	},
}





---페이타 0번-------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_PEITA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Peita_Field_Stage0_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_3.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_PEITA_0",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_19998,							---순례자의 관문
	
	NPC_TABLE_FILE_NAME = "Peita_Field_00.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 35, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 108,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_PEITA"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 70, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 32, -- 이 필드 내의 최대 몬스터 수
	
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_PEITA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 93500,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
		
		-- {
			-- RISK_VALUE = 94800,
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			-- SHOW_BOSS_NAME = TRUE,
			-- DEVIDE_BOSS_HP_GAUGE_TO_LINES = TRUE,			
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23581, -- 부패한 글리터 : 배터
		},
	},
}

---페이타 1번-------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_PEITA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Peita_Field_Stage1_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_4.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_PEITA_1",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_19999,						-----순례자의 터
	
	NPC_TABLE_FILE_NAME = "Peita_Field_01.lua",					-- NPC출현 설정 파일명
	STANDARD_MONSTER_LEVEL = 37, 											-- 필드에 나오는 몬스터들의 기준 레벨
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_PEITA"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 71, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 149,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 1, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_PEITA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 93500,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23581, -- 부패한 글리터 : 배터
		},
	},
}

---페이타 2번-------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_PEITA"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_02"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Peita_Field_Stage2_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_4.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_PEITA_2",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20000,										-----망자의 언덕
	
	NPC_TABLE_FILE_NAME = "Peita_Field_02.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 40,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 24,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_VELDER"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 90, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_PEITA"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 93500,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23581, -- 부패한 글리터 : 배터
		},
	},
}



-----------벨더 0번-----------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_VELDER"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Velder_Stage0_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_4.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_VELDER_0",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20001,				--- 번영의 길
	
	NPC_TABLE_FILE_NAME = "Velder_Field_00.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 43,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_VELDER"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 91, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 75,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 330, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_VELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 99900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201, 202, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 210, 211, 212,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 220, 221, 222, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231, 232, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 240, 241, 242,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 250, 251, 252, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261, 262, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 270, 271, 272,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 280, 281, 282, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291, 292, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 300, 301, 302,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 310, 311, 312, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321, 322, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 330, 331, 332,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 340, 341, 342, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351, 352, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 360, 361, 362,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 370, 371, 372, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381, 382, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
	},
}




---벨더 01번 필드 -------------------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_VELDER"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Velder_Stage1_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_4.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_VELDER_1",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20003,								--평화의 길
	
	NPC_TABLE_FILE_NAME = "Velder_Field_01.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 45,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 53,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 332, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 144,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 3, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_VELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 99900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201, 202, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 210, 211, 212,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 220, 221, 222, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231, 232, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 240, 241, 242,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 250, 251, 252, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261, 262, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 270, 271, 272,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 280, 281, 282, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291, 292, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 300, 301, 302,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 310, 311, 312, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321, 322, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 330, 331, 332,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 340, 341, 342, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351, 352, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 360, 361, 362,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 370, 371, 372, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381, 382, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
	},
}


---벨더 02번 필드 -------------------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_VELDER"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_02"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Velder_Stage2_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_5.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_VELDER_2",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20004,									---공존의 길
	
	NPC_TABLE_FILE_NAME = "Velder_Field_02.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 47,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 334, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 190,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 28, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_VELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 99900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201, 202, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 210, 211, 212,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 220, 221, 222, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231, 232, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 240, 241, 242,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 250, 251, 252, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261, 262, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 270, 271, 272,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 280, 281, 282, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291, 292, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 300, 301, 302,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 310, 311, 312, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321, 322, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 330, 331, 332,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 340, 341, 342, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351, 352, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 360, 361, 362,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 370, 371, 372, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381, 382, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
	},
}

---벨더 03번 필드 -------------------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_VELDER"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_03"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Velder_Stage3_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_5.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_VELDER_3",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20005,								---루렌시아 항구
	
	NPC_TABLE_FILE_NAME = "Velder_Field_03.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 49,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 9,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 190,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_SHIP_STAGE"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, 										--이동할 필드 내에서의 위치
		},
		
		-- {
			-- PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			-- LINE_NUMBER = 0,													-- 포탈라인맵번호
			-- PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_HAMEL"],			 -- 이동할 마을 ID
			-- POSITION_INDEX_TO_MOVE = 91, 										-- 이동할 마을 내에서의 위치
		-- },
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 32, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_VELDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 99900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, 201, 202, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 10,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 2,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 210, 211, 212,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 3,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 220, 221, 222, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 4,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 230, 231, 232, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 5,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 240, 241, 242,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 6,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 250, 251, 252, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 7,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 260, 261, 262, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 8,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 270, 271, 272,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 9,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 280, 281, 282, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 10,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 290, 291, 292, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 11,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 300, 301, 302,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 12,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 310, 311, 312, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 13,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 320, 321, 322, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 14,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 330, 331, 332,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 15,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 340, 341, 342, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 16,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 350, 351, 352, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 17,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 360, 361, 362,},		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 18,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 370, 371, 372, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
		{
			SPAWN_ID = 19,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 380, 381, 382, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 5,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23582, -- 우노와 그녀들 : 라노스&문스타/샤이니
		},
	},
}


---벨더 군함 -------------------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_SHIP_STAGE"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_VELDER"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_SHIP_STAGE"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Velder_Battle_Ship_Stage_Linemap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_1.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_VELDERSHIP",	-- 필드명 텍스쳐 키
	
	REQUIRE_LEVEL = 49,
	
	REQUIRE_DUNGEON = 
	{
		DUNGEON_ID["DI_VELDER_GATE_NORMAL"],
	},
	
	BATTLE_FIELD_NAME = STR_ID_20011, 											--하멜 행 군함
	
	NPC_TABLE_FILE_NAME = "Velder_Battle_Ship_Field.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 50,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 21,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_HAMEL"],			 -- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 110, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 10,-- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 99900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
}
------하멜 필드 -------------
----하멜 00번 필드 -------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_HAMEL"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Hamel_Stage0_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_5.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_HARMEL_0",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20006,				----엘라임의 물결
	
	NPC_TABLE_FILE_NAME = "Hamel_Field_00.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 51,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_HAMEL"],						-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 111, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 93,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 30, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23583, -- 수호신 골램 : 스톤 갓
		},
	},
}


---------하멜 01 필드---------------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_HAMEL"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Hamel_Stage1_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_5.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_HARMEL_1",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20007,							---휩쓸린 도시
	
	NPC_TABLE_FILE_NAME = "Hamel_Field_01.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 53,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"],						-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 2, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 118,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 340, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 30, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23583, -- 수호신 골램 : 스톤 갓
		},
	},
}





--------------하멜 02번 필드-----------------------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_HAMEL"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_02"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Hamel_Stage2_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_5.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_HARMEL_2",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20009,								---원형 수로
	
	NPC_TABLE_FILE_NAME = "Hamel_Field_02.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 55,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{
		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"],						-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 342, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 150,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 28, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23583, -- 수호신 골램 : 스톤 갓
		},
	},
}


------------하멜 03번--------------------


g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_HAMEL"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_03"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Hamel_Stage3_LineMap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_4.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_HARMEL_3",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20010,								----노아호의 무덤
	
	NPC_TABLE_FILE_NAME = "Hamel_Field_03.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 58,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"],						-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 344, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 160,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 170,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_SANDER"],-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 130, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23583, -- 수호신 골램 : 스톤 갓
		},
	},
}


-----------하멜 군함---------
g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_SHIP_STAGE"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_HAMEL"],							-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_SHIP_STAGE"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Hamel_Battle_Ship_Stage_Linemap.lua", 			-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_2.tga", 									-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_HARMELSHIP",	-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_20012, 											-- 벨더행 군함
	
	NPC_TABLE_FILE_NAME = "Hamel_Battle_Ship_Field.lua",					-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 50,											-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 										-- 포탈로 이동하는 곳의 정보
	{		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},	
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 16,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_HAMEL"],						 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 110, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 10, -- 이 필드 내의 최대 몬스터 수
	RETURN_VILLAGE_ID							= VILLAGE_MAP_ID["VMI_HAMEL"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
}



-------------샌더 필드 0번 필드---------------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_SANDER"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_00"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Sander_Stage0_Linemap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_3.tga", 		-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_SAND_0",							-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_21656,											-- 노아호의 무덤
	
	NPC_TABLE_FILE_NAME = "Sander_Field_00.lua",									-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 60,												-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 											-- 포탈로 이동하는 곳의 정보
	{		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_SANDER"],					-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 131, 										-- 이동할 마을 내에서의 위치
		},
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 48,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 1, 										--이동할 필드 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수	
	RETURN_VILLAGE_ID = VILLAGE_MAP_ID["VMI_SANDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23584, -- 광견 : 카르베로스
		},
	},
}


-------------샌더 필드 1번 필드---------------

g_pBattleFieldManager:AddBattleFieldData
{
	BATTLE_FIELD_ID = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],
	
	ENTER_VILLAGE_MAP_ID = VILLAGE_MAP_ID["VMI_SANDER"],						-- 입장 마을
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_01"], 					-- 월드정보->라인맵
	LINE_MAP_FILE_NAME = "Field_Sander_Stage1_LineMap.lua", 					-- 해당 필드의 라인맵 파일
	BATTLE_FIELD_TEXTURE_NAME = "DLG_UI_Common_Texture_Fieldname_6.tga", 		-- 필드명을 나타낼 텍스쳐 파일명
	BATTLE_FIELD_TEXTURE_KEY	= "FIELD_NAME_SAND_1",							-- 필드명 텍스쳐 키
	
	BATTLE_FIELD_NAME = STR_ID_23156,											-- 칼루소 부족 정찰지대
	
	NPC_TABLE_FILE_NAME = "Sander_Field_01.lua",									-- NPC출현 설정 파일명
	
	STANDARD_MONSTER_LEVEL = 63,												-- 필드에 나오는 몬스터들의 기준 레벨
	
	BATTLE_FIELD_PORTAL_MOVING_INFO = 											-- 포탈로 이동하는 곳의 정보
	{		
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_FIELD"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 0,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"],			 -- 이동할 필드 ID
			POSITION_INDEX_TO_MOVE = 2, 										--이동할 필드 내에서의 위치
		},	
		{
			PORTAL_MOVE_TYPE = PORTAL_MOVE_TYPE["PMT_MOVE_TO_VILLAGE"],			-- 마을로 이동하는 포탈인지, 필드로 이동하는 포탈인지 지정
			LINE_NUMBER = 58,													-- 포탈라인맵번호
			PLACE_ID_TO_MOVE = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_REST_00"],					-- 이동할 마을 ID
			POSITION_INDEX_TO_MOVE = 350, 										-- 이동할 마을 내에서의 위치
		},
	},
	
	MAX_JOIN_USER_COUNT = 8,
	MAX_NUMBER_OF_MONSTER_IN_THIS_BATTLE_FIELD = 31, -- 이 필드 내의 최대 몬스터 수	
	RETURN_VILLAGE_ID = VILLAGE_MAP_ID["VMI_SANDER"],	-- 유저가 이 필드에서 죽고서 부활하지 않을 경우 돌아가게될 마을	
	
	-- BATTLE_FIELD_RISK_INFO =	-- 위험도 정보
	-- {
		-- {
			-- RISK_VALUE = 1999900,	-- 위험도
			-- SPAWN_MONSTER_ID = NPC_UNIT_ID["NUI_BENDERS_NORMAL"],	-- 스폰될 몬스터 ID
			-- SHOW_BOSS_NAME = FALSE, -- 보스게이지를 보일 것인지 여부
			-- BOSS_GAUGE_HP_LINES = FALSE, -- 보스게이지를 여러개로 나눌것 인지 여부
		-- },
	-- },
	
	MIDDLE_BOSS_BONUS_ITEM_COUNT = 1,				-- 중간 보스 보상 아이템 수량	
	BATTLE_FIELD_MIDDLE_BOSS_INFO =		-- 위험도 정보			
	{
		{
			SPAWN_ID = 1,					-- 중보 그룹 ID
			SPAWN_GROUP_ID = { 200, },		-- (몬스터 정보ID)스폰될 위치 -- 엘더 00 에서는 다리위쪽 앞쪽 그룹 사용  		
			SPAWN_RATE = 100,				-- 확률
			RISK_VALUE = 0,					-- 위험도(현재 위험도가 이것보다 낮으면 출현하지 않음)
			SHOW_BOSS_NAME = FALSE, 		-- 보스게이지를 보일 것인지 여부
			BOSS_GAUGE_HP_LINES = FALSE, 	-- 보스게이지를 여러개로 나눌것 인지 여부
			SET_BOSS_GROUP_NAME = STR_ID_23584, -- 광견 : 카르베로스
		},
	},
}