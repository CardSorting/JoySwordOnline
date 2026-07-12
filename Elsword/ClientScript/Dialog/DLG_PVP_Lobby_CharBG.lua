-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticPVP_Lobby = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby )
g_pStaticPVP_Lobby:SetName( "StaticPVP_Lobby_CharBG" )



------------(그림 백 그라운드)
g_pPictureChannel_Testure_Bg = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPictureChannel_Testure_Bg )

g_pPictureChannel_Testure_Bg:SetTex( "DLG_PVP_Lobby_Bg1.TGA", "DLG_PVP_Lobby_Bg1" )

g_pPictureChannel_Testure_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-15,-70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 


g_pPictureMain_Texture_Bg = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPictureMain_Texture_Bg )

g_pPictureMain_Texture_Bg:SetTex( "DLG_PVP_Lobby_Bg2.TGA", "DLG_PVP_Lobby_Bg2" )

g_pPictureMain_Texture_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(767,555)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--g_pUIDialog:ChangeSequenceByName( "CommonBlackUpDownBG", true )
g_pUIDialog:ChangeSequenceByNameAndPivot( "StaticPVP_Lobby_CharBG", "CommonBlackUpDownBG", false  )
