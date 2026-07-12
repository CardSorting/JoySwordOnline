-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_PVP_Lobby_Back" )
g_pUIDialog:SetPos( 0,-3 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )



g_pStaticPVP_Lobby = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby )
g_pStaticPVP_Lobby:SetName( "Background" )


g_pPicturePVPLobby_BackGround1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPicturePVPLobby_BackGround1 )

g_pPicturePVPLobby_BackGround1:SetTex( "DLG_Common_New_Texture05.TGA", "Robby1" )

g_pPicturePVPLobby_BackGround1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVPLobby_BackGround2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPicturePVPLobby_BackGround2 )

g_pPicturePVPLobby_BackGround2:SetTex( "DLG_Common_New_Texture06.TGA", "Robby2" )

g_pPicturePVPLobby_BackGround2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVPLobby_BackGround3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPicturePVPLobby_BackGround3 )

g_pPicturePVPLobby_BackGround3:SetTex( "DLG_Common_New_Texture07.TGA", "Robby3" )

g_pPicturePVPLobby_BackGround3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVPLobby_BackGround4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby:AddPicture( g_pPicturePVPLobby_BackGround4 )

g_pPicturePVPLobby_BackGround4:SetTex( "DLG_Common_New_Texture07.TGA", "Robby4" )

g_pPicturePVPLobby_BackGround4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---비활성--

g_pStaticPVP_Lobby_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby_Inactive )
g_pStaticPVP_Lobby_Inactive:SetName( "Inactive_Controls" )
g_pStaticPVP_Lobby_Inactive:SetShow( false )
g_pStaticPVP_Lobby_Inactive:SetEnable( false )


g_pPictureMain_TEAM_Button_GRAY = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Inactive:AddPicture( g_pPictureMain_TEAM_Button_GRAY )

g_pPictureMain_TEAM_Button_GRAY:SetTex( "DLG_Common_New_Texture13.TGA", "Main_TEAM_Button_GRAY" )

g_pPictureMain_TEAM_Button_GRAY:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(331,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTAB_TEAM_GRAY = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Inactive:AddPicture( g_pPictureTAB_TEAM_GRAY )

g_pPictureTAB_TEAM_GRAY:SetTex( "DLG_Common_New_Texture13.TGA", "TAB_TEAM_GRAY" )

g_pPictureTAB_TEAM_GRAY:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(396,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



