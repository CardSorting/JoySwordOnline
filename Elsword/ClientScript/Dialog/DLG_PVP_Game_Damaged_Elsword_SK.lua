-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticPVPStateDamagedElsword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPStateDamagedElsword )
g_pStaticPVPStateDamagedElsword:SetName( "StaticPVPStateDamagedElsword" )

--g_pStaticPVPStateDamagedElsword:SetOffsetPos( 0, 0 )
g_pStaticPVPStateDamagedElsword:Move
{
	IS_DIRECT	= TRUE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = false,
	"POS		= D3DXVECTOR2(-2,2)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}
g_pStaticPVPStateDamagedElsword:Move
{
	IS_DIRECT	= FALSE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = false,
	"POS		= D3DXVECTOR2(2,-2)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}
g_pStaticPVPStateDamagedElsword:Move
{
	IS_DIRECT	= FALSE,
	CHANGE_TIME = 0.1,
	AUTO_DELETE = TRUE,
	"POS		= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,0.0,0.0,1.0)",
}



g_pPictureElswordStateDamage1 = g_pUIDialog:CreatePicture()
g_pStaticPVPStateDamagedElsword:AddPicture( g_pPictureElswordStateDamage1 )


g_pPictureElswordStateDamage1:SetTex( "DLG_UI_Common_Texture15.tga", "Elsword_Sword" )

g_pPictureElswordStateDamage1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(50,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,50)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(50,50)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
