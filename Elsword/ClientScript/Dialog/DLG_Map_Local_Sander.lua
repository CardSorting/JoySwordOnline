-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

DLGBack		= "DLG_Map_Local_Sander_Back_NEW.lua"
DLGFront	= "DLG_Map_Local_Sander_Front.lua"

LOCAL_MAP_DLG = "DLG_Map_Local_Sander_Back_NEW.lua"
BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID

EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
	},
	RequireUnitLevel = 58,
}

PositionData =
{
	AURORA_POS_X = -200 - 105,
	AURORA_POS_Y = 190 - 110,
}

VillageData = 
{
	ID			= VILLAGE_MAP_ID["VMI_SANDER"],
	
	TEX_NAME	= "DLG_New_Dungeon_Image5.dds",
	PIECE_NAME	= "Local_Image_Besma_Village",

	EXPLANATION = STR_ID_1111,
}

BattleFieldRestData = 
{
	ID			= VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_REST_00"],
}


-- 샌더
DungeonIDList = 
{
	DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],		-- 메마른 샌더
	DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],		-- 가르파이 기암지대
	DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],	-- 트락 소굴
	DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],	-- 칼루소 부족 마을
	
	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],	-- 디펜스 던전
	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],				-- 헤니르의 시공
	
	--DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
	--DUNGEON_ID["DI_EVENT_TREE_DAY_HAMEL"],
	
	-- 본섭에 패치 할 던전 ID만 추가해주세요.
}

BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],
	--VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"],
	--VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],
	--VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_SHIP_STAGE"],
}