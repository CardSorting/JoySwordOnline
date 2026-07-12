-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "user" )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetPos( 310, 245 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( NASOD_SCOPE_UI_MSG["NSUM_CHAT_CLOSE_MENU"] )
g_pUIDialog:SetCloseOnFocusOut( true )

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "user" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(0,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )

g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 39,
	"LEFT_TOP		= D3DXVECTOR2(10,44-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------- 메뉴



-------------------------------------------       귓 속말    -----------------------------------------------------

g_pButtonwhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwhisper )
g_pButtonwhisper:SetName( "whisper" )

g_pButtonwhisper:SetNormalTex( "DLG_UI_BUTTON06.tga", "whisper" )
g_pButtonwhisper:SetOverTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )
g_pButtonwhisper:SetDownTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+35,47-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-29)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-29)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetCustomMsgMouseUp( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )



-------------------------------------------       친구요청   -----------------------------------------------------

g_pButtonfriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend )
g_pButtonfriend:SetName( "friend" )

g_pButtonfriend:SetNormalTex( "DLG_UI_BUTTON06.tga", "friend" )
g_pButtonfriend:SetOverTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )
g_pButtonfriend:SetDownTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-10,36+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,36)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,36+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetCustomMsgMouseUp( NASOD_SCOPE_UI_MSG["NSUM_MENU_FRIEND"] )