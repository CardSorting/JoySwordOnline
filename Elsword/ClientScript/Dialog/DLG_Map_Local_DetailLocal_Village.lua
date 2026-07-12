-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Map_Local_Create_Village_Info" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


--왼쪽 포지션 나왔을 때 화살표 방향으로 던전이 오게끔 하는 오프셋 좌표!!
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -60, -76 - 70, 0 ) )
--오른쪽 포지션 나왔을 때 화살표 방향으로 던전이 오게끔 하는 오프셋 좌표!!
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -366 + 150, -76 - 70, 0 ) )








-----------(정보 창)

g_pStaticLocal_Info_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocal_Info_Window )
g_pStaticLocal_Info_Window:SetName( "StaticMapLocalDetailTemplete" )


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



g_pStatic_Village_EX = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Village_EX )
g_pStatic_Village_EX:SetName( "Static_Village_EX" )
g_pStatic_Village_EX:SetShow( false )

g_pStatic_Village_EX:AddString
{
	MSG 			= STR_ID_1106,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	--FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	--"POS 			= D3DXVECTOR2(25,133)",
	"POS 			= D3DXVECTOR2(25,240)",
	"COLOR			= D3DXCOLOR(0,0,0,1)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
