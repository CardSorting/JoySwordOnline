-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다





STAGE_LIST =
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 50, 67 },
			SUB_STAGE1 = { 91, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 152, 33 },
			SUB_STAGE1 = { 193, 33 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 152, 101 },
			SUB_STAGE1 = { 193, 101 },
		},
		STAGE3 =
		{
			SUB_STAGE0 = { 255, 67 },
			SUB_STAGE1 = { 296, 67 },
		},
		STAGE4 =
		{
			SUB_STAGE0 = { 357, 67 , TRUE },
		},
	},
	
	-- Druid Forest 던전 스테이지2-1A (EXPERT)

	STAGE0 =
 	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2_1A"],

		START_MOTION	= TRUE,

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_CHAINGATE_POST_EXTRA"],
  			NPC_UNIT_ID["NUI_EXTRAGATE"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT_SMALL"],
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
					LINE_INDEX	= 9,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
               {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 11,},
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 63, },
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
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,
			
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"], 
				NPC_KEYCODE = { 1 },
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100 },
			},
			CLEAR_COND1	= 
			{ 
				CLEAR_CONDITION["CC_KILL_KEYCODE_NPC"], 
				NPC_KEYCODE = { 2 },
				
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100 },
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
                 -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 49, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 52, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 50, },
				},
			    -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 55, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 58, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 58, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 42, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 45, },
				-- },
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
					START_POS	= { 61, },
					KEY_CODE	= 1,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
					START_POS	= { 61, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
					START_POS	= { 47, },
					KEY_CODE	= 2,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
			},
			TRIGGER_LIST =
			{
			 
   			},
		},
	},




 	-- Druid Forest 던전 스테이지 1-1A (EXPERT)

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1_1A"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
		    NPC_UNIT_ID["NUI_MONKEY_C_BOSS"],
		    NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT_SMALL"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 16, },
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
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 0,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
    		},

			NPC_GROUP =
			{
               {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
					START_POS	= { 39, },
     				FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
     				SHOW_SUB_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
    			},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 29, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 33, },
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 29, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 47, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 51, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 32, },
    			    ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 69, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 69, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
       		},
			TRIGGER_LIST =
			{
				 
    		},
        },
	},


	-- Druid Forest 던전 스테이지 1-1B (EXPERT)
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1_1B"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT_SMALL"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 3, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 23, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 31, },
				},
        		{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 20, },
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
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 5,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
            },

			NPC_GROUP =
			{
                -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					-- START_POS	= { 47, },
					-- ADD_POS_Y	= -280,
				-- },
                -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					-- START_POS	= { 40, },
				-- },
                -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					-- START_POS	= { 39, },
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"],
					START_POS	= { 51, },
     				FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
     				SHOW_SUB_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 2,
    			},
				{
		  			NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 43, },
    			    ACTIVE		= FALSE,   
					GAGE_BAR	= FALSE,					
				},
     			{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
     			{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 52, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
      		},

  			TRIGGER_LIST =
			{
			 
            },
        },
	},


	-- Druid Forest 던전 스테이지 1-1C (EXPERT)

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2A"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
			NPC_UNIT_ID["NUI_NUI_GHOST_CLOWN_THUNDER"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT_SMALL"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 3, 1, 100, },
 			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 4,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
               {
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 11, },
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
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 4, 0, 100, },
 			},

			CURTAIN_GROUP =
			{
                {
					LINE_INDEX	= 4,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
          	},

			NPC_GROUP =
			{
           		{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 26, },
					ADD_POS_Y	= -280,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 41, },
	     		},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 32, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 36, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 60, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 46, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					START_POS	= { 62, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
			},

			TRIGGER_LIST =
			{
				 
           	},
        },
	},




	-- Druid Forest 던전 스테이지3 (EXPERT)
	
	STAGE4 =
     {
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],

 		START_MOTION	= FALSE,

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
  			NPC_UNIT_ID["NUI_PPORU_GIANT"],
			NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"],
			NPC_UNIT_ID["NUI_ENT"],
			NPC_UNIT_ID["NUI_BAT_A"],
			NPC_UNIT_ID["NUI_BAT_B"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT_SMALL"],
  		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_ENT"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},


   			NPC_GROUP =
			{
                {
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 8,},
     				ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					START_POS	= { 5,},
     				ACTIVE		= FALSE,             
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT"],
					START_POS	= { 12, },
     				FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
     				HAVE_BOSS_GAGE = TRUE,
     				SHOW_BOSS_NAME = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 2, },
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
