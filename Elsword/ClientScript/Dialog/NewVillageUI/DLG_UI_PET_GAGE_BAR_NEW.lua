-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PetGameState" )
g_pUIDialog:SetPos( 0, 75 )
g_pUIDialog:SetSize( 97, 36 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

--------------- Static
g_pStatic_PET_GAGE_BAR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PET_GAGE_BAR )
g_pStatic_PET_GAGE_BAR:SetName( "g_pStatic_PET_GAGE_BAR" )

---------------PET BG
g_pPicture_PET_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_PET_GAGE_BAR:AddPicture( g_pPicture_PET_GAGE_BAR_BG2 )
g_pPicture_PET_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "PET_BG_GAGE" )
g_pPicture_PET_GAGE_BAR_BG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------PET_게이지 초상화 여기다가
g_pPicture_PET_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_PET_GAGE_BAR:AddPicture( g_pPicture_PET_GAGE_BAR_BG2 )
g_pPicture_PET_GAGE_BAR_BG2:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "PET_NASOD_R_GAGE_1" )
g_pPicture_PET_GAGE_BAR_BG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+2,0+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------------------------------------------------------------------------------------------------------
	
--------------- GREEN BAR_HP GAGE
g_pPicture_PET_GAGE_BAR_GRREN = g_pUIDialog:CreatePicture()
g_pStatic_PET_GAGE_BAR:AddPicture( g_pPicture_PET_GAGE_BAR_GRREN )
g_pPicture_PET_GAGE_BAR_GRREN:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "PET_HP_BAR" )
g_pPicture_PET_GAGE_BAR_GRREN:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+37,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	g_pPicture_PET_GAGE_BAR_GRREN:SetIndex(1)
}

----------- BLUE BAR_MP GAGE
g_pPicture_PET_GAGE_BAR_BLUE = g_pUIDialog:CreatePicture()
g_pStatic_PET_GAGE_BAR:AddPicture( g_pPicture_PET_GAGE_BAR_BLUE )
g_pPicture_PET_GAGE_BAR_BLUE:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "PET_MP_BAR" )
g_pPicture_PET_GAGE_BAR_BLUE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+39-1,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	g_pPicture_PET_GAGE_BAR_BLUE:SetIndex(2)
}