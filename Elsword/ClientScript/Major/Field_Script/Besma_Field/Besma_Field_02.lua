-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



---Besma_Field_Stage0.lua 베스마  0번 필드-----------

------------입구 간단 전투 그룹------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			12, 13, 14, 15,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			8, 9, 10, 11, 12, 13, 14, 15, 37, 38, 
			36, 32, 33, 35, 
			39, 40, 41, 42, 43, 44, 90,
			
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
		RATE						= 35,
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
			12, 13, 14, 15,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			8, 9, 10, 11, 12, 13, 14, 15, 37, 38, 
			36, 32, 33, 35, 
			39, 40, 41, 42, 43, 44, 90,
			
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,

		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			33, 34, 35,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			8, 9, 10, 11, 12, 13, 14, 15, 37, 38, 
			36, 32, 33, 35, 
			39, 40, 41, 42, 43, 44, 90,
			48, 52, 51, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			33, 34, 35,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			8, 9, 10, 11, 12, 13, 14, 15, 37, 38, 
			36, 32, 33, 35, 
			39, 40, 41, 42, 43, 44, 90,
			48, 52, 51, 
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
			-- 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			-- 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			-- 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			-- 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			-- 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			-- 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			-- 188, 189, 190, 191, 192, 193, 194,
		-- },		
		-- PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		-- {
			-- 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			-- 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			-- 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			-- 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			-- 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			-- 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			-- 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			-- 188, 189, 190, 191, 192, 193, 194,
		-- },
	-- },
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			44, 45, 46, 47, 91,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			39, 40, 48, 
			41, 42, 43, 44, 45, 46, 47, 
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			90, 87, 88, 89, 102, 
			82, 83, 84, 85, 86, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			44, 45, 46, 47, 91,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			39, 40, 48, 
			41, 42, 43, 44, 45, 46, 47, 
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			90, 87, 88, 89, 102, 
			82, 83, 84, 85, 86, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_RED_SCORPION"],
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
			83, 84, 85, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			39, 40, 48, 
			41, 42, 43, 44, 45, 46, 47, 
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			90, 87, 88, 89, 102, 
			82, 83, 84, 85, 86, 
			103, 104, 105, 106,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			83, 84, 85, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			39, 40, 48, 
			41, 42, 43, 44, 45, 46, 47, 
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			90, 87, 88, 89, 102, 
			82, 83, 84, 85, 86, 
			103, 104, 105, 106,
		},
	},
}





----------------------리자드맨 + 스콜피온 그룹 끝------------
-----------------------리자드맨 + 사우러스 그룹 ---------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
		RATE						= 55,
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
			95, 96, 97, 98, 99, 100,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			124, 125, 126, 127, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			95, 96, 97, 98, 99, 100,  
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101,
			124, 125, 126, 127, 
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,

		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
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
			108, 109, 110, 111, 112, 113, 114,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
			73, 74, 75, 120, 119, 
			121, 122, 123,	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			108, 109, 110, 111, 112, 113, 114,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
			73, 74, 75, 120, 119, 
			121, 122, 123,	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
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
			135, 136, 137, 138, 139, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 
			203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 
			213, 
			178, 179, 180, 181,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			135, 136, 137, 138, 139, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 
			203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 
			213, 
			178, 179, 180, 181,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
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
			206, 207, 208, 209, 210,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 
			203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 
			213, 
			178, 179, 180, 181,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_LIZARDMAN_WARRIOR"],
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
			206, 207, 208, 209, 210,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 
			203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 
			213, 
			178, 179, 180, 181,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 14,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
		RATE						= 100,
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
			154, 155, 156, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			161, 162, 163, 151, 152, 153, 154, 155, 156,
			157, 158, 159, 164, 156, 166, 167, 168, 169, 170,
			149, 150, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 15,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_FURY_SAURUS"],
		RATE						= 100,
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
			171, 172, 173, 174, 175, 176,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 185, 186, 187,
		},
	},
}

--------------------나소드 허니 그룹----------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_BEE_FD"],
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
			185, 186, 187,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			177, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_BEE_FD"],
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
			191, 192, 193, 194,195,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			177, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198,
		},
	},
}







--------------나소드 허니 그룹 끝----------------

----------------나소드 광부 그룹------------------

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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
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
			18, 19, 20, 21, 22,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			16, 17, 18, 19, 20, 21, 22, 
			23, 24, 25, 26, 27, 28, 
			29, 30, 31, 53, 54,	
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 40,
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
			18, 19, 20, 21, 22,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			16, 17, 18, 19, 20, 21, 22, 
			23, 24, 25, 26, 27, 28, 
			29, 30, 31, 53, 54,	
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
		RATE						= 60,
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
			28, 29, 30, 31, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			26, 27, 28, 29, 30, 31, 49, 50, 51, 52, 
			53, 54, 55, 56, 
			57, 58,
			49, 50, 51, 52,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 40,
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
			28, 29, 30, 31, 
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			26, 27, 28, 29, 30, 31, 49, 50, 51, 52, 
			53, 54, 55, 56, 
			57, 58,
			49, 50, 51, 52,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
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
			29, 30, 31, 49, 50, 51, 52,
			53, 54, 55, 56, 
			57, 81, 
			58, 59, 60, 61,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 40,
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
			54, 55, 56,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			29, 30, 31, 49, 50, 51, 52,
			53, 54, 55, 56, 
			57, 81, 
			58, 59, 60, 61,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
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
			59, 60, 61,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			53, 54, 55, 56, 
			57, 81, 58, 59, 60, 61, 
			62, 63, 64, 65, 66, 67, 68, 
			76, 77, 78, 79, 80, 
			142, 143, 144, 145, 
			146, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 40,
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
			59, 60, 61,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			53, 54, 55, 56, 
			57, 81, 58, 59, 60, 61, 
			62, 63, 64, 65, 66, 67, 68, 
			76, 77, 78, 79, 80, 
			142, 143, 144, 145, 
			146, 
		},
	},
}

g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 34,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 2,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},	
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
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
			142, 143, 144, 145,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			50, 60, 61, 
			142, 143, 144, 145, 
			146, 
			76, 77, 78, 79, 80,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 40,
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
			142, 143, 144, 145,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			50, 60, 61, 
			142, 143, 144, 145, 
			146, 
			76, 77, 78, 79, 80,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER"],
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
			79, 80, 147, 148,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			76, 77, 78, 79, 80, 
			147, 148, 149, 150, 
			146, 142, 143, 144, 145,
			155, 156, 157, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_NASOD_MINER_FAT"],
		RATE						= 35,
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
			79, 80, 147, 148,
		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			76, 77, 78, 79, 80, 
			147, 148, 149, 150, 
			146, 142, 143, 144, 145,
			155, 156, 157, 
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,

		},		
		
		PLAY_LINE_INDEX =	   							-- 몬스터 플레이 라인맵 (이 라인맵을 벗어나면 이탈로 파악 5초에 한번 검사))
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},
	},
}


-----------보스 그룹--------------
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
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},
		
		PLAY_LINE_INDEX =
		{
			7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161,
			162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187,
			188, 189, 190, 191, 192, 193, 194,
		},
	},
}

