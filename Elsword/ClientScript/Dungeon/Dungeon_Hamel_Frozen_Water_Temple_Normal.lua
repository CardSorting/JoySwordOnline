-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 220, 0 },
			SUB_STAGE1 = { 185, 41 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 135, 93 },
			SUB_STAGE1 = { 115, 134 },
			SUB_STAGE2 = { 115, 175 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 177, 185 },
			SUB_STAGE1 = { 218, 205 },
			SUB_STAGE2 = { 259, 185 },				
		},
		
		STAGE3 =
		{
			SUB_STAGE0 = { 321, 185, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE1"],
		
		START_MOTION	= TRUE,
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HAGALAZ"],
			NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
			NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
			NPC_UNIT_ID["NUI_ICE_PILLAR_TRAP"],
			NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_LAGUZ"],
			NPC_UNIT_ID["NUI_IS"],			
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
					LINE_INDEX	= 10,
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
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 12, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 18, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 30, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 33, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 21, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 44, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 45, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 13, },
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
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 50, },
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 61, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 66, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 57, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
					START_POS	= { 74, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE2"],
		
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HAGALAZ"],
			NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
			NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
			NPC_UNIT_ID["NUI_ICE_PILLAR_TRAP"],
			NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_GIANT_LINKER"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
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

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 21, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 6, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 8, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 8, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 26, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LAGUZ"],
					START_POS	= { 27, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 24, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 12, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_IS"],
					START_POS	= { 20, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 17, },		
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
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

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
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TURE
				},
				
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 32, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 34, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 34, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 41, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 43, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 39, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 48, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_LINKER"],
					START_POS	= { 54, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BLOOD_LINKER"],
					START_POS	= { 51, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_LINKER"],
					START_POS	= { 56, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GIANT_LINKER"],
					START_POS	= { 42, },
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME 	= TRUE,					
					MONSTER_GRADE	= 2,	
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
					NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 64, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 62, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 77, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 75, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 70, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 72, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
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
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE3"],
		
		READY_NPC =
		{
			NPC_UNIT_ID["NUI_HAGALAZ"],
			NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
			NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
			NPC_UNIT_ID["NUI_ICE_PILLAR_TRAP"],
			NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
			NPC_UNIT_ID["NUI_BOX_HAMEL"],	
			NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
			NPC_UNIT_ID["NUI_SHADOW_LINKER"],
			NPC_UNIT_ID["NUI_BLOOD_LINKER"],
			NPC_UNIT_ID["NUI_MANA_LINKER"],
			NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
			NPC_UNIT_ID["NUI_GIANT_LINKER"],
			NPC_UNIT_ID["NUI_GIANT_LINKER"],
			
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
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 4, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 10, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG"],
					START_POS	= { 7, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 13, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 17, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_HAMEL"],
					START_POS	= { 19, },		
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 18, },		
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 23, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 29, },		
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
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 12,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 36, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 38, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 36, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 44, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 43, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB"],
					START_POS	= { 44, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 48 },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_CHARGER"],
					START_POS	= { 63, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 59, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 55, },		
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
					NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 12,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 71, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 74, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 75, },		
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 76, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 78, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_SNIPER_SIDE"],
					START_POS	= { 82, },		
				},
				
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 80, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 83, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				}, 
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"],
					START_POS	= { 93, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					--NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"],
					START_POS	= { 99, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SHADOW_FORT_DEFENDER"],
					START_POS	= { 92, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_HAGALAZ"],
					START_POS	= { 92, },		
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"],
					START_POS	= { 106, },
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
		WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_AVALANCHE"],
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
					NPC_UNIT_ID["NUI_AVALANCHE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AVALANCHE"],
					START_POS	= { 1, },
					SHOW_BOSS_NAME	= TRUE,
					HAVE_BOSS_GAGE	= TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,	
					MONSTER_GRADE	= 1,
					KEY_CODE		= 0,
					IS_RIGHT		= TRUE,
					BOSS_GAUGE_HP_LINES = 27,
				},
			},

			TRIGGER_LIST =
			{		
			},
		},
	},

}