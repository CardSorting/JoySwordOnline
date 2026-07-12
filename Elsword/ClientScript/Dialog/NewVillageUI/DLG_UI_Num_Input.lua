-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetPos( 400, 500 )

g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "num" )
g_pUIDialog:SetCloseCustomUIEventID( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_PASSWORD_CANCLE"] )


---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "num_left" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "num_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 190,
	"LEFT_TOP		= D3DXVECTOR2(10,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "num_right" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(201,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------------------  FEEL

g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_feel )

g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_feel:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(12,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStatic_feel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_feel )
g_pStatic_feel:SetName( "feel" )

g_pStatic_feel:AddString
{
	MSG 			= STR_ID_1311,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,12)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



----------비번 박스


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(12,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 175,
	"LEFT_TOP		= D3DXVECTOR2(17,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(193,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------bar

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 195,
	"LEFT_TOP		= D3DXVECTOR2(7,30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





------------비번적기



g_pIME_Editname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editname )
g_pIME_Editname:SetName( "IME_EditJoinPassword" )
g_pIME_Editname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(16,36)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(198,58)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editname:SetFont( XF_DODUM_15_BOLD )
g_pIME_Editname:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetTabControlName( "IME_EditJoinPassword" );
g_pIME_Editname:SetByteLimit(12)
g_pIME_Editname:SetCustomMsgEnter( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_PASSWORD_OK"] )













-------------------버튼


---------------------확인 취소 버튼   --------------------



g_pButton_check = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_check )
g_pButton_check:SetName( "check" )
g_pButton_check:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "check_NORMAL" )

g_pButton_check:SetOverTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetDownTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(58,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(56+1,61+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_PASSWORD_OK"]  )



g_pButton_cancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_cancle )
g_pButton_cancle:SetName( "cancle" )
g_pButton_cancle:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "cancle_NORMAL" )

g_pButton_cancle:SetOverTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetDownTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(109,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(107,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(107+1,61+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_PASSWORD_CANCLE"]  )
