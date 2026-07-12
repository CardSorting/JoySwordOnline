-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


		
--------------------------------------------------------------------------------



g_pRadioButtonOption_Community_Friend_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Friend_Button1 )

g_pRadioButtonOption_Community_Friend_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Friend_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Friend_Button1:SetName( "SOUCM_OPTION_COMMUNITY_DENY_FRIENDSHIP_ON" )

g_pRadioButtonOption_Community_Friend_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Friend_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Friend_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Friend_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,322)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,322+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,322)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonOption_Community_Friend_Button1:SetGroupID( 23 )
g_pRadioButtonOption_Community_Friend_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_FRIENDSHIP_ON"] ) 










g_pRadioButtonOption_Community_Friend_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Friend_Button2 )

g_pRadioButtonOption_Community_Friend_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Friend_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Friend_Button2:SetName( "SOUCM_OPTION_COMMUNITY_DENY_FRIENDSHIP_OFF" )

g_pRadioButtonOption_Community_Friend_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Friend_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Friend_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Friend_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,322)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,322+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,322)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Friend_Button2:SetGroupID( 23 )
g_pRadioButtonOption_Community_Friend_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_FRIENDSHIP_OFF"] ) 






--------------------------------------------------------------------------------



g_pRadioButtonOption_Community_ManToMan_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_ManToMan_Button1 )

g_pRadioButtonOption_Community_ManToMan_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_ManToMan_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_ManToMan_Button1:SetName( "SOUCM_OPTION_COMMUNITY_DENY_WHISPER_ON" )

g_pRadioButtonOption_Community_ManToMan_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pRadioButtonOption_Community_ManToMan_Button1:SetGroupID( 24 )
g_pRadioButtonOption_Community_ManToMan_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_WHISPER_ON"] ) 








g_pRadioButtonOption_Community_ManToMan_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_ManToMan_Button2 )

g_pRadioButtonOption_Community_ManToMan_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_ManToMan_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_ManToMan_Button2:SetName( "SOUCM_OPTION_COMMUNITY_DENY_WHISPER_OFF" )

g_pRadioButtonOption_Community_ManToMan_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button2:SetGroupID( 24 )
g_pRadioButtonOption_Community_ManToMan_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_WHISPER_OFF"] ) 










g_pRadioButtonOption_Community_ManToMan_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_ManToMan_Button3 )

g_pRadioButtonOption_Community_ManToMan_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_ManToMan_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_ManToMan_Button3:SetName( "SOUCM_OPTION_COMMUNITY_DENY_WHISPER_ONLY_FRIENDS" )

g_pRadioButtonOption_Community_ManToMan_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_ManToMan_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_ManToMan_Button3:SetGroupID( 24 )
g_pRadioButtonOption_Community_ManToMan_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_WHISPER_ONLY_FRIENDS"] ) 









--------------------------------------------------------------------------------



g_pRadioButtonOption_Community_Party_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Party_Button1 )

g_pRadioButtonOption_Community_Party_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Party_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Party_Button1:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PARTY_ON" )

g_pRadioButtonOption_Community_Party_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Party_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button1:SetGroupID( 25 )
g_pRadioButtonOption_Community_Party_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PARTY_ON"] ) 







g_pRadioButtonOption_Community_Party_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Party_Button2 )

g_pRadioButtonOption_Community_Party_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Party_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Party_Button2:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PARTY_OFF" )

g_pRadioButtonOption_Community_Party_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Party_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonOption_Community_Party_Button2:SetGroupID( 25 )
g_pRadioButtonOption_Community_Party_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PARTY_OFF"] ) 










g_pRadioButtonOption_Community_Party_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Party_Button3 )

g_pRadioButtonOption_Community_Party_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Party_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Party_Button3:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PARTY_ONLY_FRIENDS" )

g_pRadioButtonOption_Community_Party_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Party_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Party_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Party_Button3:SetGroupID( 25 )
g_pRadioButtonOption_Community_Party_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PARTY_ONLY_FRIENDS"] ) 





--------------------------------------------------------------------------------



g_pRadioButtonOption_Community_Trade_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Trade_Button1 )

g_pRadioButtonOption_Community_Trade_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Trade_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Trade_Button1:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_ON" )

g_pRadioButtonOption_Community_Trade_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Trade_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pRadioButtonOption_Community_Trade_Button1:SetGroupID( 26 )
g_pRadioButtonOption_Community_Trade_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_ON"] ) 









g_pRadioButtonOption_Community_Trade_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Trade_Button2 )

g_pRadioButtonOption_Community_Trade_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Trade_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Trade_Button2:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_OFF" )

g_pRadioButtonOption_Community_Trade_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Trade_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button2:SetGroupID( 26 )
g_pRadioButtonOption_Community_Trade_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_OFF"] ) 











g_pRadioButtonOption_Community_Trade_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Community_Trade_Button3 )

g_pRadioButtonOption_Community_Trade_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Community_Trade_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Community_Trade_Button3:SetName( "SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_ONLY_FRIENDS" )

g_pRadioButtonOption_Community_Trade_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Community_Trade_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Community_Trade_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Community_Trade_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pRadioButtonOption_Community_Trade_Button3:SetGroupID( 26 )
g_pRadioButtonOption_Community_Trade_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_DENY_PERSONAL_TRADE_ONLY_FRIENDS"] ) 















g_pStaticOption_Community_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOption_Community_Window )
g_pStaticOption_Community_Window:SetName( "Static_Option_Window_Community" )







g_pPictureNo_Friend= g_pUIDialog:CreatePicture()
g_pStaticOption_Community_Window:AddPicture( g_pPictureNo_Friend)

g_pPictureNo_Friend:SetTex( "DLG_Common_Texture09.tga", "No_Friend"  )

g_pPictureNo_Friend:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureNo_Chat= g_pUIDialog:CreatePicture()
g_pStaticOption_Community_Window:AddPicture( g_pPictureNo_Chat)

g_pPictureNo_Chat:SetTex( "DLG_Common_Texture09.tga", "No_Chat"  )

g_pPictureNo_Chat:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureNo_Party= g_pUIDialog:CreatePicture()
g_pStaticOption_Community_Window:AddPicture( g_pPictureNo_Party)

g_pPictureNo_Party:SetTex( "DLG_Common_Texture09.tga", "No_Party"  )

g_pPictureNo_Party:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureNo_Trade= g_pUIDialog:CreatePicture()
g_pStaticOption_Community_Window:AddPicture( g_pPictureNo_Trade)

g_pPictureNo_Trade:SetTex( "DLG_Common_Texture09.tga", "No_Trade"  )

g_pPictureNo_Trade:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









      -------------------------------폰트-----------------





    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2597,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,326)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2597,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,353)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2597,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,381)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2597,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,408)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 


    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2598,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,326)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }


    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2598,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,353)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }


    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2598,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,381)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_2598,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,408)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 




    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_1134,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,353)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }




    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_1134,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,381)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



    g_pStaticOption_Community_Window:AddString
    {
 	 MSG    		 = STR_ID_1134,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,408)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }









-- fix!! 일단 블랙리스트는 없음~
--[[ 
	g_pButtonBlacklist = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButtonBlacklist )
	g_pButtonBlacklist:SetName( "Blacklist" )
	g_pButtonBlacklist:SetNormalTex( "DLG_Menu_Button.TGA", "Blacklist_Normal" )

	g_pButtonBlacklist:SetOverTex( "DLG_Menu_Button.TGA", "Blacklist_Over" )

	g_pButtonBlacklist:SetDownTex( "DLG_Menu_Button.TGA", "Blacklist_Over" )

	g_pButtonBlacklist:SetNormalPoint
	{


		"LEFT_TOP		= D3DXVECTOR2(60,291)",
	  	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonBlacklist:SetOverPoint
	{


		"LEFT_TOP		= D3DXVECTOR2(60,291)",
	    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonBlacklist:SetDownPoint
	{
	     ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
		"LEFT_TOP		= D3DXVECTOR2(61,292)",
	 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonBlacklist:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY_OPEN_BLACKLIST"] )
--]]
