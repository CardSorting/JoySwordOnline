-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST = 
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 169, 67, FALSE, TRUE },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 231, 38 },
			SUB_STAGE1 = { 272, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 334, 67 },
			SUB_STAGE1 = { 375, 67 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 437, 67 , TRUE },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 107, 67 },
			SUB_STAGE1 = { 66, 67 },
			SUB_STAGE2 = { 25, 67 },
		},
		STAGE5 =
		{
			SUB_STAGE0 = { 231, 96 },
			SUB_STAGE1 = { 271, 96 },
		},
		STAGE6 =
		{
			SUB_STAGE0 = { -37, 67 , TRUE },
		},
	},
		
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_FOREST_OF_EL"],
		START_MOTION	= TRUE,
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
		},
		
		SUB_STAGE0 =
		{		
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"], 
				NPC_KEYCODE = { 1 },
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50 },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 5, 0, 50 },
			},
			
			CLEAR_COND1	= 
			{ 
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"], 
				NPC_KEYCODE = { 2 },

				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100 },
			},
			
			MAIN_LINE_SET = 0,
			
			NPC_GROUP = 
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],			
					START_POS	= { 8, },
					LEVEL		=3,					
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],	
					START_POS	= { 9, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 11, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 12, },
					LEVEL		=3,
				},
			
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],		
					START_POS	= { 5, },
					KEY_CODE	= 1,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 5, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],		
					START_POS	= { 14, },
					KEY_CODE	= 2,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
			},			
			
			TRIGGER_LIST = 
			{
			},
		},		
	},

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE3"],
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_BEE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
		},
		
		SUB_STAGE0 =
		{		
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
			},
			
			START_LINE_SET	= -1,
			MAIN_LINE_SET = 0,
			END_LINE_SET	= 1,
			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP = 
			{
				{
					LINE_INDEX	= 10,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},
			
			NPC_GROUP = 
			{
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 5, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 10, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 13, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 14, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 3, 17, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 9, },
					ADD_POS_Y	= -220,
     				LEVEL		=3,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 7, 12, },
					RATE        = 40,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 11, 15, },
					RATE        = 40,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"], 
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},
			
			
			START_LINE_SET	= 1,
			MAIN_LINE_SET	= 2,
			END_LINE_SET	= -1,
			GO_TYPE			= GO_TYPE["GT_RIGHT"],
			
			CURTAIN_GROUP = 
			{
				{
					LINE_INDEX	= 2,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			
			},
			
			NPC_GROUP = 
			{
       			{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 40, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 37, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 34, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
					START_POS	= { 42, },
					ADD_POS_Y	= -225,
       				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 19, 20, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 26, 25, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 27, 28, },
     				LEVEL		=3,
				},

    			{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, 24, },
					RATE        = 40,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 29, 34, },
					RATE        = 40,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},

				
				{
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 45, },
						LEVEL		=3,
						ACTIVE		= FALSE,              
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE 	= 70,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 45, },
						LEVEL		=3,
						ACTIVE		= FALSE,              
     					GAGE_BAR		= FALSE,
					},
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],			
					START_POS	= { 46, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,				
				},	
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 46, },
					KEY_CODE	= 2,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},			
    		},
    		
			TRIGGER_LIST = 
			{
			},
		},				
	},
	
	
	
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
		START_MOTION	= FALSE,
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_A_NODROP"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
			NPC_UNIT_ID["NUI_BOX"],
		},	
		
		SUB_STAGE0 =
		{	
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_BENDERS_NORMAL"], 
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			MAIN_LINE_SET = 0,
			
			NPC_GROUP = 
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 12, },
					LEVEL		=3,
					ACTIVE		= FALSE,              
				},		
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 11, },
					LEVEL		=3,
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 9, },
					LEVEL		=3,
					ACTIVE		= FALSE,              
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NORMAL"],
					START_POS		= { 13, },
					FOCUS_CAMERA	= TRUE,
					LEVEL		=3,
					HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, 15, 16, },
					RATE        = 30,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 8, 7, 3, },
					RATE        = 30,
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
    		},
			TRIGGER_LIST = 
			{
			},		
		},		
	},
		
--[[    STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1B_MIRROR"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_BEE"],
   			NPC_UNIT_ID["NUI_BEEBOMB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_BEEBOMBHOUSE"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
		},

		SUB_STAGE0 =
		{
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100, },
			},

   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_LEFT"],

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 33, 29, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 32, 31, },
     				LEVEL		=3,
				},
				
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 38, },
					ADD_POS_Y   = -235,
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 37, 41, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 38, 39, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 44, },
     				LEVEL		=3,
				},
				

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 40, 34, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=3,
					RATE		= 60,
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 2, 100, },
			},

			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= 3,

			GO_TYPE		= GO_TYPE["GT_LEFT"],

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},

				{
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= TRUE,
				},

    		},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 16, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 23, },
     				LEVEL		=3,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 25, },
     				LEVEL		=3,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 21, 22, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 18, },
 				    LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, 15,},
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 24, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
					LEVEL		=3,
				},
       		},
			TRIGGER_LIST =
			{
			},
        },

		SUB_STAGE2 =
		{
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"], 
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 6, 0, 100, },
			},

		
			START_LINE_SET		= 3,
			MAIN_LINE_SET		= 4,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_LEFT"],

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= FALSE,
				},
    		},

			NPC_GROUP =
			{
                
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEBOMB"],
					START_POS	= { 7, 6, },
     				LEVEL		=3,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 2, 0, },
     				LEVEL		=3,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 45, 10, },
     				LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 47, },
     				LEVEL		=3,
				},
								
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 48, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
                    LEVEL		=3,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, 4, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 40,
					LEVEL		=3,
				},
       		},
			TRIGGER_LIST =
			{
			},
        },
	},
    STAGE5 =
 	{
		WORLD_ID		= WORLD_ID["WI_EL_FOREST_MAIN_STAGE3_1"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BEEB"],
			NPC_UNIT_ID["NUI_BEEHOUSE"],
			NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
			NPC_UNIT_ID["NUI_BENDERS_THIEF"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
			NPC_UNIT_ID["NUI_CHAINGATE_POST"],
			NPC_UNIT_ID["NUI_BOX"],
		},

		SUB_STAGE0 =
		{
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 5, 1, 100, },
			},

			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 26,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 0, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 1, },
					LEVEL		=3,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEHOUSE"],
					START_POS	= { 3, },
					ADD_POS_Y	= 400,
					LEVEL		=3,
				},
				{				
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 4, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 5, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 17, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 19, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_CHAINGATE_GREEN"], 
				},
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},

			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],

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
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_THIEF"],
					START_POS	= { 6, },
					LEVEL		=3,
				},
               
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 8, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 9, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 10, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 11, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_THIEF_THIN_ZERO"],
					START_POS	= { 12, },
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 26, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_POST"],
					START_POS	= { 14, },
     				ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_GREEN"],
					START_POS	= { 14, },
      				ACTIVE		= FALSE,              NO_DROP = TRUE, 
      				GAGE_BAR	= FALSE,
      				LEVEL		=3,					
    			},
			},

	        TRIGGER_LIST =
			{
			},
		},
	},
	
	STAGE6 =
 	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
        START_MOTION	= FALSE,

		READY_NPC =
		{
  			NPC_UNIT_ID["NUI_BEE"],
  			NPC_UNIT_ID["NUI_BOX"],
          	NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_PPORU_GIANT"],
  		},

		SUB_STAGE0 =
		{
		
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, 1, },
			},
			

   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,


   			NPC_GROUP =
			{
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 19, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEE"],
					START_POS	= { 20, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_PPORU_GIANT"],
					START_POS	= { 21, },
     				LEVEL		=3,
     				FOCUS_CAMERA   = TRUE,
     				HAVE_BOSS_GAGE = TRUE,
					SHOW_BOSS_NAME = TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_B"],
					START_POS	= { 14, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 13, },
     				LEVEL		=3,
     				ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 50,
					LEVEL		=3,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					RATE		= 50,
					LEVEL		=3,
				},
			},

	        TRIGGER_LIST =
			{
			},
		},
	},
--]]
}






