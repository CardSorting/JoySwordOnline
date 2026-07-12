-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "LoadingStateUser" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticLoadingUnitInfoTex" )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 76,  17, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 294, 17, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 511, 17, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 727, 17, 0 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 76,  548+96, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 294, 548+96, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 511, 548+96, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 727, 548+96, 0 ) )

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading4.TGA", "Elsword_Color" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading4.TGA", "Arme_Color" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading4.TGA", "Lire_Color" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Common_New_Texture58.tga", "RAVEN_COLOR" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Character02.tga", "EVE_COLOR" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Character04.tga", "CHUNG_COLOR" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Common_Texture68_NEW.tga", "ARA_COLOR" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading6.TGA", "Elsword_Black" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading6.TGA", "Arme_Black" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading6.TGA", "Lire_Black" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Common_New_Texture58.tga", "RAVEN_BLACK" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Character02.tga", "EVE_BLACK" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Character04.tga", "CHUNG_BLACK" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Common_Texture68_NEW.tga", "ARA_BLACK" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Common_Texture75_NEW.tga", "ELESIS_COLOR" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_UI_Common_Texture75_NEW.tga", "ELESIS_BLACK" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading7.TGA", "Empty" )
g_pPictureUnit_Create_BG1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(89,95)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading8.TGA", "unknown_Color" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetShow(false)
g_pPictureUnit_Create_BG1:SetTex( "DLG_Loading8.TGA", "unknown_black" )
g_pPictureUnit_Create_BG1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticLoadingUnitInfoGrade" )
g_pStaticUnit_Create:SetShow( false )

g_pPictureUnit_Create_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_BG1 )
g_pPictureUnit_Create_BG1:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPictureUnit_Create_BG1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(8,89)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(8+22,89+24)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pStaticLoading_Percent = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLoading_Percent )
g_pStaticLoading_Percent:SetName( "StaticLoading_Percent" )
g_pStaticLoading_Percent:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_HEADLINE_30_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(100,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticLoading_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLoading_UserInfo )
g_pStaticLoading_UserInfo:SetName( "StaticLoading_UserInfo" )
g_pStaticLoading_UserInfo:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(0,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}