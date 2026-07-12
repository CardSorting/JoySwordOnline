-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST = 
{
	DUNGEON_MAP =
	{

	},
		
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_TREE_MAIN_TEST_DUNGEON"],
		START_MOTION	= TRUE,
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
		},
		
		SUB_STAGE0 =
		{		
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
			},
																																 
			MAIN_LINE_SET = 0,	
			START_LINE_SET	= -1,
			END_LINE_SET	= 1,
			
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
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 2, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 10, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 8, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 13, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 7, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 21, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 27, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 4, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],			
					START_POS	= { 14, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],	
					START_POS	= { 24, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 25, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 16, },
					LEVEL		= 1,
				},
		    },
		      
			TRIGGER_LIST = 
			{
			},
		},	
		
		SUB_STAGE1 =
		{		
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},
			
			MAIN_LINE_SET	= 2,
			START_LINE_SET	= 1,
			END_LINE_SET	= -1,
			
			CURTAIN_GROUP = 
			{
				{
					LINE_INDEX		= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},
			
			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 32, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 46, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 51, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 30, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 34, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 40, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 44, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 48, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
					START_POS	= { 33, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],			
					START_POS	= { 49, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],			
					START_POS	= { 54, },
					LEVEL		= 1,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],	
					START_POS	= { 43, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 38, },
					LEVEL		= 1,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 52, },
					LEVEL		= 1,
				},
			},			
			
	
			TRIGGER_LIST = 
			{
			},
		},	
	},	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
		START_MOTION	= FALSE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_A_NODROP"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE_NODROP"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
			NPC_UNIT_ID["NUI_BOX"],
		},

		SUB_STAGE0 =
		{
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_BENDERS_NASOD"],
				},

				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			MAIN_LINE_SET = 0,

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A_NODROP"],
					START_POS	= { 12, },
					LEVEL		= 4,
					ACTIVE		= FALSE,              NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A_NODROP"],
					START_POS	= { 11, },
					LEVEL		= 4,
					ACTIVE		= FALSE,              NO_DROP = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE_NODROP"],
					START_POS	= { 9, },
					LEVEL		= 4,
					ACTIVE		= FALSE,              NO_DROP = TRUE,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS		= { 13, },
					FOCUS_CAMERA	= TRUE,
					LEVEL			= 20,
					HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, 15, 16, },
					RATE        = 30,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL		= 4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, 7, 3, },
					RATE        = 30,
					ACTIVE		= FALSE,
					GAGE_BAR	= FALSE,
					LEVEL		= 4,
				},
    		},
			TRIGGER_LIST =
			{
			},
		},
	},

}
		
