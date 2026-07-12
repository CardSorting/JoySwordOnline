-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 118, 67 },
			SUB_STAGE1 = { 159, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 229, 67 },
			SUB_STAGE1 = { 270, 67 },
		},
		
		STAGE2 =
		{
       		SUB_STAGE0 = { 332, 67 },
		},
		
		STAGE3 =
		{
       		SUB_STAGE0 = { 394, 67, TRUE},
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_STAGE1"],
		START_MOTION = TRUE,
		
		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_CHICKEN"],
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 1, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 2, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 11, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 13, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
					START_POS	= { 15, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHICKEN"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
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
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 23, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 24, },	
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 34, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 35, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 36, },	
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 29, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 43, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
					START_POS	= { 47, },	
				},
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 40, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 49, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
					START_POS	= { 54, },
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


	

	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_CHICKEN"],
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
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
					LINE_INDEX	= 1,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 6, },
					IS_RIGHT	= FALSE,				
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 7, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 11, },	
					IS_RIGHT	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 16, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 20, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 22, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 24, },	
					IS_RIGHT	= FALSE,
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
					NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
				
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 28, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 30, },	
					IS_RIGHT	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 33, },	
					IS_RIGHT	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 36, },	
					IS_RIGHT	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 40, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 45, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 48, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 52, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 46, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
					START_POS	= { 58, },
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

	
	
	
	
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_STAGE3_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],
			NPC_UNIT_ID["NUI_CHICKEN"],
			NPC_UNIT_ID["NUI_FAIRY_GUARDIAN"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_MONKEY_KING"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 4, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 6, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 8, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_TOTO"],
					START_POS	= { 11, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 13, },	
					IS_RIGHT	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_KING"],
					START_POS	= { 17, },
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_RUBEN_SWAMP_GATE"],
					START_POS	= { 21, },
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
	

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
			NPC_UNIT_ID["NUI_TREE_KNIGHT"],

		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{ 
					NPC_UNIT_ID["NUI_ANCIENT_PPORU"],	
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ANCIENT_PPORU"],
					START_POS	= { 9, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 20, },	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TREE_KNIGHT"],
					START_POS	= { 5, },	
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 17, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				
			},

			TRIGGER_LIST =
			{
			},
		},
	},
}