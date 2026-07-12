-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 벤더스 동굴


g_pButton_Velder_East_Benders_Cave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_Benders_Cave )
g_pButton_Velder_East_Benders_Cave:SetName( "Dungeon" )
g_pButton_Velder_East_Benders_Cave:AddDummyInt( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"] )
g_pButton_Velder_East_Benders_Cave:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_Velder_East_Benders_Cave:SetNormalTex( "DLG_Common_Button01.TGA", "Benders_Cave2" )

--g_pButton_Velder_East_Benders_Cave:SetOverTex( "DLG_Common_Button01.TGA", "Benders_Cave_Over" )
IconAni( g_pButton_Velder_East_Benders_Cave, "DLG_Common_Button01.TGA", "Benders_Cave_Over" )

g_pButton_Velder_East_Benders_Cave:SetDownTex( "DLG_Common_Button01.TGA", "Benders_Cave_Over" )

g_pButton_Velder_East_Benders_Cave:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(691,337)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Benders_Cave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(691-7,337-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Benders_Cave:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(691-7+2,337-11+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Velder_East_Benders_Cave:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_Benders_Cave:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_Benders_Cave:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )






--[[

-- 천연 동굴


g_pButton_Velder_East_Cave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_Cave )
g_pButton_Velder_East_Cave:SetName( "Dungeon" )
g_pButton_Velder_East_Cave:AddDummyInt( DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"] )
g_pButton_Velder_East_Cave:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Velder_East_Cave:AddDummyString( "Cave_Star" )
g_pButton_Velder_East_Cave:SetNormalTex( "DLG_Common_Button01.TGA", "Cave" )

--g_pButton_Velder_East_Cave:SetOverTex( "DLG_Common_Button01.TGA", "Cave_Over" )
IconAni( g_pButton_Velder_East_Cave, "DLG_Common_Button01.TGA", "Cave_Over" )

g_pButton_Velder_East_Cave:SetDownTex( "DLG_Common_Button01.TGA", "Cave_Over" )

g_pButton_Velder_East_Cave:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(769,486)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Cave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(769-7,486-11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Cave:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(769-7+2,486-11+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Cave:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_Cave:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_Cave:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


--]]




-- 드루이드숲

g_pButton_Velder_Druid_Forest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_Druid_Forest )
g_pButton_Velder_Druid_Forest:SetName( "Dungeon" )
g_pButton_Velder_Druid_Forest:AddDummyInt( DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"] )
g_pButton_Velder_Druid_Forest:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Velder_Druid_Forest:AddDummyString( "DruidForest_Star" )
g_pButton_Velder_Druid_Forest:SetNormalTex( "DLG_Common_Button01.TGA", "Druid_Forest" )

--g_pButton_Velder_Druid_Forest:SetOverTex( "DLG_Common_Button01.TGA", "Druid_Forest_Over" )
IconAni( g_pButton_Velder_Druid_Forest, "DLG_Common_Button01.TGA", "Druid_Forest_Over" )

g_pButton_Velder_Druid_Forest:SetDownTex( "DLG_Common_Button01.TGA", "Druid_Forest_Over" )

g_pButton_Velder_Druid_Forest:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(290,552)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_Druid_Forest:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(290-10,552-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_Druid_Forest:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(290-10+2,552-12+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_Druid_Forest:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_Druid_Forest:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_Druid_Forest:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )








-- 월리성 지붕
g_pButton_Velder_East_Wally_Castle2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_Wally_Castle2 )
g_pButton_Velder_East_Wally_Castle2:SetName( "Dungeon" )

g_pButton_Velder_East_Wally_Castle2:AddDummyInt( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"] )
g_pButton_Velder_East_Wally_Castle2:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Velder_East_Wally_Castle2:AddDummyString( "Wally_Castle_OutLine_Star" )
g_pButton_Velder_East_Wally_Castle2:SetNormalTex( "DLG_Common_Button01.TGA", "Wally_Castle2" )

--g_pButton_Velder_East_Wally_Castle2:SetOverTex( "DLG_Common_Button01.TGA", "Wally_Catsle2_Over" )
IconAni( g_pButton_Velder_East_Wally_Castle2, "DLG_Common_Button01.TGA", "Wally_Catsle2_Over" )

g_pButton_Velder_East_Wally_Castle2:SetDownTex( "DLG_Common_Button01.TGA", "Wally_Catsle2_Over" )

g_pButton_Velder_East_Wally_Castle2:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(216,383)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle2:SetOverPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(216-6,383-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle2:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(216-6+2,383-9+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle2:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_Wally_Castle2:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_Wally_Castle2:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



-- 월리성 센터
g_pButton_Velder_East_Wally_Castle1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_Wally_Castle1 )
g_pButton_Velder_East_Wally_Castle1:SetName( "Dungeon" )

g_pButton_Velder_East_Wally_Castle1:AddDummyInt( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"] )
g_pButton_Velder_East_Wally_Castle1:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Velder_East_Wally_Castle1:AddDummyString( "Wally_Castle_Star" )
g_pButton_Velder_East_Wally_Castle1:SetNormalTex( "DLG_Common_Button01.TGA", "Wally_Castle1" )

--g_pButton_Velder_East_Wally_Castle1:SetOverTex( "DLG_Common_Button01.TGA", "Wally_Catsle1_Over" )
IconAni( g_pButton_Velder_East_Wally_Castle1, "DLG_Common_Button01.TGA", "Wally_Catsle1_Over" )

g_pButton_Velder_East_Wally_Castle1:SetDownTex( "DLG_Common_Button01.TGA", "Wally_Catsle1_Over" )

g_pButton_Velder_East_Wally_Castle1:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(349,183)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(349-6,183-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle1:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(349-6+2,183-10+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Wally_Castle1:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_Wally_Castle1:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_Wally_Castle1:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )



-- 지하통로
g_pButton_Velder_East_SubWay = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_SubWay )
g_pButton_Velder_East_SubWay:SetName( "Dungeon" )
g_pButton_Velder_East_SubWay:AddDummyString( "SubWay_Star" )

g_pButton_Velder_East_SubWay:AddDummyInt( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"] )
g_pButton_Velder_East_SubWay:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButton_Velder_East_SubWay:SetNormalTex( "DLG_Common_Button01.TGA", "SubWay" )

--g_pButton_Velder_East_SubWay:SetOverTex( "DLG_Common_Button01.TGA", "SubWay_Over" )
IconAni( g_pButton_Velder_East_SubWay, "DLG_Common_Button01.TGA", "SubWay_Over" )

g_pButton_Velder_East_SubWay:SetDownTex( "DLG_Common_Button01.TGA", "SubWay_Over" )

g_pButton_Velder_East_SubWay:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(446,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_SubWay:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(446-7,386-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_SubWay:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(446-7+2,386-7+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_SubWay:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_SubWay:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_SubWay:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )




-- 월리성 지하연구실 비밀던전
g_pButton_Velder_East_Secret_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Velder_East_Secret_Dungeon )
g_pButton_Velder_East_Secret_Dungeon:SetName( "Dungeon" )


g_pButton_Velder_East_Secret_Dungeon:AddDummyInt( DUNGEON_ID["DI_ELDER_SECRET_COMMON"] )
g_pButton_Velder_East_Secret_Dungeon:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


g_pButton_Velder_East_Secret_Dungeon:SetNormalTex( "DLG_Common_Button01.TGA", "SubWay" )

--g_pButton_Velder_East_Secret_Dungeon:SetOverTex( "DLG_Common_Button01.TGA", "SubWay_Over" )
IconAni( g_pButton_Velder_East_Secret_Dungeon, "DLG_Common_Button01.TGA", "SubWay_Over" )

g_pButton_Velder_East_Secret_Dungeon:SetDownTex( "DLG_Common_Button01.TGA", "SubWay_Over" )

g_pButton_Velder_East_Secret_Dungeon:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(534,191)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Secret_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(534-7,191-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Secret_Dungeon:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(534-7+2,191-7+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Velder_East_Secret_Dungeon:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButton_Velder_East_Secret_Dungeon:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButton_Velder_East_Secret_Dungeon:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )









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






--  식목일 이벤트 
--[[
g_pButton_Tree_Day = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Tree_Day )

g_pButton_Tree_Day:SetName( "Dungeon" )
g_pButton_Tree_Day:AddDummyInt( DUNGEON_ID["DI_EVENT_TREE_DAY_ELDER"] )
g_pButton_Tree_Day:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )


g_pButton_Tree_Day:SetNormalTex( "DLG_Common_New_Button09.dds", "TREE_NORMAL" )

g_pButton_Tree_Day:SetOverTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )
--IconAni( g_pButton_Tree_Day, "DLG_Common_New_Button09.dds", "event_OVER" )

g_pButton_Tree_Day:SetDownTex( "DLG_Common_New_Button09.dds", "TREE_OVER" )

g_pButton_Tree_Day:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312-30-135,30+60)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(303-30-135,24+60)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Tree_Day:SetDownPoint
{
	ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(303-30+2-135,24+2+60)",

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
    -------이벤트 말풍선
g_pStatic_HOLLO = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HOLLO )
g_pStatic_HOLLO:SetName( "g_pStatic_HOLLO" )


g_pPicture_HOLLO_EVENT = g_pUIDialog:CreatePicture()
g_pStatic_HOLLO:AddPicture( g_pPicture_HOLLO_EVENT )

g_pPicture_HOLLO_EVENT:SetTex( "DLG_Common_New_Texture52.tga", "EVENT" )

g_pPicture_HOLLO_EVENT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(124,561-50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]
