-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Room_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pUIDialog:AddDummyPos( D3DXVECTOR3( -360 + 20, -210 - 30, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -140 + 20, -210 - 30, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 120 - 20,  -210 - 30, 250 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 370 - 20,  -210 - 30, 0 ) )


--슬롯에 따른 토크박스 포지션
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 225, 305, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 460, 330, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 700, 330, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 870, 305, 0 ) )


----타이틀----------

g_pStaticDungeon_Room_Title_back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_Title_back )
g_pStaticDungeon_Room_Title_back:SetName( "g_pStaticDungeon_Room_Title_back" )


g_pPictureDungeon_Room_Title_ElMark = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Title_back:AddPicture( g_pPictureDungeon_Room_Title_ElMark )

g_pPictureDungeon_Room_Title_ElMark:SetTex( "DLG_Common_New_Texture10.TGA", "ElMark" )

g_pPictureDungeon_Room_Title_ElMark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticDungeon_Room_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_Title )
g_pStaticDungeon_Room_Title:SetName( "Dungeon_Room_Title" )





g_pPictureDungeon_Room_Title_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Title:AddPicture( g_pPictureDungeon_Room_Title_Bg1 )

g_pPictureDungeon_Room_Title_Bg1:SetTex( "DLG_Common_New_Texture10.TGA", "Title_Window" )

g_pPictureDungeon_Room_Title_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(134,3+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureDungeon_Room_Title_Team_Death = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Title:AddPicture( g_pPictureDungeon_Room_Title_Team_Death )

g_pPictureDungeon_Room_Title_Team_Death:SetTex( "DLG_Common_New_Texture10.TGA", "Dungeon" )

g_pPictureDungeon_Room_Title_Team_Death:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(58,0+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



	
	g_pStaticDungeon_Room_Title = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticDungeon_Room_Title )
	g_pStaticDungeon_Room_Title:SetName( "DungeonRoom_RoomName" )

	g_pStaticDungeon_Room_Title:AddString
	{
		-- MSG 			= "하하하하하하하하하하하하핳하하하하핳하하할",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(192,20)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	}


g_pStaticRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_State )
g_pStaticRoom_State:SetName( "Dungeon_Room_State_Lock" )
g_pStaticRoom_State:SetShow( false )

---------추가된 열쇠 이미지-------------- 
g_pPictureDungeon_Key= g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureDungeon_Key)

g_pPictureDungeon_Key:SetTex( "DLG_Common_New_Texture22.tga", "DUNGEON_ROOM_KEY"  )
g_pPictureDungeon_Key:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 146,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





















IncludeLua( "DLG_Dungeon_Room_Button.lua" )
  
IncludeLua( "DLG_Dungeon_Room_Equip.lua" )

IncludeLua( "DLG_Dungeon_Room_Tade.lua" )

IncludeLua( "DLG_Dungeon_Room_Host.lua" )

IncludeLua( "DLG_Dungeon_Room_Ready.lua" )

--IncludeLua( "DLG_Dungeon_Room_Menu_Button.lua" )
