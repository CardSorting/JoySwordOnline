-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

DLGBack		= "DLG_Map_Local_Velder_North_Back_NEW.lua"
DLGFront	= "DLG_Map_Local_Velder_North_Front.lua"

LOCAL_MAP_DLG = "DLG_Map_Local_Velder_North_Back_NEW.lua"

BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID

EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    0,
	},
	RequireUnitLevel = 1,
}

PositionData =
{
	AURORA_POS_X = -200 - 60- 20,
	AURORA_POS_Y = 175,
}

VillageData = 
{
	ID			= VILLAGE_MAP_ID["VMI_RUBEN"],
	
	TEX_NAME	= "DLG_Common_Texture10.TGA",
	PIECE_NAME	= "Dungeon_Image_Ruben_Village",

	EXPLANATION = STR_ID_1110,
}

VillageDGData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_GATE_RUBEN"],
	
	TEX_NAME	= "DLG_Common_Texture10.TGA",
	PIECE_NAME	= "Dungeon_Image_Ruben_Village",

	EXPLANATION = STR_ID_1110,
}

VillageDungeonLoungeData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_RUBEN"],
}

DungeonIDList = 
{
	DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
	DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
	DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
	
	--DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"],
	--DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"],
	--DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"],
	
	--DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"],
	--DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"],
	--DUNGEON_ID["DI_EL_FOREST_HELL_NORMAL"],
	
	-- kimhc // 2010-04-05 // 비밀던전 개편 테스트
	--DUNGEON_ID["DI_RUBEN_SECRET_COMMON"],
	
--	DUNGEON_ID["DI_MONSTER_TEST_NORMAL"],			-- 몬스터 테스트용 던전 사내에서만 들어갈수 있도록 하기 위해서
		
	-- 본섭에 패치 할 던전 ID만 추가해주세요.
}

BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"],
}