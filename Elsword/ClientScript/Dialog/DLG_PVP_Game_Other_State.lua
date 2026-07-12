-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGameOtherState" )
g_pUIDialog:SetPos( -999,-999 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticPVPStateFace = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPStateFace )
g_pStaticPVPStateFace:SetName( "StaticPVPStateFace" )


g_pPictureElswordState1 = g_pUIDialog:CreatePicture()
g_pStaticPVPStateFace:AddPicture( g_pPictureElswordState1 )


g_pPictureElswordState1:SetTex( "DLG_PVP_State_Info0.tga", "ElswordStateSmall" )

g_pPictureElswordState1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(50,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,50)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(50,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--[[ 09.06.08 태완 : 코드에서 바꿔주는 식으로 변경. X2GageManager 참조
	g_pPictureArmeState1 = g_pUIDialog:CreatePicture()
	g_pStaticPVPStateFace:AddPicture( g_pPictureArmeState1 )


	g_pPictureArmeState1:SetTex( "DLG_PVP_State_Info0.tga", "ArmeStateSmall" )

	g_pPictureArmeState1:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		IS_RECT = FALSE,

		"LEFT_TOP		= D3DXVECTOR2(0,0)",
		"RIGHT_TOP		= D3DXVECTOR2(50,0)",
		"LEFT_BOTTOM		= D3DXVECTOR2(0,50)",
		"RIGHT_BOTTOM		= D3DXVECTOR2(50,50)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME     	= 0.0,
	}

	g_pPictureLireState1 = g_pUIDialog:CreatePicture()
	g_pStaticPVPStateFace:AddPicture( g_pPictureLireState1 )


	g_pPictureLireState1:SetTex( "DLG_PVP_State_Info0.tga", "LireStateSmall" )

	g_pPictureLireState1:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		IS_RECT = FALSE,

		"LEFT_TOP		= D3DXVECTOR2(0,0)",
		"RIGHT_TOP		= D3DXVECTOR2(50,0)",
		"LEFT_BOTTOM		= D3DXVECTOR2(0,50)",
		"RIGHT_BOTTOM		= D3DXVECTOR2(50,50)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME     	= 0.0,
	}



	g_pPictureLireState1 = g_pUIDialog:CreatePicture()
	g_pStaticPVPStateFace:AddPicture( g_pPictureLireState1 )
	g_pPictureLireState1:SetTex( "DLG_Common_New_Texture58.tga", "Raven_State_Small" )	
	g_pPictureLireState1:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		IS_RECT = FALSE,

		"LEFT_TOP		= D3DXVECTOR2(0,0)",
		"RIGHT_TOP		= D3DXVECTOR2(50,0)",
		"LEFT_BOTTOM	= D3DXVECTOR2(0,50)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(50,50)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME     = 0.0,
	}



	g_pPictureEveState1 = g_pUIDialog:CreatePicture()
	g_pStaticPVPStateFace:AddPicture( g_pPictureEveState1 )
	g_pPictureEveState1:SetTex( "DLG_UI_Character01.tga", "Eve_State_Small" )	
	g_pPictureEveState1:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		IS_RECT = FALSE,

		"LEFT_TOP		= D3DXVECTOR2(0,0)",
		"RIGHT_TOP		= D3DXVECTOR2(50,0)",
		"LEFT_BOTTOM	= D3DXVECTOR2(0,50)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(50,50)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME     = 0.0,
	}
--]]




g_pStaticOtherPlayerLV = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerLV )
g_pStaticOtherPlayerLV:SetName( "StaticOtherPlayerLV" )

g_pStaticOtherPlayerLV:AddString
{

	-- MSG 			= "99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(28,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticOtherPlayerID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerID )
g_pStaticOtherPlayerID:SetName( "StaticOtherPlayerID" )

g_pStaticOtherPlayerID:AddString
{
	-- MSG 			= "엘소드는무식쟁이",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(51,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticOtherPlayerLvTex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerLvTex  )
g_pStaticOtherPlayerLvTex:SetName( "OtherPlayerLvTex" )

g_pPictureOtherPlayerLvTex1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerLvTex :AddPicture( g_pPictureOtherPlayerLvTex1 )
g_pPictureOtherPlayerLvTex1:SetTex( "DLG_PVP_State_Info0.tga", "LvTex" )
g_pPictureOtherPlayerLvTex1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(1,43)",
	"RIGHT_TOP		= D3DXVECTOR2(28,43)",
	"LEFT_BOTTOM		= D3DXVECTOR2(1,56)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(28,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStaticOtherPlayer_Grade  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayer_Grade )
g_pStaticOtherPlayer_Grade:SetName( "StaticOtherPlayer_Grade" )
g_pStaticOtherPlayer_Grade:SetShow( false )


g_pPictureOtherPlayer_Grade = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayer_Grade :AddPicture( g_pPictureOtherPlayer_Grade )

g_pPictureOtherPlayer_Grade:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureOtherPlayer_Grade:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(4,40)",
    "RIGHT_BOTTOM		= D3DXVECTOR2(4+22,40+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pStaticOtherPlayerHPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerHPState )
g_pStaticOtherPlayerHPState:SetName( "OtherPlayerHP" )


g_pPictureOtherPlayerHPState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerHPState:AddPicture( g_pPictureOtherPlayerHPState1 )

g_pPictureOtherPlayerHPState1:SetTex( "DLG_PVP_State_Info0.tga", "OtherPlayerHP" )

g_pPictureOtherPlayerHPState1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(50,3)",
	"RIGHT_TOP		= D3DXVECTOR2(177,3)",
	"LEFT_BOTTOM		= D3DXVECTOR2(50,17)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(177,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStaticOtherPlayerMPActiv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerMPActiv )
g_pStaticOtherPlayerMPActiv:SetName( "OtherPlayerMPActiv" )


g_pPictureOtherPlayerMPActiv1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerMPActiv:AddPicture( g_pPictureOtherPlayerMPActiv1 )
g_pPictureOtherPlayerMPActiv1:SetShow(false)


g_pPictureOtherPlayerMPActiv1:SetTex( "DLG_PVP_State_Info0.tga", "OtherPlayerMPActiv" )

g_pPictureOtherPlayerMPActiv1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(50,18)",
	"RIGHT_TOP		= D3DXVECTOR2(177,18)",
	"LEFT_BOTTOM		= D3DXVECTOR2(50,29)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(177,29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStaticOtherPlayerMPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerMPState )
g_pStaticOtherPlayerMPState:SetName( "OtherPlayerMP" )


g_pPictureOtherPlayerMPState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerMPState:AddPicture( g_pPictureOtherPlayerMPState1 )
g_pPictureOtherPlayerMPState1:SetShow(false)


g_pPictureOtherPlayerMPState1:SetTex( "DLG_PVP_State_Info0.tga", "OtherPlayerMP" )

g_pPictureOtherPlayerMPState1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(50,18)",
	"RIGHT_TOP		= D3DXVECTOR2(177,18)",
	"LEFT_BOTTOM		= D3DXVECTOR2(50,29)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(177,29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStaticOtherPlayerPVPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerPVPState )
g_pStaticOtherPlayerPVPState:SetName( "StaticOtherPlayerPVPState" )


g_pPictureOtherState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerPVPState:AddPicture( g_pPictureOtherState1 )


g_pPictureOtherState1:SetTex( "DLG_PVP_State_Info0.tga", "OtherPlayerPVPState" )

g_pPictureOtherState1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(48,0)",
	"RIGHT_TOP		= D3DXVECTOR2(180,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(48,32)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(180,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}









-- 핑 안테나
--------------------------------------------------------------------------------
g_pStatic_Ping = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ping )
g_pStatic_Ping:SetName( "UserInfo_Ping" )



g_pPicture_Ping0 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping0 )
g_pPicture_Ping0:SetTex( "DLG_PVP_Lobby6.TGA", "Ping0" )
g_pPicture_Ping0:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Ping1 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping1 )
g_pPicture_Ping1:SetTex( "DLG_PVP_Lobby6.TGA", "Ping1" )
g_pPicture_Ping1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Ping2 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping2 )
g_pPicture_Ping2:SetTex( "DLG_PVP_Lobby6.TGA", "Ping2" )
g_pPicture_Ping2:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Ping3 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping3 )
g_pPicture_Ping3:SetTex( "DLG_PVP_Lobby6.TGA", "Ping3" )
g_pPicture_Ping3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}

g_pStaticOtherPlayer_Die  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayer_Die )
g_pStaticOtherPlayer_Die:SetName( "g_pStaticOtherPlayer_Die" )
g_pStaticOtherPlayer_Die:SetShow( false )


g_pPictureOtherPlayer_Die1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayer_Die :AddPicture( g_pPictureOtherPlayer_Die1 )

g_pPictureOtherPlayer_Die1:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureOtherPlayer_Die1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
    "RIGHT_BOTTOM		= D3DXVECTOR2(51,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureOtherPlayer_Die2 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayer_Die :AddPicture( g_pPictureOtherPlayer_Die2 )

g_pPictureOtherPlayer_Die2:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureOtherPlayer_Die2:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(51,0)",
    "RIGHT_BOTTOM		= D3DXVECTOR2(180,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME     	= 0.0,
}





g_pStaticResurrectOtherPlayer = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResurrectOtherPlayer )
g_pStaticResurrectOtherPlayer:SetName( "StaticResurrectOtherPlayer" )

g_pStaticResurrectOtherPlayer:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(5,-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
