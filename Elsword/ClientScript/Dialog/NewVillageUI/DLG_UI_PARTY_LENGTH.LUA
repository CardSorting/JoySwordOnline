-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party" )
g_pUIDialog:SetPos( 800, 180 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )

--------STATIC
g_pStaticParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty )
g_pStaticParty:SetName( "Party" )

--------던전 BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_DUGEON_BG_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_DUGEON_BG_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 269+2+4,
	"LEFT_TOP		= D3DXVECTOR2(0,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_DUGEON_BG_bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,332+2+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------버튼 BG
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_top" )
g_pPicture_bg2:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(13,258+8+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_middle" )
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(13,265+8+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_bottom" )
g_pPicture_bg2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(13,332+3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------방제 BAR
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )
g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_left" )
g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(12,58+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )
g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_middle" )
g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 148,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(20,58+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_bg3 )
g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "win_name_right" )
g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(169,58+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------exit버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
    "LEFT_TOP		= D3DXVECTOR2(156,37+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP		= D3DXVECTOR2(156-4,37-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -7,
     ADD_SIZE_Y = -7,
 	"LEFT_TOP		= D3DXVECTOR2(156-3,37-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )


---------------- 도움말 버튼 
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON14.tga", "Help_Normal" )
g_pButton_Help:SetOverTex( "DLG_UI_BUTTON14.tga", "Help_Over" )
g_pButton_Help:SetDownTex( "DLG_UI_BUTTON14.tga", "Help_Over" )
g_pButton_Help:SetNormalPoint
{
	ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
    "LEFT_TOP		= D3DXVECTOR2(135,37+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP		= D3DXVECTOR2(135-4,37-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -7,
     ADD_SIZE_Y = -7,
 	"LEFT_TOP		= D3DXVECTOR2(135-3,37-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(10)

-------사냥터 이미지 SATATIC
g_pStaticimage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticimage )
g_pStaticimage:SetName( "image" )

-------------BG
g_pPicture_map_slot = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot )
g_pPicture_map_slot:SetTex( "DLG_UI_BUTTON07.TGA", "map_image_slot" )
g_pPicture_map_slot:SetPoint
{
    ADD_SIZE_X = -39,
	ADD_SIZE_Y = -24,
	"LEFT_TOP		= D3DXVECTOR2(13,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

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
	"POS 			= D3DXVECTOR2(16,132)",
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
	"POS 			= D3DXVECTOR2(16,145)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- }} kimhc -- 2009-10-27 -- 벨더 추가

----수도 하멜
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )
g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture07.TGA", "Hamel_CAPITAL" )
g_pPicture_Hamel_Ship:SetPoint
{    
	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----하멜 외곽
g_pPicture_Hamel_Ship = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Zone:AddPicture( g_pPicture_Hamel_Ship )
g_pPicture_Hamel_Ship:SetTex( "DLG_UI_Common_Texture09.TGA", "Hamel_out" )
g_pPicture_Hamel_Ship:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
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
	"LEFT_TOP		= D3DXVECTOR2(16,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------맵 선택 버튼
g_pButtonMap_selec = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMap_selec )
g_pButtonMap_selec:SetName( "Click_map" )
g_pButtonMap_selec:SetNormalTex( "DLG_UI_BUTTON12.tga", "Map_selec_NORMAL" )
g_pButtonMap_selec:SetOverTex( "DLG_UI_BUTTON12.tga", "Map_selec_OVER" )
g_pButtonMap_selec:SetDownTex( "DLG_UI_BUTTON12.tga", "Map_selec_OVER" )
g_pButtonMap_selec:SetNormalPoint
{
	ADD_SIZE_X = -37,
	ADD_SIZE_Y = -25,
    "LEFT_TOP		= D3DXVECTOR2(11,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetOverPoint
{
    ADD_SIZE_X = -38,
	ADD_SIZE_Y = -25, 
	"LEFT_TOP		= D3DXVECTOR2(11-4,88-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetDownPoint
{
     ADD_SIZE_X = -40,
     ADD_SIZE_Y = -27,
 	"LEFT_TOP		= D3DXVECTOR2(11-3,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMap_selec:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_OPEN_LOCAL_MAP"] )


------박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "BOX_BG_NEW" )
g_pPicture_box:SetPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(83,179+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "BOX_BG_NEW" )
g_pPicture_box:SetPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = -5,
    "LEFT_TOP		= D3DXVECTOR2(83,200+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---난이도, 인원, 아이템 습득, 비공개 STATIC
g_pStatic_TYPO = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TYPO )
g_pStatic_TYPO:SetName( "DifficultyImage" )


----- 난이도
g_pStatic_TYPO:AddString
{
	MSG 			= STR_ID_990, --"난이도",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(13,181+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
----- 인원
g_pStatic_TYPO:AddString
{
	MSG 			= STR_ID_989, --"인원",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(13,202+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

----- 아이템 습득
g_pStatic_TYPO:AddString
{
	MSG 			= STR_ID_12332, --"아이템 습득",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(13,225+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
----- 비공개
g_pStatic_TYPO:AddString
{
	MSG 			= STR_ID_1358, --"비공개",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(13,246+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

----- 레벨제한
g_pStatic_TYPO:AddString
{
	MSG 			= STR_ID_12333, --"레벨제한",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(105,246+1)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

---------------박스 위 글씨
------------- 매우 어려움
g_pStaticstep = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticstep )
g_pStaticstep:SetName( "step" )
g_pStaticstep:AddString
{
	--MSG 			= "매우어려움",
	MSG 			= STR_ID_986,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(120,181+1)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
----------숫자
g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "num" )
g_pStaticnum:AddString
{
	MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(120,183+20+1)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

----------난이도 조절 버튼
-------------왼쪽
g_pButtonstage_left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstage_left )
g_pButtonstage_left:SetName( "stage_left" )
g_pButtonstage_left:SetNormalTex( "DLG_UI_BUTTON01.tga", "l_arrow_NORMAL" )
g_pButtonstage_left:SetOverTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )
g_pButtonstage_left:SetDownTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )
g_pButtonstage_left:SetNormalPoint
{
	 ADD_SIZE_X = -3,
     ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(68,179+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetOverPoint
{
     ADD_SIZE_X = -3,
     ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(68,179-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetDownPoint
{
     ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
 	"LEFT_TOP		= D3DXVECTOR2(68+1,179+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_left:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_LEFT"] )
----------오른쪽
g_pButtonstage_right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstage_right )
g_pButtonstage_right:SetName( "stage_right" )
g_pButtonstage_right:SetNormalTex( "DLG_UI_BUTTON01.tga", "r_arrow_NORMAL" )
g_pButtonstage_right:SetOverTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )
g_pButtonstage_right:SetDownTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )
g_pButtonstage_right:SetNormalPoint
{
	ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(163,179+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetOverPoint
{
	ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(163-1,179-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetDownPoint
{
     ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
 	"LEFT_TOP		= D3DXVECTOR2(163,179+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstage_right:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_DIFFICULTY_RIGHT"] )


---------------- 인원 조절 버튼
--------왼쪽
g_pButtonstaff_left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstaff_left )
g_pButtonstaff_left:SetName( "staff_left" )
g_pButtonstaff_left:SetNormalTex( "DLG_UI_BUTTON01.tga", "l_arrow_NORMAL" )
g_pButtonstaff_left:SetOverTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )
g_pButtonstaff_left:SetDownTex( "DLG_UI_BUTTON01.tga", "l_arrow_OVER" )
g_pButtonstaff_left:SetNormalPoint
{
	ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(68,200+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetOverPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(68,200-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetDownPoint
{
     ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
 	"LEFT_TOP		= D3DXVECTOR2(68+1,200+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_left:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MAX_SLOT_LEFT"] )



------------오른쪽
g_pButtonstaff_right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstaff_right )
g_pButtonstaff_right:SetName( "staff_right" )
g_pButtonstaff_right:SetNormalTex( "DLG_UI_BUTTON01.tga", "r_arrow_NORMAL" )
g_pButtonstaff_right:SetOverTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )
g_pButtonstaff_right:SetDownTex( "DLG_UI_BUTTON01.tga", "r_arrow_OVER" )
g_pButtonstaff_right:SetNormalPoint
{
	ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(163,200+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetOverPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(163-1,200-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetDownPoint
{
     ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
 	"LEFT_TOP		= D3DXVECTOR2(163,200+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstaff_right:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MAX_SLOT_RIGHT"] )



----------------   아이템습득종류
---------------------       랜덤
g_pStatic_rendom= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rendom )
g_pStatic_rendom:SetName( "rendom" )

g_pStatic_rendom:AddString
{
	MSG 			= STR_ID_1338,
	--MSG 			= "랜덤",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(116-15,226)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4 ,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  


---------라디오버튼
g_pRadioButtonrendom = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonrendom )
g_pRadioButtonrendom:SetFixOverByCheck( true ) 
g_pRadioButtonrendom:SetShowOffBGByCheck( true )
g_pRadioButtonrendom:SetName( "g_pRadioButtonrendom" )
g_pRadioButtonrendom:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonrendom:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonrendom:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonrendom:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95-15,218+22-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95-15,218+22-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(95-15,218+22-16)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(95+18-15,218+22+18-14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonrendom:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(95-15,218+22-16)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonrendom:SetGroupID( 1 )
g_pRadioButtonrendom:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_ITEM_GET_RANDOM"] )


-------------------------   각자
g_pStatic_each= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_each )
g_pStatic_each:SetName( "each" )

g_pStatic_each:AddString
{
	MSG 			= STR_ID_1339,
	--MSG 			= "각자",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(95+88-30,226)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4 ,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----------라디오버튼
g_pRadioButtoneach = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtoneach )
g_pRadioButtoneach:SetFixOverByCheck( true ) 
g_pRadioButtoneach:SetShowOffBGByCheck( true )
g_pRadioButtoneach:SetName( "g_pRadioButtoneach" )
g_pRadioButtoneach:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtoneach:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtoneach:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtoneach:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95+67-30,218+22-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95+67-30,218+22-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(95+67-30,218+22-16)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(95+67+18-30,218+22+18-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtoneach:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(95+67-30,218+22-16)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtoneach:SetGroupID( 1 )
g_pRadioButtoneach:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_ITEM_GET_EACH"] )



------------------   lock
g_pPicture_lock = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_lock )
g_pPicture_lock:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )
g_pPicture_lock:SetPoint
{
    ADD_SIZE_X=-1,
	ADD_SIZE_Y=-1,
	"LEFT_TOP		= D3DXVECTOR2(51,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----체크박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(63+19-13,246)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "g_pCheckBoxsecret" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )
g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(63+19-13,246)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(63+19+15-13,246+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(63+19-2-13,246-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxsecret:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PUBLIC"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PUBLIC"] )



-----레벨제한 체크박스
g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(187-31,246)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------체크 표시
g_pCheckBoxlevel = g_pUIDialog:CreateCheckBox()
g_pCheckBoxlevel:SetName( "g_pCheckBoxLevel" )
g_pUIDialog:AddControl( g_pCheckBoxlevel )
g_pCheckBoxlevel:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxlevel:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )
g_pCheckBoxlevel:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(187-31,246)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(187+15-31,246+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxlevel:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(187-2-31,246-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxlevel:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEVEL_LIMIT"] )
g_pCheckBoxlevel:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEVEL_LIMIT"] )


---------파티 이름
g_pIMEEditBox_PartyName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox_PartyName )
g_pIMEEditBox_PartyName:SetName( "g_pIMEEditBox_PartyName" )
g_pIMEEditBox_PartyName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(17, 38+6+18)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(207-33, 38+25+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBox_PartyName:SetFont( XF_DODUM_11_NORMAL )
g_pIMEEditBox_PartyName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBox_PartyName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetSelectedBackColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_PartyName:SetCustomMsgEnter( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_NAME"] )
g_pIMEEditBox_PartyName:SetCustomMsgFocusOut( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_NAME"] )

--------------------------------------버튼들
-----------------  빠른파티    ( 이걸로 던전 클리어시 결과방에선 시작하기, 던전나가기 메뉴가 나타남)
g_pButtonalone = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonalone )
g_pButtonalone:SetName( "alone" )
g_pButtonalone:SetNormalTex( "DLG_UI_BUTTON19.tga", "QUICK_NORMAL" )
g_pButtonalone:SetOverTex( "DLG_UI_BUTTON19.tga", "QUICK_OVER" )
g_pButtonalone:SetDownTex( "DLG_UI_BUTTON19.tga", "QUICK_OVER" )
g_pButtonalone:SetDisableTex( "DLG_UI_BUTTON19.tga", "QUICK_GRAY" )
g_pButtonalone:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285-3-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285-2-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButtonalone:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_PLAY_SOLO"] )
g_pButtonalone:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_QUICK_PARTY"] )


------------------파티만들기
g_pButtonmake = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmake )
g_pButtonmake:SetName( "make" )
g_pButtonmake:SetNormalTex( "DLG_UI_BUTTON19.tga", "MAKE_NORMAL" )
g_pButtonmake:SetOverTex( "DLG_UI_BUTTON19.tga", "MAKE_OVER" )
g_pButtonmake:SetDownTex( "DLG_UI_BUTTON19.tga", "MAKE_OVER" )
g_pButtonmake:SetDisableTex( "DLG_UI_BUTTON19.tga", "MAKE_GRAY" )
g_pButtonmake:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285+29-21+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285+29-3-21+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285+29-2-21+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmake:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285+29-21+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonmake:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CREATE_PARTY"] )


----------------파티리스트
g_pButtonlist = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonlist )
g_pButtonlist:SetName( "list" )
g_pButtonlist:SetNormalTex( "DLG_UI_BUTTON19.tga", "LIST_NORMAL" )
g_pButtonlist:SetOverTex( "DLG_UI_BUTTON19.tga", "LIST_OVER" )
g_pButtonlist:SetDownTex( "DLG_UI_BUTTON19.tga", "LIST_OVER" )
g_pButtonlist:SetDisableTex( "DLG_UI_BUTTON19.tga", "LIST_GRAY" )
g_pButtonlist:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285+58-27+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285+58-3-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285+58-2-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285+58-27+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonlist:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_VIEW_PARTY_LIST"] )



--------------------------      자신이 파티장일 때 ( 시작하기, 파티 탈퇴 )
--------  START  ---------
g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "start" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON19.tga", "start_NORMAL" )
g_pButtonstart:SetOverTex( "DLG_UI_BUTTON19.tga", "start_OVER" )
g_pButtonstart:SetDownTex( "DLG_UI_BUTTON19.tga", "start_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_BUTTON19.tga", "DUNGEON_noactive" )
g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285-3-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285-2-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )


-------------------------------------  자신이 파티원일 때 ( 준비하기 , 파티탈퇴 )
-----------------------         READY
g_pRadioButtonready = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonready )
g_pRadioButtonready:SetFixOverByCheck( true )
g_pRadioButtonready:SetShowOffBGByCheck( true )
g_pRadioButtonready:SetName( "ready" )
g_pRadioButtonready:SetEnableCheckToggle( true )
g_pRadioButtonready:SetNormalTex( "DLG_UI_BUTTON19.tga", "ready_NORMAL" )
g_pRadioButtonready:SetOverTex( "DLG_UI_Button19.tga", "ready_OVER" )
g_pRadioButtonready:SetCheckedTex( "DLG_UI_Button19.tga", "ready_down" )
g_pRadioButtonready:SetDisableTex( "DLG_UI_Button19.tga", "DUNGEON_NOACTIVE" )
g_pRadioButtonready:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetBGMouseOverPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(13-4+5,285-4-14+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(13+160,285-15+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(13+1,285-18+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetGroupID( 2 )
g_pRadioButtonready:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )
g_pRadioButtonready:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )


--------------배 승선 버튼
----------------승선하기 버튼
g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "StartShip" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON19.tga", "SHIP_START_NORMAL" )
g_pButtonstart:SetOverTex( "DLG_UI_BUTTON19.tga", "SHIP_START_OVER" )
g_pButtonstart:SetDownTex( "DLG_UI_BUTTON19.tga", "SHIP_START_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_Button19.tga", "SHIP_NOACTIVE" )
g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285-3-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285-2-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,28-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_START"] )



----------------------- 승선준비 버튼
g_pRadioButtonready = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonready )
g_pRadioButtonready:SetFixOverByCheck( true )
g_pRadioButtonready:SetShowOffBGByCheck( true )
g_pRadioButtonready:SetName( "ReadyShip" )
g_pRadioButtonready:SetEnableCheckToggle( true )
g_pRadioButtonready:SetNormalTex( "DLG_UI_BUTTON19.tga", "SHIP_READY_NORMAL" )
g_pRadioButtonready:SetOverTex( "DLG_UI_Button19.tga", "SHIP_READY_OVER" )
g_pRadioButtonready:SetCheckedTex( "DLG_UI_Button19.tga", "SHIP_READY_DOWN" )
g_pRadioButtonready:SetDisableTex( "DLG_UI_Button19.tga", "SHIP_NOACTIVE" )
g_pRadioButtonready:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetBGMouseOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(13-4+5,285-4-14+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(13+160,285+54-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(13+1,285-18+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonready:SetDisabledPoint
{
	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonready:SetGroupID( 2 )
g_pRadioButtonready:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )
g_pRadioButtonready:SetCustomMsgUnChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_GAME_READY"] )

-----------------------파티탈퇴   (   파장, 파티원 공용)
g_pButtonleave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleave )
g_pButtonleave:SetName( "leave" )
g_pButtonleave:SetNormalTex( "DLG_UI_BUTTON19.tga", "LEAVE_NORMAL" )
g_pButtonleave:SetOverTex( "DLG_UI_BUTTON19.tga", "LEAVE_OVER" )
g_pButtonleave:SetDownTex( "DLG_UI_BUTTON19.tga", "LEAVE_OVER" )
g_pButtonleave:SetDisableTex( "DLG_UI_BUTTON19.tga", "LEAVE_GRAY" )
g_pButtonleave:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,341-2-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,341-2-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEAVE_PARTY"] )

--------------던전나가기(  파장, 파티원 공용 ) ------------->> 던전결과방

g_pButtonout = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonout )
g_pButtonout:SetName( "out" )
g_pButtonout:SetNormalTex( "DLG_UI_BUTTON19.tga", "dungeon_out_NORMAL" )
g_pButtonout:SetOverTex( "DLG_UI_BUTTON19.tga", "dungeon_out_OVER" )
g_pButtonout:SetDownTex( "DLG_UI_BUTTON19.tga", "dungeon_out_OVER" )
g_pButtonout:SetDisableTex( "DLG_UI_BUTTON18.tga", "dungeon_out_gray" )
g_pButtonout:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,342-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,342-2-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,342-1-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,342-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LEAVE_DUNGEON_LOUNGE"] )
