-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Lobby_Room" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )







g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Right_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_Texture01.TGA", "Yellow" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	ADD_SIZE_X = 636,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(287,220)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	ADD_SIZE_X = 636,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(287,220)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
     ADD_SIZE_X = 636,
    ADD_SIZE_Y = 32,

	"LEFT_TOP		= D3DXVECTOR2(287,220)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_JOIN_ROOM"] )










IncludeLua( "DLG_PVP_Lobby_Room_Texture.lua" )

IncludeLua( "DLG_PVP_Lobby_Room_String.lua" )









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
	"LEFT_TOP  = D3DXVECTOR2(830+60,220)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetOverPoint
{
	ADD_SIZE_Y = -10,
	"LEFT_TOP  = D3DXVECTOR2(830+60,220)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2-10,
	"LEFT_TOP  = D3DXVECTOR2(830+60,220)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButton:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_OBSERVER_JOIN_ROOM"] )
	

