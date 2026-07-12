-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_House_Npc_Name_Templete" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

g_pStaticHouseNPCName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHouseNPCName )
g_pStaticHouseNPCName:SetName( "StaticHouseNPCName" )

g_pPictureHouseDescNPCName = g_pUIDialog:CreatePicture()
g_pStaticHouseNPCName:AddPicture( g_pPictureHouseDescNPCName )

g_pPictureHouseDescNPCName:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureHouseDescNPCName:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(238-2,160-85)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
