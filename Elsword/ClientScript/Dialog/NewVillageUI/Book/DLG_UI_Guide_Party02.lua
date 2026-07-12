-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Fever = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Fever )
g_pStaticGuide_Fever:SetName( "Guide_Fever" )


g_pPicturePet05 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Fever:AddPicture( g_pPicturePet05 )

g_pPicturePet05:SetTex( "DLG_UI_Guide_Party03.tga", "PARTY03" )
g_pPicturePet05:SetPoint
{
	ADD_SIZE_Y = 50,
	"LEFT_TOP		= D3DXVECTOR2(80,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}