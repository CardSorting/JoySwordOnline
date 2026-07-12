-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 340, 150) 


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )

---------BG

g_pStatic_Apink= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Apink )
g_pStatic_Apink:SetName( "Black" )

g_pPictureInvisible = g_pUIDialog:CreatePicture()
g_pStatic_Apink:AddPicture( g_pPictureInvisible )

g_pPictureInvisible:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureInvisible:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 768,

	"LEFT_TOP		= D3DXVECTOR2(-340,-150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInvisible = g_pUIDialog:CreatePicture()
g_pStatic_Apink:AddPicture( g_pPictureInvisible )

g_pPictureInvisible:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureInvisible:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 768,

	"LEFT_TOP		= D3DXVECTOR2(-340,-150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}