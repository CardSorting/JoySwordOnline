-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---Altera_Field_00-----------


--------------입구쪽 첫번째 몬스터 그룹----------------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			14, 16, 17, 177,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			12, 13, 
			14, 15, 16, 177, 17, 
			42, 43, 44, 
			28, 29, 27, 
			18, 19, 20, 21, 	
			178,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
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
			14, 16, 17, 177,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			12, 13, 
			14, 15, 16, 177, 17, 
			42, 43, 44, 
			28, 29, 27, 
			18, 19, 20, 21, 	
			178,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
		RATE						= 60,
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
			18, 19, 20, 21, 
			12, 13, 178, 14, 15, 16, 177, 17, 
			42, 43, 44, 45, 
			22, 23, 24, 25, 26, 
			27, 28, 29, 30, 31, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 40,
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
			18, 19, 20, 21, 
			12, 13, 178, 14, 15, 16, 177, 17, 
			42, 43, 44, 45, 
			22, 23, 24, 25, 26, 
			27, 28, 29, 30, 31, 	
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
			-- 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			-- 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			-- 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			-- 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			-- 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			-- 163, 164, 165,
		-- },
		-- PLAY_LINE_INDEX =
		-- {
			-- 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			-- 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			-- 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			-- 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			-- 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			-- 163, 164, 165,
		-- },
	-- },
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
		RATE						= 60,
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
			42, 43,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			42, 43, 44, 45, 46,
			16, 177, 17, 
			13, 178, 15, 
			18, 19, 20, 21, 
			22, 23, 24, 25, 26, 
			27, 28, 29, 30, 31, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 40,
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
			42, 43,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			42, 43, 44, 45, 46,
			16, 177, 17, 
			13, 178, 15, 
			18, 19, 20, 21, 
			22, 23, 24, 25, 26, 
			27, 28, 29, 30, 31, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
		RATE						= 60,
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
			44, 45, 46,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			42, 43, 44, 45, 46, 47, 48, 
			28, 29, 30, 31, 
			27, 22, 23, 24, 25, 26, 
			41, 39, 40, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 40,
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
			44, 45, 46,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			42, 43, 44, 45, 46, 47, 48, 
			28, 29, 30, 31, 
			27, 22, 23, 24, 25, 26, 
			41, 39, 40, 	
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 6,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
		RATE						= 60,
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
			23, 24, 25, 
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			22, 23, 24, 25, 26, 
			18, 19, 20, 21, 
			27, 28, 29, 30, 31, 32, 
			42, 43, 44, 45, 46, 
			41, 39, 40, 47, 48,	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 40,
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
			23, 24, 25, 
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			22, 23, 24, 25, 26, 
			18, 19, 20, 21, 
			27, 28, 29, 30, 31, 32, 
			42, 43, 44, 45, 46, 
			41, 39, 40, 47, 48,	
		},
	},
}


-------------------------앞쪽 리페어맨 + 검사 끝--------------------
-------------------------후반부 리페어맨 + 검사--------------------------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			50, 51, 52, 
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			47, 48, 49, 50, 51, 52, 53, 54,	55, 56, 
			57, 58, 59, 
			64, 65, 66, 60, 61,  	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 55,
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
			50, 51, 52, 
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			47, 48, 49, 50, 51, 52, 53, 54,	55, 56, 
			57, 58, 59, 
			64, 65, 66, 60, 61,  	
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			54, 55, 56,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			49, 50, 51, 52, 53, 54, 55, 56,
			57, 58, 59, 
			64, 65, 66, 
			60, 61, 62, 63, 72, 73, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 60,
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
			54, 55, 56,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			49, 50, 51, 52, 53, 54, 55, 56,
			57, 58, 59, 
			64, 65, 66, 
			60, 61, 62, 63, 72, 73, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			64, 65, 66,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			68, 69, 
			67, 64, 65, 66, 
			57, 58, 59, 
			50, 51, 52, 53, 54, 55, 56,
			70, 71, 60, 61, 62, 63, 72, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 60,
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
			64, 65, 66,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			68, 69, 
			67, 64, 65, 66, 
			57, 58, 59, 
			50, 51, 52, 53, 54, 55, 56,
			70, 71, 60, 61, 62, 63, 72, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			68, 69,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			68, 69, 
			67, 64, 65, 66, 
			57, 58, 59, 
			50, 51, 52, 53, 54, 55, 56,
			70, 71, 60, 61, 62, 63, 72, 	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 60,
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
			68, 69,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			68, 69, 
			67, 64, 65, 66, 
			57, 58, 59, 
			50, 51, 52, 53, 54, 55, 56,
			70, 71, 60, 61, 62, 63, 72, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_REPAIR_FD"],
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
			72, 73, 74,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			71, 
			70, 65, 66, 60, 62, 63, 72, 61, 54, 55, 56, 
			73, 74, 75, 76, 77, 78,	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BLCW_SOLDIER_FD"],
		RATE						= 60,
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
			72, 73, 74,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			71, 
			70, 65, 66, 60, 62, 63, 72, 61, 54, 55, 56, 
			73, 74, 75, 76, 77, 78,	
		},
	},
}

-------------------------뒤쪽 라인맵 나소드 그룹----------------------------------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 20,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_WATCHER_FD"],
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
			84, 85, 86,   	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
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
			84, 85, 86,   	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_WATCHER_FD"],
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
			86, 87, 88, 89, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
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
			86, 87, 88, 89,  	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 22,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_WATCHER_FD"],
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
			91, 92, 93,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
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
			91, 92, 93,	 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			81, 82, 83, 84, 85, 86, 87, 88, 89, 
			90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
		},
	},
}


---------------뒤쪽 라인맵 후반부 그룹----------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			112, 113,  114,    	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			98, 99, 100, 
			101, 102, 103, 
			111, 112, 113, 114, 115, 
			108, 109, 110, 116, 124, 
			117, 118, 119, 120, 121, 122, 
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			112, 113,  114,    	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			98, 99, 100, 
			101, 102, 103, 
			111, 112, 113, 114, 115, 
			108, 109, 110, 116, 124, 
			117, 118, 119, 120, 121, 122, 
		},
	},
}



g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 31,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			116, 124, 125, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			113, 114, 115, 116, 
			107, 108, 109, 110, 124, 125, 126, 127, 128, 
			117, 118, 119, 120, 121, 122, 123, 134, 
			165, 135, 136, 
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			116, 124, 125, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			113, 114, 115, 116, 
			107, 108, 109, 110, 124, 125, 126, 127, 128, 
			117, 118, 119, 120, 121, 122, 123, 134, 
			165, 135, 136, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			124, 125, 126, 127, 128, 129, 130, 131, 132,
			121, 122, 123, 134, 165, 164, 
			135, 136, 139, 140, 141, 137, 138, 	
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			126, 127, 128,	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			124, 125, 126, 127, 128, 129, 130, 131, 132,
			121, 122, 123, 134, 165, 164, 
			135, 136, 139, 140, 141, 137, 138, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			135, 136,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			124, 125, 126, 127, 128, 129, 130, 131, 132,
			121, 122, 123, 134, 165, 164, 
			135, 136, 139, 140, 141, 137, 138, 	
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			135, 136,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			124, 125, 126, 127, 128, 129, 130, 131, 132,
			121, 122, 123, 134, 165, 164, 
			135, 136, 139, 140, 141, 137, 138, 	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			129, 130, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			126, 127, 128, 129, 130, 131, 132, 133,
			135, 137, 138, 139, 140, 141, 142, 143, 
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			129, 130, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			126, 127, 128, 129, 130, 131, 132, 133,
			135, 137, 138, 139, 140, 141, 142, 143, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 35,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
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
			139, 140,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			126, 127, 128, 129, 130, 131, 132, 133,
			135, 137, 138, 139, 140, 141, 142, 143, 
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			139, 140,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			126, 127, 128, 129, 130, 131, 132, 133,
			135, 137, 138, 139, 140, 141, 142, 143, 
		},
	},
}


--------------------맨 꼭 대기 몬스터 장난 그룹--------------


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 50,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SPRAY_FIRE_FD"],
		RATE						= 60,
		MAX_NUMBER_OF_THIS_MONSTER	= 1,
		ADD_LEVEL					= 2,
		DROP						= TRUE,
		AGRESSIVE					= FALSE,
		--ADD_POS_Y					= ,		
		
		START_POSITION =                                -- 몬스터 스타트 좌표
		{	
		},		
		
		PETROL_LINE_INDEX =								-- 몬스터 스타트 라인맵(좌표가 없는 경우 이 맵에서 선택 됨)
		{
			147, 148, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			144, 145, 146, 	
				
				
			147, 148,  

			149, 150,
		},
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_MINER_DEFECTER_FD"],
		RATE						= 40,
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
			147, 148, 	
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			144, 145, 146, 	
				
				
			147, 148,  

			149, 150,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
			88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 
			114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 
			138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 177,
			163, 164, 165,
		},
	},
}