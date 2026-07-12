-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



--Altera_Field_01 알테라 1번 필드-----------

-------------반대쪽 입구 부터 시작-------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_NASOD_SCOPION_FD"],
		RATE						= 95,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			7, 8, 9, 10,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 7, 8, 9, 10, 
			11, 15, 16, 17, 12, 13, 14, 
			18, 19, 20, 
			54, 55, 56, 57, 
			58, 59, 60, 61, 
			21, 22, 23, 24, 25, 26, 
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		},
	},
}

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_NASOD_SCOPION_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			18, 19, 20,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 7, 8, 9, 10, 
			11, 15, 16, 17, 12, 13, 14, 
			18, 19, 20, 
			54, 55, 56, 57, 
			58, 59, 60, 61, 
			21, 22, 23, 24, 25, 26, 
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
			-- 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			-- 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			-- 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		-- },
		-- PLAY_LINE_INDEX =
		-- {
			-- 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			-- 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			-- 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		-- },
	-- },
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 3,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_NASOD_SCOPION_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			58, 59, 60, 61,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 7, 8, 9, 10, 
			11, 15, 16, 17, 12, 13, 14, 
			18, 19, 20, 
			54, 55, 56, 57, 
			58, 59, 60, 61, 
			21, 22, 23, 24, 25, 26, 
		},
	},
}


-----------------------나소드 스콜피언 그룹 끝------------------------

-------------------------부활 그룹-----------------------------------

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 10,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_DIE_FD"],
		RATE						= 95,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			21, 22,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			12, 13, 14, 
			18, 19, 20, 
			58, 59, 60, 61,	
			54, 55,
			
			21, 22,	 

			23, 24, 25, 26, 27, 	
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 11,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_DIE_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			23, 24, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			12, 13, 14, 
			18, 19, 20, 
			58, 59, 60, 61,	
			54, 55,
			21, 22,
			
			23, 24,  

			25, 26, 27, 
			28, 29, 30,	
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 12,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_DIE_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			25, 26, 27,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			21, 22, 23, 24,
			
			25, 26, 27,	 

			28, 29, 30, 48, 49, 50, 
			46, 47,
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 13,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_PARASIDTE_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			21, 22, 23, 24, 25, 26, 27, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			54, 55, 56,
			12, 13, 14, 
			15, 16, 17, 
			18, 19, 20, 
			58, 59, 60, 61,
			
			21, 22, 23, 24, 25, 26, 27,	 

			28, 29, 30, 46, 47, 48, 49, 50, 51, 52, 
		},
	},
}


--------------------------부활 그룹 끝-------------------------
--------------------------광부 + 화염방사기---------------------
g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 20,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			48, 49, 50, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 45,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			48, 49, 50, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 21,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			51, 52, 53,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			51, 52, 53,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 22,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			64, 65, 66,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			64, 65, 66,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 23,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_HEALER_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			48, 49, 50, 51, 52, 53, 62, 63, 64, 65, 66,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			43, 44, 45, 46, 47, 
			26, 27, 28, 29, 30, 
			48, 49, 50, 51, 52, 53, 
			62, 63, 64, 65, 66, 
			69, 68, 67, 
		},
	},
}


-------------------가운데 비선공 그룹-------------------------

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 30,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			34, 35, 36, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 
			31, 32, 33, 	
			
			34, 35, 36,  

			70, 71, 72, 73, 74, 
			37, 38, 39, 
			40, 41, 42, 43, 44, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_BIG_DEFECT_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			34, 35, 36, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 
			31, 32, 33, 	
			
			34, 35, 36,  

			70, 71, 72, 73, 74, 
			37, 38, 39, 
			40, 41, 42, 43, 44, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 31,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			35, 36, 37, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 
			31, 32, 33, 34,	
			
			35, 36, 37, 

			70, 71, 72, 73, 74, 
			38, 39, 
			40, 41, 42, 43, 44, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_BIG_DEFECT_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			35, 36, 37, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 
			31, 32, 33, 34,	
			
			35, 36, 37, 

			70, 71, 72, 73, 74, 
			38, 39, 
			40, 41, 42, 43, 44, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 32,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_HEALER_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			34, 35, 36, 37, 	
		},		
		
		PLA_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			4, 5, 6, 
			31, 32, 33, 	
			
			34, 35, 36, 37,	

			70, 71, 72, 73, 74, 
			38, 39, 
			40, 41, 42, 43, 44, 
		},
	},
}



------------------맨 뒤쪽 집중 전투 구간--------------



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 40,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			77, 78, 79, 80,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_BIG_DEFECT_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			77, 78, 79, 80,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_HEALER_FD"],
		RATE						= 20,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			77, 78, 79, 80,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
}




g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 41,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			82, 83, 84,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_BIG_DEFECT_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			82, 83, 84, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_HEALER_FD"],
		RATE						= 20,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			82, 83, 84, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 42,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			90, 91, 92, 93, 94, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_BIG_DEFECT_FD"],
		RATE						= 40,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			90, 91, 92, 93, 94, 		
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_HEALER_FD"],
		RATE						= 20,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		1
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},	
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			90, 91, 92, 93, 94,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			72, 73, 74, 75, 76, 77, 78, 79, 80, 96, 97, 98, 99, 100, 101, 102, 	
			81, 96, 97, 82, 83, 84, 
			85, 86, 87, 88, 89, 95, 
			90, 91, 92, 93, 94, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_SLESHU_FD_BOSS"],
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		},
		
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
		},
	},
}
