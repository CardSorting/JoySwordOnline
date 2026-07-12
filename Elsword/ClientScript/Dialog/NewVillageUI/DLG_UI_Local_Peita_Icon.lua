-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pButtonBonghun_temple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBonghun_temple )
g_pButtonBonghun_temple:SetName( "Bonghun_temple" )
g_pButtonBonghun_temple:AddDummyInt( DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"] )
g_pButtonBonghun_temple:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBonghun_temple:SetNormalTex( "DLG_Common_New_Button08.dds", "Bonghun_Temple_normal" )

--g_pButtonBonghun_temple:SetOverTex( "DLG_Common_Button03.tga", "Bonghun_temple_Over" )
IconAni( g_pButtonBonghun_temple,  "DLG_Common_New_Button08.dds", "Bonghun_Temple_Over" )

g_pButtonBonghun_temple:SetDownTex( "DLG_Common_New_Button08.dds", "Bonghun_Temple_Over" )

g_pButtonBonghun_temple:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(182,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(174,436)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(174+2,436+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBonghun_temple:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBonghun_temple:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )




g_pButtonscrew_corridor = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonscrew_corridor )
g_pButtonscrew_corridor:SetName( "screw_corridor" )
g_pButtonscrew_corridor:AddDummyInt( DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"] )
g_pButtonscrew_corridor:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonscrew_corridor:SetNormalTex( "DLG_Common_New_Button08.dds", "screw_corridor_normal" )

--g_pButtonscrew_corridor:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonscrew_corridor,  "DLG_Common_New_Button08.dds", "screw_corridor_Over" )

g_pButtonscrew_corridor:SetDownTex( "DLG_Common_New_Button08.dds", "screw_corridor_Over" )

g_pButtonscrew_corridor:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(345,525)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonscrew_corridor:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(339,516)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonscrew_corridor:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(339+2,516+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonscrew_corridor:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonscrew_corridor:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonscrew_corridor:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--kimhc -- 2009-05-14
--지하 예배당
g_pButtonChapel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChapel )
g_pButtonChapel:SetName( "chapel" )
g_pButtonChapel:AddDummyInt( DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"] )
g_pButtonChapel:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonChapel:SetNormalTex( "DLG_Common_New_Button08.dds", "Chapel_normal" )

--g_pButtonChapel:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonChapel,  "DLG_Common_New_Button08.dds", "Chapel_Over" )

g_pButtonChapel:SetDownTex( "DLG_Common_New_Button08.dds", "Chapel_Over" )

g_pButtonChapel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(635,550)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(628,539)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(628+2,539+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonChapel:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonChapel:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 지하 정원

g_pButtonUnderGarden = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnderGarden )
g_pButtonUnderGarden:SetName( "underGarden" )
g_pButtonUnderGarden:AddDummyInt( DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"] )
g_pButtonUnderGarden:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonUnderGarden:SetNormalTex( "DLG_Common_New_Button07.dds", "under_garden_normal" )

--g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonUnderGarden,  "DLG_Common_New_Button07.dds", "under_garden_Over" )

g_pButtonUnderGarden:SetDownTex( "DLG_Common_New_Button07.dds", "under_garden_Over" )

g_pButtonUnderGarden:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(505,470)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(497,459)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(497+2,459+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonUnderGarden:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonUnderGarden:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--}} kimhc -- 2009-05-14
---------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 신전의 심장부

g_pButtonTowerHeart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTowerHeart )
g_pButtonTowerHeart:SetName( "TowerHeart" )
g_pButtonTowerHeart:AddDummyInt( DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"] )
g_pButtonTowerHeart:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonTowerHeart:SetNormalTex( "DLG_Common_New_Button10.dds", "Tower_Heart_Normal" )

--g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonTowerHeart,  "DLG_Common_New_Button10.dds", "Tower_Heart_Over" )

g_pButtonTowerHeart:SetDownTex( "DLG_Common_New_Button10.dds", "Tower_Heart_Over" )

g_pButtonTowerHeart:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(460,291)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTowerHeart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(452,281)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTowerHeart:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(452+2,281+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTowerHeart:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonTowerHeart:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonTowerHeart:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--}} kimhc -- 2009-07-10
---------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 봉헌의 제단

g_pButtonOfferingsAlter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOfferingsAlter )
g_pButtonOfferingsAlter:SetName( "OfferingsAlter" )
g_pButtonOfferingsAlter:AddDummyInt( DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"] )
g_pButtonOfferingsAlter:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonOfferingsAlter:SetNormalTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Normal" )

--g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonOfferingsAlter,  "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetDownTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(475,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(467,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(467+2,77+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonOfferingsAlter:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonOfferingsAlter:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

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
 		"LEFT_TOP		= D3DXVECTOR2(124-60,561)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetOverPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(117-60,554)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 		"LEFT_TOP		= D3DXVECTOR2(117+2-60,554+2)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Velder_East_Halloween:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
    g_pButton_Velder_East_Halloween:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
    g_pButton_Velder_East_Halloween:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
--]]





--[[





-- fix!! 임시 던전

g_pButtonOfferingsAlter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOfferingsAlter )
g_pButtonOfferingsAlter:SetName( "OfferingsAlter" )
g_pButtonOfferingsAlter:AddDummyInt( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"] )
g_pButtonOfferingsAlter:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonOfferingsAlter:SetNormalTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Normal" )

--g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonOfferingsAlter,  "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetDownTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetNormalPoint
{


	"LEFT_TOP		= D3DXVECTOR2(475+200,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(467+200,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,

	"LEFT_TOP		= D3DXVECTOR2(467+202,77+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )







-- fix!! 임시 던전

g_pButtonOfferingsAlter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOfferingsAlter )
g_pButtonOfferingsAlter:SetName( "OfferingsAlter" )
g_pButtonOfferingsAlter:AddDummyInt( DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"] )
g_pButtonOfferingsAlter:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonOfferingsAlter:SetNormalTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Normal" )

--g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03.tga", "screw_corridor_Over" )
IconAni( g_pButtonOfferingsAlter,  "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetDownTex( "DLG_Common_New_Button10.dds", "Offerings_Alter_Over" )




g_pButtonOfferingsAlter:SetNormalPoint
{


	"LEFT_TOP		= D3DXVECTOR2(475+300,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(467+300,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,

	"LEFT_TOP		= D3DXVECTOR2(467+302,77+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )

--]]


-- 식목일 이벤트 
--[[
g_pButton_Tree_Day = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Tree_Day )

g_pButton_Tree_Day:SetName( "Dungeon" )
g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_PEITA"] )
g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )

g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )

g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

g_pButton_Tree_Day:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312-30,30+168)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303-30,24+168)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(303+2-30,24+2+168)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
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