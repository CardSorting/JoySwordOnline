-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



STAGE_LIST =
{
	 DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 50, 	0 },
			SUB_STAGE1 = { 110, 	0 },
			SUB_STAGE2 = { 170, 0 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 110, 	60 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 70, 120 },
			SUB_STAGE1 = { 130, 120 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 110, 	180 },
		},
		
		STAGE4 =
		{
			SUB_STAGE0 = { 230, 180 , TRUE },
		},
	},


	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE1"],
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
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
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
					LINE_INDEX	= 15,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
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

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 14,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 23,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},

			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 79, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 83, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 91, },
				},

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
					NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 22,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},

			},

			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 96, },
					ADD_POS_Y   = 2000,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
					START_POS	= { 99, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
					START_POS	= { 99, },
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
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE2"],

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
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{

			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 68, },
					ADD_POS_Y   = 1600,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 49, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 29, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 63, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},



				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
					START_POS	= { 51, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
					START_POS	= { 51, },
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

             --]]

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE3"],

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
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
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

				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100 },
			},


			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
			          --제 1구역
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 18, },
					--ADD_POS_Y   = 1600,
					--SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 8, },
				},



				   --제 2구역
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 49,54, },
					ADD_POS_Y   = 1600,
					SIEGE_MODE       = TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 56, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 50, },
				},

				-- 제 3구역

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 69, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 66, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 74, },
				},
								{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 64, },
				},

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
					NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
			      -- 제 4구역
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE_POST"],
					START_POS	= { 89, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
					START_POS	= { 89, },
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
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE4"],

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
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_BOSS_GATE_POST"],
			NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID	 =
				{
					NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},

			CURTAIN_GROUP =
			{

			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 17, 7, },
					ADD_POS_Y   = 1600,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 31, },
					ADD_POS_Y   = 1600,
					SIEGE_MODE       = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN"],
					START_POS	= { 46, },
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},



				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_BOSS_GATE_POST"],
					START_POS	= { 45, },
					GAGE_BAR    = FALSE,
					ACTIVE      = FALSE,
					NO_DROP     = TRUE,
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_SPIRAL_CORRIDOR_GATE"],
					START_POS	= { 45, },
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


	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],

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
			NPC_UNIT_ID["NUI_GOLEM_BOSS"],

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
					NPC_UNIT_ID["NUI_GOLEM_BOSS"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100 },
			},

			NPC_GROUP =
			{

				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_BOSS"],
					START_POS	= { 1, },
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					HAVE_BOSS_GAGE		= TRUE,
					SHOW_BOSS_NAME		= TRUE,
					IS_RIGHT            = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 5,
					
				},

			},

			TRIGGER_LIST =
			{
			},
		},

	},

}
