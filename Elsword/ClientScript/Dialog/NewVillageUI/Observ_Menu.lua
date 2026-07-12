-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "user" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top2" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )
g_pPicture_bg:SetIndex(1)
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(0,14+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )
g_pPicture_bg:SetIndex(2)
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,41-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )
g_pPicture_bg2:SetIndex(3)
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(10,44-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )
g_pPicture_bg2:SetIndex(4)
g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------- 메뉴




-------------------------------------------      귓속말 공지   -----------------------------------------------------

g_pButtoninvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninvite )
g_pButtoninvite:SetName( "whisper" )
g_pButtoninvite:SetNormalTex( "DLG_UI_Button20_NEW.tga", "whisper" )

g_pButtoninvite:SetOverTex( "DLG_UI_Button20_NEW.tga", "whisper_OVER" )

g_pButtoninvite:SetDownTex( "DLG_UI_Button20_NEW.tga", "whisper_OVER" )

g_pButtoninvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-8,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY"] )



-------------------------------------------       공지유저 제거  -----------------------------------------------------

g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party" )
g_pButtonparty:SetNormalTex( "DLG_UI_Button20_NEW.tga", "notice_user" )

g_pButtonparty:SetOverTex( "DLG_UI_Button20_NEW.tga", "notice_user_OVER_OVER" )

g_pButtonparty:SetDownTex( "DLG_UI_Button20_NEW.tga", "notice_user_OVER_OVER" )

g_pButtonparty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-16,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY_DEMAND"] )





