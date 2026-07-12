-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Arcade_Lobby_Create_Room" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG_CANCEL"] )
--방만들기BG--

g_pStaticArcade_Lobby_Create_Room = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Create_Room )
g_pStaticArcade_Lobby_Create_Room:SetName( "Arcade_Lobby_Create_Room" )


g_pPictureArcade_Lobby_Create_Room_Bg = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Bg )

g_pPictureArcade_Lobby_Create_Room_Bg:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_BG" )

g_pPictureArcade_Lobby_Create_Room_Bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(326,238)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Create_Room_Title = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Title )

g_pPictureArcade_Lobby_Create_Room_Title:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Title" )

g_pPictureArcade_Lobby_Create_Room_Title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(349,256)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Create_Room_Name = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Name )

g_pPictureArcade_Lobby_Create_Room_Name:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Name" )

g_pPictureArcade_Lobby_Create_Room_Name:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(371,301)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Create_Room_Password = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Password )

g_pPictureArcade_Lobby_Create_Room_Password:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Password" )

g_pPictureArcade_Lobby_Create_Room_Password:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(372,336)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Create_Room_Notice = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Notice )

g_pPictureArcade_Lobby_Create_Room_Notice:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Notice" )

g_pPictureArcade_Lobby_Create_Room_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(461,368)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureArcade_Lobby_Create_Room_Bar1 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Bar1 )

g_pPictureArcade_Lobby_Create_Room_Bar1:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Bar1" )

g_pPictureArcade_Lobby_Create_Room_Bar1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(432,297)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Lobby_Create_Room_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_Create_Room:AddPicture( g_pPictureArcade_Lobby_Create_Room_Bar2 )

g_pPictureArcade_Lobby_Create_Room_Bar2:SetTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Bar2" )

g_pPictureArcade_Lobby_Create_Room_Bar2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(432,332)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--버튼--

g_pButtonArcade_Popup_Create_Room_Confirm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArcade_Popup_Create_Room_Confirm )

g_pButtonArcade_Popup_Create_Room_Confirm:SetName( "Arcade_Popup_Create_Room_Confirm" )

g_pButtonArcade_Popup_Create_Room_Confirm:SetNormalTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Confirm_Normal" )

g_pButtonArcade_Popup_Create_Room_Confirm:SetOverTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Confirm_Over" )

g_pButtonArcade_Popup_Create_Room_Confirm:SetDownTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Confirm_Over" )

g_pButtonArcade_Popup_Create_Room_Confirm:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(423,401)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Confirm:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(417,396)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Confirm:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(417+2,396+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Confirm:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG_OK"] )


g_pButtonArcade_Popup_Create_Room_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArcade_Popup_Create_Room_Cancel )

g_pButtonArcade_Popup_Create_Room_Cancel:SetName( "Arcade_Popup_Create_Room_Cancel" )

g_pButtonArcade_Popup_Create_Room_Cancel:SetNormalTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Cancel_Normal" )

g_pButtonArcade_Popup_Create_Room_Cancel:SetOverTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Cancel_Over" )

g_pButtonArcade_Popup_Create_Room_Cancel:SetDownTex( "DLG_Dungeon_Arcade02.tga", "Arcade_Popup_Create_Room_Cancel_Over" )

g_pButtonArcade_Popup_Create_Room_Cancel:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(546,401)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Cancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(540,396)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Cancel:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(540+2,396+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Popup_Create_Room_Cancel:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG_CANCEL"] )

-----------체크박스

	g_pCheckBoxArceade_Create_Room = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxArceade_Create_Room:SetName( "g_pCheckBoxArceade_Create_Room" )
	g_pUIDialog:AddControl( g_pCheckBoxArceade_Create_Room )

	g_pCheckBoxArceade_Create_Room:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxArceade_Create_Room:SetCheckedTex( "DLG_Dungeon_Arcade02.TGA", "Arcade_Popup_Create_Room_Check" )


g_pCheckBoxArceade_Create_Room:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(432,332)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(463,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxArceade_Create_Room:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(432-1,332-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


	
--방이름 입력--	
	
g_pIME_Arcade_Room_Name = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Arcade_Room_Name )
g_pIME_Arcade_Room_Name:SetName( "IME_Arcade_Room_Name" )
g_pIME_Arcade_Room_Name:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(439,304)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(439+250,304+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Arcade_Room_Name:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Arcade_Room_Name:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Name:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Name:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Name:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Arcade_Room_Name:SetLengthLimit( 20 )
g_pIME_Arcade_Room_Name:SetCustomMsgEnter( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG_OK"]	 )

	
	
--비공개_입력--
	
g_pIME_Arcade_Room_Password = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Arcade_Room_Password )
g_pIME_Arcade_Room_Password:SetName( "IME_Arcade_Room_Password" )
g_pIME_Arcade_Room_Password:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(478,340)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(478+110,340+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Arcade_Room_Password:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Arcade_Room_Password:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Password:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Password:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Arcade_Room_Password:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Arcade_Room_Password:SetLengthLimit( 20 )
g_pIME_Arcade_Room_Password:SetCustomMsgEnter( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_OPEN_CREATE_ROOM_DLG_OK"]	 )
	

