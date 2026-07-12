-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "FREEWARP" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_WARP_DEST_CLOSE"] )

g_pStaticSkill_Acquisition = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Acquisition )
g_pStaticSkill_Acquisition:SetName( "g_pStaticSkill_Acquisition" )

--g_pUIDialog:SetPos(310, 420)


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
     ADD_SIZE_Y = 198+56,
	"LEFT_TOP		= D3DXVECTOR2(0,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG01_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,223+56)",
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
     ADD_SIZE_Y = 192,
	"LEFT_TOP		= D3DXVECTOR2(15,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkill_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPictureSkill_BG_bottom)
g_pPictureSkill_BG_bottom:SetTex( "DLG_UI_Common_Texture10.TGA", "BG01_bottom" )

g_pPictureSkill_BG_bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,244 )",
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
	MSG 			= STR_ID_4611, --"이동 할 지역을 선택하세요.",
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
   ADD_SIZE_X = 194,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 194,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 194,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34+34+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 194,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34+34+34+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill_Acquisition:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 194,
	"LEFT_TOP		= D3DXVECTOR2(17,40+5+34+34+34+34+34)",
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
	
    "LEFT_TOP		= D3DXVECTOR2(85,92+164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(85-2,92-2+164)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(85-2+1,92-2+164+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_BG:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_WARP_DEST"] )

----------------- 이동하기

g_pStatic_BTN_GUILD1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD1 )
g_pStatic_BTN_GUILD1:SetName( "BTN_ChangeIntroduce" )

g_pStatic_BTN_GUILD1:AddString
{
	MSG 			= STR_ID_4612, --"이동하기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(85+39,92+4+164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

	



g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "WarpDestControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pControlList:InitYScrollBar()
g_pControlList:SetYScrollBarPos( 212, 47 )
g_pControlList:SetYScrollBarSize( 21, 202 )
g_pControlList:SetScrollOffset( 80, 34 )
g_pControlList:SetPos(20, 51)

g_pControlList:SetViewSize( 2, 6, true )


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

g_pButtonExit:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_WARP_DEST_CLOSE"] )




------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------  마을 리스트      ---------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


---------------------루벤 마을 

g_pStatic_Ruben_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ruben_Town )
g_pStatic_Ruben_Town:SetName( "Village_20000" )

g_pPicture_Icon01 = g_pUIDialog:CreatePicture()
g_pStatic_Ruben_Town:AddPicture( g_pPicture_Icon01 )

g_pPicture_Icon01:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Ruben" )

g_pPicture_Icon01:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Ruben_Town:AddString
{
	MSG 			= STR_ID_1112, --"루벤 마을",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

---------------------엘더 마을 
g_pStatic_Elder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Elder_Town )
g_pStatic_Elder_Town:SetName( "Village_20001" )

g_pPicture_Icon02 = g_pUIDialog:CreatePicture()
g_pStatic_Elder_Town:AddPicture( g_pPicture_Icon02 )

g_pPicture_Icon02:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Elder" )

g_pPicture_Icon02:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Elder_Town:AddString
{
	MSG 			= STR_ID_1114, --"엘더 마을",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



---------------------엘더 휴식처(월리성 관문)
g_pStatic_Elder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Elder_DG )
g_pStatic_Elder_DG:SetName( "Village_1000" )

g_pPicture_Icon02 = g_pUIDialog:CreatePicture()
g_pStatic_Elder_DG:AddPicture( g_pPicture_Icon02 )

g_pPicture_Icon02:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Elder" )

g_pPicture_Icon02:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Elder_DG:AddString
{
	MSG 			= STR_ID_19920, --"월리성 관문",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}




---------------------베스마 마을
g_pStatic_Besma_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Besma_Town )
g_pStatic_Besma_Town:SetName( "Village_20002" )

g_pPicture_Icon03 = g_pUIDialog:CreatePicture()
g_pStatic_Besma_Town:AddPicture( g_pPicture_Icon03 )

g_pPicture_Icon03:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Besma" )

g_pPicture_Icon03:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Besma_Town:AddString
{
	MSG 			= STR_ID_1116, --"베스마 마을",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



---------------------베스마 휴식처(아슬아슬 하늘길)
g_pStatic_Besma_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Besma_DG )
g_pStatic_Besma_DG:SetName( "Village_1001" )

g_pPicture_Icon03 = g_pUIDialog:CreatePicture()
g_pStatic_Besma_DG:AddPicture( g_pPicture_Icon03 )

g_pPicture_Icon03:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Besma" )

g_pPicture_Icon03:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Besma_DG:AddString
{
	MSG 			= STR_ID_19921, --"아슬아슬 하늘길",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------------- 알테라 마을
g_pStatic_Altera_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Altera_Town )
g_pStatic_Altera_Town:SetName( "Village_20003" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Altera_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Altera" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Altera_Town:AddString
{
	MSG 			= STR_ID_1118, --"알테라 마을",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 알테라 휴식처(풍고족 은신처)
g_pStatic_Altera_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Altera_DG )
g_pStatic_Altera_DG:SetName( "Village_1002" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Altera_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Altera" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Altera_DG:AddString
{
	MSG 			= STR_ID_19922, --"풍고족 은신처",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



----------------------페이타
g_pStatic_Feita_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Feita_DG )
g_pStatic_Feita_DG:SetName( "Village_20005" )

g_pPicture_Icon04 = g_pUIDialog:CreatePicture()
g_pStatic_Feita_DG:AddPicture( g_pPicture_Icon04 )

g_pPicture_Icon04:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Feita" )

g_pPicture_Icon04:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Feita_DG:AddString
{
	MSG 			= STR_ID_1119, --"페이타마을",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------------------- 벨더 마을
g_pStatic_Velder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_Town )
g_pStatic_Velder_Town:SetName( "Village_20004" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Velder" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_Town:AddString
{
	MSG 			= STR_ID_4622,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 벨더 휴식처 (시계탑 광장)
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Village_1004" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "Icon_Velder" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_19924,	-- "시계탑 광장"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------------------- 하멜 마을
g_pStatic_Velder_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_Town )
g_pStatic_Velder_Town:SetName( "Village_20006" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "ICON_HAMEL" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_Town:AddString
{
	MSG 			= STR_ID_10232,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}





--------------------- 하멜 휴식처(치유의 샘터)
g_pStatic_Velder_DG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Velder_DG )
g_pStatic_Velder_DG:SetName( "Village_1005" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Velder_DG:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Common_Texture10.TGA", "ICON_HAMEL" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Velder_DG:AddString
{
	MSG 			= STR_ID_19925,	--"치유의 샘터"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



--------------------- 샌더 마을
g_pStatic_Sander_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Sander_Town )
g_pStatic_Sander_Town:SetName( "Village_20007" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Sander_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Button17.TGA", "SANDER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStatic_Sander_Town:AddString
{
	MSG 			= STR_ID_22048,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}


--------------------- 샌더 휴식처 윈드스톤 유적지
g_pStatic_Sander_Town = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Sander_Town )
g_pStatic_Sander_Town:SetName( "Village_1006" )

g_pPicture_Icon05 = g_pUIDialog:CreatePicture()
g_pStatic_Sander_Town:AddPicture( g_pPicture_Icon05 )

g_pPicture_Icon05:SetTex( "DLG_UI_Button17.TGA", "SANDER_ICON" )

g_pPicture_Icon05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStatic_Sander_Town:AddString
{
	MSG 			= STR_ID_23093,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.7,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}