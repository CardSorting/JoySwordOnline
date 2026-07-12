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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_GREAT_FD"],
		RATE						= 25,
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
			10, 11, 12, 13, 14,
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_GREAT_FD"],
		RATE						= 25,
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
			10, 11, 12, 13, 14,
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_DARK_ELF_FD"],
		RATE						= 25,
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
			10, 11, 12, 13, 14,
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_THIEF_GREAT_FD"],
		RATE						= 25,
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
			10, 11, 12, 13, 14,
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
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
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_HAMMER_GREAT_FD"],
		RATE						= 25,
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
			14, 15, 16, 17, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_LANCE_GREAT_FD"],
		RATE						= 25,
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
			14, 15, 16, 17, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_DARK_ELF_FD"],
		RATE						= 25,
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
			14, 15, 16, 17, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
	{
		MONSTER_ID					= NPC_UNIT_ID["NUI_LOW_GLITER_THIEF_GREAT_FD"],
		RATE						= 25,
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
			14, 15, 16, 17, 
		},
		
		PLAY_LINE_INDEX =
		{
			3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
			24, 25, 26, 30, 31, 32, 
			27, 29,
		},
	},
}