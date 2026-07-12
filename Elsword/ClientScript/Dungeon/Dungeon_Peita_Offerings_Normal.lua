-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 67 },
			SUB_STAGE1 = { 41, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 101, 67 },
			SUB_STAGE1 = { 142, 67 },
			SUB_STAGE2 = { 183, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 243, 67 },
			SUB_STAGE1 = { 284, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 344, 67 , TRUE },
		},
	},

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE_POST"],
			NPC_UNIT_ID["NUI_TRAP_COLUMN"],
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
					LINE_INDEX	= 28,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 95, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,

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
					NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 77, },
				},
			--[[	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 53, },
				},--]]
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 62, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 19, },
					ACTIVE      = FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 96, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 97, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE_POST"],
					START_POS	= { 92, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
									},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
					START_POS	= { 92, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
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
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE2"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE_POST"],
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
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 4, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 27, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 145, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
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
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 54, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 56,  },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 79, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 83, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 146, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 147, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
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
					NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
    			{
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{


			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 125, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 107, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 109, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],   -- 시즈모드
					START_POS	= { 140, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 110, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 118, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 143, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],   -- 땅에 서있음
					START_POS	= { 120, },
				},

			    {
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 148, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 149, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE_POST"],
					START_POS	= { 150, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
					START_POS	= { 150, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
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
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE3"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_TRAP_COLUMN"],
			NPC_UNIT_ID["NUI_TRAP_COLUMN_NONE"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
			NPC_UNIT_ID["NUI_PEITA_OFFERINGS_BOSS_GATE_POST"],
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
					LINE_INDEX	= 41,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"], -- 대각선 시즈모드
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"], -- 정면 시즈모드
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 73, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 68, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 48, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},

			    {
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 107, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN_NONE"],
					START_POS	= { 108, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,

					NO_DROP     = TRUE,
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
					NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
    			{
					LINE_INDEX	= 41,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{

			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 79, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 87, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 104, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 92, },
				},


				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"], -- 숨겨진 보물상자!
					START_POS	= { 109, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},


			    {
					NPC_ID		= NPC_UNIT_ID["NUI_TRAP_COLUMN"],
					START_POS	= { 108, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_GATE"],
					START_POS	= { 110, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
				},
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_OFFERINGS_BOSS_GATE_POST"],
					START_POS	= { 110, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
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
		WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_DULLAHAN"],

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
					NPC_UNIT_ID["NUI_DULLAHAN"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_DULLAHAN"],
					START_POS	= { 4, },
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					HAVE_BOSS_GAGE		= TRUE,
					SHOW_BOSS_NAME		= TRUE,
					IS_RIGHT            = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
