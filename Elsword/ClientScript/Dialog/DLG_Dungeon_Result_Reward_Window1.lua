-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticReward_ED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReward_ED )
g_pStaticReward_ED:SetName( "StaticReward_ED" )
g_pStaticReward_ED:SetShow( false )





--------획득Ed-------------- 
g_pPictureED_Window = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureED_Window )

g_pPictureED_Window:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_TakeEd" )

g_pPictureED_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(417,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureED_Window2 = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureED_Window2 )

g_pPictureED_Window2:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_Arrow2" )

g_pPictureED_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(363,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


