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


















g_pButtonKillLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKillLeft_Triangle )
g_pButtonKillLeft_Triangle:SetName( "PVP_Room_Kill_LeftArrow" )
g_pButtonKillLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonKillLeft_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonKillLeft_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonKillLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(862,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKillLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(860,136)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKillLeft_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(862,138)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKillLeft_Triangle:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_PREV_KILL_NUM"] )

g_pButtonKillRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKillRight_Triangle )
g_pButtonKillRight_Triangle:SetName( "PVP_Room_Kill_RightArrow" )
g_pButtonKillRight_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonKillRight_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonKillRight_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonKillRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKillRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,136)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKillRight_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,138)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonKillRight_Triangle:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_NEXT_KILL_NUM"] )



g_pButtonTimeLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTimeLeft_Triangle )
g_pButtonTimeLeft_Triangle:SetName( "PVP_Room_Time_LeftArrow" )
g_pButtonTimeLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonTimeLeft_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonTimeLeft_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonTimeLeft_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(862,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTimeLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(860,169)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTimeLeft_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(862,171)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTimeLeft_Triangle:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_PREV_PLAY_TIME"] )



g_pButtonTimeRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTimeRight_Triangle )
g_pButtonTimeRight_Triangle:SetName( "PVP_Room_Time_RightArrow" )
g_pButtonTimeRight_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonTimeRight_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonTimeRight_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonTimeRight_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTimeRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964,169)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTimeRight_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966,171)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonTimeRight_Triangle:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_NEXT_PLAY_TIME"] )




----------------------(레디 버튼)-------------------------------
g_pButtonPVP_Room_Ready = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Room_Ready )
g_pButtonPVP_Room_Ready:SetName( "PVP_Room_Ready" )
g_pButtonPVP_Room_Ready:SetNormalTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Normal" )

g_pButtonPVP_Room_Ready:SetOverTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Over" )

g_pButtonPVP_Room_Ready:SetDownTex( "DLG_Common_New_Texture09.TGA", "Ready_Button_Over" )

g_pButtonPVP_Room_Ready:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(791,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Ready:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(791,288)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Ready:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(792,289)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Ready:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_READY"] )

  


----------------------(플레이 버튼)-------------------------------
g_pButtonPVP_Room_Play = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Room_Play )
g_pButtonPVP_Room_Play:SetName( "PVP_Room_Play" )

g_pButtonPVP_Room_Play:SetNormalTex( "DLG_Common_New_Texture50.TGA", "Play_Button_Normal" )

g_pButtonPVP_Room_Play:SetOverTex( "DLG_Common_New_Texture50.TGA", "Play_Button_Over" )

g_pButtonPVP_Room_Play:SetDownTex( "DLG_Common_New_Texture50.TGA", "Play_Button_Over" )



g_pButtonPVP_Room_Play:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(791,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Play:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(791,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Play:SetDownPoint
{
      ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(792,289)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Play:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_INTRUDE"] )




 

----------------------(스타트 버튼)-------------------------------
g_pButtonPVP_Room_Start = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Room_Start )
g_pButtonPVP_Room_Start:SetName( "PVP_Room_Start" )
g_pButtonPVP_Room_Start:SetNormalTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Normal" )

g_pButtonPVP_Room_Start:SetOverTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Over" )

g_pButtonPVP_Room_Start:SetDownTex( "DLG_Common_New_Texture10.TGA", "Start_Button_Over" )

g_pButtonPVP_Room_Start:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(791,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Start:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(791,288)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Start:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(792,289)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonPVP_Room_Start:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_START"] )


