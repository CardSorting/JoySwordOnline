-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatic_emulate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_emulate )
g_pStatic_emulate:SetName( "emulate" )

----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(3,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 993,
	"LEFT_TOP		= D3DXVECTOR2(15,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(1010,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------gray BG 1

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 127,
	"LEFT_TOP		= D3DXVECTOR2(25,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_right" )

g_pPicture_bg2:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(153,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------GRAY BG  2

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_left" )

g_pPicture_bg3:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(166,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 824,
	"LEFT_TOP		= D3DXVECTOR2(174,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_right" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(999,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------ BG2

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_left" )

g_pPicture_bg4:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(172,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_X = 810,
	"LEFT_TOP		= D3DXVECTOR2(181,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_right" )

g_pPicture_bg4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(992,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------ 대전 종류    ----------------------------------->>   활성화 상태

---------전체

g_pRadioButton_all = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_all )

g_pRadioButton_all:SetFixOverByCheck( true )
g_pRadioButton_all:SetShowOffBGByCheck( true )

g_pRadioButton_all:SetName( "UI_PvP_Lobby_All_Tab" )

g_pRadioButton_all:SetNormalTex( "DLG_UI_Button02.tga", "all_normal" )


g_pRadioButton_all:SetOverTex( "DLG_UI_Button02.tga", "all_over" )


g_pRadioButton_all:SetCheckedTex( "DLG_UI_Button02.tga", "all_down" )


g_pRadioButton_all:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(177,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_all:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(177,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_all:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(180,74)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(249,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_all:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(180,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_all:SetGroupID( 1 )
g_pRadioButton_all:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_GAMETYPE_ALL"] ) 



---------팀 매치

g_pRadioButton_team = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_team )

g_pRadioButton_team:SetFixOverByCheck( true )
g_pRadioButton_team:SetShowOffBGByCheck( true )

g_pRadioButton_team:SetName( "UI_PvP_Lobby_Team_Tab" )

g_pRadioButton_team:SetNormalTex( "DLG_UI_Button02.tga", "team_normal" )


g_pRadioButton_team:SetOverTex( "DLG_UI_Button02.tga", "team_over" )


g_pRadioButton_team:SetCheckedTex( "DLG_UI_Button02.tga", "team_down" )


g_pRadioButton_team:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(316,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(248,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_team:SetGroupID( 1 )
g_pRadioButton_team:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_GAMETYPE_TEAM"] ) 



---------------팀 데스매치


g_pRadioButton_death = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_death )

g_pRadioButton_death:SetFixOverByCheck( true )
g_pRadioButton_death:SetShowOffBGByCheck( true )

g_pRadioButton_death:SetName( "UI_PvP_Lobby_TeamDeath_Tab" )

g_pRadioButton_death:SetNormalTex( "DLG_UI_Button02.tga", "death_normal" )


g_pRadioButton_death:SetOverTex( "DLG_UI_Button02.tga", "death_over" )


g_pRadioButton_death:SetCheckedTex( "DLG_UI_Button02.tga", "death_down" )


g_pRadioButton_death:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(313,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(384,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(316,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_death:SetGroupID( 1 )
g_pRadioButton_death:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_GAMETYPE_TEAM_DEATH"] ) 



---서바이벌


g_pRadioButton_survival = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_survival )

g_pRadioButton_survival:SetFixOverByCheck( true )
g_pRadioButton_survival:SetShowOffBGByCheck( true )

g_pRadioButton_survival:SetName( "UI_PvP_Lobby_Survival_Tab" )

g_pRadioButton_survival:SetNormalTex( "DLG_UI_Button02.tga", "survival_normal" )


g_pRadioButton_survival:SetOverTex( "DLG_UI_Button02.tga", "survival_over" )


g_pRadioButton_survival:SetCheckedTex( "DLG_UI_Button02.tga", "survival_down" )


g_pRadioButton_survival:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(381,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(381,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(381,71)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(453,104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(384,68)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_survival:SetGroupID( 1 )
g_pRadioButton_survival:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_GAMETYPE_SURVIVAL"] ) 



---------------title

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Title01.TGA", "emulate" )

g_pPicture_bg5:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(17,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------- info

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Common_Texture02.TGA", "unlock" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(191,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "situation" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(219,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "game_form" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(260,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "staff_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(322,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "kill" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(359,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "bang_name" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(396,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Common_Texture02.TGA", "unlock" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(595,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "situation" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(624,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "game_form" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(664,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "staff_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(727,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "kill" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(765,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01.TGA", "bang_name" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(801,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------- bar



g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 135,
	"LEFT_TOP		= D3DXVECTOR2(21,151)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_X = 135,
	"LEFT_TOP		= D3DXVECTOR2(21,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_X = 996,
	"LEFT_TOP		= D3DXVECTOR2(14,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line4:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(209,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line5:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(252,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(315,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar)

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(352,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(388,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(614,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(657,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(720,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(757,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(793,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------  채널   ----------------------------->    비활성   상태일 때 

-- 연습 
g_pStatic_Practice_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Practice_Inactive )
g_pStatic_Practice_Inactive:SetName( "ChannelInactive6" )

g_pPicture_practice = g_pUIDialog:CreatePicture()
g_pStatic_Practice_Inactive:AddPicture( g_pPicture_practice )
													   
g_pPicture_practice:SetTex( "DLG_UI_Common_Texture02.TGA", "practice_noactive" )

g_pPicture_practice:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 자유 
g_pStatic_Free_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Free_Inactive )
g_pStatic_Free_Inactive:SetName( "ChannelInactive0" )

g_pPicture_free = g_pUIDialog:CreatePicture()
g_pStatic_Free_Inactive:AddPicture( g_pPicture_free )

g_pPicture_free:SetTex( "DLG_UI_Common_Texture02.TGA", "free_noactive" )

g_pPicture_free:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 훈련
g_pStatic_Training_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Training_Inactive )
g_pStatic_Training_Inactive:SetName( "ChannelInactive1" )
 
g_pPicture_training = g_pUIDialog:CreatePicture()
g_pStatic_Training_Inactive:AddPicture( g_pPicture_training )

g_pPicture_training:SetTex( "DLG_UI_Common_Texture02.TGA", "training_noactive" )

g_pPicture_training:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 초보1
g_pStatic_Beginner1_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Beginner1_Inactive )
g_pStatic_Beginner1_Inactive:SetName( "ChannelInactive2" )
 
g_pPicture_primer = g_pUIDialog:CreatePicture()
g_pStatic_Beginner1_Inactive:AddPicture( g_pPicture_primer )

g_pPicture_primer:SetTex( "DLG_UI_Common_Texture02.TGA", "primer1_noactive" )

g_pPicture_primer:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 초보2
g_pStatic_Beginner2_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Beginner2_Inactive )
g_pStatic_Beginner2_Inactive:SetName( "ChannelInactive3" )
  
g_pPicture_primer = g_pUIDialog:CreatePicture()
g_pStatic_Beginner2_Inactive:AddPicture( g_pPicture_primer )

g_pPicture_primer:SetTex( "DLG_UI_Common_Texture02.TGA", "primer2_noactive" )

g_pPicture_primer:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 일반1 
g_pStatic_Normal_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Normal_Inactive )
g_pStatic_Normal_Inactive:SetName( "ChannelInactive4" )

g_pPicture_usual = g_pUIDialog:CreatePicture()
g_pStatic_Normal_Inactive:AddPicture( g_pPicture_usual )

g_pPicture_usual:SetTex( "DLG_UI_Common_Texture02.TGA", "usual1_noactive" )

g_pPicture_usual:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,297)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 대회
g_pStatic_Tournament_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Tournament_Inactive )
g_pStatic_Tournament_Inactive:SetName( "ChannelInactive5" ) 

g_pPicture_match = g_pUIDialog:CreatePicture()
g_pStatic_Tournament_Inactive:AddPicture( g_pPicture_match )

g_pPicture_match:SetTex( "DLG_UI_Common_Texture02.TGA", "match_noactive" )

g_pPicture_match:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,251+46+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------채널  활성화 버튼

------연습

g_pRadioButton_practice = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_practice )

g_pRadioButton_practice:SetFixOverByCheck( true )
g_pRadioButton_practice:SetShowOffBGByCheck( true )

g_pRadioButton_practice:SetName( "Channel6" )
g_pRadioButton_practice:AddDummyInt( PVP_CHANNEL_CLASS["PCC_PLAY"] )
g_pRadioButton_practice:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
g_pRadioButton_practice:SetGuideDesc( STR_ID_2714 )

g_pRadioButton_practice:SetNormalTex( "DLG_UI_Button02.tga", "practice_normal" )


g_pRadioButton_practice:SetOverTex( "DLG_UI_Button02.tga", "practice_over" )


g_pRadioButton_practice:SetCheckedTex( "DLG_UI_Button02.tga", "practice_over" )


g_pRadioButton_practice:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_practice:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_practice:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,59)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_practice:SetCheckPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,56+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_practice:SetGroupID( 2 )


------자유



g_pRadioButton_free = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_free )

g_pRadioButton_free:SetFixOverByCheck( true )
g_pRadioButton_free:SetShowOffBGByCheck( true )

g_pRadioButton_free:SetName( "Channel0" )
g_pRadioButton_free:AddDummyInt( PVP_CHANNEL_CLASS["PCC_FREE"] )
g_pRadioButton_free:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
g_pRadioButton_free:SetGuideDesc( STR_ID_2715 )

g_pRadioButton_free:SetNormalTex( "DLG_UI_Button02.tga", "free_normal" )


g_pRadioButton_free:SetOverTex( "DLG_UI_Button02.tga", "free_over" )


g_pRadioButton_free:SetCheckedTex( "DLG_UI_Button02.tga", "free_over" )


g_pRadioButton_free:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_free:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_free:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,105)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,149)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_free:SetCheckPoint
{
      ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,102+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_free:SetGroupID( 2 )


-----훈련

g_pRadioButton_training = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_training )

g_pRadioButton_training:SetFixOverByCheck( true )
g_pRadioButton_training:SetShowOffBGByCheck( true )

g_pRadioButton_training:SetName( "Channel1" )
g_pRadioButton_training:AddDummyInt( PVP_CHANNEL_CLASS["PCC_RECRUIT"] )
g_pRadioButton_training:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
ChannelGuide1 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_RECRUIT"], PVP_EMBLEM["PE_GUARDS"] - 1 )
g_pRadioButton_training:SetGuideDescByString( ChannelGuide1 )

g_pRadioButton_training:SetNormalTex( "DLG_UI_Button02.tga", "training_normal" )


g_pRadioButton_training:SetOverTex( "DLG_UI_Button02.tga", "training_over" )


g_pRadioButton_training:SetCheckedTex( "DLG_UI_Button02.tga", "training_over" )


g_pRadioButton_training:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_training:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,152)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_training:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,155)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_training:SetCheckPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,152+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_training:SetGroupID( 2 )



--------------초보 1

g_pRadioButton_primer1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_primer1 )

g_pRadioButton_primer1:SetFixOverByCheck( true )
g_pRadioButton_primer1:SetShowOffBGByCheck( true )

g_pRadioButton_primer1:SetName( "Channel2" )
g_pRadioButton_primer1:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E1"] )
g_pRadioButton_primer1:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
ChannelGuide2 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_RECRUIT"], PVP_EMBLEM["PE_MERCENARY"] - 1 )
g_pRadioButton_primer1:SetGuideDescByString( ChannelGuide2 )

g_pRadioButton_primer1:SetNormalTex( "DLG_UI_Button02.tga", "primer1_normal" )


g_pRadioButton_primer1:SetOverTex( "DLG_UI_Button02.tga", "primer1_over" )


g_pRadioButton_primer1:SetCheckedTex( "DLG_UI_Button02.tga", "primer1_over" )


g_pRadioButton_primer1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,201)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer1:SetCheckPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,198+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_primer1:SetGroupID( 2 )


----초보 2


g_pRadioButton_primer2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_primer2 )

g_pRadioButton_primer2:SetFixOverByCheck( true )
g_pRadioButton_primer2:SetShowOffBGByCheck( true )

g_pRadioButton_primer2:SetName( "Channel3" )
g_pRadioButton_primer2:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E2"] )
g_pRadioButton_primer2:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
ChannelGuide3 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_GUARDS"], PVP_EMBLEM["PE_KNIGHTS"] - 1 )
g_pRadioButton_primer2:SetGuideDescByString( ChannelGuide3 )

g_pRadioButton_primer2:SetNormalTex( "DLG_UI_Button02.tga", "primer2_normal" )


g_pRadioButton_primer2:SetOverTex( "DLG_UI_Button02.tga", "primer2_over" )


g_pRadioButton_primer2:SetCheckedTex( "DLG_UI_Button02.tga", "primer2_over" )


g_pRadioButton_primer2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,251)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,251)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,295)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_primer2:SetCheckPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,248+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_primer2:SetGroupID( 2 )


----일반1

g_pRadioButton_usual1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_usual1 )

g_pRadioButton_usual1:SetFixOverByCheck( true )
g_pRadioButton_usual1:SetShowOffBGByCheck( true )

g_pRadioButton_usual1:SetName( "Channel4" )
g_pRadioButton_usual1:AddDummyInt( PVP_CHANNEL_CLASS["PCC_E3"] )
g_pRadioButton_usual1:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
ChannelGuide4 = string.format( "VP: %d - %d", PVP_EMBLEM["PE_MERCENARY"], PVP_EMBLEM["PE_END"] - 1 )
g_pRadioButton_usual1:SetGuideDescByString( ChannelGuide4 )

g_pRadioButton_usual1:SetNormalTex( "DLG_UI_Button02.tga", "usual1_normal" )


g_pRadioButton_usual1:SetOverTex( "DLG_UI_Button02.tga", "usual1_over" )


g_pRadioButton_usual1:SetCheckedTex( "DLG_UI_Button02.tga", "usual1_over" )


g_pRadioButton_usual1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,297)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_usual1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_usual1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,297)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,341)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_usual1:SetCheckPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,294+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_usual1:SetGroupID( 2 )



--------대회


g_pRadioButton_match = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_match )

g_pRadioButton_match:SetFixOverByCheck( true )
g_pRadioButton_match:SetShowOffBGByCheck( true )

g_pRadioButton_match:SetName( "Channel5" )
g_pRadioButton_match:AddDummyInt( PVP_CHANNEL_CLASS["PCC_TOURNAMENT"] )
g_pRadioButton_match:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_SELECT_CHANNEL"] )
--ChannelGuide5 = string.format( "토요일 정오 12시~오후 5시" )
--g_pRadioButton_match:SetGuideDescByString( ChannelGuide5 )

g_pRadioButton_match:SetNormalTex( "DLG_UI_Button02.tga", "match_normal" )


g_pRadioButton_match:SetOverTex( "DLG_UI_Button02.tga", "match_over" )


g_pRadioButton_match:SetCheckedTex( "DLG_UI_Button02.tga", "match_over" )


g_pRadioButton_match:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,343)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_match:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,340)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_match:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(21,343)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(157,387)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_match:SetCheckPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,340+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_match:SetGroupID( 2 )



g_pPicture_Disable1 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable1 )

g_pPicture_Disable1:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Disable2 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable2 )

g_pPicture_Disable2:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Disable3 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable3 )

g_pPicture_Disable3:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Disable4 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable4 )

g_pPicture_Disable4:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Disable5 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable5)

g_pPicture_Disable5:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140+42+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Disable6 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable6)

g_pPicture_Disable6:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185,140+42+42+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Disable7 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable7 )

g_pPicture_Disable7:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Disable8 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable8 )

g_pPicture_Disable8:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Disable9 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable9 )

g_pPicture_Disable9:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Disable10 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable10 )

g_pPicture_Disable10:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Disable11 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable11)

g_pPicture_Disable11:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140+42+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Disable12 = g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_Disable12)

g_pPicture_Disable12:SetTex( "DLG_UI_BUTTON02.TGA", "room_normal" )

g_pPicture_Disable12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(185+404,140+42+42+42+42+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-----------------------------------------------------
-- 방 리스트
-----------------------------------------------------
-- 제일 왼쪽 위에 있는 방리스트 버튼의 왼쪽 위 위치 : 이게 기준점입니다.
-- 기준점 기준으로 다른 스태틱/버튼들의 위치가 계산되어 있습니다.
 
LEFT_TOP_X = 185
LEFT_TOP_Y = 140

DISTANCE_X = 404
DISTANCE_Y = 42

ListID = 0
tempX = 0
tempY = 0


for i = 0, 5 do

	for j = 0, 1 do

			tempX = LEFT_TOP_X + (j * DISTANCE_X)
			tempY = LEFT_TOP_Y + (i * DISTANCE_Y)

			-- 버튼 ( 이름은 ListButton0 1 2.. )
			pButton_List = g_pUIDialog:CreateButton()
			g_pUIDialog:AddControl( pButton_List )
			ButtonName = string.format( "ListButton%d", ListID )
			pButton_List:SetName( ButtonName )

			pButton_List:SetNormalTex( "DLG_UI_BUTTON02.tga", "room_normal" )
			pButton_List:SetOverTex( "DLG_UI_BUTTON02.tga", "room_over" )
			pButton_List:SetNormalPoint
			{
	
				"LEFT_TOP		= D3DXVECTOR2(tempX,tempY)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			pButton_List:SetOverPoint
			{
	
				"LEFT_TOP		= D3DXVECTOR2(tempX-1,tempY-1)",

				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			pButton_List:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_JOIN_ROOM"] )

			-- 인덱스용 더미 인트를 넣어둔다
			pButton_List:AddDummyInt( ListID )

			-- 스태틱 만들고 ( 이름은 ListStatic0 1 2.. )
			g_pStatic_list = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStatic_list )
			StaticName = string.format( "ListStatic%d", ListID )
			g_pStatic_list:SetName( StaticName )

			-- 자물쇠 달고 ( Picture0 )
			g_pPicture_unlock1 = g_pUIDialog:CreatePicture()
			g_pStatic_list:AddPicture( g_pPicture_unlock1 )
			g_pPicture_unlock1:SetTex( "DLG_UI_Common_Texture02.TGA", "unlock" )
			g_pPicture_unlock1:SetPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(tempX + 6, tempY + 10)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			-- 상태 표시하고( Picture1 )
			g_pPicture_situation = g_pUIDialog:CreatePicture()
			g_pStatic_list:AddPicture( g_pPicture_situation )
			g_pPicture_situation:SetTex( "DLG_UI_Title01.TGA", "wait" )
			g_pPicture_situation:SetPoint
			{
    
				"LEFT_TOP		= D3DXVECTOR2(tempX + 30, tempY + 13)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--[[
			-- 게임방식 표시하고 ( Picture2 )
			-- 게임방식 표시를 String으로 변경합니다 
			g_pPicture_method = g_pUIDialog:CreatePicture()
			g_pStatic_list:AddPicture( g_pPicture_method )
			g_pPicture_method:SetTex( "DLG_UI_Title01.TGA", "death_match" )
			g_pPicture_method:SetPoint
			{
    				"LEFT_TOP		= D3DXVECTOR2(tempX + 76, tempY + 16)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--]]
			-- 인원수 표시하고 ( String0 )
			g_pStatic_list:AddString
			{
				-- MSG 			= "8/8",
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
				"POS 			= D3DXVECTOR2(tempX + 149,tempY + 14)",
				"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
				"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			}

			-- 킬수 표시하고 ( String1 )
			g_pStatic_list:AddString
			{
				-- MSG 			= "24",
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
				"POS 			= D3DXVECTOR2(tempX + 186,tempY + 14)",
				"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
				"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			}

			-- 방제 표시하고 ( String2 )
			g_pStatic_list:AddString
			{
				MSG 			= STR_ID_1276,
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(tempX + 211,tempY + 14)",
				"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
				"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			}
			
			-- 게임방식 표시하고 ( String3 )
			-- String 색상은 현재 하드코딩 되어 있습니다. 이쪽에서 수정하지 않아도 됩니다. 
			-- 색상 팀매치 0099FF, 팀데스 009900, 서바이벌 E50000 
			g_pStatic_list:AddString
			{
				MSG 			= STR_ID_1143,
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(tempX + 76, tempY + 16)",
				"COLOR			= D3DXCOLOR(0.0, 0.6, 1.0, 1.0)",
				"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			}

			ListID = ListID + 1

	end

end



----------------- 비활성 상태 바로가기 및 선택 탭  

-- 팀매치  
g_pStatic_TeamInactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TeamInactive )
g_pStatic_TeamInactive:SetName( "Static_Team_Inactive" )

g_pPicture_team = g_pUIDialog:CreatePicture()
g_pStatic_TeamInactive:AddPicture( g_pPicture_team )

g_pPicture_team:SetTex( "DLG_UI_Common_Texture02.TGA", "team_noactive" )

g_pPicture_team:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(657,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
                   
g_pPicture_team = g_pUIDialog:CreatePicture()
g_pStatic_TeamInactive:AddPicture( g_pPicture_team )

g_pPicture_team:SetTex( "DLG_UI_Common_Texture02.TGA", "team_match_noactive" )

g_pPicture_team:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(245,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 팀데스매치  
g_pStatic_TeamDeathInactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TeamDeathInactive )
g_pStatic_TeamDeathInactive:SetName( "Static_TeamDeath_Inactive" )

g_pPicture_death = g_pUIDialog:CreatePicture()
g_pStatic_TeamDeathInactive:AddPicture( g_pPicture_death )

g_pPicture_death:SetTex( "DLG_UI_Common_Texture02.TGA", "death_noactive" )

g_pPicture_death:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(771,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_death = g_pUIDialog:CreatePicture()
g_pStatic_TeamDeathInactive:AddPicture( g_pPicture_death )

g_pPicture_death:SetTex( "DLG_UI_Common_Texture02.TGA", "death_match_noactive" )

g_pPicture_death:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(313,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 서바이벌 

g_pStatic_Survival_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Survival_Inactive )
g_pStatic_Survival_Inactive:SetName( "Static_Survival_Inactive" )

g_pPicture_survival = g_pUIDialog:CreatePicture()
g_pStatic_Survival_Inactive:AddPicture( g_pPicture_survival )

g_pPicture_survival:SetTex( "DLG_UI_Common_Texture02.TGA", "survival_noactive" )

g_pPicture_survival:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(885,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_survival = g_pUIDialog:CreatePicture()
g_pStatic_Survival_Inactive:AddPicture( g_pPicture_survival )

g_pPicture_survival:SetTex( "DLG_UI_Common_Texture02.TGA", "survival_match_noactive" )

g_pPicture_survival:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(381,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 전체 
g_pStatic_All_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_All_Inactive )
g_pStatic_All_Inactive:SetName( "Static_All_Inactive" )


g_pPicture_view = g_pUIDialog:CreatePicture()
g_pStatic_All_Inactive:AddPicture( g_pPicture_view )

g_pPicture_view:SetTex( "DLG_UI_Common_Texture02.TGA", "all_view_noactive" )

g_pPicture_view:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(177,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------방 만들기 버튼


g_pButtonroom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonroom )
g_pButtonroom:SetName( "UI_PvP_Lobby_Create_Room" )
g_pButtonroom:SetNormalTex( "DLG_UI_BUTTON02.tga", "make_normal" )

g_pButtonroom:SetOverTex( "DLG_UI_BUTTON02.tga", "make_over" )

g_pButtonroom:SetDownTex( "DLG_UI_BUTTON02.tga", "make_over" )

g_pButtonroom:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(852,397)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(848,393)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(848+1,393+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATE_ROOM"] )





---------------------------- 바로가기 버튼



g_pButtonteam_go = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonteam_go )
g_pButtonteam_go:SetName( "UI_PvP_Lobby_Team_Quickstart" )
g_pButtonteam_go:SetNormalTex( "DLG_UI_BUTTON02.tga", "team_go_normal" )

g_pButtonteam_go:SetOverTex( "DLG_UI_BUTTON02.tga", "team_go_over" )

g_pButtonteam_go:SetDownTex( "DLG_UI_BUTTON02.tga", "team_go_over" )

g_pButtonteam_go:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(657,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonteam_go:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(655,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonteam_go:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(655+1,54+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonteam_go:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_QUICKSTART_TEAM"] )



g_pButtondeath_go = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondeath_go )
g_pButtondeath_go:SetName( "UI_PvP_Lobby_TeamDeath_Quickstart" )
g_pButtondeath_go:SetNormalTex( "DLG_UI_BUTTON02.tga", "death_go_normal" )

g_pButtondeath_go:SetOverTex( "DLG_UI_BUTTON02.tga", "death_go_over" )

g_pButtondeath_go:SetDownTex( "DLG_UI_BUTTON02.tga", "death_go_over" )

g_pButtondeath_go:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(771,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondeath_go:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(770,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondeath_go:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(770+1,54+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondeath_go:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_QUICKSTART_TEAM_DEATH"] )


g_pButtonsurvival_go = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsurvival_go )
g_pButtonsurvival_go:SetName( "UI_PvP_Lobby_Survival_Quickstart" )
g_pButtonsurvival_go:SetNormalTex( "DLG_UI_BUTTON02.tga", "survival_go_normal" )

g_pButtonsurvival_go:SetOverTex( "DLG_UI_BUTTON02.tga", "survival_go_over" )

g_pButtonsurvival_go:SetDownTex( "DLG_UI_BUTTON02.tga", "survival_go_over" )

g_pButtonsurvival_go:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(885,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsurvival_go:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(884,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsurvival_go:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(884+1,54+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsurvival_go:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_QUICKSTART_SURVIVAL"] )





---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(957,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(957-4,17-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(957-4+1,17-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(30)





----------------EXIT 버튼


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "UI_PvP_Lobby_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(983,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(979,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(979+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_EXIT"] ) 







----------    << 버튼


g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "UI_PvP_Lobby_Roomlist_LArrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(540,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(540,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(540+1,402+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_ROOMLIST_PREV_PAGE"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "UI_PvP_Lobby_Roomlist_RArrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(617,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(616,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(616+1,402+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_ROOMLIST_NEXT_PAGE"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStatic_emulate:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(557,401)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----페이지 번호

g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "UI_PvP_Lobby_Roomlist_PageNum" )

g_pStatic_number:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(585,407)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

