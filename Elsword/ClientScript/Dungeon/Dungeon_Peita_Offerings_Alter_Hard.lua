-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{

    DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 82, 41 },
			SUB_STAGE1 = { 41, 82 },
			SUB_STAGE2 = { 0, 123 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 0, 287 },
			SUB_STAGE1 = { 41, 328 },
			SUB_STAGE2 = { 82, 369 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 246, 369 },
			SUB_STAGE1 = { 287, 328 },
			SUB_STAGE2 = { 328, 287 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 328, 205 },
			SUB_STAGE1 = { 287, 205 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 164, 205 , TRUE },
		},

	},
	
 	-- Novice 던전 스테이지 1 (NORMAL)

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
			NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"],
			NPC_UNIT_ID["NUI_CHEST"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 38, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 43, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 53, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 70, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 83, },
					IS_RIGHT	= TRUE,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 59, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 68, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 55, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 80, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 77, },
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 32,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 99, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 93, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 115, },
					--SIEGE_MODE		= TRUE,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 109, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 122, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 132, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 128, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
					START_POS	= { 133, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,
					--ADD_POS_Y	= 120.898,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"],
					START_POS	= { 133, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,
					--ADD_POS_Y	= 120.898,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},	
		

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_JUBIGEE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 32,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 8, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 21, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 30, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 4, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 15, 31, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 38 },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 31, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 40, },
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 32,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 23,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 64, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 68, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 69, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 85, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 74, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 79, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 84, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 87, },
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 23,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 27,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 118, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 94, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 103, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 104, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 109, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 121, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 100, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 99, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
					START_POS	= { 109, },
					SHOW_SUB_BOSS_NAME	= TRUE,
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 2,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
					START_POS	= { 122, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,
					--ADD_POS_Y	= 120.898,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"],
					START_POS	= { 122, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,
					--ADD_POS_Y	= 120.898,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_JUBIGEE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 15, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 28, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 23, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 9, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 10, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 2, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 38,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 54, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 61, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 62, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE"],
					START_POS	= { 59, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"],
					START_POS	= { 43, },
					ADD_POS_Y   	= 1480,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 36,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 74, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 135, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 97, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 78, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_ELITE"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 96, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
					START_POS	= { 82, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"],
					START_POS	= { 92, },					
					SHOW_SUB_BOSS_NAME	= TRUE,
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					MONSTER_GRADE	= 2,
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,	
					--ADD_POS_Y	= 363.898,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"],
					START_POS	= { 91, },
					ACTIVE		= FALSE,
					NO_DROP		= FALSE,
					GAGE_BAR	= FALSE,
					--ADD_POS_Y	= 363.898,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
			NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 31,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GARGOYLE_STONE"],
					START_POS	= { 50, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 45, },
				},
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 36, },
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER_ELITE"],
					START_POS	= { 16, },
				},	
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 32, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},	
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 46, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
				},	
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 15, },
					SIEGE_MODE		= TRUE,
					ADD_POS_Y   = 2000,
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
    				{
      				27, 
      				},    
    				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
   			}, 

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 32,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 53, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},				

	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_PD_MONSTER_B"],
			NPC_UNIT_ID["NUI_SUMMON_BOSS_A"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_ELITE"],
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
					NPC_UNIT_ID["NUI_SUMMON_BOSS_A"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SUMMON_BOSS_A"],
					START_POS	= { 1, },
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					HAVE_BOSS_GAGE		= TRUE,
					SHOW_BOSS_NAME		= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 11,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_PD_MONSTER_B"],
					START_POS	= { 6, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					NO_DROP		= TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
}
