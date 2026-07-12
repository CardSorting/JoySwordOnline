-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


---제3 거주구역
g_pButtonVelder_Dwelling = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_Dwelling )
g_pButtonVelder_Dwelling:SetName( "THIRD_DWELLING" )
g_pButtonVelder_Dwelling:AddDummyInt( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"] )
g_pButtonVelder_Dwelling:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVelder_Dwelling:SetNormalTex( "DLG_Common_Button01_NEW.tga", "DWELLING_NORMAL" )

g_pButtonVelder_Dwelling:SetOverTex( "DLG_Common_Button01_NEW.tga", "DWELLING_OVER" )
IconAni( g_pButtonVelder_Dwelling,  "DLG_Common_Button01_NEW.tga", "DWELLING_OVER" )

g_pButtonVelder_Dwelling:SetDownTex( "DLG_Common_Button01_NEW.tga", "DWELLING_OVER" )

g_pButtonVelder_Dwelling:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(170-70+19,346-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Dwelling:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119-10,184-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Dwelling:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(119-7,184-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Dwelling:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVelder_Dwelling:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVelder_Dwelling:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )




------희망의 다리
g_pButtonVELDER_BRIDGE_HOPE= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVELDER_BRIDGE_HOPE)
g_pButtonVELDER_BRIDGE_HOPE:SetName( "BRIDGE_HOPE" )
g_pButtonVELDER_BRIDGE_HOPE:AddDummyInt( DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"] )
g_pButtonVELDER_BRIDGE_HOPE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVELDER_BRIDGE_HOPE:SetNormalTex( "DLG_Common_Button01_NEW.tga", "Bridge_Normal" )

g_pButtonVELDER_BRIDGE_HOPE:SetOverTex( "DLG_Common_Button01_NEW.tga", "Bridge_Over" )
IconAni( g_pButtonVELDER_BRIDGE_HOPE,  "DLG_Common_Button01_NEW.tga", "Bridge_Over" )

g_pButtonVELDER_BRIDGE_HOPE:SetDownTex( "DLG_Common_Button01_NEW.tga", "Bridge_Over" )

g_pButtonVELDER_BRIDGE_HOPE:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(329-133+11,236-130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_HOPE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(207-7,106-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_HOPE:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(207-5,106-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_HOPE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVELDER_BRIDGE_HOPE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVELDER_BRIDGE_HOPE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



---왕궁 진입로
g_pButtonVELDER_ROAD_PALACE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVELDER_ROAD_PALACE )
g_pButtonVELDER_ROAD_PALACE:SetName( "PALACE_ENTRANCE" )
g_pButtonVELDER_ROAD_PALACE:AddDummyInt( DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"] )
g_pButtonVELDER_ROAD_PALACE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVELDER_ROAD_PALACE:SetNormalTex( "DLG_Common_Button01_NEW.tga", "ROAD_PALACE_Normal" )

-- g_pButtonVELDER_Road_palace:SetOverTex( "DLG_Common_Button01_NEW.tga", "ROAD_PALACE" )
IconAni( g_pButtonVELDER_ROAD_PALACE,  "DLG_Common_Button01_NEW.tga", "ROAD_PALACE_Over" )

g_pButtonVELDER_ROAD_PALACE:SetDownTex( "DLG_Common_Button01_NEW.tga", "ROAD_PALACE_Over" )


g_pButtonVELDER_ROAD_PALACE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(503-201+30,167-105+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_ROAD_PALACE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(332-7,80-9)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_ROAD_PALACE:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(332-5,80-8)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_ROAD_PALACE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVELDER_ROAD_PALACE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVELDER_ROAD_PALACE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

---불타는 희망의 다리
g_pButtonVELDER_BRIDGE_BUNNING = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVELDER_BRIDGE_BUNNING )
g_pButtonVELDER_BRIDGE_BUNNING:SetName( "BRIDGE_BUNNING" )
g_pButtonVELDER_BRIDGE_BUNNING:AddDummyInt( DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"] )
g_pButtonVELDER_BRIDGE_BUNNING:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVELDER_BRIDGE_BUNNING:SetNormalTex( "DLG_Common_Button01_NEW.tga", "BRIDGE_BUNNING_Normal" )

-- g_pButtonVELDER_BRIDGE_BUNNING:SetOverTex( "DLG_Common_Button01_NEW.tga", "BRIDGE_BUNNING" )
IconAni( g_pButtonVELDER_BRIDGE_BUNNING,  "DLG_Common_Button01_NEW.tga", "BRIDGE_BUNNING_Over" )

g_pButtonVELDER_BRIDGE_BUNNING:SetDownTex( "DLG_Common_Button01_NEW.tga", "BRIDGE_BUNNING_Over" )


g_pButtonVELDER_BRIDGE_BUNNING:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(648-259+32,265-143+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_BUNNING:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(421-7,145-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_BUNNING:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(421-5,145-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_BUNNING:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVELDER_BRIDGE_BUNNING:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVELDER_BRIDGE_BUNNING:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


---벨더 마켓
g_pButtonVELDER_MARKET = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVELDER_MARKET )
g_pButtonVELDER_MARKET:SetName( "MARKET" )
g_pButtonVELDER_MARKET:AddDummyInt( DUNGEON_ID["DI_VELDER_MARKET_NORMAL"] )
g_pButtonVELDER_MARKET:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVELDER_MARKET:SetNormalTex( "DLG_Common_Button01_NEW.tga", "MARKET_Normal" )

-- g_pButtonVELDER_MARKET:SetOverTex( "DLG_Common_Button01_NEW.tga", "MARKET" )
IconAni( g_pButtonVELDER_MARKET,  "DLG_Common_Button01_NEW.tga", "MARKET_Over" )

g_pButtonVELDER_MARKET:SetDownTex( "DLG_Common_Button01_NEW.tga", "MARKET_Over" )


g_pButtonVELDER_MARKET:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(567-229+28,415-206+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_MARKET:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(366-6,218-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_MARKET:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(366-4,218-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_MARKET:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVELDER_MARKET:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVELDER_MARKET:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


---남쪽게이트
g_pButtonVELDER_GATE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVELDER_GATE )
g_pButtonVELDER_GATE:SetName( "GATE" )
g_pButtonVELDER_GATE:AddDummyInt( DUNGEON_ID["DI_VELDER_GATE_NORMAL"] )
g_pButtonVELDER_GATE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVELDER_GATE:SetNormalTex( "DLG_Common_Button01_NEW.tga", "GATE_Normal" )

-- g_pButtonVELDER_GATE:SetOverTex( "DLG_Common_Button01_NEW.tga", "GATE" )
IconAni( g_pButtonVELDER_GATE,  "DLG_Common_Button01_NEW.tga", "GATE_Over" )

g_pButtonVELDER_GATE:SetDownTex( "DLG_Common_Button01_NEW.tga", "GATE_Over" )


g_pButtonVELDER_GATE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(388-157+14,503-237-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_GATE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245-6,256-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_GATE:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(245-4,256-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_GATE:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonVELDER_GATE:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonVELDER_GATE:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



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
		 -- 이벤트 
		g_pButton_Tree_Day = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Tree_Day )

		g_pButton_Tree_Day:SetName( "Dungeon" )
		g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"] )
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
--벨더 비던
g_pButton_velder_Secret_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_velder_Secret_Dungeon )
g_pButton_velder_Secret_Dungeon:SetName( "VelderSecret" )

g_pButton_velder_Secret_Dungeon:AddDummyInt( DUNGEON_ID["DI_VELDER_SECRET_COMMON"] )
g_pButton_velder_Secret_Dungeon:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_velder_Secret_Dungeon:SetNormalTex( "DLG_Common_Button01_NEW.tga", "SCRET_NORMAL" )
IconAni( g_pButton_velder_Secret_Dungeon,  "DLG_Common_Button01_NEW.tga", "SCRET_OVER" )
g_pButton_velder_Secret_Dungeon:SetDownTex( "DLG_Common_Button01_NEW.tga", "SCRET_OVER" )

	g_pButton_velder_Secret_Dungeon:SetNormalPoint

	{
 		"LEFT_TOP	= D3DXVECTOR2(35,25)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,



	}
	g_pButton_velder_Secret_Dungeon:SetOverPoint
	{
		"LEFT_TOP	= D3DXVECTOR2(35-6,25-6)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButton_velder_Secret_Dungeon:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 	


		"LEFT_TOP	= D3DXVECTOR2(35-4,25-5)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
-- 벨더 비던


--------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_4619 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 394 -180-110+19, 571 -250-70+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123+1,259)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123+15,259)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 123+28,259)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_4620 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131+10, 571-228-152 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 1 -56-131+10, 571-228-152 )",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 15 -56-131+10, 571-228-152 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 + 28-56 -131+10, 571 -228-152)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별3
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_5235 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396+67 -154+27, 571 -250-175+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336+1,160)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336+15,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336+28,160)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별4
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_5275 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 +84-80+32, 571 -356-20+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(432+1,227)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(432+15,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(432+28,227)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별5
g_pButton_STAR5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR5 )
g_pButton_STAR5:SetNameStrID( STR_ID_5298 )

g_pPictureSTAR5_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_StarBG )
g_pPictureSTAR5_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR5_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -21-26+25, 571 -414+142+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star0 )
g_pPictureSTAR5_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR5_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(374+1,308)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star1 )
g_pPictureSTAR5_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR5_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(374+15,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star2 )
g_pPictureSTAR5_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR5_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(374+28,308)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별6
g_pButton_STAR6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR6 )
g_pButton_STAR6:SetNameStrID( STR_ID_5318 )

g_pPictureSTAR6_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_StarBG )
g_pPictureSTAR6_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR6_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -146-10+13, 571 -440+218-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star0 )
g_pPictureSTAR6_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR6_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(253+1,339)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star1 )
g_pPictureSTAR6_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR6_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(253+15,339)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star2 )
g_pPictureSTAR6_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR6_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(253+28,339)",
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
--[[
--기본별2--퀘스트 마크용
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetName( "루벤숲의 눈물" )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 490,357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
]]--

--기본별2--퀘스트 마크용
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_13861 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(44,114)",
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
g_pButton_STAR2:SetNameStrID( STR_ID_10342 )

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