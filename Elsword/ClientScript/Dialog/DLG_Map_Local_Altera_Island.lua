-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

DLGBack		= "DLG_Map_Local_Altera_Island_Back_NEW.lua"
DLGFront	= "DLG_Map_Local_Altera_Island_Front.lua"


--LOCAL_MAP_DLG = "DLG_TEMP_UI_Local_Altera_Island.lua"
LOCAL_MAP_DLG = "DLG_Map_Local_Altera_Island_Back_NEW.lua"




BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID

EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
	},
	RequireUnitLevel = 27,
}

PositionData =
{
	AURORA_POS_X = -200 + 40 +40 + 25,
	AURORA_POS_Y = 190 - 85 - 40 - 20,
}

VillageData = 
{
	ID			= VILLAGE_MAP_ID["VMI_ALTERA"],
	
	TEX_NAME	= "DLG_Common_Texture10.TGA",
	PIECE_NAME	= "Dungeon_Image_Elder_Village",

	EXPLANATION = STR_ID_1101,
}

VillageDGData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"],
	
	TEX_NAME	= "DLG_Common_Texture10.TGA",
	PIECE_NAME	= "Dungeon_Image_Elder_Village",

	EXPLANATION = STR_ID_1101,
}


VillageDungeonLoungeData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_ALTERA"],
}

--휴식처 ID
BattleFieldRestData = 
{
	ID			= VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"],
}



DungeonIDList = 
{
	DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
	DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
	DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
	DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],		
	DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	--DUNGEON_ID["DI_ALTERA_SECRET_NORMAL"],	
	
	
	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],
	
	-- kimhc // 2010-04-05 // 비밀던전 개편 테스트
	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],
	
	--DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
	--DUNGEON_ID["DI_EVENT_TREE_DAY_ALTERA"], -- 이벤트 던전
	
	-- 본섭에 패치 할 던전 ID만 추가해주세요.
	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],	-- 디펜스 던전		
}

--필드목록
BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"],
}