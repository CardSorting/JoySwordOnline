-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Dungeon_Room_List" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_SEE_ROOM_LIST"] )



-----------(방 리스트)

g_pStaticPVP_Lobby_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby_RoomList )
g_pStaticPVP_Lobby_RoomList:SetName( "PVP_Lobby_RoomList" )



g_pPictureRoomList_Shadow1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture(g_pPictureRoomList_Shadow1)

g_pPictureRoomList_Shadow1:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line1" )

g_pPictureRoomList_Shadow1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(555-19,707)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoomList_Shadow2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture(g_pPictureRoomList_Shadow2)

g_pPictureRoomList_Shadow2:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line3" )

g_pPictureRoomList_Shadow2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,707)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoomList_Shadow3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture(g_pPictureRoomList_Shadow3)

g_pPictureRoomList_Shadow3:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line2" )

g_pPictureRoomList_Shadow3:SetPoint
{
     ADD_SIZE_X = 436+19,
	"LEFT_TOP		= D3DXVECTOR2(567-19,707)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoomList_Shadow4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture(g_pPictureRoomList_Shadow4)

g_pPictureRoomList_Shadow4:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line4" )

g_pPictureRoomList_Shadow4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoomList_Shadow5 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture(g_pPictureRoomList_Shadow5)

g_pPictureRoomList_Shadow5:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line5" )

g_pPictureRoomList_Shadow5:SetPoint
{
    ADD_SIZE_Y = 484,
	"LEFT_TOP		= D3DXVECTOR2(1004,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureRomList_Bg = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_Bg )

g_pPictureRomList_Bg:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureRomList_Bg:SetPoint
{

    ADD_SIZE_X = 453+19,
    ADD_SIZE_Y = 512,
	"LEFT_TOP		= D3DXVECTOR2(555-19,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRomList_Bg0 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_Bg0 )

g_pPictureRomList_Bg0:SetTex( "DLG_Common_Texture01.tga", "Create_Room_Bg" )

g_pPictureRomList_Bg0:SetPoint
{

    ADD_SIZE_X = 445+19,
    ADD_SIZE_Y = 504,
	"LEFT_TOP		= D3DXVECTOR2(540,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRomList_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_Bg1 )

g_pPictureRomList_Bg1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureRomList_Bg1:SetPoint
{

    ADD_SIZE_X = 441+19,
    ADD_SIZE_Y = 500,
	"LEFT_TOP		= D3DXVECTOR2(561-19,206)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRomList_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_Bg2 )

g_pPictureRomList_Bg2:SetTex( "DLG_Common_Texture01.TGA", "Color5" )

g_pPictureRomList_Bg2:SetPoint
{

    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 484,
	"LEFT_TOP		= D3DXVECTOR2(563-19,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRomList_El_mark = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_El_mark )

g_pPictureRomList_El_mark:SetTex( "DLG_El_Mark.TGA", "DLG_El_Mark" )

g_pPictureRomList_El_mark:SetPoint
{
     ADD_SIZE_X = 170+19,
    ADD_SIZE_Y = 110,
   
	"LEFT_TOP		= D3DXVECTOR2(570-19,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRomList_Menu_Line = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_RoomList:AddPicture( g_pPictureRomList_Menu_Line )

g_pPictureRomList_Menu_Line:SetTex( "DLG_Common_Texture01.TGA", "Main_Bar1" )

g_pPictureRomList_Menu_Line:SetPoint
{

    ADD_SIZE_X = 437+19,
 	"LEFT_TOP		= D3DXVECTOR2(563-19,208)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------------------------------------------------------------------------

g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Left_Triangle" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Down" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(663,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(663,667)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665,668)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_ROOM_BACK_PAGE"] )




g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Right_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(708,667)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(708,667)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -4,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(710,668)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_ROOM_NEXT_PAGE"] )




-------------------(방 리스트 라인)-------------------------- 



g_pStaticPVP_Lobby_Line = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Lobby_Line )
g_pStaticPVP_Lobby_Line:SetName( "backline" )


g_pPicturePVP_Lobby_RoomList_Line1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line1 )

g_pPicturePVP_Lobby_RoomList_Line1:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line1:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Lobby_RoomList_Line2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line2 )

g_pPicturePVP_Lobby_RoomList_Line2:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line2:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,309)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Lobby_RoomList_Line3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line3 )

g_pPicturePVP_Lobby_RoomList_Line3:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line3:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,373)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Lobby_RoomList_Line4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line4 )

g_pPicturePVP_Lobby_RoomList_Line4:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line4:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Lobby_RoomList_Line5 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line5 )

g_pPicturePVP_Lobby_RoomList_Line5:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line5:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Lobby_RoomList_Line6 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line6 )

g_pPicturePVP_Lobby_RoomList_Line6:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line6:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,565)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Lobby_RoomList_Line7 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Lobby_Line:AddPicture( g_pPicturePVP_Lobby_RoomList_Line7 )

g_pPicturePVP_Lobby_RoomList_Line7:SetTex( "DLG_Common_Texture01.TGA", "BackGround_Lena_Color" )

g_pPicturePVP_Lobby_RoomList_Line7:SetPoint
{
    ADD_SIZE_X = 437+19,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563-19,629)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}



























 


 


   -------------------(폰트)--------------------- 





    g_pStaticRoom_Mode_State = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticRoom_Mode_State )
	g_pStaticRoom_Mode_State:SetName( "State" )

	g_pStaticRoom_Mode_State:AddString
	{
		MSG 			= STR_ID_988,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(599,222)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	

	g_pStaticRoom_Mode_Player = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticRoom_Mode_Player )
	g_pStaticRoom_Mode_Player:SetName( "Player" )

	g_pStaticRoom_Mode_Player:AddString
	{
		MSG 			= STR_ID_989,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(649,222)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	g_pStaticRoom_Mode_Kill = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticRoom_Mode_Kill )
	g_pStaticRoom_Mode_Kill:SetName( "Kill" )

	g_pStaticRoom_Mode_Kill:AddString
	{
		MSG 			= STR_ID_990,
		FONT_INDEX		= XF_DODUM_12_BOLD,
		USE_UK_FONT		= FALSE,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(698,222)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	g_pStaticRoom_Mode_Title = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticRoom_Mode_Title )
	g_pStaticRoom_Mode_Title:SetName( "Title" )

	g_pStaticRoom_Mode_Title:AddString
	{
		MSG 			= STR_ID_991,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(850,222)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	



	
	
	
	








	---------------(스테이지 그림 정보창)-------

	
g_pStaticLocal_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_Info_Window )
g_pStaticLocal_Info_Window:SetName( "infowindow" )




g_pPictureDungeon_Info_Window1 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeon_Info_Window1 )

g_pPictureDungeon_Info_Window1:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Image_Box1" )

g_pPictureDungeon_Info_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(434,0+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeon_Info_Window2 )

g_pPictureDungeon_Info_Window2:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Image_Box2" )

g_pPictureDungeon_Info_Window2:SetPoint
{
    ADD_SIZE_Y = 103,
	"LEFT_TOP		= D3DXVECTOR2(434,13+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInfo_Window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_BG1 )

g_pPictureInfo_Window_BG1:SetTex( "DLG_Common_Texture02.TGA", "Window2" )

g_pPictureInfo_Window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(434,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_Window_BG2 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_BG2 )

g_pPictureInfo_Window_BG2:SetTex( "DLG_Common_Texture02.TGA", "Window4" )

g_pPictureInfo_Window_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_Window_BG3 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_BG3 )

g_pPictureInfo_Window_BG3:SetTex( "DLG_Common_Texture02.TGA", "Window3" )

g_pPictureInfo_Window_BG3:SetPoint
{
     ADD_SIZE_X = 152,
	"LEFT_TOP		= D3DXVECTOR2(450,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_Window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_BG4 )

g_pPictureInfo_Window_BG4:SetTex( "DLG_Common_Texture02.TGA", "Window1" )

g_pPictureInfo_Window_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_Window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_BG5 )

g_pPictureInfo_Window_BG5:SetTex( "DLG_Common_Texture02.TGA", "Window3" )

g_pPictureInfo_Window_BG5:SetPoint
{
     ADD_SIZE_X = 39,
	"LEFT_TOP		= D3DXVECTOR2(658,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_Window_RoomList = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_RoomList )

g_pPictureInfo_Window_RoomList:SetTex( "DLG_Common_Texture00.TGA", "Room_List" )

g_pPictureInfo_Window_RoomList:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(529,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



	
g_pStaticRomList_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRomList_Info_Window )
g_pStaticRomList_Info_Window:SetName( "DungeonPicture" )


g_pPictureInfo_Window_Texture = g_pUIDialog:CreatePicture()
g_pStaticRomList_Info_Window:AddPicture( g_pPictureInfo_Window_Texture )

g_pPictureInfo_Window_Texture:SetTex( "DLG_Common_Texture02.TGA", "Dungeon_Image_El_Tree" )

g_pPictureInfo_Window_Texture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(442,8+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------(버튼)





g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "Check" )
g_pButtonCheck:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCheck:SetOverTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCheck:SetDownTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCheck:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(811,668)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(811,668)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(812,669)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_STRAIGHT_ENTER"] )


g_pButtonCencel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCencel )
g_pButtonCencel:SetName( "Cencle" )
g_pButtonCencel:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCencel:SetOverTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCencel:SetDownTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCencel:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(908,668)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(908,668)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(909,669)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM"] )

--------------(버튼 폰트)


g_pStaticLocal_RoomList_Button_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_RoomList_Button_Font )
g_pStaticLocal_RoomList_Button_Font :SetName( "Making_Room_Local" )


g_pPictureCheck = g_pUIDialog:CreatePicture()
g_pStaticLocal_RoomList_Button_Font:AddPicture( g_pPictureCheck)

g_pPictureCheck:SetTex( "DLG_Common_Texture01.tga", "Enter" )

g_pPictureCheck:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(828,676)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCancel = g_pUIDialog:CreatePicture()
g_pStaticLocal_RoomList_Button_Font:AddPicture( g_pPictureCancel)

g_pPictureCancel:SetTex( "DLG_Common_Texture01.tga", "Create_Room" )

g_pPictureCancel:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(925,676)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )
g_pButtonExit:SetNormalTex( "DLG_Common_Button01.TGA", "X_Icon_Normal" )

g_pButtonExit:SetOverTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetDownTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(966,212)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
    ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(967,213)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_SEE_ROOM_LIST"] )



