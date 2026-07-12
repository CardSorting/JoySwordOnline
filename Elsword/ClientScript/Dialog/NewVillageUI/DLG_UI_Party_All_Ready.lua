-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Party_Warning_All_Ready" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticParty_All_Ready = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_All_Ready )
g_pStaticParty_All_Ready:SetName( "Party_All_Ready" )


g_pPictureBg = g_pUIDialog:CreatePicture()
g_pStaticParty_All_Ready:AddPicture( g_pPictureBg )

g_pPictureBg:SetTex( "DLG_UI_Common_Texture13.tga", "Party_All_Ready_Bg" )

g_pPictureBg:SetPoint
{
        ADD_SIZE_X=112,
		
	"LEFT_TOP		= D3DXVECTOR2(174,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureText = g_pUIDialog:CreatePicture()
g_pStaticParty_All_Ready:AddPicture( g_pPictureText )

g_pPictureText:SetTex( "DLG_UI_Common_Texture13.tga", "Party_All_Ready_Text" )

g_pPictureText:SetPoint
{
      
		
	"LEFT_TOP		= D3DXVECTOR2(314,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureText = g_pUIDialog:CreatePicture()
g_pStaticParty_All_Ready:AddPicture( g_pPictureText )

g_pPictureText:SetTex( "DLG_UI_Common_Texture42.tga", "SHIP_Party_All_Ready_Text" )

g_pPictureText:SetPoint
{
      
		
	"LEFT_TOP		= D3DXVECTOR2(314+13,354)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

