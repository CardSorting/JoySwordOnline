-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------로컬이름텍스트---------- 
g_pStaticVelder_Local_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Local_Title )
g_pStaticVelder_Local_Title:SetName( "Velder_Local_Title" )

g_pPictureVelder_Local_Title = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Title:AddPicture( g_pPictureVelder_Local_Title )

g_pPictureVelder_Local_Title:SetTex( "DLG_UI_TITLE02.tga", "Velder_Title" )

g_pPictureVelder_Local_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}