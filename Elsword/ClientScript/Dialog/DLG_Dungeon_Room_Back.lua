-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Room" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )




--던전 유저 박스
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 82,  626, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 311, 626, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 539, 626, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 768, 626, 0 ) )


--던전 캐릭터 뒷 배경 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 70-5,290-5, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 294-5,290-5, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 518-5,290-5, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 742-5,290-5, 0 ) )


g_pStaticDungeon_Room_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_BG )
g_pStaticDungeon_Room_BG:SetName( "Background" )

--[[
g_pPictureDungeon_Room_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Room_Bg1 )

g_pPictureDungeon_Room_Bg1:SetTex( "DLG_Common_New_Texture12.TGA", "Player_Slot1" )

g_pPictureDungeon_Room_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(70,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDungeon_Room_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Room_Bg1 )

g_pPictureDungeon_Room_Bg1:SetTex( "DLG_Common_New_Texture12.TGA", "Player_Slot1" )

g_pPictureDungeon_Room_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(294,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Room_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Room_Bg1 )

g_pPictureDungeon_Room_Bg1:SetTex( "DLG_Common_New_Texture12.TGA", "Player_Slot1" )

g_pPictureDungeon_Room_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(518,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Room_Bg1 )

g_pPictureDungeon_Room_Bg1:SetTex( "DLG_Common_New_Texture12.TGA", "Player_Slot1" )

g_pPictureDungeon_Room_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(742,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

--------------밑판1-------------------

g_pPictureDungeon_Info1= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Info1)

g_pPictureDungeon_Info1:SetTex( "DLG_Common_New_Texture10.tga", "DUNGEON_Info_Back1"  )
g_pPictureDungeon_Info1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0+70,47+10+10+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Info2= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_BG:AddPicture( g_pPictureDungeon_Info2)

g_pPictureDungeon_Info2:SetTex( "DLG_Common_New_Texture10.tga", "DUNGEON_Info_Back2"  )
g_pPictureDungeon_Info2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0+70,122+10+10+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









---------던전이미지-------------------











g_pStaticDungeon_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Window )
g_pStaticDungeon_Window:SetName( "Dungeon_Window" )



g_pPictureDungeon_Window1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Window:AddPicture( g_pPictureDungeon_Window1 )

g_pPictureDungeon_Window1:SetTex( "DLG_Common_New_Texture12.tga", "Dungeon_Info_Window" )

g_pPictureDungeon_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(376,77-20+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Window2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Window:AddPicture( g_pPictureDungeon_Window2 )

g_pPictureDungeon_Window2:SetTex( "DLG_Common_New_Texture12.tga", "Dungeon_Info_Window2" )

g_pPictureDungeon_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(886,77-20+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----------던전이미지-----------
g_pStaticDungeon_Image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Image )
g_pStaticDungeon_Image:SetName( "StaticDungeon_Room_Map" )


g_pPictureDungeon_Room_Image= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Image:AddPicture( g_pPictureDungeon_Room_Image)

g_pPictureDungeon_Room_Image:SetTex( "DLG_New_Dungeon_Image1.dds", "DUNGEON_IMAGE_EL_TREE" )

g_pPictureDungeon_Room_Image:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(85,87+10-12+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------텍스트상자------------




g_pPictureDungeon_Room_Image_BG4= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Image:AddPicture( g_pPictureDungeon_Room_Image_BG4)

g_pPictureDungeon_Room_Image_BG4:SetTex( "DLG_Common_New_Texture10.tga", "MAKING_DUNGEON_BG2"  )
g_pPictureDungeon_Room_Image_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 21+71,74+17+25+10-12+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------아이템획득방식-----------
g_pStaticDungeon_Room_Item_Acquire  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_Item_Acquire  )
g_pStaticDungeon_Room_Item_Acquire :SetName( "Dungeon_Room_Item_Acquire" )


g_pPictureDungeon_Room_Item_Acquire= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Item_Acquire :AddPicture( g_pPictureDungeon_Room_Item_Acquire)

g_pPictureDungeon_Room_Item_Acquire:SetTex( "DLG_Common_New_Texture12.tga", "Dungeon_Room_Item_Acquire" )

g_pPictureDungeon_Room_Item_Acquire:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(87,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureDungeon_Room_Item_Random= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Item_Acquire :AddPicture( g_pPictureDungeon_Room_Item_Random)

g_pPictureDungeon_Room_Item_Random:SetTex( "DLG_Common_New_Texture12.tga", "Dungeon_Room_Item_Random" )

g_pPictureDungeon_Room_Item_Random:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(261,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureDungeon_Room_Item_Individual= g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Item_Acquire :AddPicture( g_pPictureDungeon_Room_Item_Individual)

g_pPictureDungeon_Room_Item_Individual:SetTex( "DLG_Common_New_Texture12.tga", "Dungeon_Room_Item_Individual" )

g_pPictureDungeon_Room_Item_Individual:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(322,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------던전정보창 폰트-----------------



    g_pStaticLevel = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticLevel )
 	g_pStaticLevel:SetName( "Static_Dungeon_RecommendLevel" )

     g_pStaticLevel:AddString
    {
 	 MSG    		 = STR_ID_982,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+71,80+17+25+17+10-12+11)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	g_pStaticPlayer = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticPlayer )
 	g_pStaticPlayer:SetName( "requireLevel" )

     g_pStaticPlayer:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+71,94+17+25+17+10-12+11)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	g_pStaticDifficulty= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty)
 	g_pStaticDifficulty:SetName( "Difficulty" )

     g_pStaticDifficulty:AddString
    {
 	 MSG    		 = STR_ID_985,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(30-5+71,94+17+25+17+10-12+11)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 g_pStaticDifficulty= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty)
 	g_pStaticDifficulty:SetName( "Difficulty_Star" )

     g_pStaticDifficulty:AddString
    {
 	 MSG    		 = STR_ID_984,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(93-5+71 - 5,94+17+25+17+10-12+11)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	g_pStaticDifficulty_Very_Hard= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDifficulty_Very_Hard)
 	g_pStaticDifficulty_Very_Hard:SetName( "DungeonRoom_DungeonDifficulty" )

     g_pStaticDifficulty_Very_Hard:AddString
    {
 	 MSG    		 = STR_ID_986,
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(866-33,116-20+9+11)",
 	 "COLOR          = D3DXCOLOR(0.8,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
g_pStatic_Dungeon_EX = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_EX )
g_pStatic_Dungeon_EX:SetName( "Static_Dungeon_EX" )

g_pStatic_Dungeon_EX:AddString
{
	MSG 			= STR_ID_987,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(360 + 94 - 10 - 40,118 - 24 + 19)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



	 



g_pStaticPlaySolo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPlaySolo )
g_pStaticPlaySolo:SetName( "g_pStaticPlaySolo" )



g_pPicturePlaySolo = g_pUIDialog:CreatePicture()
g_pStaticPlaySolo:AddPicture( g_pPicturePlaySolo )
g_pPicturePlaySolo:SetTex( "DLG_Common_Texture19.TGA", "beginner_Text" )
g_pPicturePlaySolo:SetPoint
{
	ADD_SIZE_X		= -85,
	"LEFT_TOP		= D3DXVECTOR2(440 - 50, 190 - 3 + 19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




function DungeonRoomOXDownAnim( pButton )

	pButton:SetDownAnimTex
	{
		RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		RotateDegree	= 180,
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(0.5,0.5)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.05,
	}

	pButton:SetDownAnimTex
	{
		RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		RotateDegree	= 360,
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
		
		bEndTexChange	= TRUE,
	}
	
	pButton:ChangeMouseDownSound_LUA( "Card_Flip.ogg" )
	pButton:ChangeMouseUpSound_LUA( "Card_Flip.ogg" )

end



	 

IncludeLua( "DLG_Dungeon_Room_O.lua" )

IncludeLua( "DLG_Dungeon_Room_X.lua" )



