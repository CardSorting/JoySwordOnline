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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SAND_SEAL_FD"],
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
			7, 8, 9, 10, 11, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6,
			
			7, 8, 9, 10, 11,
			
			49, 50, 55, 53, 54, 68, 69, 51, 52, 
			12, 13, 14, 15, 16,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_RED_ANGLER_FD"],
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
			7, 8, 9, 10, 11, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6,
			
			7, 8, 9, 10, 11,
			
			49, 50, 55, 53, 54, 68, 69, 51, 52, 
			12, 13, 14, 15, 16,
		},
	},
}

----------------샌더 필드 집중 뒤쪽 집중 전투 --------------------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_VEGA_TROCK_FD"],
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
			70, 71, 72, 
			68, 69, 
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			
			
			70, 71, 72, 
			68, 69, 
			
			56, 57, 58, 59, 60, 61, 62, 
			63, 64, 65, 66, 67, 
			73, 74, 75, 76, 77, 78, 
			108, 109,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BUGI_TROCK_FD"],
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
			70, 71, 72, 
			68, 69, 
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			
			
			70, 71, 72, 
			68, 69, 
			
			56, 57, 58, 59, 60, 61, 62, 
			63, 64, 65, 66, 67, 
			73, 74, 75, 76, 77, 78, 
			108, 109,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,

		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,

		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_VEGA_TROCK_FD"],
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
			63, 64, 65, 66, 67,
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 108, 109, 			
			
			63, 64, 65, 66, 67,
			
			56, 57, 58, 59, 60, 61, 62, 82, 83, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BUGI_TROCK_FD"],
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
			63, 64, 65, 66, 67,
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 108, 109, 			
			
			63, 64, 65, 66, 67,
			
			56, 57, 58, 59, 60, 61, 62, 82, 83, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_VEGA_TROCK_FD"],
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
			58, 59, 60, 61, 
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 108, 109, 
			63, 64, 65, 66, 67,	
			
			58, 59, 60, 61,
			
			56, 62, 82, 83, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BUGI_TROCK_FD"],
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
			58, 59, 60, 61, 
		},
		
		PLAY_LINE_INDEX =
		{
			49, 50,
			8, 9, 10, 11, 12, 
			55, 53, 54, 51, 52,
			68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 108, 109, 
			63, 64, 65, 66, 67,	
			
			58, 59, 60, 61,
			
			56, 62, 82, 83, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 13,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 1,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_VEGA_TROCK_FD"],
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
			77, 78,
			108, 109,
			113,
		},
		
		PLAY_LINE_INDEX =
		{
			72, 73, 74, 75, 76, 
			65, 66, 67, 
			60, 61, 62, 
			82, 83, 
			
			77, 78,
			108, 109,
			113, 
			
			114, 115, 116,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BUGI_TROCK_FD"],
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
			77, 78,
			108, 109,
			113,
		},
		
		PLAY_LINE_INDEX =
		{
			72, 73, 74, 75, 76, 
			65, 66, 67, 
			60, 61, 62, 
			82, 83, 
			
			77, 78,
			108, 109,
			113, 
			
			114, 115, 116,
		},
	},
}


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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_VEGA_TROCK_FD"],
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
			145, 146, 147,
			121, 122, 123,	
		},
		
		PLAY_LINE_INDEX =
		{
			142, 143, 144,
			119, 120, 
			
			145, 146, 147,
			121, 122, 123,
			
			142, 143, 144, 
			148, 149, 150, 
			42, 43, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_BUGI_TROCK_FD"],
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
			145, 146, 147,
			121, 122, 123,	
		},
		
		PLAY_LINE_INDEX =
		{
			142, 143, 144,
			119, 120, 
			
			145, 146, 147,
			121, 122, 123,
			
			142, 143, 144, 
			148, 149, 150, 
			42, 43, 
		},
	},
}


-----------------끝자리에 사막 생물----------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SAND_SEAL_FD"],
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
			41, 42, 43,  
		},
		
		PLAY_LINE_INDEX =
		{
			142, 143, 144,
			145, 146, 147,
			121, 122, 123, 
			148, 149, 150,
			36, 37, 38, 39, 40, 
			
			41, 42, 43, 
			
			44, 45, 46, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_RED_ANGLER_FD"],
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
			41, 42, 43,  
		},
		
		PLAY_LINE_INDEX =
		{
			142, 143, 144,
			145, 146, 147,
			121, 122, 123, 
			148, 149, 150,
			36, 37, 38, 39, 40, 
			
			41, 42, 43, 
			
			44, 45, 46, 
		},
	},
}


------------------------가운데 사막 생물 몬스터 그룹-----------------------------
g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 30,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SAND_SEAL_FD"],
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
			15, 16, 17, 18, 19, 20, 21, 22, 
		},
		
		PLAY_LINE_INDEX =
		{
			10, 11, 12, 13, 14, 
			79, 80, 81, 
			87, 88, 89, 
			84, 85, 86, 	
			90, 91, 92, 93, 
			
			14, 15, 16, 17, 18, 19, 20, 21, 22, 
			
			23, 24, 25, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_RED_ANGLER_FD"],
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
			15, 16, 17, 18, 19, 20, 21, 22, 
		},
		
		PLAY_LINE_INDEX =
		{
			10, 11, 12, 13, 14, 
			79, 80, 81, 
			87, 88, 89, 
			84, 85, 86, 	
			90, 91, 92, 93, 
			
			14, 15, 16, 17, 18, 19, 20, 21, 22, 
			
			23, 24, 25, 
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 31,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_SAND_SEAL_FD"],
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
			30, 31, 32, 33, 34, 35, 36, 
		},
		
		PLAY_LINE_INDEX =
		{
			28, 29, 
			139, 140, 
			137, 138, 135, 136, 	
			105, 106, 107, 
			
			30, 31, 32, 33, 34, 35, 36, 
			
			37, 38, 39, 40, 41, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_RED_ANGLER_FD"],
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
			30, 31, 32, 33, 34, 35, 36, 
		},
		
		PLAY_LINE_INDEX =
		{
			28, 29, 
			139, 140, 
			137, 138, 135, 136, 	
			105, 106, 107, 
			
			30, 31, 32, 33, 34, 35, 36, 
			
			37, 38, 39, 40, 41, 
		},
	},
}


---------------철그락 + 오버 -----------------------


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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STONE_AXE_TROCK_FD"],
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
			84, 85, 86, 
			87, 88, 89, 
		},
		
		PLAY_LINE_INDEX =
		{
			14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
			79, 80, 81, 90, 91, 92, 93, 
			
			84, 85, 86, 
			87, 88, 89, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STEEL_TROCK_FD"],
		RATE						= 45,
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
			84, 85, 86, 
			87, 88, 89, 
		},
		
		PLAY_LINE_INDEX =
		{
			14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
			79, 80, 81, 90, 91, 92, 93, 
			
			84, 85, 86, 
			87, 88, 89, 
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,

		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,

		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
		},
	},
}


g_pBattleFieldManager:AddSpawnMonsterGroup
{
	SPAWN_GROUP_ID = 41,
	MIN_NUMBER_OF_MONSTER_IN_THIS_GROUP = 0,
	MAX_NUMBER_OF_MONSTER_IN_THIS_GROUP = 3,
	
	SIEGE_MONSTER =
	{
		--NPC_UNIT_ID["NUI_BEE"],
		--NPC_UNIT_ID["NUI_BEEBOMB"],
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STONE_AXE_TROCK_FD"],
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
			93, 94, 95, 96, 97, 98, 
			110, 111, 112, 127, 	
		},
		
		PLAY_LINE_INDEX =
		{
			18, 19, 20, 21, 22, 23, 
			79, 80, 81, 
			87, 88, 89, 84, 85, 86, 
			90, 91, 92, 
			
			93, 94, 95, 96, 97, 98, 
			110, 111, 112, 127, 
			
			124, 125, 126, 
			99, 100, 101, 102, 103, 104, 105, 
			128, 132, 133, 134, 
			129, 130, 131, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STEEL_TROCK_FD"],
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
			93, 94, 95, 96, 97, 98, 
			110, 111, 112, 127, 	
		},
		
		PLAY_LINE_INDEX =
		{
			18, 19, 20, 21, 22, 23, 
			79, 80, 81, 
			87, 88, 89, 84, 85, 86, 
			90, 91, 92, 
			
			93, 94, 95, 96, 97, 98, 
			110, 111, 112, 127, 
			
			124, 125, 126, 
			99, 100, 101, 102, 103, 104, 105, 
			128, 132, 133, 134, 
			129, 130, 131, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STONE_AXE_TROCK_FD"],
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
			128, 132, 133, 134,
			99, 100, 101, 102, 103, 104, 105, 	
		},
		
		PLAY_LINE_INDEX =
		{
			106, 107, 
			137, 138, 135, 136, 
			139, 140, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 
			
			128, 132, 133, 134,
			99, 100, 101, 102, 103, 104, 105, 
			
			129, 130, 131,
			124, 125, 126, 
			110, 111, 112, 127, 
			94, 95, 96, 97, 98, 
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STEEL_TROCK_FD"],
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
			128, 132, 133, 134,
			99, 100, 101, 102, 103, 104, 105, 	
		},
		
		PLAY_LINE_INDEX =
		{
			106, 107, 
			137, 138, 135, 136, 
			139, 140, 
			29, 30, 31, 32, 33, 34, 35, 36, 37, 
			
			128, 132, 133, 134,
			99, 100, 101, 102, 103, 104, 105, 
			
			129, 130, 131,
			124, 125, 126, 
			110, 111, 112, 127, 
			94, 95, 96, 97, 98, 
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STONE_AXE_TROCK_FD"],
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
			135, 136, 
			137, 138,	
		},
		
		PLAY_LINE_INDEX =
		{
			132, 133, 134, 
			102, 103, 104, 105, 106, 107, 
			30, 31, 32, 33, 34, 35, 36, 37, 38, 
			139, 140, 
			
			135, 136, 
			137, 138,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_STEEL_TROCK_FD"],
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
			135, 136, 
			137, 138,	
		},
		
		PLAY_LINE_INDEX =
		{
			132, 133, 134, 
			102, 103, 104, 105, 106, 107, 
			30, 31, 32, 33, 34, 35, 36, 37, 38, 
			139, 140, 
			
			135, 136, 
			137, 138,
		},
	},
}
-------------보스 그룹--------------
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_KALLVEROS_FD_BOSS"],
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
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
		},
		
		PLAY_LINE_INDEX =
		{
			6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 29, 30,
			31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
			59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
			87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112,
			113, 114, 115, 116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136,
			137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150,
		},
	},
}