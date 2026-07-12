-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 124, 64 },
			SUB_STAGE1 = { 165, 64, FALSE, FALSE },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 226, 64 },
			SUB_STAGE1 = { 226, 22 },
			SUB_STAGE2 = { 268, 22 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 226, 64 },
			SUB_STAGE1 = { 226, 22 },
			SUB_STAGE2 = { 268, 22 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 330, 22 },
			SUB_STAGE1 = { 372, 64 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 430, 116, TRUE},
		},
	},

	

	STAGE0 =
	{
 		WORLD_ID = WORLD_ID["WI_SANDER_DRY_SANDER_STAGE0"],
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VEGA_TROCK"],	
			NPC_UNIT_ID["NUI_BUGI_TROCK"],
			NPC_UNIT_ID["NUI_STEEL_TROCK"],	
			NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],		
		},
		
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},
			
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			----베가 + 버기--------
			NPC_GROUP0 =
			{
				------------1그룹---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 9, },		
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
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},
				
				----------2그룹-------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 28, },		
				},
				
				
				------3그룹-----------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 31, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 39, },		
				},
			},
			
			NPC_GROUP1 =
			{
				-----------1그룹---------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 12, },		
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
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},
				----------2그룹------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 24, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 26, },		
				},
				
				------3그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 39, },		
				},
			},
			
			NPC_GROUP2 =
			{
				----------1그룹-------------

				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 13, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 15, },		
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
				
				---------2그룹-----------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 27, },		
				},

				-----------3그룹------------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 35, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 37, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 32, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 66 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 34 },
			},
			
			NPC_GROUP_RATE =
			{ 
				NPC_GROUP_RATE0 = { 33, }, 
				NPC_GROUP_RATE1 = { 33, },
				NPC_GROUP_RATE2 = { 34, },
			},
			
			NPC_GROUP0 =
			{
				--------1그룹------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 47, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 47, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 47, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC2 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_BUGI_TROCK"],
						START_POS		= { 47, },
					},
				},
				-----2그룹--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			NPC_GROUP1 =
			{
				-----1그룹---------올 출동
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 47, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 47, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 47, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC2 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_BUGI_TROCK"],
						START_POS		= { 47, },
					},
				},
				
				---------2그룹----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
			},
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 45, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 50, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 47, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 62, },
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
		WORLD_ID = WORLD_ID["WI_SANDER_DRY_SANDER_STAGE1_1"],
		
		READY_NPC =
		{
			
			NPC_UNIT_ID["NUI_VEGA_TROCK"],	
			NPC_UNIT_ID["NUI_BUGI_TROCK"],	
			NPC_UNIT_ID["NUI_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],	
			
			NPC_UNIT_ID["NUI_BOMB_TROCK"],	
			NPC_UNIT_ID["NUI_TROCK_DOG"],
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],	
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],		
			NPC_UNIT_ID["NUI_STRONG_STEEL_TROCK"],	
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
					LINE_INDEX	= 6,
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 2, },		
				},
				
				-----1전투지------	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 6, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 9, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 15, },		
				},
				
				----------위쪽------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 18, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 20, },		
				},
				---------2그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 27, },		
				},	

				----3그룹------------
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					-- START_POS	= { 31, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					-- START_POS	= { 36, },		
				-- },
			},

			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 20, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 27, },		
				},	
				
				--------2그룹-----------
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					-- START_POS	= { 31, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					-- START_POS	= { 36, },		
				-- },			
			},
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 3, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 10, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 11, },		
				},	
				
				----위쪽  그룹---------

				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 19, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 20, },		
				},
				------2그룹--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 25, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 27, },		
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_TIME"],
				
				CLEAR_TIME = 5,
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 35,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE
				},
			},

			NPC_GROUP =
			{	
				{
					NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
					START_POS		= { 48, },
					ACTIVE			= FALSE,               
					GAGE_BAR		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 40, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 39, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 44, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,					
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 38, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 43, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 35,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
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
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 54, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 83, },		
				},
				
				------------위쪽 계단
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 76, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 78, },		
				},	
				------------중보--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STRONG_STEEL_TROCK"],
					START_POS	= { 94, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},		
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 91, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 102, },		
				},	
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 110, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},	
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 52, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 53, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 57, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 58, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 82, },		
				},
				
				-------------위쪽 라인맵-----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 65, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 69, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 76, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 78, },		
				},
				
				------------중보--------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK_BUTRUE"],
					START_POS	= { 94, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},		
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 91, },		
				},	
	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 102, },		
				},	
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 64, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 110, },
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
		WORLD_ID = WORLD_ID["WI_SANDER_DRY_SANDER_STAGE1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VEGA_TROCK"],	
			NPC_UNIT_ID["NUI_BUGI_TROCK"],	
			NPC_UNIT_ID["NUI_STEEL_TROCK"],
			NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],	
			NPC_UNIT_ID["NUI_BOMB_TROCK"],	
			NPC_UNIT_ID["NUI_TROCK_DOG"],
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],	
			NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],		
			NPC_UNIT_ID["NUI_TROCK_DOG_TOGI"],				
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
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
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 3, },		
				},	
				
				-----1전투지------	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 6, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 9, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 15, },		
				},
				
				----------위쪽------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 18, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 20, },		
				},
				---------2그룹-------------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 27, },		
				},	

				----3그룹------------
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					-- START_POS	= { 31, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					-- START_POS	= { 36, },		
				-- },
			},

			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 14, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 27, },		
				},	
				
				--------2그룹-----------
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					-- START_POS	= { 31, },		
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					-- START_POS	= { 36, },		
				-- },			
			},
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 3, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 14, },		
				},		
				
				----위쪽  그룹---------

				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 19, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 20, },		
				},
				------2그룹--------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 29, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 25, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 27, },		
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_TIME"],
				
				CLEAR_TIME = 5,
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 35,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE
				},
			},

			NPC_GROUP =
			{	
				{
					NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
					START_POS		= { 48, },
					ACTIVE			= FALSE,               
					GAGE_BAR		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 40, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 39, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 41, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,					
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 42, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RED_ANGLER_DP"],
					START_POS	= { 39, },	
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,	
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 35,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 52, },		
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
					START_POS	= { 55, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 57, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 83, },		
				},
				
				-------------위쪽 라인맵-----------
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 62, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 67, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 76, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 78, },		
				},
				
				------------중보--------------
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_TOGI"],
					START_POS	= { 94, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},					
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 91, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 97, },		
				},				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 101, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 107, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 103, },		
				},
				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 106, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 106, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_GATE"],
					START_POS	= { 110, },
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

	
	
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_DRY_SANDER_STAGE2"],		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_VEGA_TROCK"],	
			NPC_UNIT_ID["NUI_BUGI_TROCK"],
			NPC_UNIT_ID["NUI_STEEL_TROCK"],	
			NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100 },
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
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 5, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 14, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEEL_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 20, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 20, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 20, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			NPC_GROUP1 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 2, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 5, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"],
					START_POS	= { 14, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOMB_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BUGI_TROCK"],
					START_POS	= { 20, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 20, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 20, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
				},
			},
			
			
			
			NPC_GROUP2 =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 1, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 3, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 4, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 5, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 11, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 14, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STONE_AXE_TROCK"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_VEGA_TROCK"],
					START_POS	= { 20, },		
				},
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 60,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 20, },
						ACTIVE		= FALSE,               
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE	= 40,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 20, },
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0 =
   			{
    				CLEAR_CONDITION["CC_PORTAL_AFTER_KILL_ALL_ACTIVE_NPC"],
					DELAY_TIME_CLEAR_SUB_STAGE = 2.0,
    				PORTAL_LINE_INDEX =
    				{  29, },
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
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
	
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_SANDER_DRY_SANDER_B0SS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_ANUDRAN"],
			NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_KARIS"],
			NPC_UNIT_ID["NUI_WALDO_TROCK"],
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
					NPC_UNIT_ID["NUI_WALDO_TROCK"],
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WALDO_TROCK"],
					START_POS	= { 1, },	
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					--FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 35,
					SHOW_BOSS_NAME_DELAY_TIME = 16,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_ANUDRAN"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_KARIS"],
					START_POS	= { 1, },
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

}