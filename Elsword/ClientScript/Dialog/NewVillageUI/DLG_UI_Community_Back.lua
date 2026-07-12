-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CLOSE"] )



g_pStaticcommunity = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticcommunity )
g_pStaticcommunity:SetName( "community" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 470,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 418,
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------title


----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "community" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(14,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 325,
	"LEFT_TOP		= D3DXVECTOR2(19,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticcommunity:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,417)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------------------   전체



g_pRadioButtonall = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonall )

g_pRadioButtonall:SetFixOverByCheck( true )
g_pRadioButtonall:SetShowOffBGByCheck( true )

g_pRadioButtonall:SetName( "all" )

g_pRadioButtonall:SetNormalTex( "DLG_UI_Button05.tga", "all_normal" )


g_pRadioButtonall:SetOverTex( "DLG_UI_Button05.tga", "all_over" )


g_pRadioButtonall:SetCheckedTex( "DLG_UI_Button05.tga", "all_down" )


g_pRadioButtonall:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonall:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonall:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(24,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(79,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonall:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(27,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonall:SetGroupID( 1 )
g_pRadioButtonall:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_FIELD"] )


--------친구

g_pRadioButtonfriend = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonfriend )


g_pRadioButtonfriend:SetEnable( true )

g_pRadioButtonfriend:SetFixOverByCheck( true )
g_pRadioButtonfriend:SetShowOffBGByCheck( true )

g_pRadioButtonfriend:SetName( "friend" )

g_pRadioButtonfriend:SetNormalTex( "DLG_UI_Button05.tga", "friend_normal" )


g_pRadioButtonfriend:SetOverTex( "DLG_UI_Button05.tga", "friend_over" )


g_pRadioButtonfriend:SetCheckedTex( "DLG_UI_Button05.tga", "friend_down" )


g_pRadioButtonfriend:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(76,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonfriend:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(76,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonfriend:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(78,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(130,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonfriend:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(79,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonfriend:SetGroupID( 1 )
g_pRadioButtonfriend:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_FRIEND"] )




--------길드
g_pRadioButtonguild = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonguild )

g_pRadioButtonguild:SetEnable( true )

g_pRadioButtonguild:SetFixOverByCheck( true )
g_pRadioButtonguild:SetShowOffBGByCheck( true )

g_pRadioButtonguild:SetName( "guild" )

g_pRadioButtonguild:SetNormalTex( "DLG_UI_Button05.tga", "guild_normal" )


g_pRadioButtonguild:SetOverTex( "DLG_UI_Button05.tga", "guild_over" )


g_pRadioButtonguild:SetCheckedTex( "DLG_UI_Button05.tga", "guild_down" )


g_pRadioButtonguild:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(128,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonguild:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(128,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonguild:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(131,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(182,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonguild:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(131,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonguild:SetGroupID( 1 )
g_pRadioButtonguild:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_GUILD"] )
g_pRadioButtonguild:SetEnable( false )




--------사제

g_pRadioButtondisciple = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtondisciple )
g_pRadioButtondisciple:SetShow( false )
g_pRadioButtondisciple:SetFixOverByCheck( true )
g_pRadioButtondisciple:SetShowOffBGByCheck( true )

g_pRadioButtondisciple:SetName( "disciple" )

g_pRadioButtondisciple:SetNormalTex( "DLG_UI_Button05.tga", "disciple_normal" )


g_pRadioButtondisciple:SetOverTex( "DLG_UI_Button05.tga", "disciple_over" )


g_pRadioButtondisciple:SetCheckedTex( "DLG_UI_Button05.tga", "disciple_down" )


g_pRadioButtondisciple:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtondisciple:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtondisciple:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(183,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(237,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtondisciple:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(183,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtondisciple:SetGroupID( 1 )
g_pRadioButtondisciple:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_DISCIPLE"] )


--------추천인

g_pRadioButtonReferee = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonReferee )

g_pRadioButtonReferee:SetShow( false )
g_pRadioButtonReferee:SetFixOverByCheck( true )
g_pRadioButtonReferee:SetShowOffBGByCheck( true )

g_pRadioButtonReferee:SetName( "Referee" )

g_pRadioButtonReferee:SetNormalTex( "DLG_UI_Button07.tga", "Referee_normal" )


g_pRadioButtonReferee:SetOverTex( "DLG_UI_Button07.tga", "Referee_over" )


g_pRadioButtonReferee:SetCheckedTex( "DLG_UI_Button07.tga", "Referee_down" )


g_pRadioButtonReferee:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(232,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonReferee:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(232,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonReferee:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(235,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonReferee:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(235,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonReferee:SetGroupID( 1 )
g_pRadioButtonReferee:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_REFEREE"] )



--IncludeLua( "DLG_UI_Community_Whole.lua" )

--IncludeLua( "DLG_UI_Community_Disciple.lua" )


--IncludeLua( "DLG_UI_Community_Guild.lua" )

--IncludeLua( "DLG_UI_Community_Friend.lua" )






--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(277,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(273,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(273+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CLOSE"] )
--[[ #define ADDED_RELATIONSHIP_SYSTEM
INT_WEDDING_MOVE_X = -10
--------솔로

g_pRadioButtonRelationSolo = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRelationSolo )

g_pRadioButtonRelationSolo:SetFixOverByCheck( true )
g_pRadioButtonRelationSolo:SetShowOffBGByCheck( true )

g_pRadioButtonRelationSolo:SetName( "relationSolo" )

g_pRadioButtonRelationSolo:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Solo_Normal" )


g_pRadioButtonRelationSolo:SetOverTex( "DLG_UI_Button21_NEW.tga", "Solo_Over" )


g_pRadioButtonRelationSolo:SetCheckedTex( "DLG_UI_Button21_NEW.tga", "Solo_Down" )


g_pRadioButtonRelationSolo:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationSolo:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationSolo:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(194+46+INT_WEDDING_MOVE_X,52+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationSolo:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,50)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonRelationSolo:SetGroupID( 1 )
g_pRadioButtonRelationSolo:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_RELATION"] )
g_pRadioButtonRelationSolo:SetShow ( false )





--------커플

g_pRadioButtonRelationCouple = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRelationCouple )

g_pRadioButtonRelationCouple:SetFixOverByCheck( true )
g_pRadioButtonRelationCouple:SetShowOffBGByCheck( true )

g_pRadioButtonRelationCouple:SetName( "relationCouple" )

g_pRadioButtonRelationCouple:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Couple_Normal" )


g_pRadioButtonRelationCouple:SetOverTex( "DLG_UI_Button21_NEW.tga", "Couple_Over" )


g_pRadioButtonRelationCouple:SetCheckedTex( "DLG_UI_Button21_NEW.tga", "Couple_Down" )


g_pRadioButtonRelationCouple:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationCouple:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationCouple:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(194+46+INT_WEDDING_MOVE_X,52+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationCouple:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,50)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonRelationCouple:SetGroupID( 1 )
g_pRadioButtonRelationCouple:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_RELATION"] )
g_pRadioButtonRelationCouple:SetShow ( false )


--------결혼

g_pRadioButtonRelationMarried = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRelationMarried )

g_pRadioButtonRelationMarried:SetFixOverByCheck( true )
g_pRadioButtonRelationMarried:SetShowOffBGByCheck( true )

g_pRadioButtonRelationMarried:SetName( "relationMarried" )

g_pRadioButtonRelationMarried:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Marriage_Normal" )


g_pRadioButtonRelationMarried:SetOverTex( "DLG_UI_Button21_NEW.tga", "Marriage_Over" )


g_pRadioButtonRelationMarried:SetCheckedTex( "DLG_UI_Button21_NEW.tga", "Marriage_Down" )


g_pRadioButtonRelationMarried:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationMarried:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationMarried:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(194+46+INT_WEDDING_MOVE_X,52+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRelationMarried:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(194+INT_WEDDING_MOVE_X,50)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonRelationMarried:SetGroupID( 1 )
g_pRadioButtonRelationMarried:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_RELATION"] )
g_pRadioButtonRelationMarried:SetShow ( false )
--]]

--------추천인 이벤트
g_pRadioButtonRecruit = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRecruit )

g_pRadioButtonRecruit:SetShow( false )
g_pRadioButtonRecruit:SetFixOverByCheck( true )
g_pRadioButtonRecruit:SetShowOffBGByCheck( true )

g_pRadioButtonRecruit:SetName( "Recruit" )
g_pRadioButtonRecruit:SetNormalTex( "DLG_UI_Button07.tga", "Referee_normal" )
g_pRadioButtonRecruit:SetOverTex( "DLG_UI_Button07.tga", "Referee_over" )
g_pRadioButtonRecruit:SetCheckedTex( "DLG_UI_Button07.tga", "Referee_down" )

g_pRadioButtonRecruit:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(232,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRecruit:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(232,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRecruit:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(235,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRecruit:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(235,48)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRecruit:SetGroupID( 1 )
g_pRadioButtonRecruit:SetCustomMsgChecked( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TAB_RECRUIT"] )
g_pRadioButtonRecruit:SetShow( false )
