-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUnit_Select_Name_Elsword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Name_Elsword )
g_pStaticUnit_Select_Name_Elsword:SetName( "Unit_Select_Name_Elsword" )
g_pStaticUnit_Select_Name_Elsword:SetShow( false )




g_pPictureUnit_Select_Name_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Name_Elsword:AddPicture( g_pPictureUnit_Select_Name_Elsword )

g_pPictureUnit_Select_Name_Elsword:SetTex( "DLG_Unit_Select8.TGA", "Unit_Select_Elsword_Name" )

g_pPictureUnit_Select_Name_Elsword:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticUnit_Select_Name_Elsword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Name_Elsword )
g_pStaticUnit_Select_Name_Elsword:SetName( "Unit_Select_Name_Elsword_Selected" )
g_pStaticUnit_Select_Name_Elsword:SetShow( false )




g_pPictureUnit_Select_Name_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Name_Elsword:AddPicture( g_pPictureUnit_Select_Name_Elsword )

g_pPictureUnit_Select_Name_Elsword:SetTex( "DLG_Unit_Select8.TGA", "Unit_Select_Elsword_Name" )

g_pPictureUnit_Select_Name_Elsword:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
