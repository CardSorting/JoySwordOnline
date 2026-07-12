-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "RankingPopup" )

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
    ADD_SIZE_Y = 17+44,
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
     
	"LEFT_TOP		= D3DXVECTOR2(0,41-4+44)",
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
    ADD_SIZE_Y = 17+44,
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
    
	"LEFT_TOP		= D3DXVECTOR2(10,37+44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------- 메뉴




-------------------------------------------      살펴보기   -----------------------------------------------------
g_pButtonwatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwatch )
g_pButtonwatch:SetName( "watch" )
g_pButtonwatch:SetNormalTex( "DLG_UI_BUTTON06.tga", "user_info" )

g_pButtonwatch:SetOverTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtonwatch:SetDownTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtonwatch:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_POPUP_SELECT_CHARINFO"] )
-------------------------------------------      친구요청   -----------------------------------------------------
g_pButtonfriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend )
g_pButtonfriend:SetName( "friend" )
g_pButtonfriend:SetNormalTex( "DLG_UI_BUTTON06.tga", "friend" )

g_pButtonfriend:SetOverTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetDownTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,22+22*1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17+22*1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1+22*1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_POPUP_SELECT_FRINED"] )



-------------------------------------------       귓속말       -----------------------------------------------------

g_pButtonwhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwhisper )
g_pButtonwhisper:SetName( "whisper" )
g_pButtonwhisper:SetNormalTex( "DLG_UI_BUTTON06.tga", "whisper" )

g_pButtonwhisper:SetOverTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetDownTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,22+22*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17+22*2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1+22*2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetCustomMsgMouseUp( UI_RANKING_INFO_CUSTOM_MSG["URICM_POPUP_SELECT_WHISPER"] )
