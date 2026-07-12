-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGameChat" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticPVPGameChatBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPGameChatBox )
g_pStaticPVPGameChatBox:SetName( "StaticPVPGameChatBox" )


g_pPicturePVPStateChatBox1= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox1 )


g_pPicturePVPStateChatBox1:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox1" )

g_pPicturePVPStateChatBox1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(12,640)",
	"RIGHT_TOP		= D3DXVECTOR2(18,640)",
	"LEFT_BOTTOM		= D3DXVECTOR2(12,667)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(18,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pPicturePVPStateChatBox2= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox2 )


g_pPicturePVPStateChatBox2:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox2" )

g_pPicturePVPStateChatBox2:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(18,640)",
	"RIGHT_TOP		= D3DXVECTOR2(396,640)",
	"LEFT_BOTTOM		= D3DXVECTOR2(18,667)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pPicturePVPStateChatBox3= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox3 )


g_pPicturePVPStateChatBox3:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox3" )

g_pPicturePVPStateChatBox3:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(396,640)",
	"RIGHT_TOP		= D3DXVECTOR2(402,640)",
	"LEFT_BOTTOM		= D3DXVECTOR2(396,667)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(402,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pIMEEditBoxPVPGameChatBox = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxPVPGameChatBox )
g_pIMEEditBoxPVPGameChatBox:SetName( "IMEEditBoxGameChatBox" )
g_pIMEEditBoxPVPGameChatBox:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(18,645)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396,662)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}
g_pIMEEditBoxPVPGameChatBox:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxPVPGameChatBox:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetSelectedTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetSelectedBackColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
--g_pIMEEditBoxPVPGameChatBox:SetTabControlName( "IMEEditBoxPVPGameChatBox" );
