-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


----------(지역 이름)



g_pStaticVelder_East_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_East_Title )
g_pStaticVelder_East_Title:SetName( "Velder_East_Front" )





g_pPictureVelder_East_Title1 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East_Title:AddPicture( g_pPictureVelder_East_Title1 )

g_pPictureVelder_East_Title1:SetTex( "DLG_Common_Texture00.TGA", "Velder_East2" )

g_pPictureVelder_East_Title1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureVelder_East_Title2 = g_pUIDialog:CreatePicture()
g_pStaticVelder_East_Title:AddPicture( g_pPictureVelder_East_Title2 )

g_pPictureVelder_East_Title2:SetTex( "DLG_Common_Texture00.TGA", "Region" )

g_pPictureVelder_East_Title2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(150,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 


