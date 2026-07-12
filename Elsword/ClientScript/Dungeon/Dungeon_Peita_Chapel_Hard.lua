-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{
	DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 0, 20 },
			SUB_STAGE1 = { 41, 20 },
			SUB_STAGE2 = { 82, 20 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 182, 20 },
			SUB_STAGE1 = { 223, 20 },
			SUB_STAGE2 = { 264, 20 },
			SUB_STAGE3 = { 305, 20 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 202, 80 },
			SUB_STAGE1 = { 243, 80 },
			SUB_STAGE2 = { 284, 80 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 405, 20 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 465, 20 , TRUE },
		},
		
	},
	
	-- Novice 던전 스테이지 1 (NORMAL)

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_SHIELD"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
		},
	   --
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
					LINE_INDEX	= 3,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 9, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
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
					LINE_INDEX	= 3,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 53, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					-- START_POS	= { 40, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 49, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					-- START_POS	= { 50, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 56, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 1 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			CLEAR_COND1 =
			{
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"],
				NPC_KEYCODE = { 2 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 10,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
					START_POS	= { 86, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
					START_POS	= { 87, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
					KEY_CODE	= 2,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE2_1"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
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
					LINE_INDEX	= 92,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 4, 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 40, },
					RATE		= 25,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
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
					LINE_INDEX	= 92,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 95,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= {	43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= {	49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= {	63, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= {	53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= {	56, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = 5,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 3, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 95,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 51,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 78, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 73, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 108, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 91, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 86, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 98, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 101, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
		SUB_STAGE3 =
		{
			START_LINE_SET      = 5,
			MAIN_LINE_SET       = 6,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 50,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 133, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 138, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 173, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 125, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 175, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 154, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 159, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 142, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 144, },
				},				
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
					START_POS	= { 165, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
	},
	
	--[[ STAGE 3 ]]--
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE3"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
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
					LINE_INDEX	= 27,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 4, 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 14, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					-- START_POS	= { 35, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 33, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
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
					LINE_INDEX	= 26,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 51,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 51, 55, },
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 73, },
					RATE		= 50,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 60, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					-- START_POS	= { 70, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 72, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 76, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 88, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 83, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
		SUB_STAGE2 =
		{
			START_LINE_SET      = 3,
			MAIN_LINE_SET       = 4,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 50,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 117, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
					START_POS	= { 144, },
					RATE		= 50,
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 142, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 107, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 123, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 132, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 122, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_SHIELD"],
					START_POS	= { 105, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 114, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 155, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 138, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE"],
					START_POS	= { 100, },
				},       							
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
					START_POS	= { 164, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
	},
	
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
		},
		--
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MANA_EATER"],
					START_POS	= { 4, 12 },
					RATE		= 80,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_ARCHER"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 17, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
					START_POS	= { 34, },
				},
				
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
					START_POS	= { 41, },
					ACTIVE      = FALSE,
					GAGE_BAR    = FALSE,
					NO_DROP     = TRUE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
	},
	
	STAGE4 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
			NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE"],
			NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"],
			NPC_UNIT_ID["NUI_MANA_EATER"],
			NPC_UNIT_ID["NUI_AMETHYST"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_GATE"],
			NPC_UNIT_ID["NUI_PEITA_CHAPEL_BOSS_GATE"],
		},
		--
		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID=
				{
					NPC_UNIT_ID["NUI_AMETHYST"]
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_AMETHYST"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_NECROMANCER"],
					START_POS	= { 6, },
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		--
	},



}
