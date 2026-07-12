-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_UI_Market_list" )
g_pUIDialog:SetPos( -2,-187)
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

-----------------------------  이전 위치랑 현 위치와의 거리  (  -2,  -131) 



-----------(방 리스트)

g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_top = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_top)

g_pPictureSquare_List_Bg_top:SetTex( "DLG_UI_Common_Texture08.tga", "Square_Bg_Top" )

g_pPictureSquare_List_Bg_top:SetPoint
{ 

	"LEFT_TOP		= D3DXVECTOR2(367+6,498)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Middle = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Middle)

g_pPictureSquare_List_Bg_Middle:SetTex( "DLG_UI_Common_Texture08.tga", "Square_Bg_Middle" )

g_pPictureSquare_List_Bg_Middle:SetPoint
{
	ADD_SIZE_Y = 234+5,
	"LEFT_TOP		= D3DXVECTOR2(367+6,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )

 

g_pPictureSquare_List_Bg_Bottom = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Bottom)

g_pPictureSquare_List_Bg_Bottom:SetTex( "DLG_UI_Common_Texture08.tga", "Square_Bg_Bottom" )

g_pPictureSquare_List_Bg_Bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367+6,677+56+13+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )

 

g_pPictureSquare_List_Gray_top = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Gray_top)

g_pPictureSquare_List_Gray_top:SetTex( "DLG_UI_Common_Texture08.tga", "Square_gray_Top" )

g_pPictureSquare_List_Gray_top:SetPoint
{ 

	"LEFT_TOP		= D3DXVECTOR2(390,552-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )

 

g_pPictureSquare_List_Gray_middle = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Gray_middle)

g_pPictureSquare_List_Gray_middle:SetTex( "DLG_UI_Common_Texture08.tga", "Square_gray_middle" )

g_pPictureSquare_List_Gray_middle:SetPoint
{ 
    ADD_SIZE_Y = 150+8,
	"LEFT_TOP		= D3DXVECTOR2(390,559-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )

 

g_pPictureSquare_List_Gray_bottom = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Gray_bottom)

g_pPictureSquare_List_Gray_bottom:SetTex( "DLG_UI_Common_Texture08.tga", "Square_gray_bottom" )

g_pPictureSquare_List_Gray_bottom:SetPoint
{ 
    
	"LEFT_TOP		= D3DXVECTOR2(390,710+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}












g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Bar = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Bar)

g_pPictureSquare_List_Bg_Bar:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Bar" )

g_pPictureSquare_List_Bg_Bar:SetPoint
{
    ADD_SIZE_X = -1,
	"LEFT_TOP		= D3DXVECTOR2(387+2,547-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Title = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Title)

g_pPictureSquare_List_Bg_Title:SetTex( "DLG_UI_Title01.tga", "market" )

g_pPictureSquare_List_Bg_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(463,514-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSquare_List_Bg_Title = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Title)

g_pPictureSquare_List_Bg_Title:SetTex( "DLG_UI_Title01.tga", "list" )

g_pPictureSquare_List_Bg_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(508+15,514-4-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------(화살표)



-----------추가 되었음(좌표 다시 좀 수정 되었음)----------------
g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Right_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal2" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonRight_Triangle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(473,667-2+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(473,667-2+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(474,668-2+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( MARKET_LIST_UI_MSG["MLUI_NEXT"] )








------추가 되었음--------
g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Left_Triangle" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonLeft_Triangle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(532,667-2+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(532,667-2+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(533,668-2+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( MARKET_LIST_UI_MSG["MLUI_PREV"] )














g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_PageNum" )


g_pStatic:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(513,670+56+7-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





--------------exit


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "marketList_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(610+10,514-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(606+10,510-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(606+1+10,510+1-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( MARKET_LIST_UI_MSG["MLUI_CLOSE"] )
 























