-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticPVPStateDamagedEve = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPStateDamagedEve )
g_pStaticPVPStateDamagedEve:SetName( "g_pStaticPVPStateDamagedEve" )

g_pStaticPVPStateDamagedEve:Move
{
	IS_DIRECT	= TRUE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = false,
	"POS		= D3DXVECTOR2(-2,2)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}
g_pStaticPVPStateDamagedEve:Move
{
	IS_DIRECT	= FALSE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = false,
	"POS		= D3DXVECTOR2(2,-2)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}
g_pStaticPVPStateDamagedEve:Move
{
	IS_DIRECT	= FALSE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = TRUE,
	"POS		= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}

g_pPictureEveStateDamage1 = g_pUIDialog:CreatePicture()
g_pStaticPVPStateDamagedEve:AddPicture( g_pPictureEveStateDamage1 )

g_pPictureEveStateDamage1:SetTex( "DLG_UI_Character01.tga", "Eve_State_Small" )

g_pPictureEveStateDamage1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(50,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,50)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(50,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
