-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--자유채널--
g_pRadioButtonChannel1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel1 )

g_pRadioButtonChannel1:SetFixOverByCheck( true )
g_pRadioButtonChannel1:SetShowOffBGByCheck( true )

g_pRadioButtonChannel1:SetName( "Channel0" )
g_pRadioButtonChannel1:AddDummyInt( PVP_CHANNEL_CLASS["PCC_FREE"] )

g_pRadioButtonChannel1:SetNormalTex( "DLG_Common_New_Texture49.TGA", "Free_Channel_Normal" )


g_pRadioButtonChannel1:SetOverTex( "DLG_Common_New_Texture49.TGA", "Free_Channel_Over" )


g_pRadioButtonChannel1:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Free_Channel_Over" )


g_pRadioButtonChannel1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,124+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-10,124-10+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-9,124-9+56)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,124+56-9+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel1:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31-10,125-10+56)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel1:SetGroupID( 1 )
g_pRadioButtonChannel1:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )

ChannelGuide10 = string.format( "VP: %d - %d", 0, PVP_EMBLEM["PE_END"] )
g_pRadioButtonChannel1:SetGuideDesc( STR_ID_2715 )
--g_pRadioButtonChannel1:SetGuideDescSetGuideDescByString( ChannelGuide10 )




--훈련병--
g_pRadioButtonChannel2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel2 )

g_pRadioButtonChannel2:SetFixOverByCheck( true )
g_pRadioButtonChannel2:SetShowOffBGByCheck( true )

g_pRadioButtonChannel2:SetName( "Channel1" )
g_pRadioButtonChannel2:AddDummyInt( PVP_CHANNEL_CLASS["PCC_RECRUIT"] )

g_pRadioButtonChannel2:SetNormalTex( "DLG_Common_New_Texture08.TGA", "Training_Army_Normal" )


g_pRadioButtonChannel2:SetOverTex( "DLG_Common_New_Texture49.TGA", "Training_Button" )


g_pRadioButtonChannel2:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Training_Button" )


g_pRadioButtonChannel2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,191+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-9,191-9+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-9,191-9+56)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,246-9+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel2:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31-9,192-9+56)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel2:SetGroupID( 1 )
g_pRadioButtonChannel2:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )



ChannelGuide1 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_RECRUIT"], PVP_EMBLEM["PE_GUARDS"] - 1 )
g_pRadioButtonChannel2:SetGuideDescByString( ChannelGuide1 )








--초보채널1--
g_pRadioButtonChannel3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel3 )

g_pRadioButtonChannel3:SetFixOverByCheck( true )
g_pRadioButtonChannel3:SetShowOffBGByCheck( true )

g_pRadioButtonChannel3:SetName( "Channel2" )
g_pRadioButtonChannel3:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E1"] )

g_pRadioButtonChannel3:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E1_Normal" )


g_pRadioButtonChannel3:SetOverTex( "DLG_Common_New_Texture49.TGA", "Chobo_Channel1_Over" )


g_pRadioButtonChannel3:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Chobo_Channel1_Over" )


g_pRadioButtonChannel3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,248+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-9,248-9+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-9,248-9+56)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,248+56-9+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel3:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31-9,249-9+56)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel3:SetGroupID( 1 )
g_pRadioButtonChannel3:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )

ChannelGuide2 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_RECRUIT"], PVP_EMBLEM["PE_MERCENARY"] - 1 )
g_pRadioButtonChannel3:SetGuideDescByString( ChannelGuide2 )






--초보채널2--
g_pRadioButtonChannel4 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel4 )

g_pRadioButtonChannel4:SetFixOverByCheck( true )
g_pRadioButtonChannel4:SetShowOffBGByCheck( true )

g_pRadioButtonChannel4:SetName( "Channel3" )
g_pRadioButtonChannel4:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E2"] )

g_pRadioButtonChannel4:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E2_Normal" )


g_pRadioButtonChannel4:SetOverTex( "DLG_Common_New_Texture49.TGA", "Chobo_Channel2_Over" )


g_pRadioButtonChannel4:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Chobo_Channel2_Over" )


g_pRadioButtonChannel4:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,305+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel4:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-9,305-9+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel4:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-9,305-9+57)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,305+56-9+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel4:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31-9,306-9+57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel4:SetGroupID( 1 )
g_pRadioButtonChannel4:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )


ChannelGuide3 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_GUARDS"], PVP_EMBLEM["PE_KNIGHTS"] - 1 )
g_pRadioButtonChannel4:SetGuideDescByString( ChannelGuide3 )






--일반채널1--
g_pRadioButtonChannel5 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel5 )

g_pRadioButtonChannel5:SetFixOverByCheck( true )
g_pRadioButtonChannel5:SetShowOffBGByCheck( true )

g_pRadioButtonChannel5:SetName( "Channel4" )
g_pRadioButtonChannel5:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E3"] )

g_pRadioButtonChannel5:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E3_Normal" )


g_pRadioButtonChannel5:SetOverTex( "DLG_Common_New_Texture49.TGA", "General_Channel1_Over" )


g_pRadioButtonChannel5:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "General_Channel1_Over" )


g_pRadioButtonChannel5:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,363+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel5:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-9,363-9+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel5:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(30-9,363-9+57)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,363+56-9+57)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel5:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31-9,364-9+57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel5:SetGroupID( 1 )
g_pRadioButtonChannel5:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )


ChannelGuide4 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_MERCENARY"], PVP_EMBLEM["PE_END"] - 1 )
g_pRadioButtonChannel5:SetGuideDescByString( ChannelGuide4 )








--대회채널--
g_pRadioButtonChannel6 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel6 )

g_pRadioButtonChannel6:SetFixOverByCheck( true )
g_pRadioButtonChannel6:SetShowOffBGByCheck( true )

g_pRadioButtonChannel6:SetName( "Channel5" )
g_pRadioButtonChannel6:AddDummyInt( PVP_CHANNEL_CLASS["PCC_TOURNAMENT"] )

g_pRadioButtonChannel6:SetNormalTex( "DLG_Common_New_Texture56.TGA", "MATCH_CHANNEL_Normal" )


g_pRadioButtonChannel6:SetOverTex( "DLG_Common_New_Texture56.TGA", "MATCH_CHANNEL_Over" )


g_pRadioButtonChannel6:SetCheckedTex( "DLG_Common_New_Texture56.TGA", "MATCH_CHANNEL_Over" )


g_pRadioButtonChannel6:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,363+58+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31-9,363-9+58+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(31-9,363-9+58+57)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,363+56-9+58+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetCheckPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32-9,364-9+58+57)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetGroupID( 1 )
g_pRadioButtonChannel6:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )

ChannelGuide5 = string.format( STR_ID_1140 )
g_pRadioButtonChannel6:SetGuideDescByString( ChannelGuide5 )





--연습채널--
g_pRadioButtonChannel6 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChannel6 )

g_pRadioButtonChannel6:SetFixOverByCheck( true )
g_pRadioButtonChannel6:SetShowOffBGByCheck( true )

g_pRadioButtonChannel6:SetName( "Channel6" )
g_pRadioButtonChannel6:AddDummyInt( PVP_CHANNEL_CLASS["PCC_PLAY"] )

g_pRadioButtonChannel6:SetNormalTex( "DLG_Common_New_Texture28.TGA", "Practice_Channel_Normal" )
g_pRadioButtonChannel6:SetOverTex( "DLG_Common_New_Texture28.TGA", "Practice_Channel_Over" )
g_pRadioButtonChannel6:SetCheckedTex( "DLG_Common_New_Texture28.TGA", "Practice_Channel_Over" )

g_pRadioButtonChannel6:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30-8,123-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetRBPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(30-8,123-9)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(139-8,123+57-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonChannel6:SetCheckPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(30-8+1,123-9+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonChannel6:SetGroupID( 1 )
g_pRadioButtonChannel6:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )
g_pRadioButtonChannel6:SetGuideDesc( STR_ID_2714 )







--[[



	g_pRadioButtonChannel6 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonChannel6 )

	g_pRadioButtonChannel6:SetFixOverByCheck( true )
	g_pRadioButtonChannel6:SetShowOffBGByCheck( true )

	g_pRadioButtonChannel6:SetName( "Channel5" )

	g_pRadioButtonChannel6:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E4_Normal" )


	g_pRadioButtonChannel6:SetOverTex( "DLG_Common_New_Texture49.TGA", "General_Channel2_Over" )


	g_pRadioButtonChannel6:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "General_Channel2_Over" )


	g_pRadioButtonChannel6:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30,420)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel6:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30-9,420-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel6:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(30-9,420-9)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,420+56-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel6:SetCheckPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(31-9,421-9)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel6:SetGroupID( 1 )
	g_pRadioButtonChannel6:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )
	g_pRadioButtonChannel6:SetGuideDesc( STR_ID_2732 )


	g_pRadioButtonChannel7 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonChannel7 )

	g_pRadioButtonChannel7:SetFixOverByCheck( true )
	g_pRadioButtonChannel7:SetShowOffBGByCheck( true )

	g_pRadioButtonChannel7:SetName( "Channel6" )

	g_pRadioButtonChannel7:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E5_Normal" )


	g_pRadioButtonChannel7:SetOverTex( "DLG_Common_New_Texture49.TGA", "High_Channel1_Over" )


	g_pRadioButtonChannel7:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "High_Channel1_Over" )


	g_pRadioButtonChannel7:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30,478)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel7:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30-9,478-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel7:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(30-9,478-9)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,478+56-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel7:SetCheckPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(31-9,479-9)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel7:SetGroupID( 1 )
	g_pRadioButtonChannel7:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )
	g_pRadioButtonChannel7:SetGuideDesc( STR_ID_2733 )




	g_pRadioButtonChannel8 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonChannel8 )

	g_pRadioButtonChannel8:SetFixOverByCheck( true )
	g_pRadioButtonChannel8:SetShowOffBGByCheck( true )

	g_pRadioButtonChannel8:SetName( "Channel7" )
	g_pRadioButtonChannel8:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E6_Normal" )


	g_pRadioButtonChannel8:SetOverTex( "DLG_Common_New_Texture49.TGA", "High_Channel2_Over" )


	g_pRadioButtonChannel8:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "High_Channel2_Over" )


	g_pRadioButtonChannel8:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30,538)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel8:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30-9,538-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel8:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(30-9,538-9)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,538+56-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel8:SetCheckPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(31-9,539-9)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel8:SetGroupID( 1 )
	g_pRadioButtonChannel8:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )
	g_pRadioButtonChannel8:SetGuideDesc( STR_ID_2734 )




	g_pRadioButtonChannel9 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonChannel9 )

	g_pRadioButtonChannel9:SetFixOverByCheck( true )
	g_pRadioButtonChannel9:SetShowOffBGByCheck( true )

	g_pRadioButtonChannel9:SetName( "Channel8" )

	g_pRadioButtonChannel9:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E7_Normal" )


	g_pRadioButtonChannel9:SetOverTex( "DLG_Common_New_Texture49.TGA", "Gosoo_Channel1_Over" )


	g_pRadioButtonChannel9:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Gosoo_Channel1_Over" )


	g_pRadioButtonChannel9:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30,597)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel9:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30-9,597-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel9:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(30-9,597-9)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,597+56-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel9:SetCheckPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(31-9,598-9)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel9:SetGroupID( 1 )
	g_pRadioButtonChannel9:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )
	g_pRadioButtonChannel9:SetGuideDesc( STR_ID_2735 )





	g_pRadioButtonChannel10 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtonChannel10 )

	g_pRadioButtonChannel10:SetFixOverByCheck( true )
	g_pRadioButtonChannel10:SetShowOffBGByCheck( true )

	g_pRadioButtonChannel10:SetName( "Channel9" )

	g_pRadioButtonChannel10:SetNormalTex( "DLG_Common_New_Texture08.TGA", "E8_Normal" )


	g_pRadioButtonChannel10:SetOverTex( "DLG_Common_New_Texture49.TGA", "Gosoo_Channel2_Over" )


	g_pRadioButtonChannel10:SetCheckedTex( "DLG_Common_New_Texture49.TGA", "Gosoo_Channel2_Over" )


	g_pRadioButtonChannel10:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30,655)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel10:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(30-9,655-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel10:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(30-9,655-9)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(139-9,655+56-9)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel10:SetCheckPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(31-9,656-9)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButtonChannel10:SetGroupID( 1 ) 
	g_pRadioButtonChannel10:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_CHANNEL"] )



--]]
