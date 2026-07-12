-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.








g_pButtonDragon_Way = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDragon_Way )
g_pButtonDragon_Way:SetName( "Dragon_Way" )
g_pButtonDragon_Way:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"] )
g_pButtonDragon_Way:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonDragon_Way:SetNormalTex( "DLG_Common_Button03.tga", "Dragon_Way_normal" )

--g_pButtonDragon_Way:SetOverTex( "DLG_Common_Button03.tga", "Dragon_Way_Over" )
IconAni( g_pButtonDragon_Way,  "DLG_Common_Button03.tga", "Dragon_Way_Over" )

g_pButtonDragon_Way:SetDownTex( "DLG_Common_Button03.tga", "Dragon_Way_Over" )

g_pButtonDragon_Way:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(362,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(362-13,293-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(362-11,293-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonDragon_Way:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonDragon_Way:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )





g_pButtonBesma_Lake= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Lake)
g_pButtonBesma_Lake:SetName( "Besma_Lake" )
g_pButtonBesma_Lake:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NORMAL"] )
g_pButtonBesma_Lake:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Lake:SetNormalTex( "DLG_Common_Button03.tga", "Besma_Lake_normal" )

--g_pButtonBesma_Lake:SetOverTex( "DLG_Common_Button03.tga", "Besma_Lake_Over" )
IconAni( g_pButtonBesma_Lake,  "DLG_Common_Button03.tga", "Besma_Lake_Over" )

g_pButtonBesma_Lake:SetDownTex( "DLG_Common_Button03.tga", "Besma_Lake_Over" )

g_pButtonBesma_Lake:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(645,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(645-13,405-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(645-11,405-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Lake:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Lake:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



--[[
g_pButtonBesma_Coal= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Coal)
g_pButtonBesma_Coal:SetName( "Besma_Coal" )
g_pButtonBesma_Coal:AddDummyInt( DUNGEON_ID["DI_BESMA_MINE_NORMAL"] )
g_pButtonBesma_Coal:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Coal:SetNormalTex( "DLG_Common_Button03.tga", "Besma_Coal_normal" )

--g_pButtonBesma_Coal:SetOverTex( "DLG_Common_Button03.tga", "Besma_Coal_Over" )
IconAni( g_pButtonBesma_Coal,  "DLG_Common_Button03.tga", "Besma_Coal_Over" )

g_pButtonBesma_Coal:SetDownTex( "DLG_Common_Button03.tga", "Besma_Coal_Over" )

g_pButtonBesma_Coal:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(896,356)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(896-13,356-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(896-11,356-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Coal:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Coal:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--]]


g_pButtonBesma_Coal_Deep= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Coal_Deep)
g_pButtonBesma_Coal_Deep:SetName( "Besma_Coal_Deep" )
g_pButtonBesma_Coal_Deep:AddDummyInt( DUNGEON_ID["DI_BESMA_MINE2_NORMAL"] )
g_pButtonBesma_Coal_Deep:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Coal_Deep:SetNormalTex( "DLG_Common_Button03.tga", "Besma_Coal_Deep_normal" )

--g_pButtonBesma_Coal_Deep:SetOverTex( "DLG_Common_Button03.tga", "Besma_Coal_Deep_Over" )
IconAni( g_pButtonBesma_Coal_Deep,  "DLG_Common_Button03.tga", "Besma_Coal_Deep_Over" )

g_pButtonBesma_Coal_Deep:SetDownTex( "DLG_Common_Button03.tga", "Besma_Coal_Deep_Over" )

g_pButtonBesma_Coal_Deep:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(778,252)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal_Deep:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(778-13,252-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal_Deep:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(778-11,252-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal_Deep:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Coal_Deep:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Coal_Deep:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )





g_pButtonSky_Ship= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSky_Ship)
g_pButtonSky_Ship:SetName( "Sky_Ship" )
g_pButtonSky_Ship:AddDummyInt( DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"] )
g_pButtonSky_Ship:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonSky_Ship:SetNormalTex( "DLG_Common_Button03.tga", "Sky_Ship_normal" )

--g_pButtonSky_Ship:SetOverTex( "DLG_Common_Button03.tga", "Sky_Ship_Over" )
IconAni( g_pButtonSky_Ship,  "DLG_Common_Button03.tga", "Sky_Ship_Over" )

g_pButtonSky_Ship:SetDownTex( "DLG_Common_Button03.tga", "Sky_Ship_Over" )

g_pButtonSky_Ship:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(583,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(583-13,166-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(583-11,166-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonSky_Ship:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonSky_Ship:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )






g_pButtonBesma_Lakenight= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Lakenight)
g_pButtonBesma_Lakenight:SetName( "Besma_Lakenight" )
g_pButtonBesma_Lakenight:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"] )
g_pButtonBesma_Lakenight:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Lakenight:SetNormalTex( "DLG_Common_Button03.tga", "Besma_Lakenight_normal" )

--g_pButtonBesma_Lakenight:SetOverTex( "DLG_Common_Button03.tga", "Besma_Lakenight_Over" )
IconAni( g_pButtonBesma_Lakenight,  "DLG_Common_Button03.tga", "Besma_Lakenight_Over" )

g_pButtonBesma_Lakenight:SetDownTex( "DLG_Common_Button03.tga", "Besma_Lakenight_Over" )

g_pButtonBesma_Lakenight:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(809,522)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lakenight:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(809-13,522-13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lakenight:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(809-11,522-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lakenight:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Lakenight:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Lakenight:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )





--[[
			g_pButtonBesma_Velley= g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( g_pButtonBesma_Velley)
			g_pButtonBesma_Velley:SetName( "Besma_Velley" )
			g_pButtonBesma_Velley:AddDummyInt( DUNGEON_ID["DI_BESMA_CANYON_NORMAL"] )
			g_pButtonBesma_Velley:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

			g_pButtonBesma_Velley:SetNormalTex( "DLG_Common_Button03.tga", "Besma_Velley_normal" )

			--g_pButtonBesma_Velley:SetOverTex( "DLG_Common_Button03.tga", "Besma_Velley_Over" )
			IconAni( g_pButtonBesma_Velley,  "DLG_Common_Button03.tga", "Besma_Velley_Over" )

			g_pButtonBesma_Velley:SetDownTex( "DLG_Common_Button03.tga", "Besma_Velley_Over" )

			g_pButtonBesma_Velley:SetNormalPoint
			{


 				"LEFT_TOP		= D3DXVECTOR2(395,553)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonBesma_Velley:SetOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(395-13,553-13)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pButtonBesma_Velley:SetDownPoint
			{
				ADD_SIZE_X = -4,
				ADD_SIZE_Y = -4,

 				"LEFT_TOP		= D3DXVECTOR2(395-11,553-11)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pButtonBesma_Velley:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]




g_pButtonDragon_Nest= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDragon_Nest)
g_pButtonDragon_Nest:SetName( "Dragon_Nest" )
g_pButtonDragon_Nest:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"] )
g_pButtonDragon_Nest:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonDragon_Nest:SetNormalTex( "DLG_Common_Button03.tga", "Dragon_Nest_normal" )

--g_pButtonDragon_Nest:SetOverTex( "DLG_Common_Button03.tga", "Dragon_Nest_Over" )
IconAni( g_pButtonDragon_Nest,  "DLG_Common_Button03.tga", "Dragon_Nest_Over" )

g_pButtonDragon_Nest:SetDownTex( "DLG_Common_Button03.tga", "Dragon_Nest_Over" )

g_pButtonDragon_Nest:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(396,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Nest:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(396-13,547-13)",
 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Nest:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(396-11,547-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Nest:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonDragon_Nest:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonDragon_Nest:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )











-- 용의둥지_나락 비밀던전
g_pButton_Velder_South_Secret_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_South_Secret_Dungeon )
g_pButton_Velder_South_Secret_Dungeon:SetName( "Dungeon" )


g_pButton_Velder_South_Secret_Dungeon:AddDummyInt( DUNGEON_ID["DI_BESMA_SECRET_COMMON"] )
g_pButton_Velder_South_Secret_Dungeon:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Velder_South_Secret_Dungeon:SetNormalTex( "DLG_Common_New_Button07.dds", "Dragon_Nest_Secret_normal" )

--g_pButton_Velder_South_Secret_Dungeon:SetOverTex( "DLG_Common_New_Button07.tga", "Dragon_Nest_Secret_Over" )
IconAni( g_pButton_Velder_South_Secret_Dungeon, "DLG_Common_New_Button07.dds", "Dragon_Nest_Secret_Over" )

g_pButton_Velder_South_Secret_Dungeon:SetDownTex( "DLG_Common_New_Button07.dds", "Dragon_Nest_Secret_Over" )

g_pButton_Velder_South_Secret_Dungeon:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(222,274)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_South_Secret_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(210,252)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_South_Secret_Dungeon:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(210+2,252+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_South_Secret_Dungeon:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"]  )
g_pButton_Velder_South_Secret_Dungeon:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_South_Secret_Dungeon:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )












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



--  식목일 이벤트 
--[[
g_pButton_Tree_Day = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Tree_Day )

g_pButton_Tree_Day:SetName( "Dungeon" )
g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_BESMA"] )
g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )

g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )

g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

g_pButton_Tree_Day:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312+70,30+105)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303+70,24+105)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(303+2+70,24+2+105)",

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
