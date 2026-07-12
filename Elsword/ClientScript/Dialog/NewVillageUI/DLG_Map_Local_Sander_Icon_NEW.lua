-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--메마른 샌더
g_pButtonDrySander = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDrySander )
g_pButtonDrySander:SetName( "Bonghun_temple" )
g_pButtonDrySander:AddDummyInt( DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"] )
g_pButtonDrySander:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonDrySander:SetNormalTex( "DLG_Common_Button02_NEW.tga", "DRY_SANDER_NORMAL" )

g_pButtonDrySander:SetOverTex( "DLG_Common_Button02_NEW.tga", "DRY_SANDER_OVER" )
IconAni( g_pButtonDrySander,  "DLG_Common_Button02_NEW.tga", "DRY_SANDER_OVER" )

g_pButtonDrySander:SetDownTex( "DLG_Common_Button02_NEW.tga", "DRY_SANDER_OVER" )

g_pButtonDrySander:SetNormalPoint
{

     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(186+6,255+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDrySander:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(186+6,255+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDrySander:SetDownPoint
{
      ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,

 	"LEFT_TOP		= D3DXVECTOR2(186+6+2,255+6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDrySander:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonDrySander:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonDrySander:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


--가르파이 기암지대
g_pButtonGarpaiRock = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGarpaiRock )
g_pButtonGarpaiRock:SetName( "screw_corridor" )
g_pButtonGarpaiRock:AddDummyInt( DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"] )
g_pButtonGarpaiRock:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonGarpaiRock:SetNormalTex( "DLG_Common_Button02_NEW.tga", "GARPAI_NORMAL" )

g_pButtonGarpaiRock:SetOverTex( "DLG_Common_Button02_NEW.tga", "GARPAI_OVER" )
IconAni( g_pButtonGarpaiRock,  "DLG_Common_Button02_NEW.tga", "GARPAI_OVER" )

g_pButtonGarpaiRock:SetDownTex( "DLG_Common_Button02_NEW.tga", "GARPAI_OVER" )

g_pButtonGarpaiRock:SetNormalPoint
{

     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(361+6,248+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGarpaiRock:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(361+6,248+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGarpaiRock:SetDownPoint
{
     ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,

 	"LEFT_TOP		= D3DXVECTOR2(361+6+2,248+6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGarpaiRock:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonGarpaiRock:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonGarpaiRock:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


--트락 소굴 
g_pButtonChapel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChapel )
g_pButtonChapel:SetName( "chapel" )
g_pButtonChapel:AddDummyInt( DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"] )
g_pButtonChapel:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonChapel:SetNormalTex( "DLG_Common_Button03_NEW.tga", "SANDER_DEN_OF_TROCK_NORMAL" )

g_pButtonChapel:SetOverTex( "DLG_Common_Button03_NEW.tga", "SANDER_DEN_OF_TROCK_OVER" )
IconAni( g_pButtonChapel,  "DLG_Common_Button03_NEW.tga", "SANDER_DEN_OF_TROCK_OVER" )

g_pButtonChapel:SetDownTex( "DLG_Common_Button03_NEW.tga", "SANDER_DEN_OF_TROCK_OVER" )

g_pButtonChapel:SetNormalPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(318+6,152+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetOverPoint
{

     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(318+6,152+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetDownPoint
{
     ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,
	"LEFT_TOP		= D3DXVECTOR2(318+6+2,152+6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChapel:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonChapel:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonChapel:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


-- 칼루소 부족 마을 
g_pButtonUnderGarden = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnderGarden )
g_pButtonUnderGarden:SetName( "underGarden" )
g_pButtonUnderGarden:AddDummyInt( DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"] )
g_pButtonUnderGarden:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )

g_pButtonUnderGarden:SetNormalTex( "DLG_Common_Button03_NEW.tga", "SANDER_KARUSO_VILLAGE_NORMAL" )

g_pButtonUnderGarden:SetOverTex( "DLG_Common_Button03_NEW.tga", "SANDER_KARUSO_VILLAGE_OVER" )
IconAni( g_pButtonUnderGarden,  "DLG_Common_Button03_NEW.tga", "SANDER_KARUSO_VILLAGE_OVER" )

g_pButtonUnderGarden:SetDownTex( "DLG_Common_Button03_NEW.tga", "SANDER_KARUSO_VILLAGE_OVER" )

g_pButtonUnderGarden:SetNormalPoint
{

     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(121+6,151+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetOverPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(121+6,151+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetDownPoint
{
     ADD_SIZE_X = -4-10,
     ADD_SIZE_Y = -4-10,
	"LEFT_TOP		= D3DXVECTOR2(121+6+2,151+6+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnderGarden:SetCustomMsgMouseUp( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_CLICKED"] )
g_pButtonUnderGarden:SetCustomMsgMouseOver( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OVER"] )
g_pButtonUnderGarden:SetCustomMsgMouseOut( LOCAL_MAP_UI_CUSTOM_MSG["LMUCM_DUNGEON_MOUSE_OUT"] )


-- 헤니르 시공(전체적으로 내리는 작업)
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
-- 식목일 이벤트 던전
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

--기본별
g_pButton_STAR1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR1 )
g_pButton_STAR1:SetNameStrID( STR_ID_21154 )

g_pPictureSTAR1_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_StarBG )
g_pPictureSTAR1_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR1_StarBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(198,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star0 )
g_pPictureSTAR1_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR1_Star0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(198+1,354)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star1 )
g_pPictureSTAR1_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR1_Star1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(198+15,354)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR1_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR1:AddPicture( g_pPictureSTAR1_Star2 )
g_pPictureSTAR1_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR1_Star2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(198+28,354)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--기본별
g_pButton_STAR2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR2 )
g_pButton_STAR2:SetNameStrID( STR_ID_21697 )

g_pPictureSTAR2_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_StarBG )
g_pPictureSTAR2_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR2_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(380,347+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star0 )
g_pPictureSTAR2_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR2_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(380+1,347+2)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star1 )
g_pPictureSTAR2_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR2_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(380+15,347+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR2_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR2:AddPicture( g_pPictureSTAR2_Star2 )
g_pPictureSTAR2_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR2_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(380+28,347+2)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- --기본별
g_pButton_STAR3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR3 )
g_pButton_STAR3:SetNameStrID( STR_ID_22490 )

g_pPictureSTAR3_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_StarBG )
g_pPictureSTAR3_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR3_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(337,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star0 )
g_pPictureSTAR3_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR3_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(337+1,250)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star1 )
g_pPictureSTAR3_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR3_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(337+15,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR3_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR3:AddPicture( g_pPictureSTAR3_Star2 )
g_pPictureSTAR3_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR3_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(337+28,250)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- --기본별
g_pButton_STAR4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButton_STAR4 )
g_pButton_STAR4:SetNameStrID( STR_ID_22491 )

g_pPictureSTAR4_StarBG = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_StarBG )
g_pPictureSTAR4_StarBG:SetTex( "DLG_Common_Button00_NEW.tga", "Star_Bg" )
g_pPictureSTAR4_StarBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(129,246-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star0 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star0 )
g_pPictureSTAR4_Star0:SetTex( "DLG_Common_Button00_NEW.tga", "Star_1" )
g_pPictureSTAR4_Star0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(129+1,246-3)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",	
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star1 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star1 )
g_pPictureSTAR4_Star1:SetTex( "DLG_Common_Button00_NEW.tga", "Star_2" )
g_pPictureSTAR4_Star1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(129+15,246-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSTAR4_Star2 = g_pUIDialog:CreatePicture()
g_pButton_STAR4:AddPicture( g_pPictureSTAR4_Star2 )
g_pPictureSTAR4_Star2:SetTex( "DLG_Common_Button00_NEW.tga", "Star_3" )
g_pPictureSTAR4_Star2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(129+28,246-3)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--기본별
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

--기본별	--퀘스트 마크용
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
--[[
--기본별	--퀘스트 마크용
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
--]]