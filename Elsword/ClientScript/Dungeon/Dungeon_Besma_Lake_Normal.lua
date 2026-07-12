-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



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
          	SUB_STAGE0 = { 355, 67 , TRUE },
		},
	},

	
  -------------------------- STAGE 0 --------------------------------
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_LAKE_STAGE1"],
		START_MOTION	= TRUE,

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	= 
			{ 
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"], 
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 0, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 4, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 11, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SCORPION"],
					START_POS	= { 19, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 20, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
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
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 28,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 40, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 35, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 48, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 49, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR    = FALSE,
				},
				{
				    NPC_ID      = NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				    START_POS   = { 49, },
				    GATE_BAR    = FALSE,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				    
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},
	
	-------------------------- STAGE 1 --------------------------------
	
	
	
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_NEW_BESMA_LAKE_STAGE2A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
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
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 18, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 5, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 5, },
					IS_RIGHT 	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 30, },
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

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
 				NPC_ID =
				{
				    NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
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
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 41, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 45, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 47, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 51, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 56, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 58, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 48, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_BESMA_LAKE"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR    = FALSE,
				},
				{
				    NPC_ID      = NPC_UNIT_ID["NUI_SMALLGATE_BESMA_LAKE"],
				    START_POS   = { 60, },
				    GATE_BAR    = FALSE,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				},
			},

			TRIGGER_LIST =
			{
			
			},
		},
	},
	


	-------------------------- STAGE 2 --------------------------------
	STAGE2 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_STAGE3A"],

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_LAKE"],
			NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
		},

		SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = 1,

			GO_TYPE             = GO_TYPE["GT_RIGHT"],

			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= FALSE,
					LOOK_LEFT	= TRUE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 2, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 7, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 28, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 24, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 31, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 29, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 7, },
					NO_DROP = TRUE, 
					ACTIVE		= FALSE,               
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BESMA_TOTEM_BASE"],
					START_POS	= { 8, },             
					NO_DROP 	= TRUE, 
					ACTIVE		= FALSE,  
					IS_RIGHT	=TRUE,		
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

   			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
				    NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 21,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 12, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 14, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 20, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
					START_POS	= { 34, },
					IS_RIGHT	= TRUE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_KOMODO"],
					START_POS	= { 25, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 16, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_BESMA_LAKE"],
					START_POS	= { 23, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR    = FALSE,
				},
				{
				    NPC_ID      = NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_BESMA_LAKE"],
				    START_POS   = { 23, },
				    GATE_BAR    = FALSE,
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
				    
				},
			},

			TRIGGER_LIST =
			{

			},
		},
	},
	
  
  --------------------------- STAGE 3 (Boss) --------------------------------
	STAGE3 =
	{
		WORLD_ID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],

		READY_NPC = 
		{
			NPC_UNIT_ID["NUI_SCORPION"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SAURUS"],
			NPC_UNIT_ID["NUI_KOMODO"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SPEAR"],
			NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"],
			NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
			NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
			NPC_UNIT_ID["NUI_BOX_BESMA1"],
			NPC_UNIT_ID["NUI_CHEST"],
		},
				SUB_STAGE0 =
		{
			START_LINE_SET      = -1,
			MAIN_LINE_SET       = 0,
			END_LINE_SET        = -1,

			GO_TYPE             = GO_TYPE["GT_NONE"],

            CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"], 
				NPC_ID = 
				{ 
					NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"], 
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_GAME"], 0, 0, 100, },
			},
			
			NPC_GROUP =
			{
			    {
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 7, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN"],
					START_POS	= { 10, },
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX_BESMA1"],
					START_POS	= { 6, },
					GAGE_BAR	= FALSE,
					ACTIVE		= FALSE,              
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"],
					START_POS	= { 8, },
					HAVE_BOSS_GAGE = TRUE,
					FOCUS_CAMERA	= TRUE,
					STOP_AT_START_STATE = TRUE,
					SHOW_BOSS_NAME	= TRUE,
					MONSTER_GRADE	= 1,
					BOSS_GAUGE_HP_LINES = 2,
				},
			},

			TRIGGER_LIST =
			{

			},
		},

	},

}
