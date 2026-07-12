-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Party_Warning_All_Ready" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_TREASURE_BOX_CANCLE"] )


g_pStaticTreasure_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTreasure_Box )
g_pStaticTreasure_Box:SetName( "Treasure_Box" )


g_pPictureImage8 = g_pUIDialog:CreatePicture()
g_pStaticTreasure_Box:AddPicture( g_pPictureImage8 )

g_pPictureImage8:SetTex( "DLG_UI_Treasure_Box8.tga", "TREASURE_BOX8" )

g_pPictureImage8:SetPoint
{
        
		                        
	"LEFT_TOP		= D3DXVECTOR2(250,150)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

