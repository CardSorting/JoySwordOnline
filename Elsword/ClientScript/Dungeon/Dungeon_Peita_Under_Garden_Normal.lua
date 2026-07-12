-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST =
{

    DUNGEON_MAP =
	{
		STAGE0 =
		{
			SUB_STAGE0 = { 140, 40 },
			SUB_STAGE1 = { 220, 100 },
			SUB_STAGE2 = { 300, 100 },
			SUB_STAGE3 = { 380, 40 },
			SUB_STAGE4 = { 300, -20 },
			SUB_STAGE5 = { 220, -20 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 220, 40 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 300, 40 , TRUE },
		},

	},
	
 	-- Novice 던전 스테이지 1 (NORMAL)

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE1"],
		START_MOTION = TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
			NPC_UNIT_ID["NUI_PLANT_DROSERA"],
			NPC_UNIT_ID["NUI_JUBIGEE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_B"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD_QUEST"],
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
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 1, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 5, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					-- START_POS	= { 7, },
				-- },
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 16, },
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
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 26, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 28, },
					SIEGE_MODE		= TRUE,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 38, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					-- START_POS	= { 31, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 33, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 3, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 18,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 31,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{                	
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					-- START_POS	= { 50, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_DROSERA"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 54 },
					SIEGE_MODE		= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_DROSERA"],
					START_POS	= { 57, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					-- START_POS	= { 87, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					-- START_POS	= { 89, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					-- START_POS	= { 50, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 65, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 64, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 69 },
					SIEGE_MODE		= TRUE,
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

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 4, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 31,
					AT_START	= TRUE,
                	LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 38,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 92, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 94, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 93 },
					-- -- SIEGE_MODE		= TRUE,
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 87, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					START_POS	= { 88, },
				},			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 97, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 90 },
				-- },
					-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 84 },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_PEITA"],
					START_POS	= { 99, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,
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
			END_LINE_SET        = 9,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 5, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 38,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 46,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_DROSERA"],
					START_POS	= { 117, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_DROSERA"],
					START_POS	= { 111, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 118, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 104, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 113, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 108 },					
					--SIEGE_MODE	= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 118 },					
					-- --SIEGE_MODE	= TRUE,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					-- START_POS	= { 102, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					-- START_POS	= { 110, },
				-- },
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					-- START_POS	= { 111, },
				-- },  				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					-- START_POS	= { 112, },
				-- },
				
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 109 },
					-- -- SIEGE_MODE	= TRUE,
					-- IS_RIGHT	= TRUE,
				-- },
				
			},

			TRIGGER_LIST =
			{
			},
		},
	
		SUB_STAGE5 =
		{
			START_LINE_SET      = 9,
			MAIN_LINE_SET       = 10,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 46,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 135, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					-- START_POS	= { 129, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GLITER_HAMMER"],
					-- START_POS	= { 139, },
				-- }, 				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_DROSERA"],
					START_POS	= { 127, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 129, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 131, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 128 },

				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 132 },
					SIEGE_MODE		= TRUE,
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					-- START_POS	= { 123 },
					-- SIEGE_MODE		= TRUE,
				-- },
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE"],
					START_POS	= { 133, },			
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE_POST"],
					START_POS	= { 133, },			
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE_STEM"],
					START_POS	= { 133, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
		
	},	
		

		
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE2"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
			NPC_UNIT_ID["NUI_PLANT_DROSERA"],
			NPC_UNIT_ID["NUI_JUBIGEE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD_QUEST"],
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
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},


			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_JUBIGEE"],
					START_POS	= { 12, },	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 4, },

					SIEGE_MODE	= TRUE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
					START_POS	= { 15, },	

					SIEGE_MODE	= TRUE,	
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 17, },			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
					START_POS	= { 8, },			
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
					START_POS	= { 16, },
				},       
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE_BOSS_POST"],
					START_POS	= { 22, },			
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE_BOSS_STEM"],
					START_POS	= { 22, },
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PEITA_UNDER_GARDEN_GATE"],
					START_POS	= { 22, },			
					ACTIVE		= FALSE,
					NO_DROP		= TRUE,
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
			},
		},
	},

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_GLITER_LANCE_ELITE"],
			NPC_UNIT_ID["NUI_GLITER_HAMMER"],
			NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"],
			NPC_UNIT_ID["NUI_PLANT_DROSERA"],
			NPC_UNIT_ID["NUI_JUBIGEE"],
			NPC_UNIT_ID["NUI_FLY_LANTERN_THUNDER"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_A"],
			NPC_UNIT_ID["NUI_PLANT_WHIP_B"],
			NPC_UNIT_ID["NUI_BOX_PEITA"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD"],
			NPC_UNIT_ID["NUI_PLANT_OVERLOAD_QUEST"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0 =
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			

			NPC_GROUP =
			{
             	{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD"],
					START_POS	= { 1, },
					HAVE_BOSS_GAGE	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD_QUEST"],
					START_POS	= { 2, },
					FOCUS_CAMERA		= TRUE,
					STOP_AT_START_STATE = TRUE,
					HAVE_BOSS_GAGE		= TRUE,
					SHOW_BOSS_NAME		= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 5,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PLANT_OVERLOAD"],
					START_POS	= { 3, },
					HAVE_BOSS_GAGE	= TRUE,
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
