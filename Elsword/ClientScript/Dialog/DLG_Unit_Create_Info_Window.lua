-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUnit_Create_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create_Info_Window )
g_pStaticUnit_Create_Info_Window:SetName( "StaticUnit_Create_Info_Window" )




g_pPictureUnit_Create_Info_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window1 )

g_pPictureUnit_Create_Info_Window1:SetTex( "DLG_Unit_Create5.TGA", "Info_Window1" )

g_pPictureUnit_Create_Info_Window1:SetPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(53,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window2 )

g_pPictureUnit_Create_Info_Window2:SetTex( "DLG_Unit_Create5.TGA", "Info_Window2" )

g_pPictureUnit_Create_Info_Window2:SetPoint
{

   USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(68,491)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(480,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Info_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window3 )

g_pPictureUnit_Create_Info_Window3:SetTex( "DLG_Unit_Create5.TGA", "Info_Window3" )

g_pPictureUnit_Create_Info_Window3:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(480,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Create_Info_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window4 )

g_pPictureUnit_Create_Info_Window4:SetTex( "DLG_Unit_Create5.TGA", "Info_Window4" )

g_pPictureUnit_Create_Info_Window4:SetPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(53,551)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Info_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window5 )

g_pPictureUnit_Create_Info_Window5:SetTex( "DLG_Unit_Create5.TGA", "Info_Window5" )

g_pPictureUnit_Create_Info_Window5:SetPoint
{

   USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(68,551)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(480,651)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Info_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_Info_Window6 )

g_pPictureUnit_Create_Info_Window6:SetTex( "DLG_Unit_Create5.TGA", "Info_Window6" )

g_pPictureUnit_Create_Info_Window6:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(480,551)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticUnit_Create_Info_Window:AddString
{
	MSG 			= STR_ID_1189,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(74,516)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticUnit_Create_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create_Info_Window )
g_pStaticUnit_Create_Info_Window:SetName( "StaticUnit_Create_ID_box" )

g_pPictureUnit_Create_ID_Box = g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Info_Window:AddPicture( g_pPictureUnit_Create_ID_Box )

g_pPictureUnit_Create_ID_Box:SetTex( "DLG_Unit_Create5.TGA", "ID_Box" )

g_pPictureUnit_Create_ID_Box:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(360,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
