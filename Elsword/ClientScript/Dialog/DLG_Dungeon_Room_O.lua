-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pButtonO_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_1 )
g_pButtonO_1:SetName( "Dungeon_Room_BlueO_1" )
g_pButtonO_1:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_1:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_1:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

DungeonRoomOXDownAnim( g_pButtonO_1 )

g_pButtonO_1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(70-5,290-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_1:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(70-5-1,290-5-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_1:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(70-5,290-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonO_1:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonO_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_2 )
g_pButtonO_2:SetName( "Dungeon_Room_BlueO_2" )
g_pButtonO_2:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_2:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_2:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

DungeonRoomOXDownAnim( g_pButtonO_2 )

g_pButtonO_2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(294-5,290-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_2:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(294-5-1,290-5-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_2:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(294-5,290-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_2:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonO_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_3 )
g_pButtonO_3:SetName( "Dungeon_Room_BlueO_3" )
g_pButtonO_3:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_3:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_3:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

DungeonRoomOXDownAnim( g_pButtonO_3 )

g_pButtonO_3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(518-5,290-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(518-5-1,290-5-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(518-5,290-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonO_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_4 )
g_pButtonO_4:SetName( "Dungeon_Room_BlueO_4" )
g_pButtonO_4:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_4:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_4:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

DungeonRoomOXDownAnim( g_pButtonO_4 )

g_pButtonO_4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(742-5,290-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_4:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(742-5-1,290-5-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_4:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(742-5,290-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_4:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )
