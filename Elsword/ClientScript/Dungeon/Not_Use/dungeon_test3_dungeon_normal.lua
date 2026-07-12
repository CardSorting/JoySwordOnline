-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다

-- 스테이지 흐름 (0)-(1,2)-(3) 


STAGE_LIST =
{
    DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 56, 67 },
			SUB_STAGE1 = { 97, 67 },
			SUB_STAGE2 = { 138, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 200, 38 },
			SUB_STAGE1 = { 241, 38 },
			SUB_STAGE2 = { 282, 38 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 200, 96 },
			SUB_STAGE1 = { 241, 96 },
			SUB_STAGE2 = { 282, 96 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 344, 67 , TRUE },
		},
	},
	
	-- Monkey 던전 스테이지 1 (Normal)

--[[	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1"],
		START_MOTION	= TRUE,

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],   
		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 0, 2, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 4, 7, },
     				LEVEL		=4,
				},
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 5, 13, },
     				LEVEL		=4,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 9, 10, },
     				LEVEL		=4,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 12, 6, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
    		},

			TRIGGER_LIST =
			{
				 
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= 3,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},

				{
					LINE_INDEX	= 8,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},

    		},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 14, 15, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 23, 26, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 25, 28, 44, },
     				LEVEL		=4,
				},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 17, 19, },
     				LEVEL		=4,
				},
                				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, 22, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, 24, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
       		},
			TRIGGER_LIST =
			{
			 
 			},
        },

		SUB_STAGE2 =
		{
			START_LINE_SET		= 3,
			MAIN_LINE_SET		= 4,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
					{
					NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 50, },
				NEXT_STAGE1 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 50, },
			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 8,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
    		},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 29, 38, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 30, 33, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 34, 32, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 36, 40, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_GREEN"],
					START_POS	= { 41, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
                    GAGE_BAR	= FALSE,
                    LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 37, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
       		},
			TRIGGER_LIST =
			{
				 
   			},
        },
 	},


--]]

	-- MONKEY 던전 스테이지 2 (Normal)

	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2B"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_CHEST"],
			NPC_UNIT_ID["NUI_CHEST_MONSTER"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 19,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 0, 4, },
     				LEVEL		=4,
				},
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 7, 6, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 3, },
     				LEVEL		=4,
				},
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 5, 2,},
     				LEVEL		=4,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 45, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
       		},

			TRIGGER_LIST =
			{
				 
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= 3,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 19,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},

				{
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},

    		},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 18, 10, },
     				LEVEL		=4,
				},
			
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 22, },
     				LEVEL		=4,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 11, 19, },
     				LEVEL		=4,
				},

				{
    				NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 42, 21, },
 				    LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 15, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 16, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
			},
			TRIGGER_LIST =
			{
			 
				
			},
        },

		SUB_STAGE2 =
		{
			START_LINE_SET		= 3,
			MAIN_LINE_SET		= 4,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
			},


			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 9,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
    		},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 27, 46, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 32, 35, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 38, },
     				LEVEL		=4,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 26, 40, },
     				LEVEL		=4,
				},
				

				
                {
					SUB_NPC0 =
					{
						SUB_NPC_RATE	= 30,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST_MONSTER"],
						START_POS		= { 33, },
						LEVEL			= 7,
						ACTIVE		= FALSE,              
						GAGE_BAR		= FALSE,
					},
					SUB_NPC1 =
					{
						SUB_NPC_RATE 	= 70,
						NPC_ID			= NPC_UNIT_ID["NUI_CHEST"],
						START_POS		= { 33, },
						LEVEL			= 7,
						ACTIVE		= FALSE,              
     					GAGE_BAR		= FALSE,
					},
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 39, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 29, 28, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 31, 36, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},

       		},
			TRIGGER_LIST =
			{
				 
			
			},
        },
	},

	-- Monkey 던전 스테이지 2-A (Normal)

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_A"],
			NPC_UNIT_ID["NUI_MONKEY_B"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 0,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{

   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 7, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 3, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 8, },
     				LEVEL		=4,
				},

				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 11, },
       				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 9, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 1, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
       		},

			TRIGGER_LIST =
			{
				 
			},
		},

		SUB_STAGE1 =
		{
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= 3,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 2, 100, },
 			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},

				{
					LINE_INDEX	= 13,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},

    		},

			NPC_GROUP =
			{
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 18, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 23, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 17, },
     				LEVEL		=4,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 20, },
     				LEVEL		=4,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 14, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 21, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 30,
				},
       		},
			TRIGGER_LIST =
			{
			 
			},
        },

		SUB_STAGE2 =
		{
			START_LINE_SET		= 3,
			MAIN_LINE_SET		= 4,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 31, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 33, },
     				LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 30, },
     				LEVEL		=4,
				},

                {
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 26, },
     				LEVEL		=4,
				},

				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 28, },
     				LEVEL		=4,
				},

   				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
					LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_RED"],
					START_POS	= { 35, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					LEVEL		=4,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 27, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					LEVEL		=4,
					RATE		= 40,
				},
       		},
			TRIGGER_LIST =
			{
				 
			},
        },
	},

    -- Monkey 던전 스테이지 3 Boss (EXPERT)

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],

		READY_NPC =
		{
   			NPC_UNIT_ID["NUI_MUSHROOM"],
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MONKEY_APPLE"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS"],
			NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
		},


		SUB_STAGE0 =
		{
			MAIN_LINE_SET = 0,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_MONKEY_BOSS"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_A"],
					START_POS	= { 3, },
     				LEVEL		=4,
					ACTIVE		= FALSE,               
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_ROLLING"],
					START_POS	= { 1, },
     				LEVEL		=4,
					ACTIVE		= FALSE,              
				},
    			{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_BOSS"],
					START_POS	= { 2, },
     				LEVEL		=4,
     				HAVE_BOSS_GAGE = TRUE,
     				FOCUS_CAMERA	= TRUE,
     				SHOW_BOSS_NAME = TRUE,
   				},                         
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_MONKEY_APPLE"],
					START_POS	= { 7, 4, },
     				LEVEL		=4,
     				ACTIVE		= FALSE,              
         		},
   			
   				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 6, },
         			LEVEL		=4,
     				ACTIVE		= FALSE,              
     				GAGE_BAR	= FALSE,
     				RATE		= 30,
				},

			},
			TRIGGER_LIST =
			{
				 
			},
		},
	},
} 
