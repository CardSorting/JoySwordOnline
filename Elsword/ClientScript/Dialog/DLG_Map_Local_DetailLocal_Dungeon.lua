-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Map_Local_Detail_Dungeon" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CLOSE_DETAIL_LOCAL"] )


--왼쪽 포지션 나왔을 때 화살표 방향으로 던전이 오게끔 하는 오프셋 좌표!!
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -60, -76 - 70, 0 ) )
--오른쪽 포지션 나왔을 때 화살표 방향으로 던전이 오게끔 하는 오프셋 좌표!!
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -366 + 150, -76 - 70, 0 ) )


-----------(정보 창)

g_pStaticLocal_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_Info_Window )
g_pStaticLocal_Info_Window:SetName( "StaticMapLocalDetailTemplete" )
g_pStaticLocal_Info_Window:SetEnable( true )

g_pPictureDungeon_Info_Window1 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeon_Info_Window1 )

g_pPictureDungeon_Info_Window1:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Image_Box1" )

g_pPictureDungeon_Info_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeon_Info_Window2 )

g_pPictureDungeon_Info_Window2:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Image_Box2" )

g_pPictureDungeon_Info_Window2:SetPoint
{
    ADD_SIZE_Y = 103,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_Window_Texture = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureInfo_Window_Texture )

g_pPictureInfo_Window_Texture:SetTex( "DLG_Common_Texture02.TGA", "Dungeon_Image_El_Tree" )

g_pPictureInfo_Window_Texture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------(하단 정보창 LEFT)-----

g_pStaticLocal_Info_Window_Left = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_Info_Window_Left )
g_pStaticLocal_Info_Window_Left:SetName( "StaticLocal_Info_Window_Left" )
g_pStaticLocal_Info_Window_Left:SetShow( false )
g_pStaticLocal_Info_Window_Left:SetEnable( true )


g_pPictureDungeon_Info_Left_Window3 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Left:AddPicture( g_pPictureDungeon_Info_Left_Window3 )

g_pPictureDungeon_Info_Left_Window3:SetTex( "DLG_Common_Texture02.tga", "Window2" )

g_pPictureDungeon_Info_Left_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Left_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Left:AddPicture( g_pPictureDungeon_Info_Left_Window4 )

g_pPictureDungeon_Info_Left_Window4:SetTex( "DLG_Common_Texture02.tga", "Window3" )

g_pPictureDungeon_Info_Left_Window4:SetPoint
{
    ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(16,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Left_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Left:AddPicture( g_pPictureDungeon_Info_Left_Window4 )

g_pPictureDungeon_Info_Left_Window4:SetTex( "DLG_Common_Texture02.tga", "Window4" )

g_pPictureDungeon_Info_Left_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(265,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Left_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Left:AddPicture( g_pPictureDungeon_Info_Left_Window4 )

g_pPictureDungeon_Info_Left_Window4:SetTex( "DLG_Common_Texture02.tga", "Window6" )

g_pPictureDungeon_Info_Left_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(65,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Info_Left_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Left:AddPicture( g_pPictureDungeon_Info_Left_Window4 )

g_pPictureDungeon_Info_Left_Window4:SetTex( "DLG_Common_Texture02.tga", "Window3" )

g_pPictureDungeon_Info_Left_Window4:SetPoint
{
    ADD_SIZE_X = 144,
	"LEFT_TOP		= D3DXVECTOR2(119,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------(하단 정보창 RIGHT)------- 
g_pStaticLocal_Info_Window_Right = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_Info_Window_Right )
g_pStaticLocal_Info_Window_Right:SetName( "StaticLocal_Info_Window_Right" )
g_pStaticLocal_Info_Window_Right:SetShow( false )
g_pStaticLocal_Info_Window_Right:SetEnable( true )


g_pPictureDungeon_Info_Right_Window3 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Right:AddPicture( g_pPictureDungeon_Info_Right_Window3 )

g_pPictureDungeon_Info_Right_Window3:SetTex( "DLG_Common_Texture02.tga", "Window2" )

g_pPictureDungeon_Info_Right_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Right_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Right:AddPicture( g_pPictureDungeon_Info_Right_Window4 )

g_pPictureDungeon_Info_Right_Window4:SetTex( "DLG_Common_Texture02.tga", "Window3" )

g_pPictureDungeon_Info_Right_Window4:SetPoint
{
    ADD_SIZE_X = 157,
	"LEFT_TOP		= D3DXVECTOR2(16,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Right_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Right:AddPicture( g_pPictureDungeon_Info_Right_Window4 )

g_pPictureDungeon_Info_Right_Window4:SetTex( "DLG_Common_Texture02.tga", "Window4" )

g_pPictureDungeon_Info_Right_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(265,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Info_Right_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Right:AddPicture( g_pPictureDungeon_Info_Right_Window4 )

g_pPictureDungeon_Info_Right_Window4:SetTex( "DLG_Common_Texture02.tga", "Window1" )

g_pPictureDungeon_Info_Right_Window4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(175,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Info_Right_Window4 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window_Right:AddPicture( g_pPictureDungeon_Info_Right_Window4 )

g_pPictureDungeon_Info_Right_Window4:SetTex( "DLG_Common_Texture02.tga", "Window3" )

g_pPictureDungeon_Info_Right_Window4:SetPoint
{
    ADD_SIZE_X = 34,
	"LEFT_TOP		= D3DXVECTOR2(229,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--[[

---------------별 마크------------- 


g_pPictureDungeonRoom_Info_Star1 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeonRoom_Info_Star1 )

g_pPictureDungeonRoom_Info_Star1:SetTex( "DLG_Common_Button02.tga", "Little_Star" )

g_pPictureDungeonRoom_Info_Star1:SetPoint
{
    ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(74,66)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeonRoom_Info_Star2 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeonRoom_Info_Star2 )

g_pPictureDungeonRoom_Info_Star2:SetTex( "DLG_Common_Button02.tga", "Little_Star" )

g_pPictureDungeonRoom_Info_Star2:SetPoint
{
    ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(94,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeonRoom_Info_Star3 = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeonRoom_Info_Star3 )

g_pPictureDungeonRoom_Info_Star3:SetTex( "DLG_Common_Button02.tga", "Little_Star" )

g_pPictureDungeonRoom_Info_Star3:SetPoint
{
    ADD_SIZE_X = -5,
     ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(114,66)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPictureDungeonRoom_Difficulty_BG = g_pUIDialog:CreatePicture()
g_pStaticLocal_Info_Window:AddPicture( g_pPictureDungeonRoom_Difficulty_BG )

g_pPictureDungeonRoom_Difficulty_BG:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureDungeonRoom_Difficulty_BG:SetPoint
{
    ADD_SIZE_X = 85,
     ADD_SIZE_Y = 22,
	"LEFT_TOP		= D3DXVECTOR2(38,88)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.5)",
	CHANGE_TIME		= 0.0,
}





------------------던전정보창 폰트-----------------



    g_pStaticLevel = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticLevel )
 	g_pStaticLevel:SetName( "Static_Dungeon_RecommendLevel" )

     g_pStaticLevel:AddString
    {
 	 MSG    		 = STR_ID_1104,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	 "POS            = D3DXVECTOR2(16 + 9,36 + 4)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	g_pStaticPlayer = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticPlayer )
 	g_pStaticPlayer:SetName( "requireLevel" )

     g_pStaticPlayer:AddString
    {
 	 -- MSG    		 = "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	 "POS            = D3DXVECTOR2(16 + 9,52 + 4)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	g_pStaticDifficulty= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty)
 	g_pStaticDifficulty:SetName( "GetStar" )

     g_pStaticDifficulty:AddString
    {
 	 MSG    		 = STR_ID_1105,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	 "POS            = D3DXVECTOR2(16 + 9,52 + 4)",
 	 "COLOR          = D3DXCOLOR(0.8,0.0,0.0,1.0)",
		"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 	 
	g_pStaticDifficulty= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty)
 	g_pStaticDifficulty:SetName( "Difficulty_Star" )

     g_pStaticDifficulty:AddString
    {
 		-- MSG    		 = "★",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 		"POS            = D3DXVECTOR2(16 + 110 + 9 + 5 - 40 - 7,52 + 4)",
 		"COLOR          = D3DXCOLOR(0.8,0.0,0.0,1.0)",
		"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	g_pStaticDifficulty_Very_Hard= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty_Very_Hard)
 	g_pStaticDifficulty_Very_Hard:SetName( "DetailLocal_DungeonDifficulty" )

     g_pStaticDifficulty_Very_Hard:AddString
    {
 		MSG    		 = STR_ID_990,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 		"POS            = D3DXVECTOR2(83,94)",
		"COLOR			= D3DXCOLOR(0.9,1,0.7,1)",
		"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	
	 
	 
	 
	 
	 
	 
	 
	 
	 ------(화살표 버튼)

g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Local_QuickJoin_Difficulty_Left_Arrow" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Down" )

g_pButtonLeft_Triangle:SetNormalPoint
{
    ADD_SIZE_X = -6,
     ADD_SIZE_Y = -8,
 	"LEFT_TOP		= D3DXVECTOR2(18,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{
    ADD_SIZE_X = -6,
     ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(18,87)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -8,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(19,88)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_DETAIL_LOCAL_LOWER_DIFFICULTY"] )


g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Local_QuickJoin_Difficulty_Right_Arrow" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonRight_Triangle:SetNormalPoint
{
    ADD_SIZE_X = -6,
     ADD_SIZE_Y = -8,
 	"LEFT_TOP		= D3DXVECTOR2(122,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{
    ADD_SIZE_X = -6,
     ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(122,87)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -8,
     ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(123,88)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_DETAIL_LOCAL_HIGHER_DIFFICULTY"] )
























------------(버튼)





g_pButtonLeft = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft )
g_pButtonLeft:SetName( "Local_Dungeon_EnterRoom" )
g_pButtonLeft:SetNormalTex( "DLG_Common_Texture03.tga", "Button_3" )

g_pButtonLeft:SetOverTex( "DLG_Common_Texture03.tga", "Button_4" )

g_pButtonLeft:SetDownTex( "DLG_Common_Texture03.tga", "Button_4" )

g_pButtonLeft:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(10,118)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonLeft:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(10,118)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonLeft:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(11,119)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonLeft:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_STRAIGHT_ENTER"] )

g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Local_Dungeon_CreatRoom" )
g_pButtonRight:SetNormalTex( "DLG_Common_Texture03.tga", "Button_3" )

g_pButtonRight:SetOverTex( "DLG_Common_Texture03.tga", "Button_4" )

g_pButtonRight:SetDownTex( "DLG_Common_Texture03.tga", "Button_4" )

g_pButtonRight:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(190,118)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonRight:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(190,118)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonRight:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(191,119)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonRight:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM"] )

g_pButtonCenter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCenter )
g_pButtonCenter:SetName( "Map_Local_Dungeon_CreateRoom_RoomList" )
g_pButtonCenter:SetNormalTex( "DLG_Common_Texture03.tga", "Button_1" )

g_pButtonCenter:SetOverTex( "DLG_Common_Texture03.tga", "Button_2" )

g_pButtonCenter:SetDownTex( "DLG_Common_Texture03.tga", "Button_2" )

g_pButtonCenter:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(95,118)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCenter:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(95,118)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCenter:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(96,119)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCenter:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_SEE_ROOM_LIST"] )


--------------(버튼 폰트)


g_pStaticLocal_RoomList_Button_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_RoomList_Button_Font )
g_pStaticLocal_RoomList_Button_Font:SetName( "Making_Room_Local" )


g_pPictureEnter = g_pUIDialog:CreatePicture()
g_pStaticLocal_RoomList_Button_Font:AddPicture( g_pPictureEnter)

g_pPictureEnter:SetTex( "DLG_Common_Texture01.tga", "Enter" )

g_pPictureEnter:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreate = g_pUIDialog:CreatePicture()
g_pStaticLocal_RoomList_Button_Font:AddPicture( g_pPictureCreate)

g_pPictureCreate:SetTex( "DLG_Common_Texture01.tga", "Create_Room" )

g_pPictureCreate:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(205,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoomList = g_pUIDialog:CreatePicture()
g_pStaticLocal_RoomList_Button_Font:AddPicture( g_pPictureRoomList)

g_pPictureRoomList:SetTex( "DLG_Common_Texture00.tga", "RoomList_View" )

g_pPictureRoomList:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(102,128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









----------------나가기 버튼----

g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )
g_pButtonExit:SetNormalTex( "DLG_Common_Button01.TGA", "X_Icon_Normal" )

g_pButtonExit:SetOverTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetDownTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(245,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
     ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(246,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

g_pButtonExit:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CLOSE_DETAIL_LOCAL"] )





---------초심자를 위한 버튼-----------





g_pButtonBeginner_Enter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBeginner_Enter )
g_pButtonBeginner_Enter:SetName( "Beginner_Enter" )
g_pButtonBeginner_Enter:SetShow( false )
g_pButtonBeginner_Enter:SetEnable( false )
g_pButtonBeginner_Enter:SetNormalTex( "DLG_Common_Texture22.tga", "DunGeon_Beginner_Enter_Normal" )

g_pButtonBeginner_Enter:SetOverTex( "DLG_Common_Texture22.tga", "DunGeon_Beginner_Enter_Over" )

g_pButtonBeginner_Enter:SetDownTex( "DLG_Common_Texture22.tga", "DunGeon_Beginner_Enter_Over" )

g_pButtonBeginner_Enter:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(10,118)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonBeginner_Enter:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(10,118)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonBeginner_Enter:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(11,119)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonBeginner_Enter:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_STRAIGHT_ENTER"] )
