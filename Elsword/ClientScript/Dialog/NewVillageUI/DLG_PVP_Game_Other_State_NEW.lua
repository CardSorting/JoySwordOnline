-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGameOtherState" )
g_pUIDialog:SetPos(0,0)
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetSize( 140, 35 )

-----파티원 게이지 배경
g_pStaticOtherPlayerPVPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerPVPState )
g_pStaticOtherPlayerPVPState:SetName( "StaticOtherPlayerPVPState" )

g_pPictureOtherState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerPVPState:AddPicture( g_pPictureOtherState1 )
g_pPictureOtherState1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "PARTY_GAGE_BG" )
g_pPictureOtherState1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 37, 9 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pStaticOtherPlayerHPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerHPState )
g_pStaticOtherPlayerHPState:SetName( "OtherPlayerHP" )

g_pPictureOtherPlayerHPState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerHPState:AddPicture( g_pPictureOtherPlayerHPState1 )
g_pPictureOtherPlayerHPState1:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "PARTY_HP" )
g_pPictureOtherPlayerHPState1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 48, 17 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pStaticOtherPlayerMPActiv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerMPActiv )
g_pStaticOtherPlayerMPActiv:SetName( "OtherPlayerMPActiv" )

g_pPictureOtherPlayerMPActiv1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerMPActiv:AddPicture( g_pPictureOtherPlayerMPActiv1 )
g_pPictureOtherPlayerMPActiv1:SetShow( false )
g_pPictureOtherPlayerMPActiv1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "PARTY_MP_ACTIVE" )
g_pPictureOtherPlayerMPActiv1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 46, 27 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pStaticOtherPlayerMPState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerMPState )
g_pStaticOtherPlayerMPState:SetName( "OtherPlayerMP" )

g_pPictureOtherPlayerMPState1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayerMPState:AddPicture( g_pPictureOtherPlayerMPState1 )
g_pPictureOtherPlayerMPState1:SetShow( false )
g_pPictureOtherPlayerMPState1:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "PARTY_MP" )
g_pPictureOtherPlayerMPState1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 46, 27 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pStaticOtherPlayer_Die  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayer_Die )
g_pStaticOtherPlayer_Die:SetName( "g_pStaticOtherPlayer_Die" )
g_pStaticOtherPlayer_Die:SetShow( false )

g_pPictureOtherPlayer_Die1 = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayer_Die :AddPicture( g_pPictureOtherPlayer_Die1 )
g_pPictureOtherPlayer_Die1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "PARTY_Black" )
g_pPictureOtherPlayer_Die1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 38, 15 )",
    "RIGHT_BOTTOM	= D3DXVECTOR2( 51, 56 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pStaticResurrectOtherPlayer = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResurrectOtherPlayer )
g_pStaticResurrectOtherPlayer:SetName( "StaticResurrectOtherPlayer" )
g_pStaticResurrectOtherPlayer:AddString
{
	--MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 157, 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0.0, 0.0, 0.0, 1.0)",
}

---------엘소드 파티원 이미지--static
g_pStaticPVPStateFace = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPStateFace )
g_pStaticPVPStateFace:SetName( "StaticPVPStateFace" )

---------엘소드 파티원 이미지
g_pPictureElswordState1 = g_pUIDialog:CreatePicture()
g_pStaticPVPStateFace:AddPicture( g_pPictureElswordState1 )
g_pPictureElswordState1:SetTex( "DLG_UI_Common_Texture16_NEW.tga", "ELSWORD_PARTY" )
g_pPictureElswordState1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 2, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}




-------------레벨/닉네임
g_pStaticOtherPlayerLV = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerLV )
g_pStaticOtherPlayerLV:SetName( "StaticOtherPlayerLV" )
g_pStaticOtherPlayerLV:AddString
{
	MSG 			= "Lv",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 50, 2 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 0.0, 1.0 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0.0, 0.0, 0.0, 1.0 )",
}
g_pStaticOtherPlayerLV:AddString
{
	MSG 			= "99",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 65, 2 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 0.0, 1.0 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0.0, 0.0, 0.0, 1.0 )",
}

g_pStaticOtherPlayerID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayerID )
g_pStaticOtherPlayerID:SetName( "StaticOtherPlayerID" )
g_pStaticOtherPlayerID:AddString
{
	MSG 			= "QWERASDFZXCV",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 83, 2 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0.0, 0.0, 0.0, 1.0 )",
}

---------파티원 어둡게
g_pStaticOtherPlayer_Grade  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOtherPlayer_Grade )
g_pStaticOtherPlayer_Grade:SetName( "StaticOtherPlayer_Grade" )
g_pStaticOtherPlayer_Grade:SetShow( false )
g_pPictureOtherPlayer_Grade = g_pUIDialog:CreatePicture()
g_pStaticOtherPlayer_Grade :AddPicture( g_pPictureOtherPlayer_Grade )
g_pPictureOtherPlayer_Grade:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "notice_bg" )
g_pPictureOtherPlayer_Grade:SetPoint
{
    ADD_SIZE_X	= 24,
	ADD_SIZE_Y	= 15,
	"LEFT_TOP	= D3DXVECTOR2( 2, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 0.6 )",
	CHANGE_TIME	= 0.0,
}

--파티장 표시
g_pStaticPartyLeader = g_pUIDialog:CreateStatic()
g_pStaticPartyLeader:SetName( "g_pStaticPartyLeader" )
g_pUIDialog:AddControl( g_pStaticPartyLeader )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticPartyLeader:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Button20.TGA", "BG_PARTYCHIEF_OTHER" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-7,-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--랭크 표시
g_pStaticPartyRank = g_pUIDialog:CreateStatic()
g_pStaticPartyRank:SetName( "g_pStaticPartyRank" )
g_pUIDialog:AddControl( g_pStaticPartyRank )
g_pStaticPartyRank:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticPartyRank:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Emblem00.TGA", "PE_RANK_E" )
g_pPicture:SetPoint
{

    ADD_SIZE_X	= -3,
	ADD_SIZE_Y	= -3,
	"LEFT_TOP		= D3DXVECTOR2(-10,-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-------추방 하기

g_pButton_Ban = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ban )
g_pButton_Ban:SetName( "BanPlayer" )

g_pButton_Ban:SetNormalTex( "DLG_UI_Button20.tga", "BTN_BANISH_NORMAL" )
g_pButton_Ban:SetOverTex( "DLG_UI_Button20.tga", "BTN_BANISH_OVER" )
g_pButton_Ban:SetDownTex( "DLG_UI_Button20.tga", "BTN_BANISH_OVER" )
g_pButton_Ban:SetShow ( false )



g_pButton_Ban:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(38,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ban:SetOverPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(38-1,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ban:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(38,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ban:SetCustomMsgMouseUp( GAGE_UI_CUSTOM_MSG["GUCM_BAN_FAULTY_PLAYER_BUTTON_CLICKED"] )



-------투표 완료

g_pButton_Vote_Complete= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Vote_Complete)
g_pButton_Vote_Complete:SetName( "VoteComplete" )

g_pButton_Vote_Complete:SetNormalTex( "DLG_UI_Button20.tga", "BTN_VOTE_NORMAL" )
g_pButton_Vote_Complete:SetOverTex( "DLG_UI_Button20.tga", "BTN_VOTE_OVER" )
g_pButton_Vote_Complete:SetDownTex( "DLG_UI_Button20.tga", "BTN_VOTE_OVER" )
--
g_pButton_Vote_Complete:SetShow ( false )

g_pButton_Vote_Complete:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(38,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Vote_Complete:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(38-1,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Vote_Complete:SetDownPoint 
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(38,9+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

