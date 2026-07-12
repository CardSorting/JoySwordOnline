-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 알테라 전투비공정




g_pButton_Altera_Battleship = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Altera_Battleship )

g_pButton_Altera_Battleship:SetName( "Dungeon" )
g_pButton_Altera_Battleship:AddDummyInt( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"] )

g_pButton_Altera_Battleship:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Altera_Battleship:SetNormalTex( "DLG_Common_Button03.TGA", "Altera_ship" )

--g_pButton_Altera_Battleship:SetOverTex( "DLG_Common_Button02.TGA", "Altera_Ship_Over" )
IconAni( g_pButton_Altera_Battleship, "DLG_Common_Button02.TGA", "Altera_Ship_Over" )

g_pButton_Altera_Battleship:SetDownTex( "DLG_Common_Button02.TGA", "Altera_Ship_Over" )

g_pButton_Altera_Battleship:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105+6,172+9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Battleship:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(101,169)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Battleship:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(103,171)",

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


g_pButton_Altera_Plain_Recycle:SetNormalTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_RECYCLE_NORMAL" )

--g_pButton_Altera_Plain_Recycle:SetOverTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_RECYCLE_OVER" )
IconAni( g_pButton_Altera_Plain_Recycle, "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_RECYCLE_OVER" )

g_pButton_Altera_Plain_Recycle:SetDownTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_RECYCLE_OVER" )

g_pButton_Altera_Plain_Recycle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(285+6,312)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Plain_Recycle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,304)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Plain_Recycle:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(286+2,304+2)",

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



g_pButton_Altera_Below_Tunnel:SetNormalTex( "DLG_Common_New_Button07.dds", "ALTERA_BELOW_TUNNEL_NORMAL" )

--g_pButton_Altera_Below_Tunnel:SetOverTex( "DLG_Common_New_Button07.dds", "ALTERA_Below_Tunnel_OVER" )
IconAni( g_pButton_Altera_Below_Tunnel, "DLG_Common_New_Button07.dds", "ALTERA_BELOW_TUNNEL_OVER" )

g_pButton_Altera_Below_Tunnel:SetDownTex( "DLG_Common_New_Button07.dds", "ALTERA_BELOW_TUNNEL_OVER" )

g_pButton_Altera_Below_Tunnel:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(490,378)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Below_Tunnel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(482,366)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Below_Tunnel:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(482+2,366+2)",

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



g_pButton_Altera_PLAIN:SetNormalTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_NORMAL" )

--g_pButton_Altera_PLAIN:SetOverTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_OVER" )
IconAni( g_pButton_Altera_PLAIN, "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_OVER" )

g_pButton_Altera_PLAIN:SetDownTex( "DLG_Common_New_Button07.dds", "ALTERA_PLAIN_OVER" )

g_pButton_Altera_PLAIN:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(691,332)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_PLAIN:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(686,321)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_PLAIN:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(686+2,321+2)",

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



g_pButton_Nasod_Factory:SetNormalTex( "DLG_Common_New_Button07.dds", "NASOD_FACTORY_NORMAL" )

--g_pButton_Nasod_Factory:SetOverTex( "DLG_Common_New_Button07.dds", "NASOD_FACTORY_OVER" )
IconAni( g_pButton_Nasod_Factory, "DLG_Common_New_Button07.dds", "NASOD_FACTORY_OVER" )

g_pButton_Nasod_Factory:SetDownTex( "DLG_Common_New_Button07.dds", "NASOD_FACTORY_OVER" )

g_pButton_Nasod_Factory:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(780,536)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Nasod_Factory:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(777,531)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Nasod_Factory:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(777+2,531+2)",

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



g_pButton_Altera_Core:SetNormalTex( "DLG_Common_New_Button08.dds", "Altera_Core_NORMAL" )

--g_pButton_Altera_Core:SetOverTex( "DLG_Common_New_Button08.dds", "Altera_Core_OVER" )
IconAni( g_pButton_Altera_Core, "DLG_Common_New_Button08.dds", "Altera_Core_OVER" )

g_pButton_Altera_Core:SetDownTex( "DLG_Common_New_Button08.dds", "Altera_Core_OVER" )

g_pButton_Altera_Core:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(496,540)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Core:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491,533)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Core:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(491+2,533+2)",

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



g_pButton_Altera_Secret_Dungeon:SetNormalTex( "DLG_Common_New_Button07.dds", "Altera_Secret_Dungeon_NORMAL" )

--g_pButton_Altera_Secret_Dungeon:SetOverTex( "DLG_Common_New_Button08.dds", "Altera_Core_OVER" )
IconAni( g_pButton_Altera_Secret_Dungeon, "DLG_Common_New_Button07.dds", "Altera_Secret_Dungeon_OVER" )

g_pButton_Altera_Secret_Dungeon:SetDownTex( "DLG_Common_New_Button07.dds", "Altera_Secret_Dungeon_OVER" )

g_pButton_Altera_Secret_Dungeon:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(568,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Secret_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(561,211)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Altera_Secret_Dungeon:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(561+2,211+2)",

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




--  식목일 이벤트 
--[[
g_pButton_Tree_Day = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Tree_Day )

g_pButton_Tree_Day:SetName( "Dungeon" )
g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_ALTERA"] )
g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )

g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )

g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

g_pButton_Tree_Day:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312+84,30+116)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303+84,24+116)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(303+2+84,24+2+116)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
--]]
