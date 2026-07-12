-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Post_Box" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
g_pUIDialog:SetPos( 731 ,53 )


-------------미니편지아이콘 뷰어  ------>> 읽지 않은 편지가 있을때만 표시


g_pButtonMini_Post = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMini_Post )
g_pButtonMini_Post:SetName( "UnReadMail" )
g_pButtonMini_Post:SetNormalTex( "DLG_UI_Common_Texture09.tga", "Mini_Post" )

g_pButtonMini_Post:SetOverTex( "DLG_UI_Common_Texture09.tga", "Mini_Post" )

g_pButtonMini_Post:SetDownTex( "DLG_UI_Common_Texture09.tga", "Mini_Post" )

g_pButtonMini_Post:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(-14,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini_Post:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(-14-1,0-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini_Post:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(-14,0)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
