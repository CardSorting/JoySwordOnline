-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "UNLIMITEDCHANGEJOB" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_UNLIMITED_SECOND_CHANGE_JOB_CLOSE"] )

g_pStaticSkill_Acquisition = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Acquisition )
g_pStaticSkill_Acquisition:SetName( "g_pStaticSkill_Acquisition" )

--g_pUIDialog:SetPos(310, 420)

sizeY = 70
--------------------------배경-----------------------------------------------------

-----------BG01

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_TOP" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_middle" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_Y = 153-sizeY,
	"LEFT_TOP		= D3DXVECTOR2(0,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,123+55-sizeY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------BG02

g_pPictureSkill_BG_top = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_top )
g_pPictureSkill_BG_top:SetTex( "DLG_UI_Common_Texture10.TGA", "BG01_TOP" )

g_pPictureSkill_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_middle )
g_pPictureSkill_BG_middle:SetTex( "DLG_UI_Common_Texture10.TGA", "BG01_middle" )

g_pPictureSkill_BG_middle:SetPoint
{
     ADD_SIZE_Y = 97-sizeY,
	"LEFT_TOP		= D3DXVECTOR2(15,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "BG01_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,144-sizeY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





------------------------Notice
g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_Notice:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Notice:AddString
{
	MSG 			= STR_ID_29807, --"변경할 전직을 선택 하세요.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 224,
	"LEFT_TOP		= D3DXVECTOR2(11,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 214,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}





-------------------------------------------------------- 버튼 -------------------------------------------------------
----------이동하기 BTN
g_pButton_BG = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BG )
g_pButton_BG:SetName( "BG_ChangeIntroduce" )
g_pButton_BG:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_BG:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_BG:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(85,92+63-sizeY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(85-2,92-2+63-sizeY)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(85-2+1,92-2+63+1-sizeY)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_UNLIMITED_SECOND_CHANGE_JOB_DEST"] )

----------------- 전직

g_pStatic_BTN_GUILD1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD1 )
g_pStatic_BTN_GUILD1:SetName( "BTN_ChangeIntroduce" )

g_pStatic_BTN_GUILD1:AddString
{
	MSG 			= STR_ID_953, --"전직",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(85+39,92+4+61-sizeY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

	



g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "ChangeJobControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pControlList:InitYScrollBar()
g_pControlList:SetYScrollBarPos( 212, 47 )
g_pControlList:SetYScrollBarSize( 21, 67-35 )
g_pControlList:SetScrollOffset( 80, 34 )
g_pControlList:SetPos(20, 51)

g_pControlList:SetViewSize( 2, 1, true )
g_pControlList:SetShow( false )

--------------EXIT

g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Button_Mini_Win_Exit" )
g_pButtonExit:SetNormalTex( "DLG_UI_Button10.tga", "Exit_Normal" )

g_pButtonExit:SetOverTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetDownTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(210+3,13+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(210,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(210+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonExit:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_UNLIMITED_SECOND_CHANGE_JOB_CLOSE"] )




------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------  마을 리스트      ---------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


---------------------로드나이트

g_pStatic_Ruben_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ruben_Town )
g_pStatic_Ruben_Town:SetName( "Class_100" )

g_pPicture_Icon01 = g_pUIDialog:CreatePicture()
g_pStatic_Ruben_Town:AddPicture( g_pPicture_Icon01 )

g_pPicture_Icon01:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "L_KNIGHT_ICON" )

g_pPicture_Icon01:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Ruben_Town:AddString
{
	MSG 			= STR_ID_4641, --"로드나이트",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

---------------------룬 슬레이어 
g_pStatic_Elder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Elder_Town )
g_pStatic_Elder_Town:SetName( "Class_101" )

g_pPicture_Icon02 = g_pUIDialog:CreatePicture()
g_pStatic_Elder_Town:AddPicture( g_pPicture_Icon02 )

g_pPicture_Icon02:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "R_SLAYER_ICON" )

g_pPicture_Icon02:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Elder_Town:AddString
{
	MSG 			= STR_ID_4642, --"룬 슬레이어",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



---------------------윈드 스니커
g_pStatic_Elder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Elder_DG )
g_pStatic_Elder_DG:SetName( "Class_102" )

g_pPicture_Icon02 = g_pUIDialog:CreatePicture()
g_pStatic_Elder_DG:AddPicture( g_pPicture_Icon02 )

g_pPicture_Icon02:SetTex( "DLG_UI_Common_Texture23_NEW.TGA", "W_SNEAKER_ICON" )

g_pPicture_Icon02:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Elder_DG:AddString
{
	MSG 			= STR_ID_4783, --"윈드 스니커",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}




---------------------그랜드 아처
g_pStatic_Besma_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Besma_Town )
g_pStatic_Besma_Town:SetName( "Class_103" )

g_pPicture_Icon03 = g_pUIDialog:CreatePicture()
g_pStatic_Besma_Town:AddPicture( g_pPicture_Icon03 )

g_pPicture_Icon03:SetTex( "DLG_UI_Common_Texture23_NEW.TGA", "G_ARCHER_ICON" )

g_pPicture_Icon03:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Besma_Town:AddString
{
	MSG 			= STR_ID_4784, --"그랜드 아처",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



---------------------엘리멘탈 마스터
g_pStatic_Besma_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Besma_DG )
g_pStatic_Besma_DG:SetName( "Class_104" )

g_pPicture_Icon03 = g_pUIDialog:CreatePicture()
g_pStatic_Besma_DG:AddPicture( g_pPicture_Icon03 )

g_pPicture_Icon03:SetTex( "DLG_UI_Common_Texture21_NEW.TGA", "E_MASTER_ICON" )

g_pPicture_Icon03:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Besma_DG:AddString
{
	MSG 			= STR_ID_4792, --"엘리멘탈 마스터",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------------- 보이드 프린세스
g_pStatic_Altera_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Altera_Town )
g_pStatic_Altera_Town:SetName( "Class_105" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Altera_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture21_NEW.TGA", "V_PRINCESS_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Altera_Town:AddString
{
	MSG 			= STR_ID_4793, --"보이드 프린세스",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 블레이드 마스터
g_pStatic_Altera_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Altera_DG )
g_pStatic_Altera_DG:SetName( "Class_106" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Altera_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture25_NEW.TGA", "B_MASTER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Altera_DG:AddString
{
	MSG 			= STR_ID_4847, --"블레이드 마스터",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



----------------------레크리스 피스트
g_pStatic_Feita_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Feita_DG )
g_pStatic_Feita_DG:SetName( "Class_107" )

g_pPicture_Icon04 = g_pUIDialog:CreatePicture()
g_pStatic_Feita_DG:AddPicture( g_pPicture_Icon04 )

g_pPicture_Icon04:SetTex( "DLG_UI_Common_Texture25_NEW.TGA", "R_FIST_ICON" )

g_pPicture_Icon04:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Feita_DG:AddString
{
	MSG 			= STR_ID_4848, --"레크리스 피스트",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------------------- 코드 네메시스
g_pStatic_Velder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_Town )
g_pStatic_Velder_Town:SetName( "Class_108" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture45_NEW.TGA", "C_NEMESIS_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_Town:AddString
{
	MSG 			= STR_ID_4916,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 코드 엠프레스
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_109" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture45_NEW.TGA", "C_EMPRESS_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_4917,	-- "코드 엠프레스"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------------------- 아이언 팔라딘
g_pStatic_Velder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_Town )
g_pStatic_Velder_Town:SetName( "Class_110" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture61_NEW.TGA", "I_PALADIN_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_Town:AddString
{
	MSG 			= STR_ID_12769,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 데들리 체이서
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_111" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture61_NEW.TGA", "D_CHASER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_12770,	--"데들리 체이서"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

---------------------------인피니티 소드
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_112" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture69.TGA", "I_SWORD_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17425,	--"인피니티 소드"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-----------------------------디멘션 위치
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_113" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture62.TGA", "D_WITCH_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17427,	--"디멘션 위치"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------------나이트 와처
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_114" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture63.TGA", "N_WATCHER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17429,	--"나이트 와처"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------베테랑 커맨더
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_115" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture64.TGA", "V_COMMANDER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17431,	--"베테랑 커맨더"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

---------------------코드 배틀세라프
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_116" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture65.TGA", "B_SERAPH_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17433,	--"코드 배틀세라프"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------------택티컬 트루퍼
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_117" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture45.TGA", "T_TROOPER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_17435,	--"택티컬 트루퍼"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

---------------------제천
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_118" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture70_NEW.TGA", "ARA_SD_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_22116,	--"제천"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

--------------------명왕
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Class_119" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture77_NEW.TGA", "Y_RAJA_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_26772,	--"명왕"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}
