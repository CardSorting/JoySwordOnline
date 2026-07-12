-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_1_0" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible")

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )



g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_2_0" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )



g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_2_1" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex("DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex("DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )






g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_3_0" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible")

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(113, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(113+222, 220 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(113, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(113+222, 220 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(113, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(113+222, 220 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )




g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_3_1" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex("DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(414, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(414 + 195, 222 + 177)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )







g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_3_2" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(686, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(686 + 223, 221 + 178)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(686, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(686 + 223, 221 + 178)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(686, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(686 + 223, 221 + 178)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )




g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_4_0" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(21, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(21 + 237, 220 + 182)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(21, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(21 + 237, 220 + 182)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(21, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(21 + 237, 220 + 182)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )







g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_4_1" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(285, 222)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(285 + 196, 222 + 180)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )








g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_4_2" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(541, 221)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(541 + 197, 221 + 179)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )






g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()

g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "Reward_Box_4_3" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetEnable( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Room_Button0.tga", "Invisible" )

g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(773, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(773 + 235, 220 + 183)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Room_Button0.tga", "Invisible" )


g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(773, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(773 + 235, 220 + 183)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Room_Button0.tga", "Invisible")

g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE = FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(773, 220)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(773 + 235, 220 + 183)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( DUNGEON_RESULT_UI_CUSTOM_MSG["DRUCM_CHOICE_ITEM_BOX"] )
