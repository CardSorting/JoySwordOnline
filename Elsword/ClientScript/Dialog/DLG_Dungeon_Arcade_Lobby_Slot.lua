-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Arcade_Lobby_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pButtonArcade_Lobby_Room_Selcet = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArcade_Lobby_Room_Selcet )
g_pButtonArcade_Lobby_Room_Selcet:SetName( "Arcade_Lobby_Room_Selcet" )
g_pButtonArcade_Lobby_Room_Selcet:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonArcade_Lobby_Room_Selcet:SetOverTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonArcade_Lobby_Room_Selcet:SetDownTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonArcade_Lobby_Room_Selcet:SetNormalPoint
{

 	ADD_SIZE_X = 511,
    ADD_SIZE_Y = 31,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Lobby_Room_Selcet:SetOverPoint
{

	ADD_SIZE_X = 511,
    ADD_SIZE_Y = 31,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Lobby_Room_Selcet:SetDownPoint
{
     ADD_SIZE_X = 511,
    ADD_SIZE_Y = 31,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade_Lobby_Room_Selcet:SetCustomMsgMouseUp( ARCADE_LOBBY_UI_CUSTOM_MSG["ALUCM_JOIN_ROOM"] )







--로비_인원--

g_pStaticArcade_Lobby_Player_Number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Player_Number )
g_pStaticArcade_Lobby_Player_Number:SetName( "Arcade_Lobby_Player_Number" )

g_pStaticArcade_Lobby_Player_Number :AddString
	{
		-- MSG 			= "4/4",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(104+5,2+6)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



--로비_방이름--

g_pStaticArcade_Lobby_Room_Number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Room_Number )
g_pStaticArcade_Lobby_Room_Number:SetName( "Arcade_Lobby_Room_Title" )

g_pStaticArcade_Lobby_Room_Number :AddString
	{
		-- MSG 			= "벤더스를 치고 잡고 때리고 깨물고 부러뜨리고 꺽고 하라!",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(318+5,2+6)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticArcade_Lobby_Room_Number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_Room_Number )
g_pStaticArcade_Lobby_Room_Number:SetName( "Arcade_Lobby_Room_Number" )

g_pStaticArcade_Lobby_Room_Number :AddString
	{
		-- MSG 			= "벤더스를 치고 잡고 때리고 깨물고 부러뜨리고 꺽고 하라!",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(-999,-999)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	
--로비_상태--	

g_pStaticArcade_Lobby_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_State )
g_pStaticArcade_Lobby_State:SetName( "Arcade_Lobby_State" )


g_pPictureArcade_Lobby_State_Wait = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_State:AddPicture( g_pPictureArcade_Lobby_State_Wait )

g_pPictureArcade_Lobby_State_Wait:SetTex( "DLG_Common_Texture01.TGA", "Wait"  )

g_pPictureArcade_Lobby_State_Wait:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+4,2+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureArcade_Lobby_State_Play = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_State:AddPicture( g_pPictureArcade_Lobby_State_Play )

g_pPictureArcade_Lobby_State_Play:SetTex( "DLG_Common_Texture01.TGA", "Play"  )

g_pPictureArcade_Lobby_State_Play:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+4,2+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureArcade_Lobby_State_Full = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_State:AddPicture( g_pPictureArcade_Lobby_State_Full )

g_pPictureArcade_Lobby_State_Full:SetTex( "DLG_Common_Texture01.TGA", "Full"  )

g_pPictureArcade_Lobby_State_Full:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+4,2+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--로비_자물쇠--
g_pStaticArcade_Lobby_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Lobby_State )
g_pStaticArcade_Lobby_State:SetName( "Arcade_Lobby_State_Lock" )
--g_pStaticArcade_Lobby_State:SetShow( false )

g_pPictureArcade_Lobby_State_Lock = g_pUIDialog:CreatePicture()
g_pStaticArcade_Lobby_State:AddPicture( g_pPictureArcade_Lobby_State_Lock )

g_pPictureArcade_Lobby_State_Lock:SetTex( "DLG_Common_Texture01.TGA", "Lock" )

g_pPictureArcade_Lobby_State_Lock:SetPoint
{

    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(3,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
