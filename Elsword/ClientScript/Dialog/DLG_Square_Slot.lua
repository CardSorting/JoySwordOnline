-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Square_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP_1"] )





g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Button_Square_Join" )
g_pButton:SetNormalTex( "DLG_PVP_Lobby3_OLD.TGA", "Room_Button" )
g_pButton:SetOverTex( "DLG_PVP_Lobby3_OLD.TGA", "Room_Button_Over" )
g_pButton:SetDownTex( "DLG_PVP_Lobby3_OLD.TGA", "Room_Button_Over" )


g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1,1)",
	"COLOR			= D3DXCOLOR(0.9,0.9,0.9,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_ENTER"] )








g_pStatic_RoomInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RoomInfo )
g_pStatic_RoomInfo:SetName( "Static_RoomInfo" )

g_pStatic_RoomInfo:AddString
{
	MSG 				= STR_ID_1169,
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(70,47)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_RoomInfo:AddString
{
	-- MSG 				= "UID",
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(70,14)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_RoomInfo:AddString
{
	MSG 				= STR_ID_1170,
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(132,14)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_RoomInfo:AddString
{
	-- MSG 				= "1/100",
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(280,47)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
