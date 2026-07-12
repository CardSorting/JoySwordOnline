-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Party_Warning_All_Ready" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_TREASURE_BOX_CANCLE"] )


g_pStaticTreasure_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTreasure_Box )
g_pStaticTreasure_Box:SetName( "Treasure_Box" )


g_pPictureImage_White = g_pUIDialog:CreatePicture()
g_pStaticTreasure_Box:AddPicture( g_pPictureImage_White )

g_pPictureImage_White:SetTex( "DLG_UI_Treasure_Box_White.tga", "TREASURE_BOX_White" )

g_pPictureImage_White:SetPoint
{
        ADD_SIZE_X = 400,
        ADD_SIZE_Y = 400,
		                        
	"LEFT_TOP		= D3DXVECTOR2(250 - 200,150 - 250)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

