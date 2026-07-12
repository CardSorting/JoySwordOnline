-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





--[[

	----------------- 단축기 방식 



	g_pRadioButtonshort = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonshort )

	g_pRadioButtonshort:SetFixOverByCheck( true )
	g_pRadioButtonshort:SetShowOffBGByCheck( true )

	g_pRadioButtonshort:SetName( "short" )

	g_pRadioButtonshort:SetNormalTex( "DLG_Common_New_Texture70.tga", "short_Normal" )


	g_pRadioButtonshort:SetOverTex( "DLG_Common_New_Texture70.tga", "short_over" )


	g_pRadioButtonshort:SetCheckedTex( "DLG_Common_New_Texture70.tga", "short_over" )


	g_pRadioButtonshort:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(640,4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonshort:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(640,4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonshort:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(640,4)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(666-26+185,4+41)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonshort:SetCheckPoint
	{
	ADD_SIZE_X = -2,
	ADD_SIZE_y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(640+1,4+1)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButtonshort:SetGroupID( 71 )
	g_pRadioButtonshort:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SELECT_SKILL_IMMEDIATE_MODE"] )
	g_pRadioButtonshort:SetCustomMsgUnChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SELECT_SKILL_IMMEDIATE_MODE"] )





	------------차지 & 홀드 방식






	g_pRadioButtonhold = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonhold )

	g_pRadioButtonhold:SetFixOverByCheck( true )
	g_pRadioButtonhold:SetShowOffBGByCheck( true )

	g_pRadioButtonhold:SetName( "hold" )

	g_pRadioButtonhold:SetNormalTex( "DLG_Common_New_Texture70.tga", "hold_Normal" )


	g_pRadioButtonhold:SetOverTex( "DLG_Common_New_Texture70.tga", "hold_over" )


	g_pRadioButtonhold:SetCheckedTex( "DLG_Common_New_Texture70.tga", "hold_over" )


	g_pRadioButtonhold:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(828,4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonhold:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(828,4)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonhold:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(828,4)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(828+185,4+41)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonhold:SetCheckPoint
	{
	ADD_SIZE_X = -2,
	ADD_SIZE_y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(828+1,4+1)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButtonhold:SetGroupID( 71 )
	g_pRadioButtonhold:SetCustomMsgChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SELECT_SKILL_CHARGE_MODE"] )
	g_pRadioButtonhold:SetCustomMsgUnChecked( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SELECT_SKILL_CHARGE_MODE"] )


--]]













------(화살표 버튼)





g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Dungeon_LeftArrow" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Left_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Left_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Left_Over" )

g_pButtonLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(795-58,82+10-6+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(795-58,82+10-6+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
	   ADD_SIZE_X=-2 ,
	   ADD_SIZE_Y=-2 ,
 	"LEFT_TOP		= D3DXVECTOR2(796-58,83+10-6+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_DIFFICULTY_LOWER"] )





g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Dungeon_RightArrow" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Right_Normal" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Right_Over" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "Dungeon_Room_Arrow_Right_Over" )

g_pButtonRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(914-13,82+10-6+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(914-13,82+10-6+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
       ADD_SIZE_X=-2 ,
	   ADD_SIZE_Y=-2 ,
 	"LEFT_TOP		= D3DXVECTOR2(915-13,83+10-6+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_DIFFICULTY_HIGHER"] )

































g_pButtonReady_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReady_Button )
g_pButtonReady_Button:SetName( "Dungeon_Room_Ready" )
g_pButtonReady_Button:SetNormalTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Normal" )

g_pButtonReady_Button:SetOverTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Over" )

g_pButtonReady_Button:SetDownTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Over" )

g_pButtonReady_Button:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(728,155-20+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReady_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(728,155-20+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReady_Button:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(729,156-20+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonReady_Button:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_READY"] )






g_pButtonStart_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonStart_Button )
g_pButtonStart_Button:SetName( "Dungeon_Room_Start" )
g_pButtonStart_Button:SetNormalTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Normal" )

g_pButtonStart_Button:SetOverTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Over" )

g_pButtonStart_Button:SetDownTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Over" )

g_pButtonStart_Button:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(728,155-20+9+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStart_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(728,155-20+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStart_Button:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(729,156-20+9+11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonStart_Button:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_START"] )

















---(아이템 획득 체크버튼)-------


g_pRadioButtonItem_Random = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonItem_Random )

g_pRadioButtonItem_Random:SetFixOverByCheck( true )
g_pRadioButtonItem_Random:SetShowOffBGByCheck( true )

g_pRadioButtonItem_Random:SetName( "RadioButtonRandom" )

g_pRadioButtonItem_Random:SetNormalTex( "DLG_Common_New_Texture11.tga", "UN_VITALITY" )


g_pRadioButtonItem_Random:SetOverTex( "DLG_Common_New_Texture11.tga", "VITALITY" )


g_pRadioButtonItem_Random:SetCheckedTex( "DLG_Common_New_Texture11.tga", "VITALITY" )


g_pRadioButtonItem_Random:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Random:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(238,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Random:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(238,217)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(238+20,217+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Random:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(238,217)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Random:SetGroupID( 2 )
g_pRadioButtonItem_Random:SetCustomMsgChecked( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_CHANGE_GET_ITEM_TYPE"] )











g_pRadioButtonItem_Individual = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonItem_Individual )

g_pRadioButtonItem_Individual:SetFixOverByCheck( true )
g_pRadioButtonItem_Individual:SetShowOffBGByCheck( true )

g_pRadioButtonItem_Individual:SetName( "RadioButtonPersonal" )

g_pRadioButtonItem_Individual:SetNormalTex( "DLG_Common_New_Texture11.tga", "UN_VITALITY" )


g_pRadioButtonItem_Individual:SetOverTex( "DLG_Common_New_Texture11.tga", "VITALITY" )


g_pRadioButtonItem_Individual:SetCheckedTex( "DLG_Common_New_Texture11.tga", "VITALITY" )


g_pRadioButtonItem_Individual:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Individual:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Individual:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(300,217)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(300+20,217+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Individual:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(300,217)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonItem_Individual:SetGroupID( 2 )
g_pRadioButtonItem_Individual:SetCustomMsgChecked( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_CHANGE_GET_ITEM_TYPE"] )
