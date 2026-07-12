-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Room" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pButtonLocalRoom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLocalRoom )
g_pButtonLocalRoom:SetName( "Room_Window" )
g_pButtonLocalRoom:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonLocalRoom:SetOverTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonLocalRoom:SetDownTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonLocalRoom:SetNormalPoint
{

 	ADD_SIZE_X = 437,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLocalRoom:SetOverPoint
{

 	ADD_SIZE_X = 437,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563,245)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLocalRoom:SetDownPoint
{
 	ADD_SIZE_X = 437,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(563,245)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}


g_pButtonLocalRoom:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_JOIN_ROOM"] )

			
















g_pStaticLocalRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLocalRoom_State )
g_pStaticLocalRoom_State:SetName( "Dungeon_Room_State" )


g_pPictureLocalRoom_State_Wait = g_pUIDialog:CreatePicture()
g_pStaticLocalRoom_State:AddPicture( g_pPictureLocalRoom_State_Wait )

g_pPictureLocalRoom_State_Wait:SetTex( "DLG_Common_Texture01.TGA", "Wait" )

g_pPictureLocalRoom_State_Wait:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureLocalRoom_State_Play = g_pUIDialog:CreatePicture()
g_pStaticLocalRoom_State:AddPicture( g_pPictureLocalRoom_State_Play )

g_pPictureLocalRoom_State_Play:SetTex( "DLG_Common_Texture01.TGA", "Play" )

g_pPictureLocalRoom_State_Play:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureLocalRoom_State_Full = g_pUIDialog:CreatePicture()
g_pStaticLocalRoom_State:AddPicture( g_pPictureLocalRoom_State_Full )

g_pPictureLocalRoom_State_Full:SetTex( "DLG_Common_Texture01.TGA", "Full" )

g_pPictureLocalRoom_State_Full:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLocalRoom_State_Lock = g_pUIDialog:CreatePicture()
g_pStaticLocalRoom_State:AddPicture( g_pPictureLocalRoom_State_Lock )

g_pPictureLocalRoom_State_Lock:SetTex( "DLG_Common_Texture01.TGA", "Lock" )

g_pPictureLocalRoom_State_Lock:SetPoint
{

    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(547,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------파티 레벨제한 표시 

g_pStaticLV_Limit = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLV_Limit )
g_pStaticLV_Limit:SetName( "LV_Limit" )


g_pPictureLV_limit = g_pUIDialog:CreatePicture()
g_pStaticLV_Limit:AddPicture( g_pPictureLV_limit )

g_pPictureLV_limit:SetTex( "DLG_Common_Texture01.TGA", "lv_limit" )

g_pPictureLV_limit:SetPoint
{
    

	"LEFT_TOP		= D3DXVECTOR2(565,253)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------------------------------------------------------------------------

g_pStaticTitle = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTitle )
g_pStaticTitle:SetName( "StaticTitle" )

g_pStaticTitle:AddString
{
		-- MSG 			= "하하하하하하하하하하하하하하하하하하하하하하하",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(875,256)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pStaticTitle:AddString
{
		-- MSG 			= "8/8",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(660,256)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticTitle:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(715,256)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
	
	
	
	
	
	
	
	
	
	
	
	
	

-- 임시 observer join button
g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Button_Observer_Join" )
g_pButton:SetNormalTex( "DLG_Common_New_Texture43.tga", "QUEST_CONTENTS_VIEW_Normal" )
g_pButton:SetOverTex( "DLG_Common_New_Texture43.tga", "QUEST_CONTENTS_VIEW_Over" )
g_pButton:SetDownTex( "DLG_Common_New_Texture43.tga", "QUEST_CONTENTS_VIEW_Over" )

g_pButton:SetNormalPoint
{
	ADD_SIZE_Y = -10,

	"LEFT_TOP  = D3DXVECTOR2(593-150,245)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetOverPoint
{
	ADD_SIZE_Y = -10,

	"LEFT_TOP  = D3DXVECTOR2(593-150,245)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2-10,
	"LEFT_TOP  = D3DXVECTOR2(593-150,245)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetCustomMsgMouseUp( STATE_LOCAL_MAP_UI_CUSTOM_MSG["SLMUCM_OBSERVER_JOIN_ROOM"] )
