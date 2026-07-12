-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Trigger, Monster, NPC, Object의 index는 0 부터 시작해서 연속이어야 한다


STAGE_LIST = 
{

	DUNGEON_MAP =
	{
		TEX_NAME = "",

		STAGE0 =
		{
			SUB_STAGE0 = { 200, 70, FALSE, FALSE },
		},
	},
		
	STAGE0 =
	{
		WORLD_ID = WORLD_ID["WI_MONSTER_TEST_WORLD"],
		START_MOTION	= FALSE,
	
		READY_NPC = 
		{ 
			NPC_UNIT_ID["NUI_CHAINGATE_BOSS_POST"],
			NPC_UNIT_ID["NUI_MUSHROOM"],			
		},
				
		SUB_STAGE0 =
		{		
			MAIN_LINE_SET = 0,
			
			NPC_GROUP = 
			{
				{
					NPC_ID		= NPC_UNIT_ID["NUI_CHAINGATE_BOSS_POST"],
					START_POS	= { 1, },
					ACTIVE		= TRUE,
					GAGE_BAR	= FALSE,
					LEVEL		= 50,
				},			
				
			},
		},		
	},

}


