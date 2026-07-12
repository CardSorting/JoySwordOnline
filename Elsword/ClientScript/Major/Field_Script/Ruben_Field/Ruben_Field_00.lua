-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------기본 패트롤 범위는 강제 카메라값 2500입니다.--------


---입구 토부 그룹-------------------

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 1,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_TORU_FD"],
		RATE						= 100,
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
			41, 42,
		},
		
		PLAY_LINE_INDEX =
		{
			8, 9, 10, 
			41, 42, 
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
			22, 23, 24, 46, 47, 48, 49, 
		},
	},
	-- {
		-- MONSTER_ID					= NPC_UNIT_ID["NUI_GOLDEN_CHEST_FD"],
		-- RATE						= 10,
		-- MAX_NUMBER_OF_THIS_MONSTER	= 1,
		-- ADD_LEVEL					= 1,
		-- DROP						= TRUE,
		-- --AGRESSIVE					= FALSE,
		-- --ADD_POS_Y					= ,		
		
		-- START_POSITION =                                -- 몬스터 스타트 좌표
		-- {
			
		-- },
		
		-- PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		-- {
			-- 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			-- 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			-- 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			-- 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			-- 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			-- 101, 102, 103, 104, 105, 106, 107, 108, 109,
		-- },
		
		-- PLAY_LINE_INDEX =
		-- {
			-- 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			-- 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			-- 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			-- 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			-- 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			-- 101, 102, 103, 104, 105, 106, 107, 108, 109,
		-- },
	-- },
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 2,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_TORU_FD"],
		RATE						= 100,
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
			18, 19, 20, 21,
		},
		
		PLAY_LINE_INDEX =
		{
			8, 9, 10, 
			41, 42, 
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
			22, 23, 24, 46, 47, 48, 49, 
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 3,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_TORU_FD"],
		RATE						= 95,
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
			46, 47, 
		},
		
		PLAY_LINE_INDEX =
		{
			8, 9, 10, 
			41, 42, 
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 
			22, 23, 24, 46, 47, 48, 49, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 5,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
		
		PLAY_LINE_INDEX =
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
	},
}
---------------입구 토부 그룹 끝--------------------

---------------뒤쪽 길쪽 뽀루 + 트리나이트 그룹---------------
g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 10,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 70,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			54, 55, 56, 57, 58, 59,
		},
		
		PLAY_LINE_INDEX =
		{
			46, 47, 48, 49, 
			53, 54, 55, 56, 57, 58, 59, 60, 61, 
			70, 75, 76, 77, 
			78, 79, 80, 81, 82,  
			71, 72, 73, 
			74, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 25,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			54, 55, 56, 57, 58, 59,
		},
		
		PLAY_LINE_INDEX =
		{
			46, 47, 48, 49, 
			53, 54, 55, 56, 57, 58, 59, 60, 61, 
			70, 75, 76, 77, 
			78, 79, 80, 81, 82,  
			71, 72, 73, 
			74, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 5,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
		
		PLAY_LINE_INDEX =
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 70,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			74,
			72,	
		},
		
		PLAY_LINE_INDEX =
		{
			46, 47, 48, 49, 
			53, 54, 55, 56, 57, 58, 59, 60, 61, 
			70, 75, 76, 77, 
			78, 79, 80, 81, 82,  
			71, 72, 73, 
			74, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			74,
			72,	
		},
		
		PLAY_LINE_INDEX =
		{
			46, 47, 48, 49, 
			53, 54, 55, 56, 57, 58, 59, 60, 61, 
			70, 75, 76, 77, 
			78, 79, 80, 81, 82,  
			71, 72, 73, 
			74, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 12,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 65,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			31, 32, 33, 34, 35, 36, 37, 38, 
		},
		
		PLAY_LINE_INDEX =
		{
			25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 
			50, 51, 52, 68, 69, 
			62, 63, 64, 65, 66, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			31, 32, 33, 34, 35, 36, 37, 38, 
		},
		
		PLAY_LINE_INDEX =
		{
			25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 
			50, 51, 52, 68, 69, 
			62, 63, 64, 65, 66, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 5,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
		
		PLAY_LINE_INDEX =
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 70,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			63, 64, 65, 66, 
		},
		
		PLAY_LINE_INDEX =
		{
			25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 
			50, 51, 52, 68, 69, 
			62, 63, 64, 65, 66, 67, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			63, 64, 65, 66, 
		},
		
		PLAY_LINE_INDEX =
		{
			25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 
			50, 51, 52, 68, 69, 
			62, 63, 64, 65, 66, 67, 
		},
	},
}

----------------------다음 뒤쪽 수정---------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 14,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 3,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			89, 90, 91, 92,
		},
		
		PLAY_LINE_INDEX =
		{
			82, 88, 89, 90, 91, 92, 93, 94, 102, 103,
			95, 96, 
			97, 98, 99, 100, 101,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 70,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 4,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			89, 90, 91, 92,
		},
		
		PLAY_LINE_INDEX =
		{
			82, 88, 89, 90, 91, 92, 93, 94, 102, 103,
			95, 96, 
			97, 98, 99, 100, 101,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_SICK_TREE_KNIGHT"],
		RATE						= 30,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 3,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			97, 98, 99, 100, 101,
		},
		
		PLAY_LINE_INDEX =
		{
			82, 88, 89, 90, 91, 92, 93, 94, 102, 103,
			95, 96, 
			97, 98, 99, 100, 101,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_PPORU_THIEF_FD"],
		RATE						= 70,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 4,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			97, 98, 99, 100, 101,
		},
		
		PLAY_LINE_INDEX =
		{
			82, 88, 89, 90, 91, 92, 93, 94, 102, 103,
			95, 96, 
			97, 98, 99, 100, 101,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BORR_FD"],
		RATE						= 95,
		MAX_NUMBER_OF_THIS_MONSTER	= 3,
		ADD_LEVEL					= 5,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			102, 103,	
		},
		
		PLAY_LINE_INDEX =
		{
			93, 94, 102, 103, 107, 108,		
			104, 105, 106,
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_CHEST"],
		RATE						= 5,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 1,
		DROP						= TRUE,
		--AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
		
		PLAY_LINE_INDEX =
		{
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
			41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
			61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
			81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109,
		},
	},
}






