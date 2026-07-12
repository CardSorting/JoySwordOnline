-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--엘소드BG--

g_pStaticArcade_Ranking_Elsword_Bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Ranking_Elsword_Bg )
g_pStaticArcade_Ranking_Elsword_Bg:SetName( "Arcade_Ranking_Bg" )


g_pPictureArcade_Ranking_Elsword_Bg01 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Ranking_Elsword_Bg:AddPicture( g_pPictureArcade_Ranking_Elsword_Bg01 )

g_pPictureArcade_Ranking_Elsword_Bg01:SetTex( "DLG_Dungeon_Arcade_Rank_Elsword01.TGA", "Arcade_Ranking_Elsword_Bg01" )

g_pPictureArcade_Ranking_Elsword_Bg01:SetPoint
{
    ADD_SIZE_Y = 256,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Ranking_Elsword_Bg02 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Ranking_Elsword_Bg:AddPicture( g_pPictureArcade_Ranking_Elsword_Bg02 )

g_pPictureArcade_Ranking_Elsword_Bg02:SetTex( "DLG_Dungeon_Arcade_Rank_Elsword02.TGA", "Arcade_Ranking_Elsword_Bg02" )

g_pPictureArcade_Ranking_Elsword_Bg02:SetPoint
{
    ADD_SIZE_Y = 256,
	"LEFT_TOP		= D3DXVECTOR2(512,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--파티원--


g_pStaticResult_Charic_Image_Other_0 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Charic_Image_Other_0 )
g_pStaticResult_Charic_Image_Other_0:SetName( "Dungeon_Result_Party_Rank" )

								            
g_pPictureResult_Charic_Image_Other_0 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_0 )
g_pPictureResult_Charic_Image_Other_0:SetShow( false )

g_pPictureResult_Charic_Image_Other_0:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_0:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(13,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(149,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



								            
g_pPictureResult_Charic_Image_Other_1 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_1 )
g_pPictureResult_Charic_Image_Other_1:SetShow( false )
g_pPictureResult_Charic_Image_Other_1:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_1:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(153,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




								            
g_pPictureResult_Charic_Image_Other_2 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_2 )
g_pPictureResult_Charic_Image_Other_2:SetShow( false )
g_pPictureResult_Charic_Image_Other_2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_2:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(293,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(429,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



  g_pStaticDungeon_Result_User_Level1= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level1)
 	g_pStaticDungeon_Result_User_Level1:SetName( "Dungeon_Result_Other0_Desc" )

     g_pStaticDungeon_Result_User_Level1:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(20,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id1= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id1)
 	g_pStaticDungeon_Result_User_Id1:SetName( "Dungeon_Result_Other0_ID" )

     g_pStaticDungeon_Result_User_Id1:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(20,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 

g_pStaticDungeon_Result_User_Level2= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level2)
 	g_pStaticDungeon_Result_User_Level2:SetName( "Dungeon_Result_Other1_Desc" )


     g_pStaticDungeon_Result_User_Level2:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(161,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id2= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id2)
 	g_pStaticDungeon_Result_User_Id2:SetName( "Dungeon_Result_Other1_ID" )

     g_pStaticDungeon_Result_User_Id2:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(161,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
g_pStaticDungeon_Result_User_Level3= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level3)
 	g_pStaticDungeon_Result_User_Level3:SetName( "Dungeon_Result_Other2_Desc" )

     g_pStaticDungeon_Result_User_Level3:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(301,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id3= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id3)
 	g_pStaticDungeon_Result_User_Id3:SetName( "Dungeon_Result_Other2_ID" )

     g_pStaticDungeon_Result_User_Id3:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(301,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other0_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )



g_pPictureDungeon_Result_PCRoom1_1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_1 )

g_pPictureDungeon_Result_PCRoom1_1:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(62,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other1_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )


g_pPictureDungeon_Result_PCRoom1_2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_2 )

g_pPictureDungeon_Result_PCRoom1_2:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(202,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other2_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )


g_pPictureDungeon_Result_PCRoom1_3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_3 )

g_pPictureDungeon_Result_PCRoom1_3:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






--서버내1위_닉네임--

g_pStaticRanking_Server_1st = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRanking_Server_1st )
g_pStaticRanking_Server_1st:SetName( "Ranking_Server_1st" )

g_pStaticRanking_Server_1st :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(662,375)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



--오늘의순위_닉네임--

g_pStaticRanking_Today = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRanking_Today )
g_pStaticRanking_Today:SetName( "Ranking_Today" )

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(702,476)",
		"COLOR			= D3DXCOLOR(0.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(702,520)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(702,520+44)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(702,520+44+44)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	g_pStaticRanking_Today :AddString
	{
		-- MSG 			= "-",
		FONT_INDEX		= XUF_DODUM_13_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(702,520+44+44+44)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



