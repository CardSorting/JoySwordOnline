-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

DLGBack		= "DLG_Map_Local_Velder_Back_NEW.lua"
DLGFront	= "DLG_Map_Local_Velder_Front.lua"



--LOCAL_MAP_DLG = "DLG_TEMP_UI_Local_Velder_South.lua"
LOCAL_MAP_DLG = "DLG_Map_Local_Velder_Back_NEW.lua"


BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID

EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
	},
	RequireUnitLevel = 41,
}

PositionData =
{
	AURORA_POS_X = -200 - 105,
	AURORA_POS_Y = 190 - 110,
}

VillageData = 
{
	ID			= VILLAGE_MAP_ID["VMI_VELDER"],
	
	TEX_NAME	= "DLG_New_Dungeon_Image5.dds",
	PIECE_NAME	= "Local_Image_Besma_Village",

	EXPLANATION = STR_ID_1111,
}

VillageDGData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_GATE_VELDER"],
	
	TEX_NAME	= "DLG_New_Dungeon_Image5.dds",
	PIECE_NAME	= "Local_Image_Besma_Village",

	EXPLANATION = STR_ID_1111,
}


VillageDungeonLoungeData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_VELDER"],
}

BattleFieldRestData = 
{
	ID			= VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"],
}

-- 벨더
DungeonIDList = 
{
	DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
	DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
	DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],	-- 왕궁진입로
	DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],	-- 불타는 희망의 다리
	DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],		-- 벨더 마켓?
	DUNGEON_ID["DI_VELDER_GATE_NORMAL"],		-- 벨더 6번
	DUNGEON_ID["DI_BATTLE_SHIP_VELDER"],		--벨더 군함
	
	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],
	--DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],

	--DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"], -- 이벤트 던전
	-- 본섭에 패치 할 던전 ID만 추가해주세요.
	
	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],	-- 디펜스 던전

	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],		-- 벨더 비밀 던전
}

BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_SHIP_STAGE"],
}