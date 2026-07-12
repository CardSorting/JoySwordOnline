-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-------------------(X버튼)

g_pButtonX_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_1 )
g_pButtonX_1:SetName( "Dungeon_Room_BlueX_1" )
g_pButtonX_1:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_1:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_1:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

DungeonRoomOXDownAnim( g_pButtonX_1 )

g_pButtonX_1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(70-5,290-5+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_1:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(70-5-1,290-5-1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_1:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(70-5,290-5+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_1:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonX_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_2 )
g_pButtonX_2:SetName( "Dungeon_Room_BlueX_2" )
g_pButtonX_2:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_2:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_2:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

DungeonRoomOXDownAnim( g_pButtonX_2 )

g_pButtonX_2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(294-5,290-5+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(294-5-1,290-5-1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(294-5,290-5+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonX_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_3 )
g_pButtonX_3:SetName( "Dungeon_Room_BlueX_3" )
g_pButtonX_3:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_3:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_3:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

DungeonRoomOXDownAnim( g_pButtonX_3 )

g_pButtonX_3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(518-5,290-5+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(518-5-1,290-5-1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(518-5,290-5+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )

g_pButtonX_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_4 )
g_pButtonX_4:SetName( "Dungeon_Room_BlueX_4" )
g_pButtonX_4:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_4:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_4:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

DungeonRoomOXDownAnim( g_pButtonX_4 )

g_pButtonX_4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(742-5,290-5+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(742-5-1,290-5-1+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetDownPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(742-5,290-5+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_OPEN_OR_CLOSE_BUTTON"] )


