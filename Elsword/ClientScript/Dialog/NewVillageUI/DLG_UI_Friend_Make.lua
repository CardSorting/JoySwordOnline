-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--g_pUIDialog:SetName( "DLG_Messenger_Add_Friend" )
g_pUIDialog:SetPos( 300,200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_ADD_FRIEND_CANCEL"] )

g_pStaticFriend_make = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFriend_make )
g_pStaticFriend_make:SetName( "Friend_make" )

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg1_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 189 ,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg1_bottom" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 219 ,
	"LEFT_TOP		= D3DXVECTOR2(25,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg2_right" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(245,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg3_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(18,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 216  ,
	"LEFT_TOP		= D3DXVECTOR2(27,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture04.TGA", "Friend_make_bg3_right" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(243,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "Friend" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "create" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(54 + 15,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------동록할 친구 닉네임

g_pStatic_Friend_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Friend_name )
g_pStatic_Friend_name:SetName( "Friend_name" )

g_pStatic_Friend_name:AddString
{
	MSG 			= STR_ID_1277,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(29,60)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-------네임 박스


g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_left" )

g_pPicture_Name_Box:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(27,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_middle" )

g_pPicture_Name_Box:SetPoint
{
    ADD_SIZE_X = 204 ,
	"LEFT_TOP		= D3DXVECTOR2(32,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_right" )

g_pPicture_Name_Box:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(237,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------메시지


g_pStatic_Msg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Msg )
g_pStatic_Msg:SetName( "msg" )

g_pStatic_Msg:AddString
{
	MSG 			= STR_ID_1278,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(29,112)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-------네임 박스


g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_left" )

g_pPicture_Name_Box:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(27,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_middle" )

g_pPicture_Name_Box:SetPoint
{
    ADD_SIZE_X = 204 ,
	"LEFT_TOP		= D3DXVECTOR2(32,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Name_Box = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPicture_Name_Box )

g_pPicture_Name_Box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_Box2_right" )

g_pPicture_Name_Box:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(237,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------bar


g_pPictureBar = g_pUIDialog:CreatePicture()
g_pStaticFriend_make:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar:SetPoint
{
    ADD_SIZE_X = 222,
	"LEFT_TOP		= D3DXVECTOR2(23,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------확인 버튼


g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "AddFriend" )
g_pButtonOK:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtonOK:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtonOK:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(92,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(89,166)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(89+1,166+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_ADD_FRIEND_REQ"] )



--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(231,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(227+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_ADD_FRIEND_CANCEL"] )

------등록할 친구

g_pIME_Friend_Name = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Friend_Name )
g_pIME_Friend_Name:SetName( "IMEID" )
g_pIME_Friend_Name:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(34,84)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(237,99)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Friend_Name:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Friend_Name:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Friend_Name:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Name:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Name:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Name:SetByteLimit(36)
g_pIME_Friend_Name:SetTabControlName( "IMEMessage" )
g_pIME_Friend_Name:RequestFocus()



------친구한테 보낼 메시지

g_pIME_Friend_Msg = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Friend_Msg )
g_pIME_Friend_Msg:SetName( "IMEMessage" )
g_pIME_Friend_Msg:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(34,132)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(237,150)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Friend_Msg:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Friend_Msg:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Friend_Msg:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Msg:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Msg:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Friend_Msg:SetByteLimit(36)
g_pIME_Friend_Msg:SetTabControlName( "IMEID" )
