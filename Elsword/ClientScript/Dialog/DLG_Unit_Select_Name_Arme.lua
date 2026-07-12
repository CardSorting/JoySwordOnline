-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUnit_Select_Name_Arme = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Name_Arme )
g_pStaticUnit_Select_Name_Arme:SetName( "Unit_Select_Name_Arme" )
g_pStaticUnit_Select_Name_Arme:SetShow( false )






g_pPictureUnit_Select_Name_Arme = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Name_Arme:AddPicture( g_pPictureUnit_Select_Name_Arme )

g_pPictureUnit_Select_Name_Arme:SetTex( "DLG_Unit_Select8.TGA", "Unit_Select_Arme_Name" )

g_pPictureUnit_Select_Name_Arme:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticUnit_Select_Name_Arme = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Name_Arme )
g_pStaticUnit_Select_Name_Arme:SetName( "Unit_Select_Name_Arme_Selected" )
g_pStaticUnit_Select_Name_Arme:SetShow( false )






g_pPictureUnit_Select_Name_Arme = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Name_Arme:AddPicture( g_pPictureUnit_Select_Name_Arme )

g_pPictureUnit_Select_Name_Arme:SetTex( "DLG_Unit_Select8.TGA", "Unit_Select_Arme_Name" )

g_pPictureUnit_Select_Name_Arme:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
