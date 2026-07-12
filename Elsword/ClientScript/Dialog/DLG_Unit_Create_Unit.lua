-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pStaticUnit_Create_UnitInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create_UnitInfo )
g_pStaticUnit_Create_UnitInfo:SetName( "StaticUnit_Create_UnitInfo" )


g_pPictureUnit_Create_ElswordBG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_UnitInfo:AddPicture( g_pPictureUnit_Create_ElswordBG )

g_pPictureUnit_Create_ElswordBG:SetTex( "DLG_Unit_Create9.TGA", "Unit_Create_Elsword_Info" )

g_pPictureUnit_Create_ElswordBG:SetPoint
{

    USE_TEXTURE_SIZE	= FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(601,0)",
	"LEFT_BOTTOM	= D3DXVECTOR2(0,768)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(601,768)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Create_ElswordBG:SetShow( false )


g_pPictureUnit_Create_ArmeBG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_UnitInfo:AddPicture( g_pPictureUnit_Create_ArmeBG )

g_pPictureUnit_Create_ArmeBG:SetTex( "DLG_Unit_Create8.TGA", "Unit_Create_Arme_Info" )

g_pPictureUnit_Create_ArmeBG:SetPoint
{

    USE_TEXTURE_SIZE	= FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(601,0)",
	"LEFT_BOTTOM	= D3DXVECTOR2(0,768)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(601,768)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Create_ArmeBG:SetShow( false )




g_pPictureUnit_Create_LireBG = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_UnitInfo:AddPicture( g_pPictureUnit_Create_LireBG )

g_pPictureUnit_Create_LireBG:SetTex( "DLG_Unit_Create11.TGA", "Unit_Create_Lire_Info" )

g_pPictureUnit_Create_LireBG:SetPoint
{

    USE_TEXTURE_SIZE	= FALSE,
	IS_RECT			= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(601,0)",
	"LEFT_BOTTOM	= D3DXVECTOR2(0,768)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(601,768)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Create_LireBG:SetShow( false )
