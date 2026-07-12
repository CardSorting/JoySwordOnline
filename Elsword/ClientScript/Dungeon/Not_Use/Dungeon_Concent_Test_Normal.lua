-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


STAGE_LIST =
{
	STAGE0 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE1 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE2 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE3 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE4 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE5 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 1, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 3, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 2, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 7, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 8, },
					LEVEL		= 12,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
		STAGE6 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 7, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 1, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 3, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 2, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 7, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 8, },
					LEVEL		= 12,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE7 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 8, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 1, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 3, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 2, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 7, },
					LEVEL		= 10,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 8, },
					LEVEL		= 10,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE8 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 9, 0, 120, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 1, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 3, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 2, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 7, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_SMALL"],
					START_POS	= { 8, },
					LEVEL		= 12,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE9 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 10, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
					START_POS	= { 1, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 2, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 7, },
					LEVEL		= 12,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 8, },
					LEVEL		= 12,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE10 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 11, 0, 140, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_WILLIAM_HARD"],
					START_POS	= { 1, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 3, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 2, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 7, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM"],
					START_POS	= { 8, },
					LEVEL		= 14,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE11 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 12, 0, 140, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 1, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 3, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 2, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 7, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 8, },
					LEVEL		= 14,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE12 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 13, 0, 140, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 1, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 3, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 2, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 7, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 8, },
					LEVEL		= 14,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE13 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 14, 0, 140, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 1, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 3, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 2, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 7, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_HORN"],
					START_POS	= { 8, },
					LEVEL		= 14,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE14 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 15, 0, 140, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 1, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 3, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 2, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 7, },
					LEVEL		= 14,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS	= { 8, },
					LEVEL		= 14,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE15 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 16, 0, 100, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_C"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
		STAGE16 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 17, 0, 160, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_EXPERT"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_EXPERT"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_EXPERT"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE17 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 18, 0, 160, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_B"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_B"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_B"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE18 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 19, 0, 160, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
			STAGE19 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 20, 0, 160, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BAT_A"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	
		STAGE20 =
	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
   		},

		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 160, },
			},



			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 1, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 3, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 2, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 7, },
					LEVEL		= 16,

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT_RED"],
					START_POS	= { 8, },
					LEVEL		= 16,

				},

			},
			TRIGGER_LIST =
			{

			},
		},
	},
	----------------------------------- 20 층 ---------------------------------------
	
}
