-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--봉헌의 신전
g_pButtonBonghun_temple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBonghun_temple )
g_pButtonBonghun_temple:SetName( "Bonghun_temple" )
g_pButtonBonghun_temple:AddDummyInt( DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"] )
g_pButtonBonghun_temple:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBonghun_temple:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Bonghun_Temple_normal" )

g_pButtonBonghun_temple:SetOverTex( "DLG_Common_Button00_NEW.tga", "Bonghun_temple_Over" )
 IconAni( g_pButtonBonghun_temple,  "DLG_Common_Button00_NEW.tga", "Bonghun_Temple_Over" )

g_pButtonBonghun_temple:SetDownTex( "DLG_Common_Button00_NEW.tga", "Bonghun_Temple_Over" )

g_pButtonBonghun_temple:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(182-88+14,450-225-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(108-5,185-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(108-4,185-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBonghun_temple:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBonghun_temple:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBonghun_temple:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



--나선 회랑
g_pButtonscrew_corridor = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonscrew_corridor )
g_pButtonscrew_corridor:SetName( "screw_corridor" )
g_pButtonscrew_corridor:AddDummyInt( DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"] )
g_pButtonscrew_corridor:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonscrew_corridor:SetNormalTex( "DLG_Common_Button00_NEW.tga", "screw_corridor_normal" )

g_pButtonscrew_corridor:SetOverTex( "DLG_Common_Button00_NEW.tga", "screw_corridor_Over" )
IconAni( g_pButtonscrew_corridor,  "DLG_Common_Button00_NEW.tga", "screw_corridor_Over" )

g_pButtonscrew_corridor:SetDownTex( "DLG_Common_Button00_NEW.tga", "screw_corridor_Over" )

g_pButtonscrew_corridor:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(345-153+38,525-256-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonscrew_corridor:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(230-6,261-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonscrew_corridor:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(230-5,261-7)",

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

g_pButtonChapel:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Chapel_normal" )

g_pButtonChapel:SetOverTex( "DLG_Common_Button00_NEW.tga", "Chapel_Over" )
IconAni( g_pButtonChapel,  "DLG_Common_Button00_NEW.tga", "Chapel_Over" )

g_pButtonChapel:SetDownTex( "DLG_Common_Button00_NEW.tga", "Chapel_Over" )

g_pButtonChapel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(635-270+50,550-264-81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(415-6,205-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(415-4,205-4)",

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

g_pButtonUnderGarden:SetNormalTex( "DLG_Common_Button01_NEW.tga", "under_garden_normal" )

g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button01_NEW.tga", "under_garden_Over" )
IconAni( g_pButtonUnderGarden,  "DLG_Common_Button01_NEW.tga", "under_garden_Over" )

g_pButtonUnderGarden:SetDownTex( "DLG_Common_Button01_NEW.tga", "under_garden_Over" )

g_pButtonUnderGarden:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(505-220+22,470-234-73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(307-6,163-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(307-5,163-5)",

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

g_pButtonTowerHeart:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Tower_Heart_Normal" )

g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button00_NEW.tga", "Tower_Heart_Over" )
IconAni( g_pButtonTowerHeart,  "DLG_Common_Button00_NEW.tga", "Tower_Heart_Over" )

g_pButtonTowerHeart:SetDownTex( "DLG_Common_Button00_NEW.tga", "Tower_Heart_Over" )

g_pButtonTowerHeart:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(460-199-48,291-160-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTowerHeart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213-6,109-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTowerHeart:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(213-5,109-5)",

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

g_pButtonOfferingsAlter:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Offerings_Alter_Normal" )

g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button00_NEW.tga", "Offerings_Alter_Over" )
IconAni( g_pButtonOfferingsAlter,  "DLG_Common_Button00_NEW.tga", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetDownTex( "DLG_Common_Button00_NEW.tga", "Offerings_Alter_Over" )

g_pButtonOfferingsAlter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(475-206+44,93-83+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313-5,42-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOfferingsAlter:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(313-4,42-5)",

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

	"LEFT_TOP		= D3DXVECTOR2(473-9,20-8+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_emir_space:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(473-7,20-6+6)",

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
	 IconAni( g_pButton_Velder_East_Halloween, "DLG_Common_Button02_NEW.tga", "Holloween_Over" )
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

--[[
		--  이벤트 
		g_pButton_Tree_Day = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Tree_Day )
		g_pButton_Tree_Day:SetName( "Dungeon" )
		g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"] )
		g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
		g_pButton_Tree_Day:SetNormalTex( "DLG_Common_Button02_NEW.tga", "TREE_NORMAL" )
		--g_pButton_Tree_Day:SetOverTex( "DLG_Common_Button02_NEW.tga", "TREE_OVER" )
		IconAni( g_pButton_Tree_Day, "DLG_Common_Button02_NEW.tga", "event_OVER" )

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
--------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_3572 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 -180-110-4+12-5, 571 -250-70+54-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(114+1-5,275)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(114+15-5,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(114+28-5,275)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_3592 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131-10+38-5, 571-228-152+150-4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(237+1-5,337)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(237+15-5,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(237+28-5,337)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별3
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_3609 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396+67 -154+64+50-7, 571 -250-175+208-74+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423+1-7,280+2)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423+15-7,280+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(423+28-7,280+2)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별4
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_3631 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 +84-80-106+22-6, 571 -356-20+108-70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+1-6,233)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+15-6,233)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+28-6,233)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별5
g_pButton_STAR5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR5 )
g_pButton_STAR5:SetNameStrID( STR_ID_3724 )

g_pPictureSTAR5_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_StarBG )
g_pPictureSTAR5_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR5_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -21-26-80-49-6, 571 -414+142-98-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star0 )
g_pPictureSTAR5_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR5_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220+1-6,179)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star1 )
g_pPictureSTAR5_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR5_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220+15-6,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star2 )
g_pPictureSTAR5_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR5_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220+28-6,179)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별6
g_pButton_STAR6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR6 )
g_pButton_STAR6:SetNameStrID( STR_ID_3725 )

g_pPictureSTAR6_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_StarBG )
g_pPictureSTAR6_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR6_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -146-10+32+44-4, 571 -440+218-260+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star0 )
g_pPictureSTAR6_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR6_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+1-4,121)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star1 )
g_pPictureSTAR6_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR6_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+15-4,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star2 )
g_pPictureSTAR6_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR6_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(316+28-4,121)",
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

-----------------------------------------------------------------------------------

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