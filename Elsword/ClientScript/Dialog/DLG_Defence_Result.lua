-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStatic_Defence_result= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Defence_result)
g_pStatic_Defence_result:SetName( "Defence_result" )
g_pStatic_Defence_result:SetShow( false )



--------보호된 엘의 수정-------------00
g_pPicture_protect_ell_bg = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_bg )
g_pPicture_protect_ell_bg:SetTex( "DLG_Common_New_Texture29.tga", "ELL_BG" )
g_pPicture_protect_ell_bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(459+300,59+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--01
g_pPicture_protect_ell_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_bg2 )
g_pPicture_protect_ell_bg2:SetTex( "DLG_Common_New_Texture29.tga", "ELL_BG2" )
g_pPicture_protect_ell_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(422+300,128+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------엘 큰거, 02
g_pPicture_protect_ell_big = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_big )
g_pPicture_protect_ell_big:SetTex( "DLG_Common_New_Texture29.tga", "ELL_big" )
g_pPicture_protect_ell_big:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(777,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------작은 엘1, 03
g_pPicture_protect_ell_1 = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_1 )
g_pPicture_protect_ell_1:SetTex( "DLG_Common_New_Texture29.tga", "ELL_small" )
g_pPicture_protect_ell_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(826,185)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_protect_ell_1:SetShow( false )

-------------작은 엘2, 04
g_pPicture_protect_ell_2 = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_2 )
g_pPicture_protect_ell_2:SetTex( "DLG_Common_New_Texture29.tga", "ELL_small" )
g_pPicture_protect_ell_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(825+40-2,185)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_protect_ell_2:SetShow( false )

-------------작은 엘3, 05
g_pPicture_protect_ell_3 = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_3 )
g_pPicture_protect_ell_3:SetTex( "DLG_Common_New_Texture29.tga", "ELL_small" )
g_pPicture_protect_ell_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(825+80-4,185)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_protect_ell_3:SetShow( false )

-------------작은 엘4, 06
g_pPicture_protect_ell_4 = g_pUIDialog:CreatePicture()
g_pStatic_Defence_result:AddPicture( g_pPicture_protect_ell_4 )
g_pPicture_protect_ell_4:SetTex( "DLG_Common_New_Texture29.tga", "ELL_small" )
g_pPicture_protect_ell_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(825+120-6,185)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_protect_ell_4:SetShow( false )