-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Arcade_Lobby_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )
--로비BG--

g_pStaticArcade_Lobby_Bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Bg )
g_pStaticArcade_Lobby_Bg:SetName( "Arcade_Lobby_Bg" )


g_pPictureArcade_Lobby_Bg01 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Bg:AddPicture( g_pPictureArcade_Lobby_Bg01 )

g_pPictureArcade_Lobby_Bg01:SetTex( "DLG_Dungeon_Arcade_Lobby01.TGA", "Arcade_Lobby_Bg01" )

g_pPictureArcade_Lobby_Bg01:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Lobby_Bg02 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Bg:AddPicture( g_pPictureArcade_Lobby_Bg02 )

g_pPictureArcade_Lobby_Bg02:SetTex( "DLG_Dungeon_Arcade_Lobby02.TGA", "Arcade_Lobby_Bg02" )

g_pPictureArcade_Lobby_Bg02:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Lobby_Bg03 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Bg:AddPicture( g_pPictureArcade_Lobby_Bg03 )

g_pPictureArcade_Lobby_Bg03:SetTex( "DLG_Dungeon_Arcade_Lobby03.TGA", "Arcade_Lobby_Bg03" )

g_pPictureArcade_Lobby_Bg03:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Lobby_Bg04 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Bg:AddPicture( g_pPictureArcade_Lobby_Bg04 )

g_pPictureArcade_Lobby_Bg04:SetTex( "DLG_Dungeon_Arcade_Lobby03.TGA", "Arcade_Lobby_Bg04" )

g_pPictureArcade_Lobby_Bg04:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--방만들기--
g_pButton_Arcade_Lobby_Create_Room = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Arcade_Lobby_Create_Room )

g_pButton_Arcade_Lobby_Create_Room:SetName( "Arcade_Lobby_Create_Room" )

g_pButton_Arcade_Lobby_Create_Room:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Create_Room_Normal" )

g_pButton_Arcade_Lobby_Create_Room:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Create_Room_Over" )

g_pButton_Arcade_Lobby_Create_Room:SetDownTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Create_Room_Over" )

g_pButton_Arcade_Lobby_Create_Room:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(198,640)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Create_Room:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194,635)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Create_Room:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(194+2,635+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Create_Room:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG"] )


--바로입장--
g_pButton_Arcade_Lobby_Quick_Join = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Arcade_Lobby_Quick_Join )

g_pButton_Arcade_Lobby_Quick_Join:SetName( "Arcade_Lobby_Quick_Join" )

g_pButton_Arcade_Lobby_Quick_Join:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Quick_Join_Normal" )

g_pButton_Arcade_Lobby_Quick_Join:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Quick_Join_Over" )

g_pButton_Arcade_Lobby_Quick_Join:SetDownTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Quick_Join_Over" )

g_pButton_Arcade_Lobby_Quick_Join:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(198+185,640)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Quick_Join:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+185,635)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Quick_Join:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(194+185+2,635+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Arcade_Lobby_Quick_Join:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_QUICK_JOIN"] )






--지역탭_Gray--



g_pStaticArcade_Lobby_Tab_Gray = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Tab_Gray )
g_pStaticArcade_Lobby_Tab_Gray:SetName( "Arcade_Lobby_Tab_Gray" )


g_pPictureArcade_Lobby_Tab_01_Gray = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Tab_Gray:AddPicture( g_pPictureArcade_Lobby_Tab_01_Gray )

g_pPictureArcade_Lobby_Tab_01_Gray:SetTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_01_Gray" )

g_pPictureArcade_Lobby_Tab_01_Gray:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(30,77)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureArcade_Lobby_Tab_Ruben_Gray = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Tab_Gray:AddPicture( g_pPictureArcade_Lobby_Tab_Ruben_Gray )

g_pPictureArcade_Lobby_Tab_Ruben_Gray:SetTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Ruben_Gray" )

g_pPictureArcade_Lobby_Tab_Ruben_Gray:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(119,76)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Tab_Elder_Gray = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Tab_Gray:AddPicture( g_pPictureArcade_Lobby_Tab_Elder_Gray )

g_pPictureArcade_Lobby_Tab_Elder_Gray:SetTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Elder_Gray" )

g_pPictureArcade_Lobby_Tab_Elder_Gray:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(119+89,75)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureArcade_Lobby_Tab_Besma_Gray = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Tab_Gray:AddPicture( g_pPictureArcade_Lobby_Tab_Besma_Gray )

g_pPictureArcade_Lobby_Tab_Besma_Gray:SetTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Besma_Gray" )

g_pPictureArcade_Lobby_Tab_Besma_Gray:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(119+89+89,74)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Tab_Altera_Gray = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Tab_Gray:AddPicture( g_pPictureArcade_Lobby_Tab_Altera_Gray )

g_pPictureArcade_Lobby_Tab_Altera_Gray:SetTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Altera_Gray" )

g_pPictureArcade_Lobby_Tab_Altera_Gray:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(119+89+89+89,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--지역탭_버튼--
g_pRadioButtonArcade_Lobby_Tab_Normal01 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArcade_Lobby_Tab_Normal01 )

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetFixOverByCheck( true )
g_pRadioButtonArcade_Lobby_Tab_Normal01:SetShowOffBGByCheck( true )

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetName( "g_pRadioButtonArcade_Lobby_Tab0" )

g_pRadioButtonArcade_Lobby_Tab_Normal01:AddDummyInt( ARCADE_CHANNEL_ID["ACI_ARCADE_SEASON1"] )

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_01_Normal" )


g_pRadioButtonArcade_Lobby_Tab_Normal01:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_01_Over" )


g_pRadioButtonArcade_Lobby_Tab_Normal01:SetCheckedTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_01_Over" )


g_pRadioButtonArcade_Lobby_Tab_Normal01:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetBGMouseOverPoint
{
	ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(30-2-1,77-13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-2-1,77-13-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(119,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(30-2,77-13)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Normal01:SetGroupID( 1 )
g_pRadioButtonArcade_Lobby_Tab_Normal01:SetCustomMsgChecked( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_CHANGE_CHANNEL"] )





--루벤
g_pRadioButtonArcade_Lobby_Tab_Ruben = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArcade_Lobby_Tab_Ruben )

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetFixOverByCheck( true )
g_pRadioButtonArcade_Lobby_Tab_Ruben:SetShowOffBGByCheck( true )

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetName( "g_pRadioButtonArcade_Lobby_Tab1" )

g_pRadioButtonArcade_Lobby_Tab_Ruben:AddDummyInt( ARCADE_CHANNEL_ID["ACI_ARCADE_RUBEN"] )

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Ruben_Normal" )


g_pRadioButtonArcade_Lobby_Tab_Ruben:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Ruben_Over" )


g_pRadioButtonArcade_Lobby_Tab_Ruben:SetCheckedTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Ruben_Over" )


g_pRadioButtonArcade_Lobby_Tab_Ruben:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetBGMouseOverPoint
{
	ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(119-2-1,76-13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(119-2-1,76-13-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(208,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(119-2,76-13)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Ruben:SetGroupID( 1 )
g_pRadioButtonArcade_Lobby_Tab_Ruben:SetCustomMsgChecked( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_CHANGE_CHANNEL"] )


--엘더
g_pRadioButtonArcade_Lobby_Tab_Elder = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArcade_Lobby_Tab_Elder )

g_pRadioButtonArcade_Lobby_Tab_Elder:SetFixOverByCheck( true )
g_pRadioButtonArcade_Lobby_Tab_Elder:SetShowOffBGByCheck( true )

g_pRadioButtonArcade_Lobby_Tab_Elder:SetName( "g_pRadioButtonArcade_Lobby_Tab2" )
g_pRadioButtonArcade_Lobby_Tab_Elder:AddDummyInt( ARCADE_CHANNEL_ID["ACI_ARCADE_ELDER"] )

g_pRadioButtonArcade_Lobby_Tab_Elder:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Elder_Normal" )


g_pRadioButtonArcade_Lobby_Tab_Elder:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Elder_Over" )


g_pRadioButtonArcade_Lobby_Tab_Elder:SetCheckedTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Elder_Over" )


g_pRadioButtonArcade_Lobby_Tab_Elder:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+89,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Elder:SetBGMouseOverPoint
{
	ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(119+89-2-1,75-13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Elder:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(119+89-2-1,75-13-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(297,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Elder:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(119+89-2,75-13)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Elder:SetGroupID( 1 )
g_pRadioButtonArcade_Lobby_Tab_Elder:SetCustomMsgChecked( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_CHANGE_CHANNEL"] )


--[[
--베스마
g_pRadioButtonArcade_Lobby_Tab_Besma = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArcade_Lobby_Tab_Besma )

g_pRadioButtonArcade_Lobby_Tab_Besma:SetFixOverByCheck( true )
g_pRadioButtonArcade_Lobby_Tab_Besma:SetShowOffBGByCheck( true )

g_pRadioButtonArcade_Lobby_Tab_Besma:SetName( "Arcade_Lobby_Tab_Besma" )
g_pRadioButtonArcade_Lobby_Tab_Besma:AddDummyInt( PVP_CHANNEL_CLASS["PCC_FREE"] )

g_pRadioButtonArcade_Lobby_Tab_Besma:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Besma_Normal" )


g_pRadioButtonArcade_Lobby_Tab_Besma:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Besma_Over" )


g_pRadioButtonArcade_Lobby_Tab_Besma:SetCheckedTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Besma_Over" )


g_pRadioButtonArcade_Lobby_Tab_Besma:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+89+89,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Besma:SetBGMouseOverPoint
{
	ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(119+89+89-2-1,74-13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Besma:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(119+89+89-2-1,74-13-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(386,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Besma:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(119+89+89-2,74-13)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Besma:SetGroupID( 1 )
g_pRadioButtonArcade_Lobby_Tab_Besma:SetCustomMsgChecked( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_CHANGE_CHANNEL"] )



--알테라
g_pRadioButtonArcade_Lobby_Tab_Altera = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonArcade_Lobby_Tab_Altera )

g_pRadioButtonArcade_Lobby_Tab_Altera:SetFixOverByCheck( true )
g_pRadioButtonArcade_Lobby_Tab_Altera:SetShowOffBGByCheck( true )

g_pRadioButtonArcade_Lobby_Tab_Altera:SetName( "Arcade_Lobby_Tab_Altera" )
g_pRadioButtonArcade_Lobby_Tab_Altera:AddDummyInt( PVP_CHANNEL_CLASS["PCC_FREE"] )

g_pRadioButtonArcade_Lobby_Tab_Altera:SetNormalTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Altera_Normal" )


g_pRadioButtonArcade_Lobby_Tab_Altera:SetOverTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Altera_Over" )


g_pRadioButtonArcade_Lobby_Tab_Altera:SetCheckedTex( "DLG_Dungeon_Arcade_Lobby_Button.DDS", "Arcade_Lobby_Tab_Altera_Over" )


g_pRadioButtonArcade_Lobby_Tab_Altera:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+89+89+89,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Altera:SetBGMouseOverPoint
{
	ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(119+89+89+89-2-1,73-13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Altera:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(119+89+89+89-2-1,73-13-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(475,111)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Altera:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(119+89+89+89-2,73-13)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonArcade_Lobby_Tab_Altera:SetGroupID( 1 )
g_pRadioButtonArcade_Lobby_Tab_Altera:SetCustomMsgChecked( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_CHANGE_CHANNEL"] )

--]]




---------------------------(화살표)


g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "ButtonLeft_Triangle" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal2" )

g_pButtonLeft_Triangle:SetOverTex(  "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(80,665)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(80,665)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(80+2,665+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_ROOM_BACK_PAGE"] )




g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "ButtonRight_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(130,665)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(130,665)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(130+2,665+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonRight_Triangle:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_ROOM_NEXT_PAGE"] )










--서버내1위_닉네임--

g_pStaticRanking_Server_1st = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRanking_Server_1st )
g_pStaticRanking_Server_1st:SetName( "Ranking_Server_1st" )

g_pStaticRanking_Server_1st :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+3명)",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(880,142)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



--오늘의순위_닉네임--

g_pStaticRanking_Today = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRanking_Today )
g_pStaticRanking_Today:SetName( "Ranking_Today" )

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+2명)",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(884,336)",
		"COLOR			= D3DXCOLOR(0.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+2명)",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(884,402)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+2명)",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(884,402+66)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+2명)",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(884,468+66)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "WWWWWWWWWWWW (+2명)",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(884,468+66+66)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	

g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TopRankingAllUser" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(761,140)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1003,160)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(761,140)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1003,160)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(761,140)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1003,160)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )






g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TodayRankingAllUser0" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(787,334)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,351)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,334)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,351)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,334)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,351)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )
g_pButtonSpiritButton:SetGuideDescOffsetPos( D3DXVECTOR2(0,27) )



g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TodayRankingAllUser1" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(787,399)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,419)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


		"LEFT_TOP		= D3DXVECTOR2(787,399)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,419)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


		"LEFT_TOP		= D3DXVECTOR2(787,399)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,419)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )
g_pButtonSpiritButton:SetGuideDescOffsetPos( D3DXVECTOR2(0,27) )	
	
	
	
g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TodayRankingAllUser2" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(787,464)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,486)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,464)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,486)",



	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,464)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,486)",

	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )
g_pButtonSpiritButton:SetGuideDescOffsetPos( D3DXVECTOR2(0,29) )	
	
	
	
g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TodayRankingAllUser3" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(787,531)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,550)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,531)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,550)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


		"LEFT_TOP		= D3DXVECTOR2(787,531)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,550)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )
g_pButtonSpiritButton:SetGuideDescOffsetPos( D3DXVECTOR2(0,28) )
	
	
	
g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "TodayRankingAllUser4" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(787,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,616)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(787,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,616)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


		"LEFT_TOP		= D3DXVECTOR2(787,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1005,616)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2747 )
g_pButtonSpiritButton:SetGuideDescOffsetPos( D3DXVECTOR2(0,29) )

	
	
