-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--- 레시암 근교
g_pButton_OUTSKIRTS_RESIAM = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OUTSKIRTS_RESIAM )
g_pButton_OUTSKIRTS_RESIAM:SetName( "OUTSKIRTS_RESIAM" )
g_pButton_OUTSKIRTS_RESIAM:AddDummyInt( DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"] )
g_pButton_OUTSKIRTS_RESIAM:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_OUTSKIRTS_RESIAM:SetNormalTex( "DLG_Common_New_Button11.dds", "OUTSKIRTS_RESIAM_NORMAL" )
IconAni( g_pButton_OUTSKIRTS_RESIAM,  "DLG_Common_New_Button11.dds", "OUTSKIRTS_RESIAM_OVER" )
g_pButton_OUTSKIRTS_RESIAM:SetDownTex( "DLG_Common_New_Button11.dds", "OUTSKIRTS_RESIAM_OVER" )

g_pButton_OUTSKIRTS_RESIAM:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(396+2,425-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OUTSKIRTS_RESIAM:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(396-7+2,425-7-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OUTSKIRTS_RESIAM:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(396-7+2+2,425-7+2-1)",
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

g_pButton_BREAK_RESIAM:SetNormalTex( "DLG_Common_New_Button11.dds", "BREAK_RESIAM_Normal" )
IconAni( g_pButton_BREAK_RESIAM,  "DLG_Common_New_Button11.dds", "BREAK_RESIAM_Over" )
g_pButton_BREAK_RESIAM:SetDownTex( "DLG_Common_New_Button11.dds", "BREAK_RESIAM_Over" )

g_pButton_BREAK_RESIAM:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(605+1,460-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BREAK_RESIAM:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(605-7+1,460-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BREAK_RESIAM:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(605-7+2+1,460-5+1)",

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

g_pButton_ANCIENT_WATERWAY:SetNormalTex( "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_Normal" )
IconAni( g_pButton_ANCIENT_WATERWAY,  "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_Over" )
g_pButton_ANCIENT_WATERWAY:SetDownTex( "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_Over" )

g_pButton_ANCIENT_WATERWAY:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(809,413)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(809-7,413-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(809-7+2,413-6+2)",

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

g_pButton_ANCIENT_WATERWAY_CORE:SetNormalTex( "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_CORE_Normal" )
IconAni( g_pButton_ANCIENT_WATERWAY_CORE,  "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_CORE_Over" )
g_pButton_ANCIENT_WATERWAY_CORE:SetDownTex( "DLG_Common_New_Button11.dds", "ANCIENT_WATERWAY_CORE_Over" )

g_pButton_ANCIENT_WATERWAY_CORE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(832,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(832-5,255-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetDownPoint
{
	ADD_SIZE_X = -4,
    ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(832-5+2,255-4+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_ANCIENT_WATERWAY_CORE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--------------------------- 헤니르 시공

g_pButton_emir_space = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_emir_space )
g_pButton_emir_space:SetName( "Dungeon" )

g_pButton_emir_space:AddDummyString( "Glow_Forest_Star" )
g_pButton_emir_space:AddDummyInt( DUNGEON_ID["DI_ELDER_HENIR_SPACE"] )
g_pButton_emir_space:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_emir_space:SetNormalTex( "DLG_Common_New_Button08.dds", "emir_space_normal" )

--g_pButton_emir_space:SetOverTex( "DLG_Common_Button00.TGA", "Island_Sky_Down2" )
IconAni( g_pButton_emir_space, "DLG_Common_New_Button08.dds", "emir_space_over" )

g_pButton_emir_space:SetDownTex( "DLG_Common_New_Button08.dds", "emir_space_over" )

g_pButton_emir_space:SetNormalPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(236+503,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(236+503-12,140-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(236+503+2-12,140+2-10)",

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


	g_pButton_Velder_East_Halloween:SetNormalTex( "DLG_Common_New_Button08.dds", "Holloween_Normal" )
	--g_pButton_Velder_East_Halloween:SetOverTex( "DLG_Common_New_Button08.dds", "Holloween_Over" )
	IconAni( g_pButton_Velder_East_Halloween, "DLG_Common_New_Button08.dds", "Holloween_Over" )
	g_pButton_Velder_East_Halloween:SetDownTex( "DLG_Common_New_Button08.dds", "Holloween_Over" )
	g_pButton_Velder_East_Halloween:SetNormalPoint
	{
 		"LEFT_TOP		= D3DXVECTOR2(124,561)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(117,554)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 		"LEFT_TOP		= D3DXVECTOR2(117+2,554+2)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
    g_pButton_Velder_East_Halloween:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
    g_pButton_Velder_East_Halloween:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--]]



------ 디펜스 던전 (DISABLE 버전)
g_pButton_defence_disable = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_defence_disable )
g_pButton_defence_disable:SetName( "DefenceDungeonDisable" )
g_pButton_defence_disable:AddDummyInt( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] )
g_pButton_defence_disable:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_defence_disable:SetNormalTex( "DLG_Common_New_Button11.dds", "DEFENCE_NOACTIVE" )
g_pButton_defence_disable:SetOverTex( "DLG_Common_New_Button11.dds", "DEFENCE_NOACTIVE" )
--IconAni( g_pButton_defence_disable, "DLG_Common_New_Button11.dds", "defence_Over" )
g_pButton_defence_disable:SetDownTex( "DLG_Common_New_Button11.dds", "DEFENCE_NOACTIVE" )
g_pButton_defence_disable:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(236+503+90,140+120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence_disable:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(236+503+90,140+120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence_disable:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(236+503+90,140+120)",
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
g_pButton_defence:SetNormalTex( "DLG_Common_New_Button11.dds", "Defence_normal" )
--g_pButton_defence:SetOverTex( "DLG_Common_New_Button11.dds", "defence_Over" )
IconAni( g_pButton_defence, "DLG_Common_New_Button11.dds", "defence_Over" )
g_pButton_defence:SetDownTex( "DLG_Common_New_Button11.dds", "defence_over" )
g_pButton_defence:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(236+503+90,140+120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetOverPoint
{
   
    "LEFT_TOP		= D3DXVECTOR2(236+503+90-6,140+120-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
    "LEFT_TOP		= D3DXVECTOR2(236+503+90-4,140+120-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_defence:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_defence:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_defence:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---마그만타의 동굴
g_pButton_CAVE_OF_MAGMANTA = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CAVE_OF_MAGMANTA )
g_pButton_CAVE_OF_MAGMANTA:SetName( "CAVE_OF_MAGMANTA" )
g_pButton_CAVE_OF_MAGMANTA:AddDummyInt( DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"] )
g_pButton_CAVE_OF_MAGMANTA:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_CAVE_OF_MAGMANTA:SetNormalTex( "DLG_Common_New_Button12.tga", "CAVE_OF_MAGMANTA_Normal" )
--g_pButton_CAVE_OF_MAGMANTA:SetOverTex( "DLG_Common_New_Button12.tga", "CAVE_OF_MAGMANTA_Over" )
IconAni( g_pButton_CAVE_OF_MAGMANTA,  "DLG_Common_New_Button12.tga", "CAVE_OF_MAGMANTA_Over" )
g_pButton_CAVE_OF_MAGMANTA:SetDownTex( "DLG_Common_New_Button12.tga", "CAVE_OF_MAGMANTA_Over" )

g_pButton_CAVE_OF_MAGMANTA:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(832-169,255-109)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAVE_OF_MAGMANTA:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(832-5-170,255-4-111)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CAVE_OF_MAGMANTA:SetDownPoint
{
	ADD_SIZE_X = -4,
    ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(832-5+2-170,255-4+2-111)",
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
g_pButton_FROZEN_WATER_TEMPLE:SetNormalTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_TEMPLE_Normal" )
--g_pButton_FROZEN_WATER_TEMPLE:SetOverTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_TEMPLE_Over" )
IconAni( g_pButton_FROZEN_WATER_TEMPLE,  "DLG_Common_New_Button12.tga", "FROZEN_WATER_TEMPLE_Over" )
g_pButton_FROZEN_WATER_TEMPLE:SetDownTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_TEMPLE_Over" )

g_pButton_FROZEN_WATER_TEMPLE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(451,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_TEMPLE:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(450-5,86-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_TEMPLE:SetDownPoint
{
	ADD_SIZE_X = -4,
    ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(450-5+2,86-8+2)",
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
g_pButton_FROZEN_WATER_HALL:SetNormalTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_HALL_Normal" )
--g_pButton_FROZEN_WATER_HALL:SetOverTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_HALL_Over" )
IconAni( g_pButton_FROZEN_WATER_HALL,  "DLG_Common_New_Button12.tga", "FROZEN_WATER_HALL_Over" )
g_pButton_FROZEN_WATER_HALL:SetDownTex( "DLG_Common_New_Button12.tga", "FROZEN_WATER_HALL_Over" )

g_pButton_FROZEN_WATER_HALL:SetNormalPoint
{
   
 	"LEFT_TOP		= D3DXVECTOR2(262,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(262-7,76-11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetDownPoint
{
	ADD_SIZE_X = -4,
    ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(262-7+2,73-8+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_FROZEN_WATER_HALL:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


-- 식목일 이벤트 
--[[
g_pButton_Tree_Day = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Tree_Day )
g_pButton_Tree_Day:SetName( "Dungeon" )
g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_HAMEL"] )
g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )
g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )
g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

g_pButton_Tree_Day:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312-30+535,24+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303-30+535,24+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(303-30+2+535,24+2+25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]

