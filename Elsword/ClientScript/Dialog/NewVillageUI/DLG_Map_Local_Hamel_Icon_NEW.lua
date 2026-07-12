-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----------------------------------------------------------------------
--- 레시암 근교
g_pButton_OUTSKIRTS_RESIAM = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OUTSKIRTS_RESIAM )
g_pButton_OUTSKIRTS_RESIAM:SetName( "OUTSKIRTS_RESIAM" )
g_pButton_OUTSKIRTS_RESIAM:AddDummyInt( DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"] )
g_pButton_OUTSKIRTS_RESIAM:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_OUTSKIRTS_RESIAM:SetNormalTex( "DLG_Common_Button01_NEW.tga", "OUTSKIRTS_RESIAM_NORMAL" )
IconAni( g_pButton_OUTSKIRTS_RESIAM,  "DLG_Common_Button01_NEW.tga", "OUTSKIRTS_RESIAM_OVER" )
g_pButton_OUTSKIRTS_RESIAM:SetDownTex( "DLG_Common_Button01_NEW.tga", "OUTSKIRTS_RESIAM_OVER" )

g_pButton_OUTSKIRTS_RESIAM:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(152+6,213+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OUTSKIRTS_RESIAM:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(145+6,205+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OUTSKIRTS_RESIAM:SetDownPoint
{
	ADD_SIZE_X = -4-10,
	ADD_SIZE_Y = -4-10,
 	"LEFT_TOP		= D3DXVECTOR2(147+6,205+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OUTSKIRTS_RESIAM:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_OUTSKIRTS_RESIAM:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
 g_pButton_OUTSKIRTS_RESIAM:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

------레시암
g_pButton_BREAK_RESIAM= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BREAK_RESIAM)
g_pButton_BREAK_RESIAM:SetName( "BREAK_RESIAM" )
g_pButton_BREAK_RESIAM:AddDummyInt( DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"] )
g_pButton_BREAK_RESIAM:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_BREAK_RESIAM:SetNormalTex( "DLG_Common_Button01_NEW.tga", "BREAK_RESIAM_Normal" )
IconAni( g_pButton_BREAK_RESIAM,  "DLG_Common_Button01_NEW.tga", "BREAK_RESIAM_Over" )
g_pButton_BREAK_RESIAM:SetDownTex( "DLG_Common_Button01_NEW.tga", "BREAK_RESIAM_Over" )

g_pButton_BREAK_RESIAM:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(267+6,229+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BREAK_RESIAM:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(260+6,221+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BREAK_RESIAM:SetDownPoint
{
     ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,

 	"LEFT_TOP		= D3DXVECTOR2(262+6,221+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BREAK_RESIAM:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_BREAK_RESIAM:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_BREAK_RESIAM:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---고대 수로
g_pButton_ANCIENT_WATERWAY = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ANCIENT_WATERWAY )
g_pButton_ANCIENT_WATERWAY:SetName( "ANCIENT_WATERWAY" )
g_pButton_ANCIENT_WATERWAY:AddDummyInt( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"] )
g_pButton_ANCIENT_WATERWAY:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_ANCIENT_WATERWAY:SetNormalTex( "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_Normal" )
IconAni( g_pButton_ANCIENT_WATERWAY,  "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_Over" )
g_pButton_ANCIENT_WATERWAY:SetDownTex( "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_Over" )

g_pButton_ANCIENT_WATERWAY:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(379+6,216+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(374+6,208+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY:SetDownPoint
{
     ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,

 	"LEFT_TOP		= D3DXVECTOR2(375+6,208+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_ANCIENT_WATERWAY:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_ANCIENT_WATERWAY:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---고대 수로 중심
g_pButton_ANCIENT_WATERWAY_CORE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ANCIENT_WATERWAY_CORE )
g_pButton_ANCIENT_WATERWAY_CORE:SetName( "ANCIENT_WATERWAY_CORE" )
g_pButton_ANCIENT_WATERWAY_CORE:AddDummyInt( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"] )
g_pButton_ANCIENT_WATERWAY_CORE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_ANCIENT_WATERWAY_CORE:SetNormalTex( "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_CORE_Normal" )
IconAni( g_pButton_ANCIENT_WATERWAY_CORE,  "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_CORE_Over" )
g_pButton_ANCIENT_WATERWAY_CORE:SetDownTex( "DLG_Common_Button01_NEW.tga", "ANCIENT_WATERWAY_CORE_Over" )

g_pButton_ANCIENT_WATERWAY_CORE:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(411+6,119+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(404+6,111+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetDownPoint
{
	ADD_SIZE_X = -4-10,
    ADD_SIZE_Y = -4-10,
 	"LEFT_TOP		= D3DXVECTOR2(406+6,111+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---마그만타의 동굴
g_pButton_CAVE_OF_MAGMANTA = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CAVE_OF_MAGMANTA )
g_pButton_CAVE_OF_MAGMANTA:SetName( "CAVE_OF_MAGMANTA" )
g_pButton_CAVE_OF_MAGMANTA:AddDummyInt( DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"] )
g_pButton_CAVE_OF_MAGMANTA:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_CAVE_OF_MAGMANTA:SetNormalTex( "DLG_Common_Button01_NEW.tga", "CAVE_OF_MAGMANTA_NORMAL" )
g_pButton_CAVE_OF_MAGMANTA:SetOverTex( "DLG_Common_Button01_NEW.tga", "CAVE_OF_MAGMANTA_Over" )
IconAni( g_pButton_CAVE_OF_MAGMANTA,  "DLG_Common_Button01_NEW.tga", "CAVE_OF_MAGMANTA_Over" )
g_pButton_CAVE_OF_MAGMANTA:SetDownTex( "DLG_Common_Button01_NEW.tga", "CAVE_OF_MAGMANTA_Over" )

g_pButton_CAVE_OF_MAGMANTA:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(329+6,67+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAVE_OF_MAGMANTA:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(322+6,59+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAVE_OF_MAGMANTA:SetDownPoint
{
	ADD_SIZE_X = -4-10,
    ADD_SIZE_Y = -4-10,
 	"LEFT_TOP		= D3DXVECTOR2(324+6,59+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAVE_OF_MAGMANTA:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_CAVE_OF_MAGMANTA:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_CAVE_OF_MAGMANTA:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---얼어붙은 물의 신전
g_pButton_FROZEN_WATER_TEMPLE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_FROZEN_WATER_TEMPLE )
g_pButton_FROZEN_WATER_TEMPLE:SetName( "FROZEN_WATER_TEMPLE" )
g_pButton_FROZEN_WATER_TEMPLE:AddDummyInt( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"] )
g_pButton_FROZEN_WATER_TEMPLE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_FROZEN_WATER_TEMPLE:SetNormalTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_TEMPLE_Normal" )
g_pButton_FROZEN_WATER_TEMPLE:SetOverTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_TEMPLE_Over" )
IconAni( g_pButton_FROZEN_WATER_TEMPLE,  "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_TEMPLE_Over" )
g_pButton_FROZEN_WATER_TEMPLE:SetDownTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_TEMPLE_Over" )

g_pButton_FROZEN_WATER_TEMPLE:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(230+6,44+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_TEMPLE:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(223+6,36+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_TEMPLE:SetDownPoint
{
	ADD_SIZE_X = -4-10,
    ADD_SIZE_Y = -4-10,
 	"LEFT_TOP		= D3DXVECTOR2(225+6,36+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_TEMPLE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_FROZEN_WATER_TEMPLE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_FROZEN_WATER_TEMPLE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---물의 전당
g_pButton_FROZEN_WATER_HALL = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_FROZEN_WATER_HALL )
g_pButton_FROZEN_WATER_HALL:SetName( "FROZEN_WATER_HALL" )
g_pButton_FROZEN_WATER_HALL:AddDummyInt( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"] )
g_pButton_FROZEN_WATER_HALL:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_FROZEN_WATER_HALL:SetNormalTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_HALL_Normal" )
g_pButton_FROZEN_WATER_HALL:SetOverTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_HALL_Over" )
IconAni( g_pButton_FROZEN_WATER_HALL,  "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_HALL_Over" )
g_pButton_FROZEN_WATER_HALL:SetDownTex( "DLG_Common_Button01_NEW.tga", "FROZEN_WATER_HALL_Over" )

g_pButton_FROZEN_WATER_HALL:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(135+6,45+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(128+6,37+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetDownPoint
{
	ADD_SIZE_X = -4-10,
    ADD_SIZE_Y = -4-10,
 	"LEFT_TOP		= D3DXVECTOR2(130+6,37+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--------------------------- 헤니르 시공(+6 내렸음)

g_pButton_emir_space = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_emir_space )
g_pButton_emir_space:SetName( "Dungeon" )

g_pButton_emir_space:AddDummyString( "Glow_Forest_Star" )
g_pButton_emir_space:AddDummyInt( DUNGEON_ID["DI_ELDER_HENIR_SPACE"] )
g_pButton_emir_space:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_emir_space:SetNormalTex( "DLG_Common_Button02_NEW.tga", "EMIR_SPACE_NORMAL" )
IconAni( g_pButton_emir_space, "DLG_Common_Button02_NEW.tga", "EMIR_SPACE_OVER" )
g_pButton_emir_space:SetDownTex( "DLG_Common_Button02_NEW.tga", "EMIR_SPACE_OVER" )

g_pButton_emir_space:SetNormalPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(473,20+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(473-9,20+6-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(473-7,20+6-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_emir_space:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_emir_space:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--[[
	-- 할로윈 이벤트 던전
	g_pButton_Velder_East_Halloween = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_Velder_East_Halloween )

	g_pButton_Velder_East_Halloween:SetName( "Dungeon" )
	g_pButton_Velder_East_Halloween:AddDummyInt( DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"] )
	g_pButton_Velder_East_Halloween:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


	g_pButton_Velder_East_Halloween:SetNormalTex( "DLG_Common_Button02_NEW.tga", "Holloween_Normal" )
	-- g_pButton_Velder_East_Halloween:SetOverTex( "DLG_Common_Button02_NEW.tga", "Holloween_Over" )
	-- IconAni( g_pButton_Velder_East_Halloween, "DLG_Common_Button02_NEW.tga", "Holloween_Over" )
	g_pButton_Velder_East_Halloween:SetDownTex( "DLG_Common_Button02_NEW.tga", "Holloween_Over" )
	g_pButton_Velder_East_Halloween:SetNormalPoint
	{
 		"LEFT_TOP		= D3DXVECTOR2(480,288)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(480-6,288-6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 		"LEFT_TOP		= D3DXVECTOR2(480-4,288-4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	-- g_pButton_Velder_East_Halloween:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
    -- g_pButton_Velder_East_Halloween:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
    -- g_pButton_Velder_East_Halloween:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--]]


--[[
------ 디펜스 던전 (DISABLE 버전)
g_pButton_defence_disable = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_defence_disable )
g_pButton_defence_disable:SetName( "DefenceDungeonDisable" )
g_pButton_defence_disable:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] )
g_pButton_defence_disable:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_defence_disable:SetNormalTex( "DLG_Common_Button01_NEW.tga", "DEFENCE_NOACTIVE" )
-- g_pButton_defence_disable:SetOverTex( "DLG_Common_Button01_NEW.tga", "DEFENCE_NOACTIVE" )
IconAni( g_pButton_defence_disable, "DLG_Common_Button01_NEW.tga", "DEFENCE_NOACTIVE" )
g_pButton_defence_disable:SetDownTex( "DLG_Common_Button01_NEW.tga", "DEFENCE_NOACTIVE" )
g_pButton_defence_disable:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(25,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence_disable:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(25,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence_disable:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(25,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence_disable:SetGuideDesc( STR_ID_2700 )
g_pButton_defence_disable:SetEnableClick( false )
g_pButton_defence_disable:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )

------ 디펜스 던전
g_pButton_defence = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_defence )
g_pButton_defence:SetName( "DefenceDungeon" )
g_pButton_defence:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] )
g_pButton_defence:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_defence:SetNormalTex( "DLG_Common_Button01_NEW.tga", "Defence_normal" )
--g_pButton_defence:SetOverTex( "DLG_Common_Button01_NEW.tga", "defence_Over" )
IconAni( g_pButton_defence, "DLG_Common_Button01_NEW.tga", "defence_Over" )
g_pButton_defence:SetDownTex( "DLG_Common_Button01_NEW.tga", "defence_over" )
g_pButton_defence:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(25,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetOverPoint
{
   
    "LEFT_TOP		= D3DXVECTOR2(25-6,270-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
    "LEFT_TOP		= D3DXVECTOR2(25-4,270-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_defence:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_defence:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--]]

--[[
		 -- 이벤트 
		g_pButton_Tree_Day = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Tree_Day )



		g_pButton_Tree_Day:SetName( "Dungeon" )
		g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_ALTERA"] )
		g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

		g_pButton_Tree_Day:SetNormalTex( "DLG_Common_Button02_NEW.tga", "TREE_NORMAL" )

		g_pButton_Tree_Day:SetOverTex( "DLG_Common_Button02_NEW.tga", "TREE_OVER" )
		-- IconAni( g_pButton_Tree_Day, "DLG_Common_Button02_NEW.tga", "event_OVER" )

		g_pButton_Tree_Day:SetDownTex( "DLG_Common_Button02_NEW.tga", "TREE_OVER" )

		g_pButton_Tree_Day:SetNormalPoint
		{

 			"LEFT_TOP		= D3DXVECTOR2(480,288)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Tree_Day:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(480-6,288-6)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Tree_Day:SetDownPoint
		{
			ADD_SIZE_X = -4,
			ADD_SIZE_Y = -4,
 			"LEFT_TOP		= D3DXVECTOR2(480-4,288-4)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Tree_Day:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]

------------------------------------------------------------------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_11048 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 -180-56, 571 -250-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(160+1,301)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(160+15,301)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(160+28,301)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_11049 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-63, 571-228-34 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(277+1,309)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(277+15,309)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(277+28,309)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별3
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_11050 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(390,301)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(390+1,301)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(390+15,301)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(390+28,301)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별4
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_11051 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 +84-56, 571 -356-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(424+1,199)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(424+15,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(424+28,199)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별5
g_pButton_STAR5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR5 )
g_pButton_STAR5:SetNameStrID( STR_ID_13415 )

g_pPictureSTAR5_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_StarBG )
g_pPictureSTAR5_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR5_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -21-37, 571 -414-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star0 )
g_pPictureSTAR5_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR5_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(338+1,150)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star1 )
g_pPictureSTAR5_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR5_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(338+15,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star2 )
g_pPictureSTAR5_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR5_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(338+28,150)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별6
g_pButton_STAR6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR6 )
g_pButton_STAR6:SetNameStrID( STR_ID_13416 )

g_pPictureSTAR6_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_StarBG )
g_pPictureSTAR6_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR6_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -146-9, 571 -440+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star0 )
g_pPictureSTAR6_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR6_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(241+1,139)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star1 )
g_pPictureSTAR6_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR6_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(241+15,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star2 )
g_pPictureSTAR6_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR6_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(241+28,139)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별7
g_pButton_STAR7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR7 )
g_pButton_STAR7:SetNameStrID( STR_ID_13417 )

g_pPictureSTAR7_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR7:AddPicture( g_pPictureSTAR7_StarBG )
g_pPictureSTAR7_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR7_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -260+9,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR7_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR7:AddPicture( g_pPictureSTAR7_Star0 )
g_pPictureSTAR7_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR7_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(145+1,139)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR7_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR7:AddPicture( g_pPictureSTAR7_Star1 )
g_pPictureSTAR7_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR7_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(145+15,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR7_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR7:AddPicture( g_pPictureSTAR7_Star2 )
g_pPictureSTAR7_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR7_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(145+28,139)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별8
g_pButton_STAR8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR8 )
g_pButton_STAR8:SetNameStrID( STR_ID_3722 )

g_pPictureSTAR8_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR8:AddPicture( g_pPictureSTAR8_StarBG )
g_pPictureSTAR8_StarBG:SetTex( "DLG_Common_Button00_NEW.TGA", "Star_Bg" )
g_pPictureSTAR8_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 488,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR8_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR8:AddPicture( g_pPictureSTAR8_Star0 )
g_pPictureSTAR8_Star0:SetTex( "DLG_Common_Button00_NEW.TGA", "Star_1" )
g_pPictureSTAR8_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 488+1,104)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR8_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR8:AddPicture( g_pPictureSTAR8_Star1 )
g_pPictureSTAR8_Star1:SetTex( "DLG_Common_Button00_NEW.TGA", "Star_2" )
g_pPictureSTAR8_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 488+15,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR8_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR8:AddPicture( g_pPictureSTAR8_Star2 )
g_pPictureSTAR8_Star2:SetTex( "DLG_Common_Button00_NEW.TGA", "Star_3" )
g_pPictureSTAR8_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 488+28,104)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR8:SetShow(false)
------------------------------------------------------------
--기본별2--퀘스트 마크용
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_4979 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 490,357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR2:SetShow(false)
--기본별2--퀘스트 마크용
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_11495 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 42, 357)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR2:SetShow(false)

g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_10343 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 0+26 , 571-224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR2:SetShow(false)


--[[
--해외 나와 이벤트
g_pButton_Night_Watcher = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Night_Watcher )
g_pButton_Night_Watcher:SetName( "Dungeon" )
g_pButton_Night_Watcher:AddDummyInt( DUNGEON_ID["DI_EVENT_NIGHT_WATCHER"] )
g_pButton_Night_Watcher:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_Night_Watcher:SetNormalTex( "DLG_Common_New_Button_CN_Event01.dds", "KING_NASODS_LAIR_NORMAL" )
g_pButton_Night_Watcher:SetOverTex( "DLG_Common_New_Button_CN_Event01.dds", "KING_NASODS_LAIR_OVER" )
IconAni( g_pButton_Night_Watcher, "DLG_Common_New_Button_CN_Event01.dds", "KING_NASODS_LAIR_OVER" )
g_pButton_Night_Watcher:SetDownTex( "DLG_Common_New_Button_CN_Event01.dds", "KING_NASODS_LAIR_OVER" )

g_pButton_Night_Watcher:SetNormalPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(480,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Night_Watcher:SetOverPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(480-6+2,288-6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Night_Watcher:SetDownPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(480-4+2,288-4+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Night_Watcher:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Night_Watcher:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Night_Watcher:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--]]