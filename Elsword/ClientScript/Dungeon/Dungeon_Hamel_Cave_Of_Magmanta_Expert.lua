-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 45 },
			SUB_STAGE1 = { 41, 65 },
			SUB_STAGE2 = { 82, 65 },
		},
		
		STAGE1 =
		{
			SUB_STAGE0 = { 144, 75 },
			SUB_STAGE1 = { 144, 116 },	
		},
		
		
		STAGE2 =
		{
			SUB_STAGE0 = { 205, 116 },
			SUB_STAGE1 = { 246, 116 },
			SUB_STAGE2 = { 267, 157 },		
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 329, 177 },
			SUB_STAGE1 = { 370, 177 },	
		},
		
		STAGE4 =
		{
			SUB_STAGE0 = { 432, 177, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE1"],
		
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
			
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
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 15, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 25, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 29, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				}, 
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 26, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- },
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 35, },		
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 36, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- }, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 42, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 30, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 15,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 32,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},
			
			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 62, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 71, },		
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 70, },
					-- ADD_POS_Y   = 30,
					-- ACTIVE		= FALSE,
					-- GAGE_BAR	= FALSE,
					-- --NO_DROP     = TRUE,
				-- }, 
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 72, },
					ADD_POS_Y   = 30,
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 80, },
					-- ADD_POS_Y   = 30,
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- --NO_DROP     = TRUE,
				-- }, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 79, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 81, },		
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},	
			},
			
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			
			
			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 84, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 86, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 95, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 88, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 91, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 98, },		
				},
				
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 97, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
					START_POS	= {104, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE2"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],			
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
					LINE_INDEX	= 18,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 9, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 26, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 29, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 30, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 32, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 22, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 42, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 38, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 15, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 19, },		
				},
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 17, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 47, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 50, },		
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
					NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},
			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 56, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 61, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 59, },		
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 63, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- },
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 68, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 71, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 67, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 69, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 72, },		
				},	
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 76, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
					START_POS	= { 84, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE3_1"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"],
			NPC_UNIT_ID["NUI_HAGALAZ"],
			NPC_UNIT_ID["NUI_GOCHI_A"],
			NPC_UNIT_ID["NUI_GOCHI_B"],
			NPC_UNIT_ID["NUI_MANTA_RAI"],
			NPC_UNIT_ID["NUI_MANTA_RES"],
			NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
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
					LINE_INDEX	= 6,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 4, },		
				},
				
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 8, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- }, 
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 12, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- }, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 22, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 23, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 15, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 10, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 12, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 8, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 29, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 35, },	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 32, },	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 25, },	
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 6,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},	
				{
					LINE_INDEX	= 27,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},	
			},
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 42, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 42, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 48, },	
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 54, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 59, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 57, },	
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 62, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 64, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 67, },	
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
			
			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 27,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},	
			},
			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},
			
			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					DROP_TIMES	= 8,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					DROP_TIMES	= 8,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 96, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 98, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 99, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 78, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 79, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 83, 84, 88, 89, 81, },	
					RATE 		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 83, 84, 88, 89, 81, },	
					RATE 		= 80,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= { 78, 75, 87, 82, },
					RATE 		= 80,		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= { 73, 87, 77, 86, },	
					RATE 		= 80,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 87, },		
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					START_POS	= { 81, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"],
					START_POS	= { 93, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE4"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_HAGALAZ"],
			NPC_UNIT_ID["NUI_GOCHI_A"],
			NPC_UNIT_ID["NUI_GOCHI_B"],
			NPC_UNIT_ID["NUI_MANTA_RAI"],
			NPC_UNIT_ID["NUI_MANTA_RES"],
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],
			
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
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					DROP_TIMES	= 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					DROP_TIMES	= 4,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 27, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 6, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- },
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 26, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"],
					START_POS	= { 35, },
					SHOW_BOSS_NAME	= TRUE,
					--HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 2,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_WALKER"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 7, },		
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					START_POS	= { 40, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 43, },		
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 33, },
					-- ACTIVE		= FALSE,
					-- ---GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- }, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 26, },		
				},
				-- {  
					-- NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					-- START_POS	= { 36, },
					-- ACTIVE		= FALSE,
					-- --GAGE_BAR	= FALSE,
					-- ADD_POS_Y   = 30,
					-- --NO_DROP     = TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= { 23, 24, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= { 16, 11, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 26, 13, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 4, 7, },	
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
    				{  18, },
					
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
   			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			CREATED_NPC_DROP_TIMES =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					DROP_TIMES	= 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					DROP_TIMES	= 4,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 45, 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_A"],
					START_POS	= { 55, 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= {  51, 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOCHI_B"],
					START_POS	= { 52,  65, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 60, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					START_POS	= { 58, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RAI"],
					START_POS	= { 65, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANTA_RES"],
					START_POS	= { 56, },		
				},
				
				
				
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_BLACK_FLOWER_FRONT"],
					START_POS	= { 64, },
					ACTIVE		= FALSE,
					--GAGE_BAR	= FALSE,
					ADD_POS_Y   = 30,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 76, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2200,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 77, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2400,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 78, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2300,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 80, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2000,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 81, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2100,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 82, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2200,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 88, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2100,
					--NO_DROP     = TRUE,
				},
				{  
					NPC_ID		= NPC_UNIT_ID["NUI_ICE_ROCK"],
					START_POS	= { 78, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					ADD_POS_Y   = 2200,
					--NO_DROP     = TRUE,
				},
				
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_MAGMANTA"],
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
					NPC_UNIT_ID["NUI_MAGMANTA"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MAGMANTA"],
					START_POS	= { 4, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 23,
				},

			},

			TRIGGER_LIST =
			{		
			},
		},
	},

}
