-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--용의 길
g_pButtonDragon_Way = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDragon_Way )
g_pButtonDragon_Way:SetName( "Dragon_Way" )
g_pButtonDragon_Way:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"] )
g_pButtonDragon_Way:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonDragon_Way:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Dragon_Way_normal" )

g_pButtonDragon_Way:SetOverTex( "DLG_Common_Button00_NEW.tga", "Dragon_Way_Over" )
IconAni( g_pButtonDragon_Way,  "DLG_Common_Button00_NEW.tga", "Dragon_Way_Over" )

g_pButtonDragon_Way:SetDownTex( "DLG_Common_Button00_NEW.tga", "Dragon_Way_Over" )

g_pButtonDragon_Way:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(180-93,113-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180-7-93,113-7-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(180-5-93,113-5-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Way:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonDragon_Way:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonDragon_Way:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )




--베스마 호수
g_pButtonBesma_Lake= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Lake)
g_pButtonBesma_Lake:SetName( "Besma_Lake" )
g_pButtonBesma_Lake:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NORMAL"] )
g_pButtonBesma_Lake:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Lake:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Besma_Lake_normal" )

g_pButtonBesma_Lake:SetOverTex( "DLG_Common_Button00_NEW.tga", "Besma_Lake_Over" )
 IconAni( g_pButtonBesma_Lake,  "DLG_Common_Button00_NEW.tga", "Besma_Lake_Over" )

g_pButtonBesma_Lake:SetDownTex( "DLG_Common_Button00_NEW.tga", "Besma_Lake_Over" )

g_pButtonBesma_Lake:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(645-295-67,405-223-24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(283-6,158-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(283-4,158-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lake:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Lake:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Lake:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


--리치광산
g_pButtonBesma_Coal= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Coal)
g_pButtonBesma_Coal:SetName( "Besma_Coal_Deep" )
g_pButtonBesma_Coal:AddDummyInt( DUNGEON_ID["DI_BESMA_MINE2_NORMAL"] )
g_pButtonBesma_Coal:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Coal:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Besma_Coal_normal" )

g_pButtonBesma_Coal:SetOverTex( "DLG_Common_Button00_NEW.tga", "Besma_Coal_Over" )
 IconAni( g_pButtonBesma_Coal,  "DLG_Common_Button00_NEW.tga", "Besma_Coal_Over" )

g_pButtonBesma_Coal:SetDownTex( "DLG_Common_Button00_NEW.tga", "Besma_Coal_Over" )

g_pButtonBesma_Coal:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(896-465-86,356-268-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(345-6,58-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(345-4,58-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Coal:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonBesma_Coal:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonBesma_Coal:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

--수송비공정
g_pButtonSky_Ship= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSky_Ship)
g_pButtonSky_Ship:SetName( "Sky_Ship" )
g_pButtonSky_Ship:AddDummyInt( DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"] )
g_pButtonSky_Ship:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonSky_Ship:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Sky_Ship_normal" )

g_pButtonSky_Ship:SetOverTex( "DLG_Common_Button00_NEW.tga", "Sky_Ship_Over" )
IconAni( g_pButtonSky_Ship,  "DLG_Common_Button00_NEW.tga", "Sky_Ship_Over" )

g_pButtonSky_Ship:SetDownTex( "DLG_Common_Button00_NEW.tga", "Sky_Ship_Over" )

g_pButtonSky_Ship:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(583-270-118,166-130-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(195-6,30-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(195-4,30-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSky_Ship:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonSky_Ship:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonSky_Ship:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )





--베스마 호수 밤
g_pButtonBesma_Lakenight= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBesma_Lakenight)
g_pButtonBesma_Lakenight:SetName( "Besma_Lakenight" )
g_pButtonBesma_Lakenight:AddDummyInt( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"] )
g_pButtonBesma_Lakenight:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonBesma_Lakenight:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Besma_Lakenight_normal" )

g_pButtonBesma_Lakenight:SetOverTex( "DLG_Common_Button00_NEW.tga", "Besma_Lakenight_Over" )
IconAni( g_pButtonBesma_Lakenight,  "DLG_Common_Button00_NEW.tga", "Besma_Lakenight_Over" )

g_pButtonBesma_Lakenight:SetDownTex( "DLG_Common_Button00_NEW.tga", "Besma_Lakenight_Over" )

g_pButtonBesma_Lakenight:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(809-360-58,522-272+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lakenight:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(391-6,277-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBesma_Lakenight:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(391-4,277-4)",

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

			g_pButtonBesma_Velley:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Besma_Velley_normal" )

			--g_pButtonBesma_Velley:SetOverTex( "DLG_Common_Button00_NEW.tga", "Besma_Velley_Over" )
			IconAni( g_pButtonBesma_Velley,  "DLG_Common_Button00_NEW.tga", "Besma_Velley_Over" )

			g_pButtonBesma_Velley:SetDownTex( "DLG_Common_Button00_NEW.tga", "Besma_Velley_Over" )

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



--용의둥지
g_pButtonDragon_Nest= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDragon_Nest)
g_pButtonDragon_Nest:SetName( "Dragon_Nest" )
g_pButtonDragon_Nest:AddDummyInt( DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"] )
g_pButtonDragon_Nest:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonDragon_Nest:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_normal" )

g_pButtonDragon_Nest:SetOverTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )
IconAni( g_pButtonDragon_Nest,  "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )

g_pButtonDragon_Nest:SetDownTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )

g_pButtonDragon_Nest:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(396-198+13,547-280-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Nest:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211-5,241-6)",
 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDragon_Nest:SetDownPoint
{
      ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(211-3,241-4)",

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



g_pButton_Velder_South_Secret_Dungeon:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_normal" )

--g_pButton_Velder_South_Secret_Dungeon:SetOverTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )
IconAni( g_pButton_Velder_South_Secret_Dungeon, "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )

g_pButton_Velder_South_Secret_Dungeon:SetDownTex( "DLG_Common_Button00_NEW.tga", "Dragon_Nest_Over" )

g_pButton_Velder_South_Secret_Dungeon:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(131,241)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_South_Secret_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(131-5,241-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_South_Secret_Dungeon:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(131-3,241-4)",

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
			g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_BESMA"] )
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
--------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_3167 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 92, 571 -250-70-64-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 92+1,175)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 92+15,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 92+28,175)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_3197 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131+146-66, 571-228-152+62-24 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 289+1,229)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 289+15,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(289+28,229)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별3
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_3331 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396+67 -154+126-85, 571 -250-175+12-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350+1,128)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350+15,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(350+28,128)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별4
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_3355 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 +84-80-78-122, 571 -356-20-86-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(200+1,99)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(200+15,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(200+28,99)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별5
g_pButton_STAR5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR5 )
g_pButton_STAR5:SetNameStrID( STR_ID_3224 )

g_pPictureSTAR5_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_StarBG )
g_pPictureSTAR5_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR5_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -21-26+106-58, 571 -414+142+24+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star0 )
g_pPictureSTAR5_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR5_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(397+1, 350)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star1 )
g_pPictureSTAR5_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR5_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(397+15, 350)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star2 )
g_pPictureSTAR5_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR5_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(397+28, 350)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별6
g_pButton_STAR6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR6 )
g_pButton_STAR6:SetNameStrID( STR_ID_3276 )

g_pPictureSTAR6_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_StarBG )
g_pPictureSTAR6_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR6_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -146-10-32+9, 571 -440+218-7-28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star0 )
g_pPictureSTAR6_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR6_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+1,314)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star1 )
g_pPictureSTAR6_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR6_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+15,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star2 )
g_pPictureSTAR6_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR6_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+28,314)",
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
g_pButton_STAR2:SetNameStrID( STR_ID_3501 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(134+4,314)",
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