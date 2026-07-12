-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---Besma_Field_Stage0.lua 베스마  0번 필드-----------
---베스마 맨 앞쪽 라인---

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
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
			15, 16, 17,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			11, 12, 13, 
			
			15, 16, 17,
			
			18, 19, 20, 
			26, 27, 28, 149, 150,    
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			15, 16, 17,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			11, 12, 13, 
			
			15, 16, 17,
			
			18, 19, 20, 
			26, 27, 28, 149, 150,    
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
			-- 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			-- 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			-- 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			-- 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			-- 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			-- 138, 139, 140, 141, 144, 145, 146,	
		-- },		
		
		-- PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		-- {
			-- 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			-- 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			-- 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			-- 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			-- 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			-- 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			-- 138, 139, 140, 141, 144, 145, 146,  
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
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
			18, 19, 20, 21, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			10, 11, 12, 13, 
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 29, 
			27, 149, 28, 150,
			30, 31, 32,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			18, 19, 20, 21, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			10, 11, 12, 13, 
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 29, 
			27, 149, 28, 150,
			30, 31, 32,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 6,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
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
			27, 148, 28, 150,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			10, 11, 12, 13, 
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 29, 
			27, 149, 28, 150,
			30, 31, 32,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			27, 148, 28, 150,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			10, 11, 12, 13, 
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 
			26, 29, 
			27, 149, 28, 150,
			30, 31, 32,
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
		},
	},
}
--------------베스마 앞쪽 입구 부터 1번 집중 전투 구간 까지 --------------------
--------------베스마 앞쪽 갈래길 부분 간단 전투 --------------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 40,
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
			39, 40, 41, 42, 43, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			24, 25, 33, 39,  	
			
			40, 41, 42, 43,
			
			134, 135,
			136, 137, 138, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 30,
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
			40, 41, 42, 43, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			24, 25, 33, 39,  	
			
			40, 41, 42, 43,
			
			134, 135,
			136, 137, 138, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			40, 41, 42, 43, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			24, 25, 33, 39,  	
			
			40, 41, 42, 43,
			
			134, 135,
			136, 137, 138, 
		},
	},
}



-------------앞쪽 라인 리자드맨 출현 구간 : 맨 뒤쪽-----------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 95,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
		
			136, 137, 138,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			40, 41, 42, 43,   	
			
			134,
			136, 137,
			
			135, 133, 
			138, 139, 140, 141, 142, 
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			139, 140, 141,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			130, 131, 132, 133, 
			134, 135, 
			136, 137, 138, 139, 140, 141, 142, 143, 147, 	
		},
	},
}





g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 25,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			126, 127, 128,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			123, 124, 125,  	
			
			126, 127, 128, 
			
			64, 65, 66, 129, 144, 145, 
			101, 102, 	
		},
	},
}


---------------뒤쪽 가운데 비 선공 그룹--------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			111, 112, 113,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			109, 110, 
			8, 9, 10, 11, 12,	
			
			111, 112, 113,
			
			50, 51, 
			114, 115, 116, 117,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			111, 112, 113,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			109, 110, 
			8, 9, 10, 11, 12,	
			
			111, 112, 113,
			
			50, 51, 
			114, 115, 116, 117,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			118, 119, 120,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			50, 51, 52, 
			114, 115, 116, 117, 	
			
			118, 119, 120,
			
			121, 122, 123, 124, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			118, 119, 120,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			50, 51, 52, 
			114, 115, 116, 117, 	
			
			118, 119, 120,
			
			121, 122, 123, 124, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			120, 121, 122,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			116, 117, 118, 119,  	
			
			120, 121, 122,
			
			123, 124, 125, 126,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			120, 121, 122,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			116, 117, 118, 119,  	
			
			120, 121, 122,
			
			123, 124, 125, 126,
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 33,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			122, 123, 124,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			118, 119, 120, 121,   	
			
			122, 123, 124,
			
			125, 126, 127, 128,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			122, 123, 124,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			118, 119, 120, 121,   	
			
			122, 123, 124,
			
			125, 126, 127, 128,
		},
	},
}



-------------맨 뒤쪽 라인 그룹-------------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 40,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			52, 53, 54,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			114, 115, 116, 117, 
			50, 51, 
			
			70,
			52, 53, 54,
			
			71, 72, 
			55, 56, 57, 58, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			52, 53, 54,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			114, 115, 116, 117, 
			50, 51, 
			
			70,
			52, 53, 54,
			
			71, 72, 
			55, 56, 57, 58, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 41,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			55, 56, 57, 58,   
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			70, 
			52, 53, 54, 
			
			55, 56, 57, 58,
			
			14,
			59, 60, 61, 62, 63, 64,  
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			55, 56, 57, 58,   
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			70, 
			52, 53, 54, 
			
			55, 56, 57, 58,
			
			14,
			59, 60, 61, 62, 63, 64,  
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 42,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			58, 59, 60, 61, 62, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			53, 54, 55, 56, 57,
			
			58, 59, 60, 61,
			
			14, 80, 
			62, 63, 64, 65, 66,  
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			58, 59, 60, 61, 62, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			53, 54, 55, 56, 57,
			
			58, 59, 60, 61,
			
			14, 80, 
			62, 63, 64, 65, 66,  
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 43,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			72, 73, 74, 75, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
			70, 71, 
			
			72, 73, 74, 75, 
			
			81, 82, 85, 
			76, 77, 78, 79, 80, 84, 83, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			72, 73, 74, 75, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
			70, 71, 
			
			72, 73, 74, 75, 
			
			81, 82, 85, 
			76, 77, 78, 79, 80, 84, 83, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 44,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			75, 76, 77, 78,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
			70, 71, 72, 73, 74, 
			
			75, 76, 77, 78,
			
			79, 80, 84, 83,  	
			64, 65,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			75, 76, 77, 78,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 
			70, 71, 72, 73, 74, 
			
			75, 76, 77, 78,
			
			79, 80, 84, 83,  	
			64, 65,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 45,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			57, 58, 59,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			70,
			52, 53, 54, 55, 56, 	
			
			57, 58, 59, 
			
			14,
			60, 61, 62, 63, 64, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 50,
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
			57, 58, 59,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			70,
			52, 53, 54, 55, 56, 	
			
			57, 58, 59, 
			
			14,
			60, 61, 62, 63, 64, 
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 46,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_YOUNG_KOMODO"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			74, 75, 76,   
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			71, 72, 73, 	
			
			74, 75, 76, 
			
			77, 78, 79, 80, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
		RATE						= 45,
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
			74, 75, 76,   
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			71, 72, 73, 	
			
			74, 75, 76, 
			
			77, 78, 79, 80, 
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,  
		},
	},
}


----------------맨 꼭 대기 리자드맨 그룹----------------

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 50,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 3,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			86, 87, 88, 89, 90, 91, 92,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			82, 81, 
			71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 83, 84, 
			
			85, 86, 87, 88,
			
			89, 90, 91, 92, 93, 94, 
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 53,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 3,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			67, 68, 69, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			103, 104, 105,  	
			
			67, 68, 69,
			
			90, 91, 92, 93, 94, 
			83, 84, 80, 	
		},
	},
}


-----------------------추가 두마리 그룹----------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 60,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LIZARDMAN_SCOUT"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 3,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			99, 100, 101,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			48, 96, 97, 98,  	
			
			99, 100,  
			
			101, 102, 144, 145, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_VESCOO_FD_BOSS"],
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
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146, 
		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
			50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
			74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
			98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
			118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137,
			138, 139, 140, 141, 144, 145, 146,
		},
	},
}