-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- #ifdef SERV_NEW_PVPROOM_PROCESS

g_pUIDialog:SetName( "DLG_UI_Pvp_Set_Password" )
--g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_PVP_LOBBY_CUSTOM_MSG["PRUCM_SET_PVP_ROOM_PASSWORD_EXIT"] )

g_pStatic_make = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_make )
g_pStatic_make:SetName( "make" )

----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_top" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,381-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y= 83+32,
	"LEFT_TOP		= D3DXVECTOR2(383,393-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_bottom" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,477)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_top" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,426-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y= 30+32-35,
	"LEFT_TOP		= D3DXVECTOR2(398,435-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,466-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG3
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,431-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y= 18,
	"LEFT_TOP		= D3DXVECTOR2(403,440-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_bottom" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------TITLE

g_pPicture_title2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_title2 )

g_pPicture_title2:SetTex( "DLG_UI_Title_JP_01.TGA", "PASSWORD_OPTION" )

g_pPicture_title2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(399,393-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------비공개
g_pStatic_secret = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_secret )
g_pStatic_secret:SetName( "secret" )

g_pStatic_secret:AddString
{
	MSG 			= STR_ID_1358,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,410)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_secret:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(481 + 25,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_secret:SetPoint
{
    ADD_SIZE_X= 125,
	"LEFT_TOP		= D3DXVECTOR2(486 + 25,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_secret:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612 + 25,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(697,396-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(693,392-32)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(693+1,392+1-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_SET_PVP_ROOM_PASSWORD_EXIT"] )


---------------------------   방만들기 버튼
g_pButtonroom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonroom )
g_pButtonroom:SetName( "UI_PvP_Lobby_Create_Room" )
g_pButtonroom:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_NORMAL" )

g_pButtonroom:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtonroom:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtonroom:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(494+20,437+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(490+20,433+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(490+1+20,433+1+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_SET_PVP_ROOM_PASSWORD_OK"] )

---------------  비번 아이콘
g_pPicture_lock = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_lock )

g_pPicture_lock:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )

g_pPicture_lock:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(487 + 25,407)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------비번
g_pIME_Editsecret = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editsecret )
g_pIME_Editsecret:SetName( "IME_EditPassword" )
g_pIME_Editsecret:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(505 + 25,407)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(617 + 25,427)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editsecret:SetFont( XF_DODUM_15_BOLD )
g_pIME_Editsecret:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Editsecret:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetCustomMsgEnter( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_SET_PVP_ROOM_PASSWORD_OK"] )
g_pIME_Editsecret:SetByteLimit(12)