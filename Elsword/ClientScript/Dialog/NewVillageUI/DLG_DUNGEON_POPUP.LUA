-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party" )
g_pUIDialog:SetPos( 800, 220 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

g_pStatic_DUNGEON = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DUNGEON )
g_pStatic_DUNGEON:SetName( "DUNGEON" )


----------BG
g_pPicture_DUNGEON_Bg_LINE1 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg_LINE1 )
g_pPicture_DUNGEON_Bg_LINE1:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_TOP" )
g_pPicture_DUNGEON_Bg_LINE1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPicture_DUNGEON_Bg_LINE2 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg_LINE2 )
g_pPicture_DUNGEON_Bg_LINE2:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_MIDDLE" )
g_pPicture_DUNGEON_Bg_LINE2:SetPoint
{
    ADD_SIZE_Y=388,
	"LEFT_TOP		= D3DXVECTOR2(0,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPicture_DUNGEON_Bg_LINE3 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg_LINE3 )
g_pPicture_DUNGEON_Bg_LINE3:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_BOTTOM" )
g_pPicture_DUNGEON_Bg_LINE3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,422-7-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------

----------BG_LINE
g_pPicture_DUNGEON_Bg1 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg1 )
g_pPicture_DUNGEON_Bg1:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_LINE_TOP" )
g_pPicture_DUNGEON_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+2,0+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPicture_DUNGEON_Bg2 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg2 )
g_pPicture_DUNGEON_Bg2:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_LINE_MIDDLE" )
g_pPicture_DUNGEON_Bg2:SetPoint
{
    ADD_SIZE_Y="386",
	"LEFT_TOP		= D3DXVECTOR2(2,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---
g_pPicture_DUNGEON_Bg3 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg3 )
g_pPicture_DUNGEON_Bg3:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_BG_LINE_BOTTOM" )
g_pPicture_DUNGEON_Bg3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------


---------닫기 버튼
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "Cashshop_BuyWindow_Exit" )

-- g_pButton_X:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_X:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_X:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_X_NORMAL" )
g_pButton_X:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_X_OVER" )
g_pButton_X:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_X_OVER" )
g_pButton_X:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(163+10,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(163+10,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(163+1+10,7+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )

---------도움말 버튼
g_pButton_HELP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HELP )
g_pButton_HELP:SetName( "Button_Help" )

-- g_pButton_HELP:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_HELP:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_HELP:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_HELP_NORMAL" )
g_pButton_HELP:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_HELP_OVER" )
g_pButton_HELP:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_HELP_OVER" )
g_pButton_HELP:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(150,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HELP:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(150,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HELP:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(150+1,7+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HELP:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_HELP:AddDummyInt(10)



-------사냥터 이미지 SATATIC
g_pStatic_image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_image )
g_pStatic_image:SetName( "image" )

--------DUNGEON_MAP_BG
g_pPicture_DUNGEON_MAP_Bg1 = g_pUIDialog:CreatePicture()
g_pStatic_image:AddPicture( g_pPicture_DUNGEON_MAP_Bg1 )
g_pPicture_DUNGEON_MAP_Bg1:SetTex( "DLG_UI_DUNGEON_01.tga", "DUNGEON_MAP_BG" )
g_pPicture_DUNGEON_MAP_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------

-----적정인원
g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "need_user" )
g_pStaticuser:AddString
{ 
    --MSG 			= "적정인원",
	MSG 			= STR_ID_1335,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(16,79)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----적정레벨
g_pStaticlevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlevel )
g_pStaticlevel:SetName( "need_level" )

g_pStaticlevel:AddString
{
    --MSG 			= "적정레벨",
	MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(16,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------던전 지역명  STATIC
g_pStaticDungeon_Zone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Zone )
g_pStaticDungeon_Zone:SetName( "Dungeon_Zone" )


---------------던전 지역명
----루벤
g_pPicture_Ruben = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Ruben )
g_pPicture_Ruben:SetTex( "DLG_UI_Common_Texture07.TGA", "ruben_out" )
g_pPicture_Ruben:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----엘더
g_pPicture_Eldu = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Eldu )
g_pPicture_Eldu:SetTex( "DLG_UI_Common_Texture07.TGA", "eldu_out" )
g_pPicture_Eldu:SetPoint
{    
	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----베스마
g_pPicture_Besma = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Besma )
g_pPicture_Besma:SetTex( "DLG_UI_Common_Texture07.TGA", "besma_out" )
g_pPicture_Besma:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----알테라
g_pPicture_Altera = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Altera )
g_pPicture_Altera:SetTex( "DLG_UI_Common_Texture07.TGA", "altera_out" )
g_pPicture_Altera:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----페이타
g_pPicture_Peita = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Peita )
g_pPicture_Peita:SetTex( "DLG_UI_Common_Texture07.TGA", "peita_out" )
g_pPicture_Peita:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- {{ kimhc -- 2009-10-27 -- 벨더 추가
g_pPicture_Velder = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Velder )

g_pPicture_Velder:SetTex( "DLG_UI_Common_Texture07.TGA", "velder_capital" )

g_pPicture_Velder:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- }} kimhc -- 2009-10-27 -- 벨더 추가

----하멜 외곽
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )
g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture09.TGA", "Hamel_out" )
g_pPicture_Hamel_Ship:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------퀘스트 표시 STATIC
g_pStaticLocalQuest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocalQuest )
g_pStaticLocalQuest:SetName( "StaticLocalQuest" )

----------퀘스트 표시
g_pPictureQuest = g_pUIDialog:CreatePicture()
g_pStaticLocalQuest:AddPicture( g_pPictureQuest )
g_pPictureQuest:SetTex( "DLG_UI_Common_Texture13.tga", "Quset_Notice_Small" )
g_pPictureQuest:SetPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(16,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------DUNGEON_MAP_BTN
g_pButton_MAP_CHOICE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_MAP_CHOICE )
g_pButton_MAP_CHOICE:SetName( "MAP_CHOICE" )

-- g_pButton_MAP_CHOICE:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_MAP_CHOICE:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_MAP_CHOICE:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_MAP_NORMAL" )
g_pButton_MAP_CHOICE:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_MAP_OVER" )
g_pButton_MAP_CHOICE:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_MAP_OVER" )
g_pButton_MAP_CHOICE:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_CHOICE:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_CHOICE:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(15+1,125+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_CHOICE:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )



--------DUNGEON_LEVEL_BTN
----왼쪽
g_pButton_Difficulty_Left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Difficulty_Left )
g_pButton_Difficulty_Left:SetName( "stage_left" )

-- g_pButton_Difficulty_Left:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_Difficulty_Left:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_Difficulty_Left:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_LEFT" )
g_pButton_Difficulty_Left:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_LEFT" )
g_pButton_Difficulty_Left:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_LEFT" )
g_pButton_Difficulty_Left:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13,34+121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Left:SetOverPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(13-1,34+121-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Left:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,34+121+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Left:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_LEFT"] )

-------------
----오른쪽
g_pButton_Difficulty_Right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Difficulty_Right )
g_pButton_Difficulty_Right:SetName( "stage_right" )

-- g_pButton_Difficulty_Right:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_Difficulty_Right:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_Difficulty_Right:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_RIGHT" )
g_pButton_Difficulty_Right:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_RIGHT" )
g_pButton_Difficulty_Right:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_RIGHT" )
g_pButton_Difficulty_Right:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(16+162,34+121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Right:SetOverPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(16+162-1,34+121-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Right:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+162+1,34+121+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Difficulty_Right:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_RIGHT"] )

-----------
-------사냥터 난이도 SATATIC
g_pStatic_LEVEL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LEVEL )
g_pStatic_LEVEL:SetName( "step" )
--------DUNGEON_LEVEL_BG

g_pStatic_LEVEL:AddString
{
    MSG 			= "난이도",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(14+70-1,34+123)",
	"COLOR			= D3DXCOLOR(01.0,1.0,0.8,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 

-------------

g_pPicture_DUNGEON_LEVEL_Bg1 = g_pUIDialog:CreatePicture()
g_pStatic_LEVEL:AddPicture( g_pPicture_DUNGEON_LEVEL_Bg1 )
g_pPicture_DUNGEON_LEVEL_Bg1:SetTex( "DLG_UI_DUNGEON_01.tga", "LEVER_BG" )
g_pPicture_DUNGEON_LEVEL_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14+19,34+122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------적정 인원/ 던전 설명  SATATIC
g_pStatic_INFO = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_INFO )
g_pStatic_INFO:SetName( "INFO" )
--------DUNGEON_INFO_BG
g_pPicture_DUNGEON_INFO_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_INFO:AddPicture( g_pPicture_DUNGEON_INFO_BG1 )
g_pPicture_DUNGEON_INFO_BG1:SetTex( "DLG_UI_DUNGEON_01.tga", "INFO_BG_LEFT" )
g_pPicture_DUNGEON_INFO_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+4,34+121+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_INFO_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_INFO:AddPicture( g_pPicture_DUNGEON_INFO_BG2 )
g_pPicture_DUNGEON_INFO_BG2:SetTex( "DLG_UI_DUNGEON_01.tga", "INFO_BG_CENTER" )
g_pPicture_DUNGEON_INFO_BG2:SetPoint
{
    ADD_SIZE_X="160",
	"LEFT_TOP		= D3DXVECTOR2(13+4+5,34+121+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_INFO_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_INFO:AddPicture( g_pPicture_DUNGEON_INFO_BG3 )
g_pPicture_DUNGEON_INFO_BG3:SetTex( "DLG_UI_DUNGEON_01.tga", "INFO_BG_RIGHT" )
g_pPicture_DUNGEON_INFO_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(16+162+6,34+121+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------
g_pStatic_INFO:AddString
{
    MSG 			= "적정 Lv",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(21,34+123+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.6,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 
g_pStatic_INFO:AddString
{
    MSG 			= "적정 인원",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(21,34+123+30-3+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.6,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 
g_pStatic_INFO:AddString
{
    MSG 			= "50~52",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(21+142,44+113+30-3)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
} 
g_pStatic_INFO:AddString
{
    MSG 			= "3~4명",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(21+142,44+113+30-3+17)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,1.0,0.3,1.0)",
}
g_pStatic_INFO:AddString
{
    MSG 			= "던전 설명 입니다. 던전 설명 이\n구요. 글씨 간격 못 줄이나요??\n간격을 줄여주세요;ㅁ;",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(21,34+123+68-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.6,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 

--------------ITEM_BG
g_pPicture_DUNGEON_ITEM_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_ITEM_BG1 )
g_pPicture_DUNGEON_ITEM_BG1:SetTex( "DLG_UI_DUNGEON_01.tga", "ITEM_BG" )
g_pPicture_DUNGEON_ITEM_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+3,34+121+115+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_ITEM_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_ITEM_BG2 )
g_pPicture_DUNGEON_ITEM_BG2:SetTex( "DLG_UI_DUNGEON_01.tga", "ITEM_BG" )
g_pPicture_DUNGEON_ITEM_BG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+3+36,34+121+115+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_ITEM_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_ITEM_BG3 )
g_pPicture_DUNGEON_ITEM_BG3:SetTex( "DLG_UI_DUNGEON_01.tga", "ITEM_BG" )
g_pPicture_DUNGEON_ITEM_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+3+72,34+121+115+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_ITEM_BG4 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_ITEM_BG4 )
g_pPicture_DUNGEON_ITEM_BG4:SetTex( "DLG_UI_DUNGEON_01.tga", "ITEM_BG" )
g_pPicture_DUNGEON_ITEM_BG4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+3+72+36,34+121+115+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_ITEM_BG5 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_ITEM_BG5 )
g_pPicture_DUNGEON_ITEM_BG5:SetTex( "DLG_UI_DUNGEON_01.tga", "ITEM_BG" )
g_pPicture_DUNGEON_ITEM_BG5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+3+72+72,34+121+115+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------던전 신청
g_pButton_READY = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_READY )
g_pButton_READY:SetName( "READY" )

-- g_pButton_READY:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_READY:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_READY:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_READY_NORMAL" )
g_pButton_READY:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_READY_OVER" )
g_pButton_READY:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_READY_OVER" )
g_pButton_READY:SetDisableTex( "DLG_UI_DUNGEON_01.tga", "BTN_READY_NORMAL" )
g_pButton_READY:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,312)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_READY:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,312+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_READY:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(14+1,312+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_READY:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(214,312)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonalone:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PLAY_SOLO"] )
g_pButton_READY:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )

---------현재 인원으로 시작하기 
g_pButton_START = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_START )
g_pButton_START:SetName( "START" )

-- g_pButton_START:AddDummyInt( DUNGEON_ID["DI_MAP_CHOICE"] )
-- g_pButton_START:AddDummyInt( DETAIL_LOCAL_TYPE["DLT_DUNGEON"] )
g_pButton_START:SetNormalTex( "DLG_UI_DUNGEON_01.tga", "BTN_START_NORMAL" )
g_pButton_START:SetOverTex( "DLG_UI_DUNGEON_01.tga", "BTN_START_OVER" )
g_pButton_START:SetDownTex( "DLG_UI_DUNGEON_01.tga", "BTN_START_OVER" )
g_pButton_START:SetDisableTex( "DLG_UI_DUNGEON_01.tga", "BTN_START_NORMAL" )
g_pButton_START:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,312+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,312+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(14+1,312+1+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(124,312)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )

g_pStaticBonus = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBonus )
g_pStaticBonus:SetName( "BONUS" )

----------BG
g_pPictureBonus = g_pUIDialog:CreatePicture()
g_pStaticBonus:AddPicture( g_pPictureBonus )
g_pPictureBonus:SetTex( "DLG_Common_New_Texture73.tga", "BONUS_ITEM" )
g_pPictureBonus:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticBonus:SetShow( false )