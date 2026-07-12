-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Arcade_Room_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
--g_pUIDialog:SetFront( true )


g_pStaticArcade_Room_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Room_Title )
g_pStaticArcade_Room_Title:SetName( "Arcade_Room_Title" )


g_pPictureArcade_Room_Title = g_pUIDialog:CreatePicture()
g_pStaticArcade_Room_Title:AddPicture( g_pPictureArcade_Room_Title )

g_pPictureArcade_Room_Title:SetTex( "DLG_Common_New_Texture65.TGA", "Arcade_Room_Title" )

g_pPictureArcade_Room_Title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(58,5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Room_Title = g_pUIDialog:CreatePicture()
g_pStaticArcade_Room_Title:AddPicture( g_pPictureArcade_Room_Title )

g_pPictureArcade_Room_Title:SetTex( "DLG_Common_New_Texture10.TGA", "Title_Window" )

g_pPictureArcade_Room_Title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220,8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticArcade_Room_Title :AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(250,20)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}






--난이도조절--
g_pStaticArcade_Room_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Room_Notice )
g_pStaticArcade_Room_Notice:SetName( "Arcade_Room_Notice" )
g_pStaticArcade_Room_Notice:SetEnable( true )


g_pPictureArcade_Room_Notice = g_pUIDialog:CreatePicture()
g_pStaticArcade_Room_Notice:AddPicture( g_pPictureArcade_Room_Notice )

g_pPictureArcade_Room_Notice:SetTex( "DLG_Common_New_Texture65.TGA", "Arcade_Room_Notice" )

g_pPictureArcade_Room_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(727,92)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--아이템획득방식--
g_pPictureArcade_Room_Item_Notice = g_pUIDialog:CreatePicture()
g_pStaticArcade_Room_Notice:AddPicture( g_pPictureArcade_Room_Item_Notice )

g_pPictureArcade_Room_Item_Notice:SetTex( "DLG_Common_New_Texture65.TGA", "Arcade_Room_Item_Notice" )

g_pPictureArcade_Room_Item_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(85,212)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_State )
g_pStaticRoom_State:SetName( "Arcade_Room_State_Lock" )
g_pStaticRoom_State:SetShow( false )

g_pPictureArcade_Room_Lock = g_pUIDialog:CreatePicture()
g_pStaticRoom_State:AddPicture( g_pPictureArcade_Room_Lock )

g_pPictureArcade_Room_Lock:SetTex( "DLG_Common_New_Texture22.TGA", "DUNGEON_ROOM_KEY" )

g_pPictureArcade_Room_Lock:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(230,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticArcade_Rank_Not = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Rank_Not )
g_pStaticArcade_Rank_Not:SetName( "g_pStaticArcade_Rank_Not" )




g_pStaticArcade_Rank_Not:AddString
{
	MSG 			= STR_ID_978,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(219,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticArcade_Rank_Not2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Rank_Not2 )
g_pStaticArcade_Rank_Not2:SetName( "g_pStaticArcade_Rank_Not2" )




g_pStaticArcade_Rank_Not2:AddString
{
	MSG 			= STR_ID_979,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(834,111)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStaticArcade_Rank_Not3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Rank_Not3 )
g_pStaticArcade_Rank_Not3:SetName( "g_pStaticArcade_Rank_Not3" )




g_pStaticArcade_Rank_Not3:AddString
{
	MSG 			= STR_ID_980,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(834,111)",
	"COLOR			= D3DXCOLOR(1.0,0.3,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

