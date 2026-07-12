-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 200, -2 },
			SUB_STAGE1 = { 158, 42 },
			SUB_STAGE2 = { 158, 84 },
		},
		
		STAGE1 =
		{
			SUB_STAGE0 = { 158, 162 },
			SUB_STAGE1 = { 200, 186 },
		},
		
		STAGE2 =
		{
			SUB_STAGE0 = { 292, 186 },
			SUB_STAGE1 = { 334, 162 },
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 334, 100, TRUE },
		},

	},

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE0"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
			NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BUGI_TROG"],
			NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
			NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				--입구 부분 3마리---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 5, },		
				},
				
				--------첫번째 발판 부분-----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 23, },		
				},
								
				---2번 발판 구간---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 46, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				----3번째 발판 구간----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 67, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 91, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 94, },		
				},

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 87, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 75, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 78, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				--------마지막 발판 그룹-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 115, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 118, },		
				},
				
			},
			
			NPC_GROUP1 =
			{
				--입구 부분 3마리---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 5, },		
				},
				
				--------첫번째 발판 부분-----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 23, },		
				},
								
				---2번 발판 구간---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 46, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				----3번째 발판 구간----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 67, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 91, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 94, },		
				},

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 87, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 75, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 78, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				--------마지막 발판 그룹-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 115, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 118, },		
				},
			},
			
			NPC_GROUP2 =
			{
				--입구 부분 3마리---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 5, },		
				},
				
				--------첫번째 발판 부분-----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 23, },		
				},
								
				---2번 발판 구간---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 46, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 58, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				----3번째 발판 구간----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 67, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 91, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 94, },		
				},

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 87, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 75, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 78, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 74, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				--------마지막 발판 그룹-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 103, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 115, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 118, },		
				},
			},
			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = 3,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
					
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 73,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 124, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 132, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 129, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 208, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 204, },		
				},
				
				
				
				---------두번째 발판 그룹-------------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 140, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 137, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 144, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 194, },		
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 187, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 182, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 154, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 152, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 149, },		
				},
				
				------세번째 발판 그룹-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 156, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 160, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 176, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 172, },		
				},
				--------마지막 발판 없는 지역---------
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 124, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 132, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 129, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 208, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 204, },		
				},
				
				
				
				---------두번째 발판 그룹-------------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 140, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 137, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 144, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 194, },		
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 187, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 182, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 154, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 152, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 149, },		
				},
				
				------세번째 발판 그룹-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 156, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 160, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 176, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 172, },		
				},
				--------마지막 발판 없는 지역---------
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 124, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 132, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 129, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 208, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 204, },		
				},
				---------두번째 발판 그룹-------------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 140, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 137, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 144, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 194, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 187, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 150, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 182, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 154, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 152, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 149, },		
				},
				
				------세번째 발판 그룹-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 156, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 160, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 176, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 172, },		
				},
				--------마지막 발판 없는 지역---------
			},
			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 73,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"],
					START_POS	= { 232, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			TRIGGER_LIST =
			{
			},
		},	
	},
		
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
			NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BUGI_TROG"],
			NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
			NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{		
				--------아래쪽 발판-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 12, },		
				},
				
				--------위쪽 발판--------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 30, },		
				},
				
				---------두번째 발판 건너서------------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 54, },		
				},
				
				--------위쪽---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 45, },		
				},
			},
			
			NPC_GROUP1 =
			{		
				--------아래쪽 발판-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 12, },		
				},
				
				--------위쪽 발판--------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 30, },		
				},
				
				---------두번째 발판 건너서------------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 54, },		
				},
				
				--------위쪽---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 45, },		
				},
			},
			
			NPC_GROUP2 =
			{		
				--------아래쪽 발판-------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 13, },		
				},
				
				--------위쪽 발판--------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 16, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 30, },		
				},
				
				---------두번째 발판 건너서------------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 49, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 54, },		
				},
				
				--------위쪽---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 46, },		
				},
			},
			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 50, }, 
				NPC_GROUP_RATE1 = { 50, },
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 61, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 65, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"],
					START_POS	= { 75, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 61, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 67, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"],
					START_POS	= { 75, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},				
			TRIGGER_LIST =
			{
			},
		},
	},	
	

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE2_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
			NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
			NPC_UNIT_ID["NUI_RASH_BUGI_TROG"],
			NPC_UNIT_ID["NUI_TROCK_RASH_DOG"],
			NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},

			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 8, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 10, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 8, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 10, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 8, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 10, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 14, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE1 =
		{
			START_LINE_SET      = 1,
			MAIN_LINE_SET       = 2,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CLEAR_COND0 =
   			{
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{  3, },
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
   			},
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_RASH_VEGA_TROCK_SUMMON"],
					DROP_TIMES = 50,
				},
				{
					NPC_ID = NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK_SUMMON"],
					DROP_TIMES = 50,
				},
				{
					NPC_ID = NPC_UNIT_ID["NUI_RASH_BOMB_TROCK_SUMMON"],
					DROP_TIMES = 50,
				},
				{
					NPC_ID = NPC_UNIT_ID["NUI_RASH_BUGI_TROG_SUMMON"],
					DROP_TIMES = 50,
				},
				{
					NPC_ID = NPC_UNIT_ID["NUI_TROCK_RASH_DOG_SUMMON"],
					DROP_TIMES = 50,
				},
				{
					NPC_ID = NPC_UNIT_ID["NUI_RASH_STEEL_TROCK_SUMMON"],
					DROP_TIMES = 50,
				},
			},
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE1"],
					START_POS	= { 34, },		             
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE2"],
					START_POS	= { 33, },	             
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE3"],
					START_POS	= { 32, },              
					GAGE_BAR	= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE4"],
					START_POS	= { 31, },	             
					GAGE_BAR	= FALSE,		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 24, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 21, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 18, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_VEGA_TROCK"],
					START_POS	= { 29, },		
				},			
			},	
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE5"],
					START_POS	= { 34, },		             
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE2"],
					START_POS	= { 33, },	             
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE2"],
					START_POS	= { 32, },              
					GAGE_BAR	= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE5"],
					START_POS	= { 31, },	             
					GAGE_BAR	= FALSE,		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 24, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 21, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 18, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BOMB_TROCK"],
					START_POS	= { 29, },		
				},			
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE3"],
					START_POS	= { 34, },		             
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE1"],
					START_POS	= { 33, },	             
					GAGE_BAR	= FALSE,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE3"],
					START_POS	= { 32, },              
					GAGE_BAR	= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE1"],
					START_POS	= { 31, },	             
					GAGE_BAR	= FALSE,		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_BUGI_TROCK"],
					START_POS	= { 24, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STEEL_TROCK"],
					START_POS	= { 21, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 18, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK"],
					START_POS	= { 29, },		
				},			
			},
			
			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_DEN_OF_TROCK_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHIEF_OF_TROCKTA"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CHIEF_OF_TROCKTA"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHIEF_OF_TROCKTA"],
					START_POS	= { 3, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 35,
				},
			},
			TRIGGER_LIST =
			{
			},
		},
	},

}