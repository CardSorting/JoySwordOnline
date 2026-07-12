-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Map_Local_Create_Room" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_CANCEL"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 17, 129, 0 ) ) --던전방 만들기에서 그림 포인트 좌표 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 271, 255, 0 ) )







--배경
g_pStaticMaking_Room_Local_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Room_Local_BG )
g_pStaticMaking_Room_Local_BG :SetName( "Making_Room_Local" ) 


g_pPictureRoom_Shadow1 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Shadow1)

g_pPictureRoom_Shadow1:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line1" )

g_pPictureRoom_Shadow1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,498+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Shadow2 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Shadow2)

g_pPictureRoom_Shadow2:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line3" )

g_pPictureRoom_Shadow2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(643,498+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Shadow3 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Shadow3)

g_pPictureRoom_Shadow3:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line2" )

g_pPictureRoom_Shadow3:SetPoint
{
     ADD_SIZE_X = 266,
	"LEFT_TOP		= D3DXVECTOR2(376,498+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Shadow4 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Shadow4)

g_pPictureRoom_Shadow4:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line4" )

g_pPictureRoom_Shadow4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(643,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Shadow5 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Shadow5)

g_pPictureRoom_Shadow5:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line5" )

g_pPictureRoom_Shadow5:SetPoint
{
    ADD_SIZE_Y = 255+25,
	"LEFT_TOP		= D3DXVECTOR2(643,242)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPictureRoom_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg1)

g_pPictureRoom_Bg1:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureRoom_Bg1:SetPoint
{
    ADD_SIZE_X = 284,
    ADD_SIZE_Y = 282+25,
	"LEFT_TOP		= D3DXVECTOR2(364,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg2)

g_pPictureRoom_Bg2:SetTex( "DLG_Common_Texture01.tga", "Yellow" )

g_pPictureRoom_Bg2:SetPoint
{
    ADD_SIZE_X = 276,
    ADD_SIZE_Y = 274+25,
	"LEFT_TOP		= D3DXVECTOR2(368,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoom_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg3)

g_pPictureRoom_Bg3:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureRoom_Bg3:SetPoint
{
    ADD_SIZE_X = 272,
    ADD_SIZE_Y = 270+25,
	"LEFT_TOP		= D3DXVECTOR2(370,226)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoom_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg4)

g_pPictureRoom_Bg4:SetTex( "DLG_Common_Texture01.tga", "Color5" )

g_pPictureRoom_Bg4:SetPoint
{
    ADD_SIZE_X = 268,
    ADD_SIZE_Y = 266+25,
	"LEFT_TOP		= D3DXVECTOR2(372,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg5)

g_pPictureRoom_Bg5:SetTex( "DLG_Common_Texture01.tga", "Gray_Box1" )

g_pPictureRoom_Bg5:SetPoint
{
    ADD_SIZE_X = 264,
    ADD_SIZE_Y = 75+25,
	"LEFT_TOP		= D3DXVECTOR2(374,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg6)

g_pPictureRoom_Bg6:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2" )

g_pPictureRoom_Bg6:SetPoint
{
    ADD_SIZE_X = 260,
    ADD_SIZE_Y = 27,
	"LEFT_TOP		= D3DXVECTOR2(376,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Bg7 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg7)

g_pPictureRoom_Bg7:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2" )

g_pPictureRoom_Bg7:SetPoint
{
    ADD_SIZE_X = 21,
    ADD_SIZE_Y = 21,
	"LEFT_TOP		= D3DXVECTOR2(461,432)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRoom_Bg8 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg8)

g_pPictureRoom_Bg8:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2" )

g_pPictureRoom_Bg8:SetPoint
{
    ADD_SIZE_X = 21,
    ADD_SIZE_Y = 21,
	"LEFT_TOP		= D3DXVECTOR2(501-40,457)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoom_Bg9 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg9)

g_pPictureRoom_Bg9:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2" )

g_pPictureRoom_Bg9:SetPoint
{
    ADD_SIZE_X = 104,
    ADD_SIZE_Y = 21,
	"LEFT_TOP		= D3DXVECTOR2(532-40,432)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRoom_Bg10 = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture(g_pPictureRoom_Bg10)

g_pPictureRoom_Bg10:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureRoom_Bg10:SetPoint
{
    ADD_SIZE_X = 268,
    ADD_SIZE_Y = 114,
	"LEFT_TOP		= D3DXVECTOR2(372,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCreate_RomLine = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_BG:AddPicture( g_pPictureCreate_RomLine )

g_pPictureCreate_RomLine:SetTex( "DLG_Common_Texture01.TGA", "Main_Bar1" )

g_pPictureCreate_RomLine:SetPoint
{

    ADD_SIZE_X = 268,

    
 	"LEFT_TOP		= D3DXVECTOR2(372,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 텍스쳐

g_pStaticMaking_Room_Local = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Room_Local )
g_pStaticMaking_Room_Local :SetName( "Making_Room_Local" )



g_pPictureMaking_Room_Title = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local:AddPicture( g_pPictureMaking_Room_Title)

g_pPictureMaking_Room_Title:SetTex( "DLG_Common_Texture00.tga", "Create_Room" )

g_pPictureMaking_Room_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(462,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRoom_Name = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local:AddPicture( g_pPictureRoom_Name)

g_pPictureRoom_Name:SetTex( "DLG_Common_Texture01.tga", "Room_Name" )

g_pPictureRoom_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(381,384)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-----비공개
g_pPictureNot_Open = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local:AddPicture( g_pPictureNot_Open)

g_pPictureNot_Open:SetTex( "DLG_Common_New_Texture68.tga", "Not_Open" )

g_pPictureNot_Open:SetPoint
{ 

	"LEFT_TOP		= D3DXVECTOR2(457-75,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----최소레벨제한
g_pPictureLv_limit = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local:AddPicture( g_pPictureLv_limit)

g_pPictureLv_limit:SetTex( "DLG_Common_New_Texture68.tga", "Lv_limit" )

g_pPictureLv_limit:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(457-75,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------(던전 이미지)


g_pStaticDungeon_Image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Image )
g_pStaticDungeon_Image :SetName( "StaticCreateDungeonRoom" ) 


g_pPictureDungeon_El_Tree = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Image:AddPicture(g_pPictureDungeon_El_Tree)

g_pPictureDungeon_El_Tree:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Image_El_Tree" )

g_pPictureDungeon_El_Tree:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,267)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(642,375)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDungeon_Image_Plane = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Image:AddPicture(g_pPictureDungeon_Image_Plane)

g_pPictureDungeon_Image_Plane:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPictureDungeon_Image_Plane:SetPoint
{
    ADD_SIZE_X = 83,
    ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(407,341)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}




















-- 난이도 static string
g_pStatic_DungeonDifficulty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DungeonDifficulty )
g_pStatic_DungeonDifficulty:SetName( "CreateRoom_DungeonDifficulty" )

g_pStatic_DungeonDifficulty:AddString
{
	-- MSG 			= "DIFFICULTY",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(450,351)",
	"COLOR			= D3DXCOLOR(0.9,1,0.7,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Dungeon_RecommendLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_RecommendLevel )
g_pStatic_Dungeon_RecommendLevel:SetName( "Static_Dungeon_RecommendLevel" )

g_pStatic_Dungeon_RecommendLevel:AddString
{
	MSG 			= STR_ID_1102,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(385,298)",
	"COLOR			= D3DXCOLOR(0,1,0,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Dungeon_RecommendLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_RecommendLevel )
g_pStatic_Dungeon_RecommendLevel:SetName( "Static_Dungeon_Recommend_PeopleNum" )

g_pStatic_Dungeon_RecommendLevel:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(385,312)",
	"COLOR			= D3DXCOLOR(0,1,0,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Dungeon_RecommendLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_RecommendLevel )
g_pStatic_Dungeon_RecommendLevel:SetName( "Static_Dungeon_Star_Exp" )

g_pStatic_Dungeon_RecommendLevel:AddString
{
	MSG 			= STR_ID_1103,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(385,312)",
	"COLOR			= D3DXCOLOR(0,1,0,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_Dungeon_RecommendLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_RecommendLevel )
g_pStatic_Dungeon_RecommendLevel:SetName( "Static_Dungeon_Difficulty_Star" )

g_pStatic_Dungeon_RecommendLevel:AddString
{
	-- MSG 			= "★",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(385 + 110 + 5 - 40 - 7,312)",
	"COLOR			= D3DXCOLOR(0,1,0,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





g_pCheckBoxCreateRoom1 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxCreateRoom1:SetName( "CheckBoxLvLimit" )
g_pUIDialog:AddControl( g_pCheckBoxCreateRoom1 )

g_pCheckBoxCreateRoom1:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )



g_pCheckBoxCreateRoom1:SetCheckedTex( "DLG_Common_Texture01.TGA", "Chack_Point" )


g_pCheckBoxCreateRoom1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(461,457)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(482,478)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCreateRoom1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(462,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}





g_pCheckBoxCreateRoom2 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxCreateRoom2:SetName( "CheckBoxAutoLogin" )
g_pUIDialog:AddControl( g_pCheckBoxCreateRoom2 )

g_pCheckBoxCreateRoom2:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )



g_pCheckBoxCreateRoom2:SetCheckedTex( "DLG_Common_Texture01.TGA", "Chack_Point" )


g_pCheckBoxCreateRoom2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(461,432)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(482,453)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCreateRoom2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(462,434)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxCreateRoom2:SetCustomMsgChecked( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_PUBLIC_RIGHT_ARROW"]  )
g_pCheckBoxCreateRoom2:SetCustomMsgUnChecked( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_PUBLIC_RIGHT_ARROW"]  )

-------------화살표 버튼 

g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Local_Create_Room_Left_Arrow1" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Left_Triangle_Down" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(375,340)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(375,340)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
     ADD_SIZE_X = -3,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(377,341)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_LOWER_DIFFICULTY"] )


g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Local_Create_Room_Right_Arrow1" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(496,340)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(496,340)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = -3,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(498,341)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButtonRight_Triangle:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_HIGHER_DIFFICULTY"] )







--------------확인취소버튼

g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "Check" )
g_pButtonCheck:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCheck:SetOverTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCheck:SetDownTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCheck:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(421,486)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(421,486)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(421+1,486+1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCheck:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_OK"] )

g_pButtonCencel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCencel )
g_pButtonCencel:SetName( "Cencle" )
g_pButtonCencel:SetNormalTex( "DLG_Common_Texture03.tga", "Box_Down" )

g_pButtonCencel:SetOverTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCencel:SetDownTex( "DLG_Common_Texture03.tga", "Button_Over1" )

g_pButtonCencel:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(513,486)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(513,486)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(513+1,486+1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCencel:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_CANCEL"] )



-------------------------------------------------------

g_pStaticMaking_Room_Local_Button = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Room_Local_Button )
g_pStaticMaking_Room_Local_Button :SetName( "Making_Room_Local" )


g_pPictureCheck = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_Button:AddPicture( g_pPictureCheck)

g_pPictureCheck:SetTex( "DLG_Common_Texture01.tga", "Check" )

g_pPictureCheck:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(452,494)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCancel = g_pUIDialog:CreatePicture()
g_pStaticMaking_Room_Local_Button:AddPicture( g_pPictureCancel)

g_pPictureCancel:SetTex( "DLG_Common_Texture01.tga", "Cancel" )

g_pPictureCancel:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(544,494)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









	
	
	
	
	
	






-- 방제목 text
g_pIMEEditBoxDungeon_RoomName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxDungeon_RoomName )
g_pIMEEditBoxDungeon_RoomName:SetName( "IMEEditBoxDungeon_RoomName" )
g_pIMEEditBoxDungeon_RoomName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(381,402)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(637,429)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxDungeon_RoomName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxDungeon_RoomName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxDungeon_RoomName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxDungeon_RoomName:SetSelectedBackColor( 0.7, 0.7, 0.7, 1.0 )
g_pIMEEditBoxDungeon_RoomName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxDungeon_RoomName:SetTabControlName( "IMEEditBox_RoomPassword" )
g_pIMEEditBoxDungeon_RoomName:SetCustomMsgEnter( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_CREATE_DUNGEON_ROOM_OK"] )
g_pIMEEditBoxDungeon_RoomName:RequestFocus()
g_pIMEEditBoxDungeon_RoomName:SetWidthLimit( 637 - 381 )

-- 방 비밀번호
g_pIMEEditBox_RoomPassword = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox_RoomPassword )
g_pIMEEditBox_RoomPassword:SetEnable( false )
g_pIMEEditBox_RoomPassword:SetName( "IMEEditBox_RoomPassword" )
g_pIMEEditBox_RoomPassword:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(496,433)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(596,453)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBox_RoomPassword:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBox_RoomPassword:SetTextColor( 0, 0, 0, 1 )
g_pIMEEditBox_RoomPassword:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_RoomPassword:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_RoomPassword:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox_RoomPassword:SetTabControlName( "IMEEditBoxDungeon_RoomName" )







-- 관련 임시 체크 박스 
g_pCheckBox = g_pUIDialog:CreateCheckBox()
g_pCheckBox:SetName( "CheckBox_Observer_Create" )
g_pUIDialog:AddControl( g_pCheckBox )
g_pCheckBox:SetNormalTex( "DLG_Login3.TGA", "AUTO_LOGIN_NORMAL" )
g_pCheckBox:SetCheckedTex( "DLG_Login3.TGA", "AUTO_LOGIN_CHECK" )

g_pCheckBox:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(637+25,711 - 279)",
	"RIGHT_TOP		= D3DXVECTOR2(637+57,711 - 279)",
	"LEFT_BOTTOM	= D3DXVECTOR2(637+25,743 - 279)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(637+57,743 - 279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(637+25,711- 279)",
	"RIGHT_TOP		= D3DXVECTOR2(637+57,711- 279)",
	"LEFT_BOTTOM	= D3DXVECTOR2(637+25,743- 279)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(637+57,743- 279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBox:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OBSERVER"] )
g_pCheckBox:SetCustomMsgUnChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_CREATE_ROOM_OBSERVER"] )

