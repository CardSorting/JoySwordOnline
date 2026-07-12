-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 160, 200 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 222, 160 },
			SUB_STAGE1 = { 182, 110 },
			SUB_STAGE2 = { 247, 70 },
			SUB_STAGE3 = { 327, 30 },
			SUB_STAGE4 = { 327, -12 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 327, -74, TRUE },
		},
		
	},

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE0"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SAND_SEAL"],
			NPC_UNIT_ID["NUI_RED_ANGLER"],
			NPC_UNIT_ID["NUI_WING_HARPY"],
			NPC_UNIT_ID["NUI_GIANT_HARPY"],
			NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
			NPC_UNIT_ID["NUI_VEGA_TROCK"],
			NPC_UNIT_ID["NUI_TROCK_DOG"],
			NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
			NPC_UNIT_ID["NUI_BUGI_TROCK"],
			NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_BABY_HARPY"],
					DROP_TIMES = 4,
				},
			},
			
			NPC_GROUP0 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 9, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 16, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER"],
					START_POS	= { 24, },		
				},
				
				--------뒤족 하피 그룹---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 37, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 38, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 9, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 17, },		
				},

				-----가운데-----
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 24, },		
				},
				--------절벽------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 37, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
					START_POS	= { 40, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},	
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 5, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 17, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 23, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SAND_SEAL"],
					START_POS	= { 37, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 17, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
					START_POS	= { 40, },
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
		WORLD_ID = WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE1_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VEGA_TROCK"],	
			NPC_UNIT_ID["NUI_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_BUGI_TROCK"],
			NPC_UNIT_ID["NUI_WING_HARPY"],
			NPC_UNIT_ID["NUI_GIANT_HARPY"],
			NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"],
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
					LINE_INDEX	= 17,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_BABY_HARPY"],
					DROP_TIMES = 4,
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
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 6, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 11, },		
				},	
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 16, },		
				},
				
				
				------------번 지 다음 라인맵-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 37, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 41, },		
				},
				
				
				----위쪽-----
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 34, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 34, },		
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 1, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 4, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 9, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 11, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 15, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},	
				
				
				----------다음 지역--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 23, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 41, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 35, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 41, },		
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 1, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 4, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 9, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 11, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 15, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},	
				
				
				----------다음 지역--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 19, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 23, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 41, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 35, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 28, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 40, },		
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_BABY_HARPY"],
					DROP_TIMES = 4,
				},
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 17,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 29,
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 47, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 64, },		
				},
				-------2층 부분---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 60, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 49, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 47, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 64, },		
				},
				-------2층 부분---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 60, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 49, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},	
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 46, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 47, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 64, },		
				},
				-------2층 부분---------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 57, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 55, },		
				},
				-------새 무리-----------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 49, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 59, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 3, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 29,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 52,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_BABY_HARPY"],
					DROP_TIMES = 4,
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
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 90, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 93, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 72, },		
				},

				----------위쪽 하피 그룹----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 88, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 82, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 85, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 86, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 92, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 90, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 93, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 72, },		
				},

				----------위쪽 하피 그룹----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 88, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 82, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 85, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 86, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 92, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 68, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 90, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 93, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 72, },		
				},

				----------위쪽 하피 그룹----------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 88, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 82, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 85, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 86, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 92, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 86, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = 7,

			GO_TYPE             = GO_TYPE["GT_LEFT"],
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 4, 100 },
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID = NPC_UNIT_ID["NUI_BABY_HARPY"],
					DROP_TIMES = 4,
				},
			},
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 52,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 84,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 95, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 97, },		
				},
				---------트락--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 102, },		
				},
				---------새--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 102, },		
				},
				-------트락----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 105, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 109, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 110, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 112, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 114, },		
				},
				-----------새-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 117, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 118, },		
				},
				
				-------트락---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 119, },		
				},
				
				---------위쪽 보스 가기전------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 120, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 121, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 122, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 124, },		
				},
			},
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 95, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 97, },		
				},
				---------트락--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 102, },		
				},
				---------새--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 102, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 103, },		
				},
				-------트락----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 105, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 109, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 110, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 112, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BABY_HARPY"],
					START_POS	= { 114, },		
				},
				-----------새-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 117, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 119, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 118, },		
				},
				
				-------트락---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 119, },		
				},
				
				---------위쪽 보스 가기전------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 120, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 121, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 122, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 124, },		
				},
			},
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 95, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 97, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 97, },		
				},
				---------트락--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 102, },		
				},
				---------새--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 100, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 101, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_HARPY"],
					START_POS	= { 102, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 103, },		
				},
				-------트락----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 105, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 109, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 110, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 112, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 114, },		
				},
				-----------새-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 117, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 119, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 118, },		
				},
				
				-------트락---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 116, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 118, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 119, },		
				},
				
				---------위쪽 보스 가기전------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 120, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 121, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WING_HARPY"],
					START_POS	= { 122, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHAMAN_HARPY"],
					START_POS	= { 124, },		
				},
			},			
			TRIGGER_LIST =
			{
			},
		},
		
		SUB_STAGE4 =
		{
			START_LINE_SET      = 7,
			MAIN_LINE_SET       = 8,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			-- CLEAR_COND0 =
			-- {
				-- CLEAR_CONDITION["CC_TIME"],
				
				-- CLEAR_TIME = 6,
				
				-- NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			-- },
			
			CLEAR_COND0 =
   			{
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{  86, },
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 84,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_GARPAI_ROCK_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_KELAINO_HARPY"],
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
					NPC_UNIT_ID["NUI_KELAINO_HARPY"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KELAINO_HARPY"],
					START_POS	= { 2, },
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