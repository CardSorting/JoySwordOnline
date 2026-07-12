-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다



STAGE_LIST =
{
	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 66, 67 },
			SUB_STAGE1 = { 107, 67 },
		},
		STAGE1 =
		{
			SUB_STAGE0 = { 200, 67 },
			SUB_STAGE1 = { 241, 67 },
		},
		STAGE2 =
		{
			SUB_STAGE0 = { 334, 67 , TRUE },
		},
	},
	-- Druid Forest 던전 스테이지 1 (EXPERT)
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1"],
		
		START_MOTION	= TRUE,
		
		

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
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
			
			KEYCODE_N_START_STATE0	= { 120, "BAT_A_FLY_READY" },
			
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
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 9,},
					ADD_POS_Y	= -280,
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 4, },
				},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 6, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 21, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 22, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					START_POS	= { 15, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 27, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 12, },
       				ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
				
    		},

			TRIGGER_LIST =
			{
				TRIGGER0 =
				{
					HOST			= TRUE,
					ONE_TIME		= FALSE,
					INTERVAL		= 10,
					CONDITION_FUNC	= "CF_STAGE0_SUB0_TRIGGER0",
					REACT_FUNG		= "RF_STAGE0_SUB0_TRIGGER0",
				},
			},
		},


		 SUB_STAGE1 =
		{
			START_LINE_SET		= 1,
			MAIN_LINE_SET		= 2,
			END_LINE_SET		= -1,
			
			CLEAR_COND0	=
			{
				CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				NPC_ID =
				{
					NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
				},
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 1, 0, 100, },
			},

			CURTAIN_GROUP =
			{
				{
					LINE_INDEX	= 16,
					AT_START	= TRUE,
					LOOK_LEFT	= FALSE,
				},
			},

			NPC_GROUP =
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					START_POS	= { 47,},
					ADD_POS_Y	= -280,
			    },
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 51, },
	     		},
                {
					NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					START_POS	= { 53, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 33, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 39, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					START_POS	= { 55, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 57, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 42, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					START_POS	= { 34, },
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
               	{
					NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
					START_POS	= { 60, },
					ACTIVE		= FALSE,              NO_DROP = TRUE, 
					GAGE_BAR	= FALSE,
				},
				{
					NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					START_POS	= { 41, },
       				ACTIVE		= FALSE,               
					GAGE_BAR	= FALSE,
				},
    		},
			TRIGGER_LIST =
			{
			 
   			},
		},
	},                

	-- Druid Forest 던전 스테이지2A (EXPERT)

 
	STAGE1 =
	{
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2A"],

		READY_NPC =
		{
            NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
			NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 1, 1, 100, },
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
				NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 2, 0, 100, },
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
	-- Druid Forest 던전 스테이지2B (EXPERT)

    -- STAGE2 =
	-- {
		-- WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2B"],

		-- READY_NPC =
		-- {
			-- NPC_UNIT_ID["NUI_BOX"],
			-- NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			-- NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			-- NPC_UNIT_ID["NUI_SMALLGATE_POST_DRUID_FOREST_A"],
			-- NPC_UNIT_ID["NUI_SMALLGATE_DRUID_FOREST_A"],
			-- NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			-- NPC_UNIT_ID["NUI_BEEPOISON"],
			-- NPC_UNIT_ID["NUI_BEEPOISON_NODROP"],
			-- NPC_UNIT_ID["NUI_WISP"],
			-- NPC_UNIT_ID["NUI_ENT_SMALL"],
		-- },

		-- SUB_STAGE0 =
		-- {
   			-- START_LINE_SET		= -1,
			-- MAIN_LINE_SET		= 0,
			-- END_LINE_SET		= 1,

			-- GO_TYPE				= GO_TYPE["GT_RIGHT"],
			
			-- CLEAR_COND0	=
			-- {
				-- CLEAR_CONDITION["CC_KILL_ALL_ACTIVE_NPC"],
				-- NEXT_STAGE0 = { CLEAR_TYPE["CT_SUB_STAGE"], 2, 1, 100, },
 			-- },

			-- CURTAIN_GROUP =
			-- {
				-- {
					-- LINE_INDEX	= 12,
					-- AT_START	= FALSE,
					-- LOOK_LEFT	= TRUE,
				-- },
			-- },

   			-- NPC_GROUP =
			-- {
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					-- START_POS	= { 21, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 23, },
				-- },
           		-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 4, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					-- START_POS	= { 24, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					-- START_POS	= { 15, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 8, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 17, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 26, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 31, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					-- START_POS	= { 11, },
       				-- ACTIVE		= FALSE,               
					-- GAGE_BAR	= FALSE,
				-- },
  		    -- },

			-- TRIGGER_LIST =
			-- {
				 
			-- },
		-- },
		
		-- SUB_STAGE1 =
		-- {
			-- START_LINE_SET		= 1,
			-- MAIN_LINE_SET		= 2,
			-- END_LINE_SET		= -1,

			-- GO_TYPE		= GO_TYPE["GT_RIGHT"],
			
			-- CLEAR_COND0	=
			-- {
				-- CLEAR_CONDITION["CC_KILL_NPC_TYPE"],
				-- NPC_ID =
				-- {
					-- NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
				-- },
				-- NEXT_STAGE0 = { CLEAR_TYPE["CT_STAGE"], 3, 0, 100, },
			-- },

			-- CURTAIN_GROUP =
			-- {
                -- {
					-- LINE_INDEX	= 12,
					-- AT_START	= TRUE,
					-- LOOK_LEFT	= FALSE,
				-- },
    		-- },

			-- NPC_GROUP =
			-- {
               -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
					-- START_POS	= { 47, },
					-- ADD_POS_Y	= -280,
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					-- START_POS	= { 39, },
	     		-- },
                -- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BEEPOISON"],
					-- START_POS	= { 37, },
				-- },
    			-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 50, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					-- START_POS	= { 42, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
					-- START_POS	= { 44, },
				-- },
           		-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 56, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 60, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					-- START_POS	= { 64, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_ENT_SMALL"],
					-- START_POS	= { 67, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					-- START_POS	= { 66, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_WISP"],
					-- START_POS	= { 62, },
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_BOX"],
					-- START_POS	= { 54, },
       				-- ACTIVE		= FALSE,               
					-- GAGE_BAR	= FALSE,
				-- },
  				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_POST_DRUID_FOREST"],
					-- START_POS	= { 70, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
				-- },
  				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_SMALLGATE_BOSS_DRUID_FOREST"],
					-- START_POS	= { 70, },
					-- ACTIVE		= FALSE,              NO_DROP = TRUE, 
					-- GAGE_BAR	= FALSE,
				-- },
      		-- },

			-- TRIGGER_LIST =
			-- {
				 
   			-- },
        -- },
	-- },

--Druid Forest 던전 스테이지3 (EXPERT)
	
	STAGE2 =
    {
		WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],

 		START_MOTION	= FALSE,

		READY_NPC =
		{
			NPC_UNIT_ID["NUI_BOX"],
			NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
			NPC_UNIT_ID["NUI_GHOST_MAGICIAN"],
			NPC_UNIT_ID["NUI_BEEPOISONHOUSE"],
			NPC_UNIT_ID["NUI_BEEPOISON"],
			NPC_UNIT_ID["NUI_WISP"],
			NPC_UNIT_ID["NUI_ENT"],
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
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 5, },
     				-- ACTIVE		= FALSE,             
				-- },
				-- {
					-- NPC_ID		= NPC_UNIT_ID["NUI_MUSHROOM_POISON"],
					-- START_POS	= { 2, },
     				-- ACTIVE		= FALSE,             
				-- },
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


---------------------------------------------------------------------------------
function CF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	if pX2DungeonGame:GetEnableMonsterFly() == false then
	
		return false
	
	end

	if pX2DungeonGame:LiveUserUnitNum() > 0 then
		return true
	else
		return false
	end

end

function RF_STAGE0_SUB0_TRIGGER0( pKTDXApp, pX2DungeonGame, pX2DungeonSubStage )

	pos	= pKTDXApp:GetVec3( 1079, 564, 335 )
	vfDelayTimeNKeyCode	= pKTDXApp:GetVec3( 0, 120, 2100 )
	pX2DungeonGame:CreateNPCReq_LUA2( NPC_UNIT_ID[ "NUI_BAT_A" ], 1, true, pos, true, vfDelayTimeNKeyCode, true ) 

end
