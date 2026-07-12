-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "AirGage" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

--------------- Static
g_pStatic_AIR_GAGE_BAR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_AIR_GAGE_BAR )
g_pStatic_AIR_GAGE_BAR:SetName( "g_pStatic_AIR_GAGE_BAR" )



---------------AIR 12
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_AIR_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "DLG_AIR_GAGE.tga", "AIR_12" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

