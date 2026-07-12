-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


DLGBack		= "DLG_UI_Local_Peita_Back_NEW.lua"
DLGFront	= "DLG_UI_Local_Peita_Back_NEW.lua"


LOCAL_MAP_DLG = "DLG_UI_Local_Peita_Back_NEW.lua"


BaseWorldStateID = WORLD_MAP_ID["WMI_ELLIOS"] -- 해당 지역을 품는 월드 ID


EnterCondition = 
{
	RequireClearDungeonID = 
	{
	    DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	},
	RequireUnitLevel = 34,
}



VillageData =
{
	ID = -1,		-- 마을이 없을 경우에 반드시 table을 만들고 ID를 -1로 해줘야 함
}


VillageDGData = 
{
	ID			= VILLAGE_MAP_ID["VMI_PEITA"],
	
	TEX_NAME	= "DLG_Common_Texture10.TGA",
	PIECE_NAME	= "Dungeon_Image_Ruben_Village",

	EXPLANATION = STR_ID_1108,
}




VillageDungeonLoungeData = 
{
	ID			= VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_PEITA"],
}


DungeonIDList = 
{
	DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
	DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],	
	DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],	
	DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],	
	DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],	
	DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],	
	
	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],
	
	--DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
	--DUNGEON_ID["DI_EVENT_TREE_DAY_PEITA"],
	-- 본섭에 패치 할 던전 ID만 추가해주세요.	
	
	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],	-- 디펜스 던전
}

BattleFieldIDList = 
{
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"],
	VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"],
}