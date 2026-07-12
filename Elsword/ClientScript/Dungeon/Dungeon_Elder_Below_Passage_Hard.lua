-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다



STAGE_LIST =
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",
		
		STAGE0 = 
		{
			SUB_STAGE0 = { 46, 67 },
			SUB_STAGE1 = { 87, 67 },
		},
		STAGE1 = 
		{
			SUB_STAGE0 = { 149, 67 },
			SUB_STAGE1 = { 190, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 252, 67 },
			SUB_STAGE1 = { 293, 67 },
		},
		STAGE3 = 
		{
			SUB_STAGE0 = { 355, 67, TRUE },
		},	
	},
	
	-- 지하수로 던전 스테이지 1 (EXPERT)
	
  STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE1"],

		START_MOTION	= TRUE,

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
			NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_NODROP"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],
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
					LINE_INDEX	= 5,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
                
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 16, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 19, },
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
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
                
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 34, },
       				ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSE"],
					START_POS	= { 44, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MOUSEHOUSE"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 38, },
				},
					{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 43, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 25, },
       				ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 28, },
       				ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
					RATE		= 40,
  				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
					START_POS	= { 47, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
		
			},
			TRIGGER_LIST =
			{

			},
		},
	},



	-- 지하수로 던전 스테이지 2 (EXPERT)

	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE2B"],


		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
      	    NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_NODROP"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
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
					LINE_INDEX	= 24,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
				{
					LINE_INDEX	= 41,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},

			},

   			NPC_GROUP =
			{
				
				
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 9, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 19, },
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
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, }, 
			},
			


			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 41,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
				{
					LINE_INDEX	= 24,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 37, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 49, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 35, },
       				ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
  				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
					START_POS	= { 57, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
	 		},
			TRIGGER_LIST =
			{

			},
		},
	},
	

	-- 지하수로 던전 스테이지 2 (EXPERT)

	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE3A"],

		

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
        	NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
        	NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_NODROP"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],

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
					LINE_INDEX	= 11,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

   			NPC_GROUP =
			{
                {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 10, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 13, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 8, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_STEAM_TRAP"],
					START_POS	= { 18, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 18, },
       				ACTIVE		= FALSE,              NO_DROP = TRUE, 
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
			END_LINE_SET		= 3,

			GO_TYPE		= GO_TYPE["GT_RIGHT"],
			

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 38, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 30, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 34, },
       				ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
					START_POS	= { 42, },
					ACTIVE		= FALSE,              
					GAGE_BAR	= FALSE,
					NO_DROP		 = TRUE,
				},
		 	},
			TRIGGER_LIST =
			{

			},
		},
	},
	
	
	
	
	
	
	
	
	
	-- 지하수로 던전 스테이지 보스 

	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],

		

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_SOLDIER_THIN"],
			NPC_UNIT_ID["NUI_SOLDIER_FAT"],
			NPC_UNIT_ID["NUI_SOLDIER_CROSSBOW"],
			NPC_UNIT_ID["NUI_BENDERS_NASOD"],
        	NPC_UNIT_ID["NUI_LATTICE_GATE_BELOW_PASSAGE"],
        	NPC_UNIT_ID["NUI_WOOD_POST_TRAP"],
			NPC_UNIT_ID["NUI_MOUSE"],
			NPC_UNIT_ID["NUI_MOUSEHOUSE"],
			NPC_UNIT_ID["NUI_MOUSE_NODROP"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
			NPC_UNIT_ID["NUI_STEAM_TRAP"],

		},

		SUB_STAGE0 =
		{
   			START_LINE_SET		= -1,
			MAIN_LINE_SET		= 0,
			END_LINE_SET		= 1,

			GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_BENDERS_NASOD"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},

   			NPC_GROUP =
			{
                {
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_THIN"],
					START_POS	= { 4,5, },
     				ACTIVE		= FALSE,            
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					-- START_POS	= { 1,2, },
     				-- ACTIVE		= FALSE,            
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SOLDIER_FAT"],
					START_POS	= { 8, },
     				ACTIVE		= FALSE,            
				},
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED"],
					-- START_POS	= { 11, },
     				-- ACTIVE		= FALSE,            
				-- },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BENDERS_NASOD"],
					START_POS	= { 9, },
     				FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
     				HAVE_BOSS_GAGE = TRUE,
     				SHOW_BOSS_NAME  = TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 6,7, },
       				ACTIVE		= FALSE,           
					GAGE_BAR	= FALSE,
					RATE		= 30,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 13, },
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





