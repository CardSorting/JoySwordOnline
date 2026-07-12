-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )


--------STATIC
g_pStaticParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty )
g_pStaticParty:SetName( "Party" )

--------던전 이미지 백그라운드
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_BG_TOP" )
g_pPicture_bg:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(794,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_BG_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 356,
	"LEFT_TOP		= D3DXVECTOR2(794,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_BG_BOTTOM" )
g_pPicture_bg:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(794,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------버튼 BG
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg2:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(805,430+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 65,
	"LEFT_TOP		= D3DXVECTOR2(805,430+7+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(805,510-3+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------exit버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Close_Window" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "X_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(988+4,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{ 
	"LEFT_TOP		= D3DXVECTOR2(988+4,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(988+4+1,125+15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )


---------------- 도움말 버튼 
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Normal" )
g_pButton_Help:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Over" )
g_pButton_Help:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Over" )
g_pButton_Help:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(967+3,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(967+3,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(967+3+1,125+15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(10)

-------던전맵 이미지 SATATIC
g_pStaticimage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticimage )
g_pStaticimage:SetName( "image" )

--------DUNGEON_MAP_BG
g_pPicture_DUNGEON_MAP_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_DUNGEON_MAP_Bg1 )
g_pPicture_DUNGEON_MAP_Bg1:SetTex( "DLG_UI_Common_Texture49_NEW.tga", "IMAGE_BG" )

g_pPicture_DUNGEON_MAP_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------DUNGEON_MAP_Button
g_pPicture_DUNGEON_MAP_BUTTON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pPicture_DUNGEON_MAP_BUTTON )
g_pPicture_DUNGEON_MAP_BUTTON:SetName( "Click_map" )
g_pPicture_DUNGEON_MAP_BUTTON:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pPicture_DUNGEON_MAP_BUTTON:SetOverTex( "DLG_Common_Button00.tga", "invisible" )
g_pPicture_DUNGEON_MAP_BUTTON:SetDownTex( "DLG_Common_Button00.tga", "invisible" )
g_pPicture_DUNGEON_MAP_BUTTON:SetNormalPoint
{
	ADD_SIZE_X = 175,
	ADD_SIZE_Y = 107,
	"LEFT_TOP		= D3DXVECTOR2(803,162)  ",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_MAP_BUTTON:SetOverPoint
{
	ADD_SIZE_X = 175,
	ADD_SIZE_Y = 107,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_MAP_BUTTON:SetDownPoint
{
	ADD_SIZE_X = 175,
	ADD_SIZE_Y = 107,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_DUNGEON_MAP_BUTTON:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )


-------던전 지역명  STATIC
g_pStaticDungeon_Zone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Zone )
g_pStaticDungeon_Zone:SetName( "Dungeon_Zone" )


---------------던전 지역명
----루벤
g_pPicture_Ruben = g_pUIDialog:CreatePicture() -- 0
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Ruben )
g_pPicture_Ruben:SetTex( "DLG_UI_Common_Texture07.TGA", "ruben_out" )
g_pPicture_Ruben:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----엘더
g_pPicture_Eldu = g_pUIDialog:CreatePicture() -- 1
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Eldu )
g_pPicture_Eldu:SetTex( "DLG_UI_Common_Texture07.TGA", "eldu_out" )
g_pPicture_Eldu:SetPoint
{    
	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----베스마
g_pPicture_Besma = g_pUIDialog:CreatePicture() --2
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Besma )
g_pPicture_Besma:SetTex( "DLG_UI_Common_Texture07.TGA", "besma_out" )
g_pPicture_Besma:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----알테라
g_pPicture_Altera = g_pUIDialog:CreatePicture() --3
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Altera )
g_pPicture_Altera:SetTex( "DLG_UI_Common_Texture07.TGA", "altera_out" )
g_pPicture_Altera:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----페이타
g_pPicture_Peita = g_pUIDialog:CreatePicture() --4
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Peita )
g_pPicture_Peita:SetTex( "DLG_UI_Common_Texture07.TGA", "peita_out" )
g_pPicture_Peita:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- {{ kimhc -- 2009-10-27 -- 벨더 추가
g_pPicture_Velder = g_pUIDialog:CreatePicture() --5
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Velder )

g_pPicture_Velder:SetTex( "DLG_UI_Common_Texture07.TGA", "velder_capital" )

g_pPicture_Velder:SetPoint
{
    	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- }} kimhc -- 2009-10-27 -- 벨더 추가

----수도 하멜
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture() --6
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )
g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture07_A.TGA", "Hamel_CAPITAL" )
g_pPicture_Hamel_Ship:SetPoint
{    
	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----샌더
g_pPicture_Sander = g_pUIDialog:CreatePicture() --7
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Sander )
g_pPicture_Sander:SetTex( "DLG_UI_Common_Texture_Field_00.tga", "SANDER" )
g_pPicture_Sander:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(803,162)",
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
	"LEFT_TOP		= D3DXVECTOR2(803,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------------------------------------------------------------------------------------------------------------------------------
--{{던전 난이도 난이도
------------------------------------------------------------------------------------------------------------------------------------------------
------보통 버튼
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "NORMAL" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_EASY_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_EASY_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.TGA", "BT_LEVEL_EASY_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(802,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(802+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_NORMAL"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )

------어려움 버튼
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "HARD" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HARD_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HARD_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HARD_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(870,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(870+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_HARD"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )


------VERY HARD
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "EXPERT" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_VERYHARD_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_VERYHARD_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_VERYHARD_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(938,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(938+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_EXPERT"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )

------일반
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "NORMAL_EX" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HENIR_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HENIR_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.TGA", "BT_LEVEL_HENIR_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(802,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(802+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_NORMAL"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )

------헬
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "HELL" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_SECRETDUNGEON_HELL_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_SECRETDUNGEON_HELL_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_SECRETDUNGEON_HELL_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(905,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(905+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_EXPERT"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )

------도전
g_pCheckBox_LEVEL = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckBox_LEVEL )
g_pCheckBox_LEVEL:SetName( "CHALLENGE" )
g_pCheckBox_LEVEL:SetNormalTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HENIR_CHALLENGE_INACTIVITY" )
g_pCheckBox_LEVEL:SetOverTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HENIR_CHALLENGE_NORMAL" )
g_pCheckBox_LEVEL:SetCheckedTex( "DLG_UI_BUTTON20.tga", "BT_LEVEL_HENIR_CHALLENGE_OVER" )
g_pCheckBox_LEVEL:SetDisableTex( "DLG_Common_Button00.tga", "invisible" )
g_pCheckBox_LEVEL:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(905,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(905+1,277+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_LEVEL:AddDummyInt(DIFFICULTY_LEVEL["DL_EXPERT"]) -- GetDummyInt(0) = 난이도
g_pCheckBox_LEVEL:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_CHECKED"] )
g_pCheckBox_LEVEL:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_DUNGEON_DIFFICULTY_UNCHECKED"] )

------------------------------------------------------------------------------------------------------------------------------------------------
--던전 난이도 난이도}}
-----적정인원
g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "need_user" )
g_pStaticuser:AddString
{ 
    MSG 			= "적정인원",
	--MSG 			= STR_ID_1335,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(815,304)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStaticuser:AddString
{ 
    MSG 			= "1",
	--MSG 			= STR_ID_1335,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(982,304)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.9)",
}


-----적정레벨
g_pStaticlevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlevel )
g_pStaticlevel:SetName( "need_level" )

g_pStaticlevel:AddString
{
    MSG 			= "적정레벨",
	--MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(815,320)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStaticlevel:AddString
{
    MSG 			= "1",
	--MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(982,320)",
	"POS 			= D3DXVECTOR2(982,320)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.9)",
}

-----적정 아이템 레벨
g_pStaticlevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticlevel )
g_pStaticlevel:SetName( "AdequateItemLevel" )

g_pStaticlevel:AddString
{
    MSG 			= "적정아이템레벨",
	--MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(815,320+16)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStaticlevel:AddString
{
    MSG 			= "1",
	--MSG 			= STR_ID_1336,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(982,320+16)",
	"POS 			= D3DXVECTOR2(982,320+16)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.9)",
}
--BAR
g_pPicture_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticlevel:AddPicture( g_pPicture_BAR1 )
g_pPicture_BAR1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR1:SetPoint
{
    ADD_SIZE_X=33,
	"LEFT_TOP		= D3DXVECTOR2(804,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BAR2 = g_pUIDialog:CreatePicture()
g_pStaticlevel:AddPicture( g_pPicture_BAR2 )
g_pPicture_BAR2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR2:SetPoint
{
   ADD_SIZE_X=33,
	"LEFT_TOP		= D3DXVECTOR2(804,352)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BAR3 = g_pUIDialog:CreatePicture()
g_pStaticlevel:AddPicture( g_pPicture_BAR3 )
g_pPicture_BAR3:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR3:SetPoint
{
   ADD_SIZE_X=33,
	"LEFT_TOP		= D3DXVECTOR2(804,396)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- 던전설명
g_pStaticDungeonDesc= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeonDesc )
g_pStaticDungeonDesc:SetName( "DungeonDescription" )

g_pStaticDungeonDesc:AddString
{
	MSG 			= "던전 설명입니다. 던전설명은 꼭 세줄\n까지만 해주시면 감사합니다. 부탁드\n립니다요. 혹시 네줄은",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(815,353)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
--#ifdef ELLIPSE_GLOBAL 말줄임표 툴팁
g_pStaticDungeonToolTipDesc= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pStaticDungeonToolTipDesc )
g_pStaticDungeonToolTipDesc:SetName( "DungeonDescriptionToolTip" )
g_pStaticDungeonToolTipDesc:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pStaticDungeonToolTipDesc:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pStaticDungeonToolTipDesc:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

 g_pStaticDungeonToolTipDesc:SetNormalPoint
{
    ADD_SIZE_X = 200,
	ADD_SIZE_Y = 45,
	 
 	"LEFT_TOP		= D3DXVECTOR2(805,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticDungeonToolTipDesc:SetOverPoint
{
    ADD_SIZE_X = 200,
	ADD_SIZE_Y = 45,
	 
 	"LEFT_TOP		= D3DXVECTOR2(805-1,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticDungeonToolTipDesc:SetDownPoint
{
    ADD_SIZE_X = 200,
	ADD_SIZE_Y = 45,
	 
 	"LEFT_TOP		= D3DXVECTOR2(805,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticDungeonToolTipDesc:SetGuideDesc( STR_ID_27 )
--#endif ELLIPSE_GLOBAL 말줄임표 툴팁
--[[
---난이도, 인원, 아이템 습득, 비공개 STATIC
g_pStatic_TYPO = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TYPO )
g_pStatic_TYPO:SetName( "DifficultyImage" )



----- 난이도-숫자
g_pStatic_TYPO:AddString
{
	MSG 			="51 - 52",
	--MSG 			= STR_ID_990, --"난이도",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(982,323+5)",
	"COLOR			= D3DXCOLOR(1.0,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
----- 인원
g_pStatic_TYPO:AddString
{
    MSG 			="3 - 4",
	--MSG 			= STR_ID_989, --"인원",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(815,309+5)",
	"COLOR			= D3DXCOLOR(0.3,0.8,0.5,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

----- 던전설명
g_pStatic_TYPO:AddString
{
	MSG 			= "던전 설명입니다. 던전설명은 꼭\n세줄까지만 해주시면 감사합니다.\n부탁드립니다요. 혹시 네줄은",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(815,350)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
--]]



---보상아이템
g_pStatic_ITEM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ITEM )
g_pStatic_ITEM:SetName( "ITEM" )

g_pStatic_ITEM:AddString
{
	MSG 			= "기대 보상",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(807,400)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

--- SLOT
g_pPicture_ITEM_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG1 )
g_pPicture_ITEM_BG1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ITEM_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG2 )
g_pPicture_ITEM_BG2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808+34-1,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ITEM_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG3 )
g_pPicture_ITEM_BG3:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808+68-2,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ITEM_BG4 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG4 )
g_pPicture_ITEM_BG4:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808+102-3,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ITEM_BG5 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG5 )
g_pPicture_ITEM_BG5:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG5:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808+136-4,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ITEM_BG6 = g_pUIDialog:CreatePicture()
g_pStatic_ITEM:AddPicture( g_pPicture_ITEM_BG6 )
g_pPicture_ITEM_BG6:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "ITEM_BG" )
g_pPicture_ITEM_BG6:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(808+170-5,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--버튼
g_pButton_ITEM1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM1 )
g_pButton_ITEM1:SetName( "ITEM1" )
g_pButton_ITEM1:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM1:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM1:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM1:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM1:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM1:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM1:SetEnableClick( false )
g_pButton_ITEM1:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM1:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )


g_pButton_ITEM2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM2 )
g_pButton_ITEM2:SetName( "ITEM2" )
g_pButton_ITEM2:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM2:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM2:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM2:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808+34-1,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM2:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808+34-1,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM2:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808+34-1,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM2:SetEnableClick( false )
g_pButton_ITEM2:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM2:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )

g_pButton_ITEM3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM3 )
g_pButton_ITEM3:SetName( "ITEM3" )
g_pButton_ITEM3:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM3:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM3:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM3:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808+68-2,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM3:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808+68-2,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM3:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808+68-2,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM3:SetEnableClick( false )
g_pButton_ITEM3:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM3:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )

g_pButton_ITEM4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM4 )
g_pButton_ITEM4:SetName( "ITEM4" )
g_pButton_ITEM4:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM4:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM4:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM4:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808+102-3,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM4:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808+102-3,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM4:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808+102-3,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM4:SetEnableClick( false )
g_pButton_ITEM4:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM4:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )

g_pButton_ITEM5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM5 )
g_pButton_ITEM5:SetName( "ITEM5" )
g_pButton_ITEM5:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM5:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM5:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM5:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808+136-4,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM5:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808+136-4,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM5:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808+136-4,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM5:SetEnableClick( false )
g_pButton_ITEM5:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM5:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )

g_pButton_ITEM6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ITEM6 )
g_pButton_ITEM6:SetName( "ITEM6" )
g_pButton_ITEM6:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_ITEM6:SetOverTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM6:SetDownTex( "DLG_UI_Button04.tga", "pay_selec" )
g_pButton_ITEM6:SetNormalPoint
{
	ADD_SIZE_X 		= 30,
	ADD_SIZE_Y 		= 30,
    "LEFT_TOP		= D3DXVECTOR2(808+170-5,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM6:SetOverPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,
	"LEFT_TOP		= D3DXVECTOR2(808+170-5,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM6:SetDownPoint
{
	ADD_SIZE_X		= -19,
	ADD_SIZE_Y		= -19,  
 	"LEFT_TOP		= D3DXVECTOR2(808+170-5,408+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ITEM6:SetEnableClick( false )
g_pButton_ITEM6:SetCustomMsgMouseOver(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OVER"] )
g_pButton_ITEM6:SetCustomMsgMouseOut(  PARTY_UI_CUSTOM_MSG["PUCM_REWARD_ITEM_MOUSE_OUT"] )
------화살표
--[[
--왼쪽
g_pButton_LEFT_ARROW = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_LEFT_ARROW )
g_pButton_LEFT_ARROW:SetName( "LEFT_ARROW" )
g_pButton_LEFT_ARROW:SetNormalTex( "DLG_UI_Button19_NEW.tga", "ITEM_LEFT" )
g_pButton_LEFT_ARROW:SetOverTex( "DLG_UI_Button19_NEW.tga", "ITEM_LEFT" )
g_pButton_LEFT_ARROW:SetDownTex( "DLG_UI_Button19_NEW.tga", "ITEM_LEFT" )
g_pButton_LEFT_ARROW:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(801,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_LEFT_ARROW:SetOverPoint
{
    ADD_SIZE_X=1,
	ADD_SIZE_Y=1,
	"LEFT_TOP		= D3DXVECTOR2(801-1,418-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_LEFT_ARROW:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(801,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--오른쪽
g_pButton_RIGHT_ARROW = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_RIGHT_ARROW )
g_pButton_RIGHT_ARROW:SetName( "LEFT_ARROW" )
g_pButton_RIGHT_ARROW:SetNormalTex( "DLG_UI_Button19_NEW.tga", "ITEM_RIGHT" )
g_pButton_RIGHT_ARROW:SetOverTex( "DLG_UI_Button19_NEW.tga", "ITEM_RIGHT" )
g_pButton_RIGHT_ARROW:SetDownTex( "DLG_UI_Button19_NEW.tga", "ITEM_RIGHT" )
g_pButton_RIGHT_ARROW:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(829+168,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_RIGHT_ARROW:SetOverPoint
{
    ADD_SIZE_X=1,
	ADD_SIZE_Y=1,
	"LEFT_TOP		= D3DXVECTOR2(829+168-1,418-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_RIGHT_ARROW:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(829+168,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

--------------------------------------버튼들
----------------- 던전신청
g_pButton_START = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_START )
g_pButton_START:SetName( "PartyRequest" )
g_pButton_START:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START_NORMAL" )
g_pButton_START:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START_OVER" )
g_pButton_START:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START_OVER" )
g_pButton_START:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START_NORMAL" )
g_pButton_START:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(809,455+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(809,455+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(809+1,455+1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(809,455+2)",
        "COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PLAY_SOLO"] )
g_pButton_START:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )


-----영웅 모집 공고 버튼 추가

g_pButton_START = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_START )
g_pButton_START:SetName( "BonusPartyRequest" )
g_pButton_START:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "HERO_START_NORMAL" )
g_pButton_START:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "HERO_START_OVER" )
g_pButton_START:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "HERO_START_OVER" )
g_pButton_START:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "HERO_START_NORMAL" )
g_pButton_START:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(809,455+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(809,455+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(809+1,455+1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(809,455+2)",
        "COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PLAY_SOLO"] )
g_pButton_START:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )




------------------현재인원으로 시작
g_pButton_START2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_START2 )
g_pButton_START2:SetName( "CurrentMemberStart" )
g_pButton_START2:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START2_NORMAL" )
g_pButton_START2:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START2_OVER" )
g_pButton_START2:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START2_OVER" )
g_pButton_START2:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "DUNGEON_START2_NORMAL" )
g_pButton_START2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(809,500)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(809,500)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(809+1,500+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START2:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(809,500)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_START2:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )


