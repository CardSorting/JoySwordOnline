-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Create_Room" )
g_pUIDialog:SetPos( 300,190 )
g_pUIDialog:SetModal( false)
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_CANCLE"]  )





g_pUIDialog:AddDummyInt( 3 )				-- 방 만들기에서 default 방이름 개수
g_pUIDialog:AddDummyString( STR_ID_4415 )
g_pUIDialog:AddDummyString( STR_ID_4416 )
g_pUIDialog:AddDummyString( STR_ID_4417 )





g_pStaticCreate_Room_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCreate_Room_BG )
g_pStaticCreate_Room_BG :SetName( "Create_Room " )
-------(배경)

g_pPictureCreateRoom_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture(g_pPictureCreateRoom_Bg1)

g_pPictureCreateRoom_Bg1:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background" )

g_pPictureCreateRoom_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture(g_pPictureCreateRoom_Bg2)

g_pPictureCreateRoom_Bg2:SetTex( "DLG_Common_New_Texture04.tga", "Add_Window" )

g_pPictureCreateRoom_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture(g_pPictureCreateRoom_Bg3)

g_pPictureCreateRoom_Bg3:SetTex( "DLG_Common_New_Texture04.tga", "Add_Window" )

g_pPictureCreateRoom_Bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture(g_pPictureCreateRoom_Bg4)

g_pPictureCreateRoom_Bg4:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureCreateRoom_Bg4:SetPoint
{
ADD_SIZE_X = 470,
ADD_SIZE_Y = 45,
	"LEFT_TOP		= D3DXVECTOR2(2,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCreateRoom_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture(g_pPictureCreateRoom_Bg5)

g_pPictureCreateRoom_Bg5:SetTex( "DLG_Common_New_Texture10.tga", "CreateRoom_Title" )

g_pPictureCreateRoom_Bg5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCreateRoom_Bg6= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg6)

g_pPictureCreateRoom_Bg6:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background4"  )

g_pPictureCreateRoom_Bg6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Bg7= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg7)

g_pPictureCreateRoom_Bg7:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background5"  )

g_pPictureCreateRoom_Bg7:SetPoint
{
    ADD_SIZE_Y = 134,
	"LEFT_TOP		= D3DXVECTOR2(25,69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCreateRoom_Bg8= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg8)

g_pPictureCreateRoom_Bg8:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background6"  )

g_pPictureCreateRoom_Bg8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Bg9= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg9)

g_pPictureCreateRoom_Bg9:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background4"  )

g_pPictureCreateRoom_Bg9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Bg10= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg10)

g_pPictureCreateRoom_Bg10:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background5"  )

g_pPictureCreateRoom_Bg10:SetPoint
{
    ADD_SIZE_Y = 45,
	"LEFT_TOP		= D3DXVECTOR2(25,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Bg11= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg11)

g_pPictureCreateRoom_Bg11:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background6"  )

g_pPictureCreateRoom_Bg11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_RoomName= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_RoomName)

g_pPictureCreateRoom_RoomName:SetTex( "DLG_Common_New_Texture09.tga", "RoomName"  )

g_pPictureCreateRoom_RoomName:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_ModeSelect= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_ModeSelect)

g_pPictureCreateRoom_ModeSelect:SetTex( "DLG_Common_New_Texture09.tga", "ModeSelect"  )

g_pPictureCreateRoom_ModeSelect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Kill= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Kill)

g_pPictureCreateRoom_Kill:SetTex( "DLG_Common_New_Texture09.tga", "Kill"  )

g_pPictureCreateRoom_Kill:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,225)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Time= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Time)

g_pPictureCreateRoom_Time:SetTex( "DLG_Common_New_Texture09.tga", "Time"  )

g_pPictureCreateRoom_Time:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(235,225)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCreateRoom_Lock= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Lock)

g_pPictureCreateRoom_Lock:SetTex( "DLG_Common_New_Texture09.tga", "Lock"  )

g_pPictureCreateRoom_Lock:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(234,259)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Bg12= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg12)

g_pPictureCreateRoom_Bg12:SetTex( "DLG_Common_New_Texture04.tga", "imebox2_left"  )

g_pPictureCreateRoom_Bg12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreateRoom_Bg13= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg13)

g_pPictureCreateRoom_Bg13:SetTex( "DLG_Common_New_Texture04.tga", "imebox2_center"  )

g_pPictureCreateRoom_Bg13:SetPoint
{
    ADD_SIZE_X = 320,
	"LEFT_TOP		= D3DXVECTOR2(115,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Bg14= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg14)

g_pPictureCreateRoom_Bg14:SetTex( "DLG_Common_New_Texture04.tga", "imebox2_Right"  )

g_pPictureCreateRoom_Bg14:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(430,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCreateRoom_Bg16= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Bg16)

g_pPictureCreateRoom_Bg16:SetTex( "DLG_Common_New_Texture04.tga", "CheckBox"  )

g_pPictureCreateRoom_Bg16:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(292,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Passward= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Passward)

g_pPictureCreateRoom_Passward:SetTex( "DLG_Common_New_Texture04.tga", "Passward"  )

g_pPictureCreateRoom_Passward:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreateRoom_Passward2= g_pUIDialog:CreatePicture()
g_pStaticCreate_Room_BG:AddPicture( g_pPictureCreateRoom_Passward2)

g_pPictureCreateRoom_Passward2:SetTex( "DLG_Common_New_Texture04.tga", "Passward"  )

g_pPictureCreateRoom_Passward2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(325,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














g_pButtonLeft_Triangle1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle1 )
g_pButtonLeft_Triangle1:SetName( "KillNum_Left_Arrow" )
g_pButtonLeft_Triangle1:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonLeft_Triangle1:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonLeft_Triangle1:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonLeft_Triangle1:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(117,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(115,222)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(116,223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonLeft_Triangle1:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_KILL_NUM_LEFT"] )




g_pButtonLeft_Triangle2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle2 )
g_pButtonLeft_Triangle2:SetName( "ButtonLeft_Triangle2" )
g_pButtonLeft_Triangle2:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonLeft_Triangle2:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonLeft_Triangle2:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonLeft_Triangle2:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(307,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305,222)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(306,223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonLeft_Triangle2:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_PLAY_TIME_NUM_LEFT"] )




g_pButtonRight_Triangle1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle1 )
g_pButtonRight_Triangle1:SetName( "KillNum_Right_Arrow" )
g_pButtonRight_Triangle1:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonRight_Triangle1:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonRight_Triangle1:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonRight_Triangle1:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(185,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(183,222)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle1:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(184,223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle1:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_KILL_NUM_RIGHT"] )

g_pButtonRight_Triangle2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle2 )
g_pButtonRight_Triangle2:SetName( "Right_Triangle" )
g_pButtonRight_Triangle2:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonRight_Triangle2:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonRight_Triangle2:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonRight_Triangle2:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(405,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,222)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle2:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(404,223)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle2:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_PLAY_TIME_NUM_RIGHT"] )



g_pButtonRight_CreateRoom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_CreateRoom )
g_pButtonRight_CreateRoom:SetName( "CreateRoom" )
g_pButtonRight_CreateRoom:SetNormalTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Normal" )

g_pButtonRight_CreateRoom:SetOverTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Over" )

g_pButtonRight_CreateRoom:SetDownTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Over" )

g_pButtonRight_CreateRoom:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(183,303)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_CreateRoom:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(183,303)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_CreateRoom:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(185,304)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_CreateRoom:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OK"] )



---추가된 엑스버튼---------
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(359+78,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357+78,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358+78,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_CANCLE"] )















		
		




















-------------------(모드 라디오 버튼)

g_pRadioButtonTeam = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonTeam )

g_pRadioButtonTeam:SetFixOverByCheck( true )
g_pRadioButtonTeam:SetShowOffBGByCheck( true )

g_pRadioButtonTeam:SetName( "Team_Match" )

g_pRadioButtonTeam:SetNormalTex( "DLG_Common_New_Texture09.tga", "Team_Button_Normal" )


g_pRadioButtonTeam:SetOverTex( "DLG_Common_New_Texture09.tga", "Team_Button_Over" )


g_pRadioButtonTeam:SetCheckedTex( "DLG_Common_New_Texture09.tga", "Team_Button_Over" )


g_pRadioButtonTeam:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(57,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(57,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(57,142)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(57+110,142+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(58,143)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam:SetGroupID( 1 )
g_pRadioButtonTeam:SetChecked( false )
g_pRadioButtonTeam:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_TYPE_CHANGE"] ) 


g_pRadioButtonDeath = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonDeath )

g_pRadioButtonDeath:SetFixOverByCheck( true )
g_pRadioButtonDeath:SetShowOffBGByCheck( true )

g_pRadioButtonDeath:SetName( "Death_Match" )

g_pRadioButtonDeath:SetNormalTex( "DLG_Common_New_Texture09.tga", "TeamDeath_Button_Normal" )


g_pRadioButtonDeath:SetOverTex( "DLG_Common_New_Texture09.tga", "TeamDeath_Button_Over" )


g_pRadioButtonDeath:SetCheckedTex( "DLG_Common_New_Texture09.tga", "TeamDeath_Button_Over" )


g_pRadioButtonDeath:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(185,142)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(185+110,142+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(186,143)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonDeath:SetGroupID( 1 )
g_pRadioButtonDeath:SetChecked( true )
g_pRadioButtonDeath:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_TYPE_CHANGE"] ) 


g_pRadioButtonSurvival = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSurvival )

g_pRadioButtonSurvival:SetFixOverByCheck( true )
g_pRadioButtonSurvival:SetShowOffBGByCheck( true )

g_pRadioButtonSurvival:SetName( "Intrude_Death_Match" )

g_pRadioButtonSurvival:SetNormalTex( "DLG_Common_New_Texture09.tga", "Survival_Button_Normal" )


g_pRadioButtonSurvival:SetOverTex( "DLG_Common_New_Texture09.tga", "Survival_Button_Over" )


g_pRadioButtonSurvival:SetCheckedTex( "DLG_Common_New_Texture09.tga", "Survival_Button_Over" )


g_pRadioButtonSurvival:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(313,142)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(313+110,142+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(314,143)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival:SetGroupID( 1 )
g_pRadioButtonSurvival:SetChecked( false )
g_pRadioButtonSurvival:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_TYPE_CHANGE"] ) 













g_pCheckBoxCreateRoom2 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxCreateRoom2:SetName( "SecretRoom" )
g_pUIDialog:AddControl( g_pCheckBoxCreateRoom2 )

	g_pCheckBoxCreateRoom2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCreateRoom2:SetCheckedTex( "DLG_Common_Texture01.TGA", "Chack_Point" )


g_pCheckBoxCreateRoom2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(292,255)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(320,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCreateRoom2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(292+4,255+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxCreateRoom2:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_IS_PUBLIC_NEXT"] )
g_pCheckBoxCreateRoom2:SetCustomMsgUnChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_IS_PUBLIC_PREV"] )














	













g_pStaticPlayTime = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPlayTime )
g_pStaticPlayTime:SetName( "StaticPlayTime" )

g_pStaticPlayTime:AddString
	{
		-- MSG 			= "99999",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(365,228-2)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


g_pStaticKillNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticKillNum )
g_pStaticKillNum:SetName( "StaticKillNum" )

g_pStaticKillNum:AddString
	{
		-- MSG 			= "99",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(162,228-2)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}






-------------IME-------------------------------

g_pIMEEditBoxPassword = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxPassword )
g_pIMEEditBoxPassword:SetName( "IMEEditBoxPassword" )
g_pIMEEditBoxPassword:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(330+20,260)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(440,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxPassword:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxPassword:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxPassword:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxPassword:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxPassword:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxPassword:SetCustomMsgEnter( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OK"] )



g_pIMEEditBoxRoomName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxRoomName )
g_pIMEEditBoxRoomName:SetName( "IMEEditBoxRoomName" )
g_pIMEEditBoxRoomName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(110+9,76)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(437,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxRoomName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxRoomName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxRoomName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxRoomName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxRoomName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxRoomName:SetCustomMsgEnter( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OK"] )
g_pIMEEditBoxRoomName:RequestFocus()
g_pIMEEditBoxRoomName:SetWidthLimit( 437 - (110+9) )








-- observer 관련 임시 체크 박스 
g_pCheckBox = g_pUIDialog:CreateCheckBox()
g_pCheckBox:SetName( "CheckBox_Observer_Create" )
g_pUIDialog:AddControl( g_pCheckBox )
g_pCheckBox:SetNormalTex( "DLG_Login3.TGA", "AUTO_LOGIN_NORMAL" )
g_pCheckBox:SetCheckedTex( "DLG_Login3.TGA", "AUTO_LOGIN_CHECK" )

g_pCheckBox:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(460+25,711 - 451)",
	"RIGHT_TOP		= D3DXVECTOR2(460+57,711 - 451)",
	"LEFT_BOTTOM	= D3DXVECTOR2(460+25,743 - 451)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(460+57,743 - 451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(460+25,711- 451)",
	"RIGHT_TOP		= D3DXVECTOR2(460+57,711- 451)",
	"LEFT_BOTTOM	= D3DXVECTOR2(460+25,743- 451)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(460+57,743- 451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pCheckBox:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OBSERVER"] )
g_pCheckBox:SetCustomMsgUnChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OBSERVER"] )





---팀매치_비활성버튼--


g_pStaticInactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInactive )
g_pStaticInactive:SetName( "Inactive_Controls" )
g_pStaticInactive:SetShow( false )
g_pStaticInactive:SetEnable( false )



g_pPictureTeam_Button_Gray = g_pUIDialog:CreatePicture()
g_pStaticInactive:AddPicture(g_pPictureTeam_Button_Gray)
g_pPictureTeam_Button_Gray:SetTex( "DLG_Common_New_Texture13.tga", "Team_Button_Gray" )
g_pPictureTeam_Button_Gray:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(57,142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

