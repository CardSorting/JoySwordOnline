-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------기본 패트롤 범위는 강제 카메라값 2500입니다.--------
---------------페이타 앞쪽 라인 좀비 6마리-----------------------


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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 95,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			6, 7, 8, 
		},
		
		PLAY_LINE_INDEX =
		{
			5, 6, 7, 8, 
			9, 10, 11, 12,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			11, 12, 13, 14,
		},
		
		PLAY_LINE_INDEX =
		{
			7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 
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
			-- 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			-- 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			-- 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			-- 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			-- 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		-- },
		-- PLAY_LINE_INDEX =
		-- {
			-- 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			-- 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			-- 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			-- 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			-- 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 100,
		MAX_NUMBER_OF_THIS_MONSTER	= 2,
		ADD_LEVEL					= 0,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			16, 17, 18,
		},
		
		PLAY_LINE_INDEX =
		{
			12, 13, 14, 15, 16, 17, 18, 19, 
		},
	},
}

--------------------------앞쪽 좀비 그룹 끝---------------------
----------------------------뒤쪽 아래쪽 좀비 그룹------------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 95,
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
			28,  29, 
		},
		
		PLAY_LINE_INDEX =
		{
			27, 28, 29, 30, 31,  32, 33, 
			45, 46, 47, 48, 49, 
			42, 
			53, 54, 55, 56, 57, 
			50, 51, 52, 
			43,	
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 100,
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
			31, 32, 33, 34, 35, 36,
		},
		
		PLAY_LINE_INDEX =
		{
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
			42, 
			53, 54, 55, 56, 57, 
			50, 51, 52, 
			43, 
			118, 
			109, 110, 111, 
			101, 102, 103, 104, 105, 
			119, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ZOMBIE_FD"],
		RATE						= 100,
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
			38, 39,
		},
		
		PLAY_LINE_INDEX =
		{
			35, 36, 37, 38, 39, 40, 41, 
			119, 112, 113, 114, 115, 116, 117, 
			106, 107, 108, 
			102, 103, 104,	
		},
	},
}

------------------------------탑 위쪽(왼쪽)---------------------------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			44, 45, 47, 48, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 61, 62, 63, 
			58, 59, 60, 
			44, 45, 46, 47, 48, 49, 42, 
			69, 68, 
			53, 54, 55, 
			29, 30, 31, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
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
			44, 45, 47, 48, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 61, 62, 63, 
			58, 59, 60, 
			44, 45, 46, 47, 48, 49, 42, 
			69, 68, 
			53, 54, 55, 
			29, 30, 31, 	
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 21,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			61, 62, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			58, 59, 60, 
			44, 45, 46, 47, 48, 49, 
			53, 54, 55, 56, 57, 
			61, 62, 63, 
			68, 69, 
			73, 74, 
			71, 72,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_ELITE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			61, 62, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			58, 59, 60, 
			44, 45, 46, 47, 48, 49, 
			53, 54, 55, 56, 57, 
			61, 62, 63, 
			68, 69, 
			73, 74, 
			71, 72,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			64, 65, 66, 67, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			58, 59, 60, 
			61, 62, 63, 
			69, 68, 
			70, 71, 72, 73, 74, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 45,
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
			64, 65, 66, 67, 			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			58, 59, 60, 
			61, 62, 63, 
			69, 68, 
			70, 71, 72, 73, 74, 
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,

		},
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			71, 72,			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			70, 71, 72, 73, 74, 75, 
			69, 68, 
			61, 62, 63, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_NECROMANCER_ELITE_FD"],
		RATE						= 50,
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
			71, 72,			
		},
		
		PLAY_LINE_INDEX =
		{
			64, 65, 66, 67, 
			70, 71, 72, 73, 74, 75, 
			69, 68, 
			61, 62, 63, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 24,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			73, 74, 75,		
		},
		
		PLAY_LINE_INDEX =
		{
			71, 72, 
			69, 
			64, 65, 66, 67, 
			61, 62, 63, 
			68,
			73, 74, 75, 76, 77,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
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
			73, 74, 75,		
		},
		
		PLAY_LINE_INDEX =
		{
			71, 72, 
			69, 
			64, 65, 66, 67, 
			61, 62, 63, 
			68,
			73, 74, 75, 76, 77,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 25,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_SHIELD_ELITE_FD"],
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
			54, 55, 56,	
		},
		
		PLAY_LINE_INDEX =
		{
			53, 54, 55, 56, 57, 
			61, 62, 63, 
			69, 68, 
			45, 46, 47, 48, 49, 
			50, 51, 52, 
			33, 34, 43,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			54, 55, 56,	
		},
		
		PLAY_LINE_INDEX =
		{
			53, 54, 55, 56, 57, 
			61, 62, 63, 
			69, 68, 
			45, 46, 47, 48, 49, 
			50, 51, 52, 
			33, 34, 43,
		},
	},
}




-------------------------왼쪽 탑 끝--------------------
--------------------------오른쪽 시작--------------------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 30,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
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
			114, 115, 116, 117,      	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
			114, 115, 116, 117,      	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_ARCHER_ELITE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			94, 95, 96, 97,     	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
			94, 95, 96, 97,        	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
}






g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 32,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
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
			89, 90,    	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
				89, 90,          	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
}




g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 33,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
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
			98, 99, 100,   	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
			98, 99, 100,          	
		},
		
		PLAY_LINE_INDEX =
		{
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
}






g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 34,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			86, 87, 88,  	
		},
		
		PLAY_LINE_INDEX =
		{
			84,
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
			86, 87, 88,          	
		},
		
		PLAY_LINE_INDEX =
		{
			84,
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 35,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_ELITE_FD"],
		RATE						= 50,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		--AGRESSIVE					= ,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{
			
		},
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{	
			102, 103, 104,	
		},
		
		PLAY_LINE_INDEX =
		{
			84,
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_ELITE_FD"],
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
			102, 103, 104,         	
		},
		
		PLAY_LINE_INDEX =
		{
			84,
			85, 86, 87, 88, 89, 90, 
			91, 92, 
			93, 94, 95, 96, 97, 
			98, 99, 100, 
			101, 102, 103, 104, 105, 106, 107, 108, 
			112, 113, 114, 115, 116, 117, 
			109, 110, 111, 
			118, 119, 
			34, 35, 36, 37, 38, 39, 
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
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
		},
		
		PLAY_LINE_INDEX =
		{
			4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 26, 27, 28, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 
			55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 
			82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
			107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
		},
	},
}