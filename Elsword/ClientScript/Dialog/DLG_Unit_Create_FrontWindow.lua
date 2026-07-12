-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUnit_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create )
g_pStaticUnit_Create:SetName( "StaticUnit_Create" )




g_pPictureUnit_Create_FrontWindow1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow1 )

g_pPictureUnit_Create_FrontWindow1:SetTex( "DLG_Unit_Create3.TGA", "Unit_Create_Front_Window0" )

g_pPictureUnit_Create_FrontWindow1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Create_FrontWindow2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow2 )

g_pPictureUnit_Create_FrontWindow2:SetTex( "DLG_Unit_Create3.TGA", "Unit_Create_Front_Window1" )

g_pPictureUnit_Create_FrontWindow2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(768,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Create_FrontWindow3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow3 )

g_pPictureUnit_Create_FrontWindow3:SetTex( "DLG_Unit_Create3.TGA", "Unit_Create_Front_Window2" )

g_pPictureUnit_Create_FrontWindow3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Create_FrontWindow4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow4 )

g_pPictureUnit_Create_FrontWindow4:SetTex( "DLG_Unit_Create3.TGA", "Unit_Create_Front_Window3" )

g_pPictureUnit_Create_FrontWindow4:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(768,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow5 )

g_pPictureUnit_Create_FrontWindow5:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win0" )

g_pPictureUnit_Create_FrontWindow5:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(0,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow6 )

g_pPictureUnit_Create_FrontWindow6:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win1" )

g_pPictureUnit_Create_FrontWindow6:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(992,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow7 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow7 )

g_pPictureUnit_Create_FrontWindow7:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win4" )

g_pPictureUnit_Create_FrontWindow7:SetPoint
{
     USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(256,694)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(512,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow8 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow8 )

g_pPictureUnit_Create_FrontWindow8:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win5" )

g_pPictureUnit_Create_FrontWindow8:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(512,694)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(768,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow9 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow9 )

g_pPictureUnit_Create_FrontWindow9:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win2" )

g_pPictureUnit_Create_FrontWindow9:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(256,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow10 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow10 )

g_pPictureUnit_Create_FrontWindow10:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win3" )

g_pPictureUnit_Create_FrontWindow10:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow11 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow11 )

g_pPictureUnit_Create_FrontWindow11:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win6" )

g_pPictureUnit_Create_FrontWindow11:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(254,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow12 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow12 )

g_pPictureUnit_Create_FrontWindow12:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win7" )

g_pPictureUnit_Create_FrontWindow12:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(510,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


 g_pPictureUnit_Create_FrontWindow13 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow13 )

g_pPictureUnit_Create_FrontWindow13:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win8" )

g_pPictureUnit_Create_FrontWindow13:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(766,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow14 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow14 )

g_pPictureUnit_Create_FrontWindow14:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win9" )

g_pPictureUnit_Create_FrontWindow14:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(254,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPictureUnit_Create_FrontWindow15 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow15 )

g_pPictureUnit_Create_FrontWindow15:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win10" )

g_pPictureUnit_Create_FrontWindow15:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(510,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


 g_pPictureUnit_Create_FrontWindow16 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create:AddPicture( g_pPictureUnit_Create_FrontWindow16 )

g_pPictureUnit_Create_FrontWindow16:SetTex( "DLG_Unit_Create7.TGA", "Unit_Create_Win11" )

g_pPictureUnit_Create_FrontWindow16:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(766,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


