-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------기본 패트롤 범위는 강제 카메라값 2500입니다.--------

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 1,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			5, 6, 7, 
		},
		
		PLAY_LINE_INDEX =
		{
			2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 
			14, 15, 13, 16, 17, 18, 19, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			5, 6, 7, 
		},
		
		PLAY_LINE_INDEX =
		{
			2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 
			14, 15, 13, 16, 17, 18, 19, 
		},
	},
	-- {
		-- MONSTER_ID					= NPC_UNIT_ID["NUI_PPORU_WILLIAM_SANTA"],
		-- RATE						= 10,
		-- MAX_NUMBER_OF_THIS_MONSTER	= 1,
		-- ADD_LEVEL					= 1,
		-- DROP						= TRUE,
		-- --AGRESSIVE					= ,
		-- --ADD_POS_Y					= ,		
		
		-- START_POSITION =                                -- 몬스터 스타트 좌표
		-- {	
		-- },			
		
		-- PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		-- {	
			
			-- 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			-- 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			-- 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			-- 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			-- 103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			-- 124, 125, 126,
		-- },
		-- PLAY_LINE_INDEX =
		-- {
			-- 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			-- 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			-- 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			-- 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			-- 103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			-- 124, 125, 126,
		-- },	
	-- },
}

------------------페이타 필드 입구 부분--------------
------------------가운데 석탑 부분 ------------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 2,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			17, 18, 19, 20, 
		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 
			14, 15, 13, 
			16, 17, 18, 19, 20, 21, 
			32, 33, 34, 122, 123,
			22, 31, 127, 128, 
			30, 
			23, 24, 25, 125, 126, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			17, 18, 19, 20, 
		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 
			14, 15, 13, 
			16, 17, 18, 19, 20, 21, 
			32, 33, 34, 122, 123,
			22, 31, 127, 128, 
			30, 
			23, 24, 25, 125, 126, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 3,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			24, 25, 125, 126, 26, 30,
		},
		PLAY_LINE_INDEX =
		{
			17, 18, 19, 20, 21, 22, 
			23, 24, 25, 125, 126, 26, 27, 28, 29, 
			45, 46, 47, 48, 49, 
			30, 
			31, 127, 128, 
			32, 42, 43, 
			44,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			24, 25, 125, 126, 26, 30,
		},
		PLAY_LINE_INDEX =
		{
			17, 18, 19, 20, 21, 22, 
			23, 24, 25, 125, 126, 26, 27, 28, 29, 
			45, 46, 47, 48, 49, 
			30, 
			31, 127, 128, 
			32, 42, 43, 
			44,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 4,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			34, 122, 123, 124,
		},
		PLAY_LINE_INDEX =
		{
			121, 33, 34, 122, 123, 124, 35, 41, 
			32, 42, 43, 44, 
			16, 17, 18, 19, 20, 21, 31, 127, 128,
			45, 46, 47, 48, 49, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			34, 122, 123, 124,
		},
		PLAY_LINE_INDEX =
		{
			121, 33, 34, 122, 123, 124, 35, 41, 
			32, 42, 43, 44, 
			16, 17, 18, 19, 20, 21, 31, 127, 128,
			45, 46, 47, 48, 49, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 5,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			46, 47, 48, 49, 50, 129,
		},
		PLAY_LINE_INDEX =
		{
			122, 123, 124, 42, 43, 
			44, 45, 46, 47, 48, 49, 
			125, 26, 27, 28, 29, 
			50, 129, 51, 
			113, 114, 115, 116,	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 45,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			46, 47, 48, 49, 50, 129,
		},
		PLAY_LINE_INDEX =
		{
			121, 33, 34, 122, 123, 124, 35, 41, 
			32, 42, 43, 44, 
			16, 17, 18, 19, 20, 21, 31, 127, 128,
			45, 46, 47, 48, 49, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 2,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
		
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
		RATE						= 3,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
	},
}




g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 7,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			115, 116, 117, 
		},
		PLAY_LINE_INDEX =
		{
			50, 129, 51, 
			111, 112, 113, 114, 115, 116, 117, 118, 119, 
			105, 106, 107, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			115, 116, 117, 
		},
		PLAY_LINE_INDEX =
		{
			50, 129, 51, 
			111, 112, 113, 114, 115, 116, 117, 118, 119, 
			105, 106, 107, 
		},
	},
}


-----------------------위쪽 글리터 그룹 배치 끝----------------
-----------------------아래 지하 부분 몬스터 배치 ---------------------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 10,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			64, 65,  	
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 45,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			63,
			64, 65,  	
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 2,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
		
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
		RATE						= 3,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 11,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			70, 71,   	
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			70, 71,	
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 12,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			74, 75, 76, 77,  	
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			74, 75, 76, 77, 
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 13,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			80, 81, 82, 83, 
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			80, 81, 82, 83, 
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 14,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			87, 88, 89,
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			87, 88, 89, 
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
}




g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 15,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			85,  
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			85,
		},
		
		PLAY_LINE_INDEX =
		{
			60, 61, 62, 
			63, 68, 69, 
			64, 65, 70, 71, 
			66, 67, 72, 90, 91, 92, 93, 
			72, 
			73, 74, 75, 76, 77, 
			78, 87, 88, 89, 
			79, 80, 81, 82, 83, 84, 85, 86, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 16,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PLANT_WHIP_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			80, 81, 82, 83, 84, 85, 	
		},
		
		PLAY_LINE_INDEX =
		{
			79, 80, 81, 82, 83, 84, 85, 86, 
			78, 
			73, 74, 75, 76, 77, 87, 88, 89, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 17,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			95, 96, 97, 
		},
		
		PLAY_LINE_INDEX =
		{
			90, 91, 92, 93, 94, 
			95, 
			96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_FD"],
		RATE						= 45,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			95, 96, 97, 
		},
		
		PLAY_LINE_INDEX =
		{
			90, 91, 92, 93, 94, 
			95, 
			96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 2,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
		
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
		RATE						= 3,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},			
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,

		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 18,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			93,
		},
		
		PLAY_LINE_INDEX =
		{
			68, 69, 
			70, 71, 
			72, 73, 74, 75, 76, 77, 
			87, 88, 89, 
			90, 91, 92, 93, 
			94, 95, 96, 97, 98, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			93,
		},
		
		PLAY_LINE_INDEX =
		{
			68, 69, 
			70, 71, 
			72, 73, 74, 75, 76, 77, 
			87, 88, 89, 
			90, 91, 92, 93, 
			94, 95, 96, 97, 98, 
		},
	},
}


-------------보스 그룹-------------
--------------1그룹--------------
g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 200,
	IS_BOSS_MONSTER_GROUP = TRUE,					-- 보스 인가? (FALSE 이면 생성 안됨) --보스 일때만 추가
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_BATER_FD_BOSS"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 1, 
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		FOCUS_CAMERA				= TRUE, 	-- 추가된 변수(군집의 몬스터 생성시 TRUE로 셋팅된 몬스터에게 카메라 이동)
		
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
			51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76,
			77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
			103, 104, 105, 106, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
			124, 125, 126,
		},
	},
}	
	
