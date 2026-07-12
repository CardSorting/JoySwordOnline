-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




function QuickButtonAnim( button )

	button:SetOverAnimTex
	{	
		"POS			= D3DXVECTOR2(-2,-2)",
		SequenceID		= 0,
		fShowTime		= 0.07,
	}

	button:SetOverAnimTex
	{	
		"POS			= D3DXVECTOR2(1,1)",
		SequenceID		= 1,
		fShowTime		= 0.07,
	}

	button:SetOverAnimTex
	{	
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 2,
		fShowTime		= 0.07,
		
		bEndTexChange	= TRUE,
	}

end





----------------------(팀전 버튼)-------------------------------
g_pButtonPVP_Lobby_TeamButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Lobby_TeamButton )
g_pButtonPVP_Lobby_TeamButton:SetName( "ButtonPVP_Lobby_TeamButton" )


g_pButtonPVP_Lobby_TeamButton:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )

g_pButtonPVP_Lobby_TeamButton:SetOverTex( "DLG_Common_New_Texture08.TGA", "TeamMatch_Over" )

QuickButtonAnim( g_pButtonPVP_Lobby_TeamButton )


g_pButtonPVP_Lobby_TeamButton:SetDownTex( "DLG_Common_New_Texture08.TGA", "TeamMatch_Over" )

g_pButtonPVP_Lobby_TeamButton:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(324,43)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(324+192,43+76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_TeamButton:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(324,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_TeamButton:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(325,44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_TeamButton:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SHORTCUT_TEAM_MATCH"] )
















----------------------(팀데스 버튼)-------------------------------
g_pButtonPVP_Lobby_TeamDeath_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Lobby_TeamDeath_Button )
g_pButtonPVP_Lobby_TeamDeath_Button:SetName( "ButtonPVP_Lobby_TeamDeath_Button" )


g_pButtonPVP_Lobby_TeamDeath_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )

g_pButtonPVP_Lobby_TeamDeath_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "TeamDeathMatch_Over" )

QuickButtonAnim( g_pButtonPVP_Lobby_TeamDeath_Button )

g_pButtonPVP_Lobby_TeamDeath_Button:SetDownTex( "DLG_Common_New_Texture08.TGA", "TeamDeathMatch_Over" )

g_pButtonPVP_Lobby_TeamDeath_Button:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(515,43)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(515+192,43+76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_TeamDeath_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(515,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_TeamDeath_Button:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(516,44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPVP_Lobby_TeamDeath_Button:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SHORTCUT_DEATH_MATCH"] )









----------------------(서바 버튼)-------------------------------
g_pButtonPVP_Lobby_Survival_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Lobby_Survival_Button )
g_pButtonPVP_Lobby_Survival_Button:SetName( "ButtonPVP_Lobby_Survival_Button" )

g_pButtonPVP_Lobby_Survival_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )

g_pButtonPVP_Lobby_Survival_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "Survival_Over" )

QuickButtonAnim( g_pButtonPVP_Lobby_Survival_Button )

g_pButtonPVP_Lobby_Survival_Button:SetDownTex( "DLG_Common_New_Texture08.TGA", "Survival_Over" )

g_pButtonPVP_Lobby_Survival_Button:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(696,43)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(696+192,43+76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_Survival_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(696,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_Survival_Button:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(696,44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Lobby_Survival_Button:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SHORTCUT_INTRUDE_DEATH_MATCH"] )






g_pButtonCreate_Room = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCreate_Room )
g_pButtonCreate_Room:SetName( "ButtonCreate_Room" )




g_pButtonCreate_Room:SetNormalTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Normal" )

g_pButtonCreate_Room:SetOverTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Over" )

g_pButtonCreate_Room:SetDownTex( "DLG_Common_New_Texture08.TGA", "CreateRoom_Button_Over" )

g_pButtonCreate_Room:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(553,657)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCreate_Room:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(553,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCreate_Room:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(554,658)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonCreate_Room:SetCustomMsgMouseUp( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_OPEN_CREATE_ROOM_DLG"] )





----------------(방리스트 모드 라디오 버튼)

g_pRadioButtonTotal_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonTotal_Button )

g_pRadioButtonTotal_Button:SetFixOverByCheck( true )
g_pRadioButtonTotal_Button:SetShowOffBGByCheck( true )

g_pRadioButtonTotal_Button:SetName( "RadioButtonTotal_Button" )


g_pRadioButtonTotal_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )


g_pRadioButtonTotal_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "Total_Tab_Over" )


g_pRadioButtonTotal_Button:SetCheckedTex( "DLG_Common_New_Texture08.TGA", "Total_Tab_Over" )


g_pRadioButtonTotal_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(281,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTotal_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(281,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTotal_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(281,145)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(281+119,145+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTotal_Button:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(281,145)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTotal_Button:SetGroupID( 2 )
g_pRadioButtonTotal_Button:SetChecked( true )
g_pRadioButtonTotal_Button:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_GAMETYPE_ALL"] ) 




g_pRadioButtonTeam_Button_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonTeam_Button_Button )

g_pRadioButtonTeam_Button_Button:SetFixOverByCheck( true )
g_pRadioButtonTeam_Button_Button:SetShowOffBGByCheck( true )

g_pRadioButtonTeam_Button_Button:SetName( "RadioButtonTeam_Button_Button" )

g_pRadioButtonTeam_Button_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )


g_pRadioButtonTeam_Button_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "TeamMatch_Tab_Over" )


g_pRadioButtonTeam_Button_Button:SetCheckedTex( "DLG_Common_New_Texture08.TGA", "TeamMatch_Tab_Over" )


g_pRadioButtonTeam_Button_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(397,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam_Button_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(396,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam_Button_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(396,145)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(396+119,145+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam_Button_Button:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(396,145)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeam_Button_Button:SetGroupID( 2 )
g_pRadioButtonTeam_Button_Button:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_GAMETYPE_TEAM_MATCH"] ) 




g_pRadioButtonTeamDeath_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonTeamDeath_Button )

g_pRadioButtonTeamDeath_Button:SetFixOverByCheck( true )
g_pRadioButtonTeamDeath_Button:SetShowOffBGByCheck( true )

g_pRadioButtonTeamDeath_Button:SetName( "RadioButtonTeamDeath_Button" )


g_pRadioButtonTeamDeath_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )


g_pRadioButtonTeamDeath_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "TeamDeathMatch_Tab_Over" )


g_pRadioButtonTeamDeath_Button:SetCheckedTex( "DLG_Common_New_Texture08.TGA", "TeamDeathMatch_Tab_Over" )


g_pRadioButtonTeamDeath_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(397,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeamDeath_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(511,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeamDeath_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(511,145)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(511+119,145+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeamDeath_Button:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(511,145)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonTeamDeath_Button:SetGroupID( 2 )
g_pRadioButtonTeamDeath_Button:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_GAMETYPE_DEATH_MATCH"] ) 



g_pRadioButtonSurvival_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonSurvival_Button )

g_pRadioButtonSurvival_Button:SetFixOverByCheck( true )
g_pRadioButtonSurvival_Button:SetShowOffBGByCheck( true )

g_pRadioButtonSurvival_Button:SetName( "RadioButtonSurvival_Button" )

g_pRadioButtonSurvival_Button:SetNormalTex( "DLG_Common_New_Texture03.TGA", "INVISIBLE" )


g_pRadioButtonSurvival_Button:SetOverTex( "DLG_Common_New_Texture08.TGA", "Survival_Tab_Over" )


g_pRadioButtonSurvival_Button:SetCheckedTex( "DLG_Common_New_Texture08.TGA", "Survival_Tab_Over" )


g_pRadioButtonSurvival_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(397,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(626,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(626,145)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(626+119,145+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival_Button:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(626,145)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonSurvival_Button:SetGroupID( 2 )
g_pRadioButtonSurvival_Button:SetCustomMsgChecked( PVP_LOBBY_UI_CUSTORM_MSG["PLUCM_SELECT_GAMETYPE_INTRUDE_DEATH_MATCH"] ) 


















