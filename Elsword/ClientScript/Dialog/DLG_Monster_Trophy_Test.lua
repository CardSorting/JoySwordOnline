-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_MONSTER_TROPHY" )
g_pUIDialog:SetPos( 450, 300 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -360, -480, 0 ) )		-- 몬스터 상대적인 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0.7, 0.7, 0.7 ) )		-- 몬스터 크기




g_pStatic_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Background )
g_pStatic_Background:SetName( "BackGround" )


g_pPictureBackground = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture(g_pPictureBackground)
g_pPictureBackground:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_ElswordMark" )
g_pPictureBackground:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(300, 300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



