-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 알테라 전투비공정


g_pButton_Altera_Battleship = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Battleship )

g_pButton_Altera_Battleship:SetName( "Dungeon" )
g_pButton_Altera_Battleship:AddDummyInt( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"] )

g_pButton_Altera_Battleship:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Altera_Battleship:SetNormalTex( "DLG_Common_Button00_NEW.tga", "Altera_ship" )

g_pButton_Altera_Battleship:SetOverTex( "DLG_Common_Button00_NEW.tga", "Altera_Ship_Over" )
IconAni( g_pButton_Altera_Battleship, "DLG_Common_Button00_NEW.tga", "Altera_Ship_Over" )

g_pButton_Altera_Battleship:SetDownTex( "DLG_Common_Button00_NEW.tga", "Altera_ship" )

g_pButton_Altera_Battleship:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105+6-61-12,172+9-149+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Battleship:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(38-6,39-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Battleship:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(38-4,39-8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Battleship:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_Battleship:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_Battleship:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )




-- 알테라 회귀의 평원

g_pButton_Altera_Plain_Recycle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Plain_Recycle )

g_pButton_Altera_Plain_Recycle:SetName( "Dungeon" )
g_pButton_Altera_Plain_Recycle:AddDummyInt( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"] )
g_pButton_Altera_Plain_Recycle:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


g_pButton_Altera_Plain_Recycle:SetNormalTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_RECYCLE_NORMAL" )

g_pButton_Altera_Plain_Recycle:SetOverTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_RECYCLE_OVER" )
IconAni( g_pButton_Altera_Plain_Recycle, "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_RECYCLE_OVER" )

g_pButton_Altera_Plain_Recycle:SetDownTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_RECYCLE_OVER" )

g_pButton_Altera_Plain_Recycle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(285+6-133-20,312-200-37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Plain_Recycle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(138-6,75-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Plain_Recycle:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(138-5,75-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Plain_Recycle:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_Plain_Recycle:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_Plain_Recycle:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



-- 알테라 지하터널B4-1

g_pButton_Altera_Below_Tunnel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Below_Tunnel )

g_pButton_Altera_Below_Tunnel:SetName( "Dungeon" )
g_pButton_Altera_Below_Tunnel:AddDummyInt( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"] )
g_pButton_Altera_Below_Tunnel:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Altera_Below_Tunnel:SetNormalTex( "DLG_Common_Button00_NEW.tga", "ALTERA_BELOW_TUNNEL_NORMAL" )

g_pButton_Altera_Below_Tunnel:SetOverTex( "DLG_Common_Button00_NEW.tga", "ALTERA_Below_Tunnel_OVER" )
IconAni( g_pButton_Altera_Below_Tunnel, "DLG_Common_Button00_NEW.tga", "ALTERA_BELOW_TUNNEL_OVER" )

g_pButton_Altera_Below_Tunnel:SetDownTex( "DLG_Common_Button00_NEW.tga", "ALTERA_BELOW_TUNNEL_OVER" )

g_pButton_Altera_Below_Tunnel:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(490-213-37,378-228-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Below_Tunnel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(240-8,128-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Below_Tunnel:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(240-6,128-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Below_Tunnel:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_Below_Tunnel:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_Below_Tunnel:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


-- 알테라 평원

g_pButton_Altera_PLAIN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_PLAIN )

g_pButton_Altera_PLAIN:SetName( "Dungeon" )
g_pButton_Altera_PLAIN:AddDummyInt( DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"] )
g_pButton_Altera_PLAIN:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Altera_PLAIN:SetNormalTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_NORMAL" )
g_pButton_Altera_PLAIN:SetOverTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_OVER" )
IconAni( g_pButton_Altera_PLAIN, "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_OVER" )
g_pButton_Altera_PLAIN:SetDownTex( "DLG_Common_Button00_NEW.tga", "ALTERA_PLAIN_OVER" )

g_pButton_Altera_PLAIN:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(691-294-45,332-208-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_PLAIN:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(352-6,98-6)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_PLAIN:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(352-5,98-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_PLAIN:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_PLAIN:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_PLAIN:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


-- 나소드 생산기지
g_pButton_Nasod_Factory = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Nasod_Factory )

g_pButton_Nasod_Factory:SetName( "Dungeon" )
g_pButton_Nasod_Factory:AddDummyInt( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"] )
g_pButton_Nasod_Factory:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Nasod_Factory:SetNormalTex( "DLG_Common_Button01_NEW.tga", "NASOD_FACTORY_NORMAL" )

g_pButton_Nasod_Factory:SetOverTex( "DLG_Common_Button01_NEW.tga", "NASOD_FACTORY_OVER" )
IconAni( g_pButton_Nasod_Factory, "DLG_Common_Button01_NEW.tga", "NASOD_FACTORY_OVER" )

g_pButton_Nasod_Factory:SetDownTex( "DLG_Common_Button01_NEW.tga", "NASOD_FACTORY_OVER" )

g_pButton_Nasod_Factory:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(780-329-15,536-291-54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Nasod_Factory:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(436-6,191-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Nasod_Factory:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(436-4,191-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Nasod_Factory:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Nasod_Factory:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Nasod_Factory:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



-- 알데라 코어
g_pButton_Altera_Core = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Core )

g_pButton_Altera_Core:SetName( "Dungeon" )
g_pButton_Altera_Core:AddDummyInt( DUNGEON_ID["DI_ALTERA_CORE_NORMAL"] )
g_pButton_Altera_Core:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Altera_Core:SetNormalTex( "DLG_Common_Button01_NEW.tga", "Altera_Core_NORMAL" )

g_pButton_Altera_Core:SetOverTex( "DLG_Common_Button01_NEW.tga", "Altera_Core_OVER" )
IconAni( g_pButton_Altera_Core, "DLG_Common_Button01_NEW.tga", "Altera_Core_OVER" )

g_pButton_Altera_Core:SetDownTex( "DLG_Common_Button01_NEW.tga", "Altera_Core_OVER" )

g_pButton_Altera_Core:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(496-217+20,540-292+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Core:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(299-6,250-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Core:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(299-4,250-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Core:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_Core:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_Core:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )

-- 알데라 비던   --운송터널:오염구역
g_pButton_Altera_Secret_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Secret_Dungeon )
g_pButton_Altera_Secret_Dungeon:SetName( "Dungeon" )

g_pButton_Altera_Secret_Dungeon:AddDummyInt( DUNGEON_ID["DI_ALTERA_SECRET_COMMON"] )
g_pButton_Altera_Secret_Dungeon:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )



g_pButton_Altera_Secret_Dungeon:SetNormalTex( "DLG_Common_Button01_NEW.tga", "Altera_Secret_Dungeon_NORMAL" )

g_pButton_Altera_Secret_Dungeon:SetOverTex( "DLG_Common_Button01_NEW.tga", "Altera_Secret_Dungeon_OVER" )
IconAni( g_pButton_Altera_Secret_Dungeon, "DLG_Common_Button01_NEW.tga", "Altera_Secret_Dungeon_OVER" )

g_pButton_Altera_Secret_Dungeon:SetDownTex( "DLG_Common_Button01_NEW.tga", "Altera_Secret_Dungeon_OVER" )

g_pButton_Altera_Secret_Dungeon:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(190,250)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Secret_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(190-6,250-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Secret_Dungeon:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(190-4,250-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Secret_Dungeon:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Altera_Secret_Dungeon:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Altera_Secret_Dungeon:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )








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


--------------------------------------------------

--기본별1
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_3399 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 396 -180-110-40-20, 571 -250-70-145+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+1,113)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+15,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(46+28,113)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별2
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_3417 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -56-131-46-20, 571-228-152 +6-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(143+1,167)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(143+15,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(143+28,167)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별3
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_3438 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396+67 -154-25-36, 571 -250-175+78-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248+1,202)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 248+15,202)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248+28,202)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별4
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_3456 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 +84-80+4-46, 571 -356-20+14-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(358+1,183)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(358+15,183)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(358+28,183)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별5
g_pButton_STAR5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR5 )
g_pButton_STAR5:SetNameStrID( STR_ID_3474 )

g_pPictureSTAR5_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_StarBG )
g_pPictureSTAR5_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR5_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -21-26+108-15, 571 -414+142+22-56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star0 )
g_pPictureSTAR5_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR5_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(442+1,265)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star1 )
g_pPictureSTAR5_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR5_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(442+15,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR5_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR5:AddPicture( g_pPictureSTAR5_Star2 )
g_pPictureSTAR5_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR5_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(442+28,265)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별6
g_pButton_STAR6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR6 )
g_pButton_STAR6:SetNameStrID( STR_ID_3526 )

g_pPictureSTAR6_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_StarBG )
g_pPictureSTAR6_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR6_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 396 -146-10+50+20, 571 -440+218-12+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star0 )
g_pPictureSTAR6_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR6_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(310+1,339)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star1 )
g_pPictureSTAR6_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR6_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(310+15,339)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR6_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR6:AddPicture( g_pPictureSTAR6_Star2 )
g_pPictureSTAR6_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR6_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(310+28,339)",
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
--기본별2--퀘스트 마크용
g_pButton_STAR9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR9 )
g_pButton_STAR9:SetNameStrID( STR_ID_4979 )

g_pPictureSTAR9_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR9:AddPicture( g_pPictureSTAR9_StarBG )
g_pPictureSTAR9_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR9_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 490,357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR9:SetShow(false)
--기본별2--퀘스트 마크용
g_pButton_STAR10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR10 )
g_pButton_STAR10:SetNameStrID( STR_ID_3550 )

g_pPictureSTAR10_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR10:AddPicture( g_pPictureSTAR10_StarBG )
g_pPictureSTAR10_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR10_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 196,326)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_STAR10:SetShow(false)

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