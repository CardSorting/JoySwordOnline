-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

DLGBack		= "DLG_Map_Local_Velder_South_Back_NEW.lua"
DLGFront	= "DLG_Map_Local_Velder_South_Front.lua"



--LOCAL_MAP_DLG = "DLG_TEMP_UI_Local_Velder_South.lua"
LOCAL_MAP_DLG = "DLG_Map_Local_Velder_South_Back_NEW.lua"


BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID

EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
	},
	RequireUnitLevel = 15,
}

PositionData =
{
	AURORA_POS_X = -200 - 105,
	AURORA_POS_Y = 190 - 110,
}

VillageData = 
{
	ID			= VILLAGE_MAP_ID["VMI_BESMA"],
	
	TEX_NAME	= "DLG_New_Dungeon_Image5.dds",
	PIECE_NAME	= "Local_Image_Besma_Village",

	EXPLANATION = STR_ID_1111,
}

VillageDGData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"],
	
	TEX_NAME	= "DLG_New_Dungeon_Image5.dds",
	PIECE_NAME	= "Local_Image_Besma_Village",

	EXPLANATION = STR_ID_1111,
}

VillageDungeonLoungeData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_BESMA"],
}

BattleFieldRestData = 
{
	ID			= VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"],
}



-- 베스마
DungeonIDList = 
{
	DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	--DUNGEON_ID["DI_BESMA_MINE_NORMAL"],
	DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],	
	DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	--DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],
	DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	--DUNGEON_ID["DI_BESMA_SECRET_NORMAL"],
	
	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],
	
	-- kimhc // 2010-04-05 // 비밀던전 개편 테스트
	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],
	
	--DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
	DUNGEON_ID["DI_EVENT_TREE_DAY_BESMA"], -- 이벤트 던전
	-- 본섭에 패치 할 던전 ID만 추가해주세요.
	
	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],	-- 디펜스 던전
}

BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"],
}