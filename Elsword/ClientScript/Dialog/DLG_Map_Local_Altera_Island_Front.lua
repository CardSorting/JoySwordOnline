-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----------(지역 이름)



g_pStaticAltera_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Title )
g_pStaticAltera_Title:SetName( "Altera_Front" )





g_pPictureAltera_Title1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Title:AddPicture( g_pPictureAltera_Title1 )

g_pPictureAltera_Title1:SetTex( "DLG_Common_New_Texture23.TGA", "altera_title" )

g_pPictureAltera_Title1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



