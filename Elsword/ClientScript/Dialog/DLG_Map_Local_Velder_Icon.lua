-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







---제3 거주구역
g_pButtonVelder_Dwelling = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_Dwelling )
g_pButtonVelder_Dwelling:SetName( "THIRD_DWELLING" )
g_pButtonVelder_Dwelling:AddDummyInt( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"] )
g_pButtonVelder_Dwelling:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonVelder_Dwelling:SetNormalTex( "DLG_Common_New_Button09.dds", "Dwelling_Normal" )

--g_pButtonVelder_Dwelling:SetOverTex( "DLG_Common_New_Button09.dds", "Dwelling_Over" )
IconAni( g_pButtonVelder_Dwelling,  "DLG_Common_New_Button09.dds", "Dwelling_Over" )

g_pButtonVelder_Dwelling:SetDownTex( "DLG_Common_New_Button09.dds", "Dwelling_Over" )

g_pButtonVelder_Dwelling:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(170,346)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Dwelling:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(164,336)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_Dwelling:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(164+2,336+2)",

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

g_pButtonVELDER_BRIDGE_HOPE:SetNormalTex( "DLG_Common_New_Button09.dds", "Bridge_Normal" )

--g_pButtonVELDER_BRIDGE_HOPE:SetOverTex( "DLG_Common_New_Button09.dds", "Bridge_Over" )
IconAni( g_pButtonVELDER_BRIDGE_HOPE,  "DLG_Common_New_Button09.dds", "Bridge_Over" )

g_pButtonVELDER_BRIDGE_HOPE:SetDownTex( "DLG_Common_New_Button09.dds", "Bridge_Over" )

g_pButtonVELDER_BRIDGE_HOPE:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(329,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_HOPE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(321,225)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_HOPE:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(321+2,225+2)",

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

g_pButtonVELDER_ROAD_PALACE:SetNormalTex( "DLG_Common_New_Button09.dds", "ROAD_PALACE_Normal" )

--g_pButtonVELDER_Road_palace:SetOverTex( "DLG_Common_New_Button09.dds", "ROAD_PALACE" )
IconAni( g_pButtonVELDER_ROAD_PALACE,  "DLG_Common_New_Button09.dds", "ROAD_PALACE_Over" )

g_pButtonVELDER_ROAD_PALACE:SetDownTex( "DLG_Common_New_Button09.dds", "ROAD_PALACE_Over" )


g_pButtonVELDER_ROAD_PALACE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(503,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_ROAD_PALACE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(495,160)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_ROAD_PALACE:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(495+2,160+2)",

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

g_pButtonVELDER_BRIDGE_BUNNING:SetNormalTex( "DLG_Common_New_Button09.dds", "BRIDGE_BUNNING_Normal" )

--g_pButtonVELDER_BRIDGE_BUNNING:SetOverTex( "DLG_Common_New_Button09.dds", "BRIDGE_BUNNING" )
IconAni( g_pButtonVELDER_BRIDGE_BUNNING,  "DLG_Common_New_Button09.dds", "BRIDGE_BUNNING_Over" )

g_pButtonVELDER_BRIDGE_BUNNING:SetDownTex( "DLG_Common_New_Button09.dds", "BRIDGE_BUNNING_Over" )


g_pButtonVELDER_BRIDGE_BUNNING:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(648,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_BUNNING:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(639,257)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_BRIDGE_BUNNING:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(639+2,257+2)",

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

g_pButtonVELDER_MARKET:SetNormalTex( "DLG_Common_New_Button09.dds", "MARKET_Normal" )

--g_pButtonVELDER_MARKET:SetOverTex( "DLG_Common_New_Button09.dds", "MARKET" )
IconAni( g_pButtonVELDER_MARKET,  "DLG_Common_New_Button09.dds", "MARKET_Over" )

g_pButtonVELDER_MARKET:SetDownTex( "DLG_Common_New_Button09.dds", "MARKET_Over" )


g_pButtonVELDER_MARKET:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(567,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_MARKET:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(557,404)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_MARKET:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(557+2,404+2)",

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

g_pButtonVELDER_GATE:SetNormalTex( "DLG_Common_New_Button09.dds", "GATE_Normal" )

--g_pButtonVELDER_GATE:SetOverTex( "DLG_Common_New_Button09.dds", "GATE" )
IconAni( g_pButtonVELDER_GATE,  "DLG_Common_New_Button09.dds", "GATE_Over" )

g_pButtonVELDER_GATE:SetDownTex( "DLG_Common_New_Button09.dds", "GATE_Over" )


g_pButtonVELDER_GATE:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(388,503)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_GATE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(380,495)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVELDER_GATE:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(380+2,495+2)",

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



--[[
		--  식목일 이벤트 
		g_pButton_Tree_Day = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButton_Tree_Day )

		g_pButton_Tree_Day:SetName( "Dungeon" )
		g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"] )
		g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


		g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )

		g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
		--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )

		g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

		g_pButton_Tree_Day:SetNormalPoint
		{

 			"LEFT_TOP		= D3DXVECTOR2(312-30+82,30+49)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Tree_Day:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(303-30+82,24+49)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButton_Tree_Day:SetDownPoint
		{
			ADD_SIZE_X = -4,
			ADD_SIZE_Y = -4,
 			"LEFT_TOP		= D3DXVECTOR2(303-30+2+82,24+2+49)",

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

--{{ 벨더 비던
	g_pButton_velder_Secret_Dungeon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_velder_Secret_Dungeon )
	g_pButton_velder_Secret_Dungeon:SetName( "VelderSecret" )

	g_pButton_velder_Secret_Dungeon:AddDummyInt( DUNGEON_ID["DI_VELDER_SECRET_COMMON"] )
	g_pButton_velder_Secret_Dungeon:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

	g_pButton_velder_Secret_Dungeon:SetNormalTex( "DLG_Common_New_Button12.tga", "SCRET_NORMAL" )
	IconAni( g_pButton_velder_Secret_Dungeon,  "DLG_Common_New_Button12.tga", "SCRET_OVER" )
	g_pButton_velder_Secret_Dungeon:SetDownTex( "DLG_Common_New_Button12.tga", "SCRET_OVER" )

	g_pButton_velder_Secret_Dungeon:SetNormalPoint
	{
 		"LEFT_TOP	= D3DXVECTOR2(789,141)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButton_velder_Secret_Dungeon:SetOverPoint
	{
		"LEFT_TOP	= D3DXVECTOR2(790-7,141-5)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButton_velder_Secret_Dungeon:SetDownPoint
	{
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
 	
		"LEFT_TOP	= D3DXVECTOR2(790-5,141-3)",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
	g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
	g_pButton_velder_Secret_Dungeon:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )
-- 벨더 비던}}
