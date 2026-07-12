-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_PVP_Room_Team_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

--캐릭터 위치
--[[
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( -360 - 33, 15, 0 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( -180 - 30, 55, 200 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0 - 30, 40, 100 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 170 - 15, 55, 300 ) )

	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 340 +40, -300, 0 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 170 +40, -270, 300 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( -10 + 30, -290, 100 ) )
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( -190 + 24, -270, 300 ) )
--]]




g_pUIDialog:AddDummyPos( D3DXVECTOR3( -360 - 33, 15, 100 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -180 - 30, 15, 1000 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0 - 30, 15, 2000 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 170 - 15, 15, 3000 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 350 +40, -310, 7000 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 175 +40, -310, 6000 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -5 + 30, -310, 5000 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -185 + 24, -310, 4000 ) )





--캐릭터 정보 다이얼로그 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14,321, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189,321, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189+188,321, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189+188+188,321, 0 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189+188+188+239,653, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189+188+241,653, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+189+242,653, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42-14+242,653, 0 ) )



--던전 캐릭터 뒷 배경 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3(76-33-25,109-18,0) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(256-33-16,109-18,0)  )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(436-33-8,109-18,0) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(616-33,109-18,0) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3(836-33+20-1,435+10-18,0	) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(656-33+14-1,435+10-18,0	) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(476-33+7-1,435+10-18,0	) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(296-33-3,435+10-18,0  	) )



g_pStaticPVP_Room_Team_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Team_BG )
g_pStaticPVP_Room_Team_BG:SetName( "Background1" )




g_pPicturePVP_Room_Survival_Bg1_1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg1_1 )

g_pPicturePVP_Room_Survival_Bg1_1:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_RedTeam_BG1" )

g_pPicturePVP_Room_Survival_Bg1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(37-28,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Survival_Bg1_2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg1_2 )

g_pPicturePVP_Room_Survival_Bg1_2:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_RedTeam_BG2" )

g_pPicturePVP_Room_Survival_Bg1_2:SetPoint
{
    ADD_SIZE_X = 717-26+22,

	"LEFT_TOP		= D3DXVECTOR2(45+16-28,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Survival_Bg1_3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg1_3 )

g_pPicturePVP_Room_Survival_Bg1_3:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_RedTeam_BG3" )

g_pPicturePVP_Room_Survival_Bg1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(763-16,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Room_Survival_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg2 )

g_pPicturePVP_Room_Survival_Bg2:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_BlueTeam_BG1" )

g_pPicturePVP_Room_Survival_Bg2:SetPoint
{
       ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(256-5,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Room_Survival_Bg2_1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg2_1 )

g_pPicturePVP_Room_Survival_Bg2_1:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_BlueTeam_BG2" )

g_pPicturePVP_Room_Survival_Bg2_1:SetPoint
{
    ADD_SIZE_X = 715-26+24,
    ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(264+16-6,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Room_Survival_Bg2_2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Team_BG:AddPicture( g_pPicturePVP_Room_Survival_Bg2_2 )

g_pPicturePVP_Room_Survival_Bg2_2:SetTex( "DLG_Common_New_Texture50.TGA", "PVP_BlueTeam_BG3" )

g_pPicturePVP_Room_Survival_Bg2_2:SetPoint
{
      ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(980-16+24,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











g_pStaticPVP_Room_Kill_font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Kill_font )
g_pStaticPVP_Room_Kill_font:SetName( "StaticPVP_Room_Kill_font" )
g_pStaticPVP_Room_Kill_font:SetShow( false )

g_pPicture_PVP_Room_Team5 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Kill_font:AddPicture( g_pPicture_PVP_Room_Team5 )

g_pPicture_PVP_Room_Team5:SetTex( "DLG_PVP_Room_Death1.TGA", "Kill_Num" )

g_pPicture_PVP_Room_Team5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(811,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



function PVPRoomOXDownAnim( pButton )

	pButton:SetDownAnimTex
	{
		RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		RotateDegree	= 180,
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(0.5,0.5)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.05,
	}

	pButton:SetDownAnimTex
	{
		RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		RotateDegree	= 360,
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
		
		bEndTexChange	= TRUE,
	}
	
	pButton:ChangeMouseDownSound_LUA( "Card_Flip.ogg" )
	pButton:ChangeMouseUpSound_LUA( "Card_Flip.ogg" )

end


IncludeLua( "DLG_PVP_Room_O.lua" )

IncludeLua( "DLG_PVP_Room_X.lua" )















g_pStaticPVP_Room_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Title )
g_pStaticPVP_Room_Title:SetName( "Background" )




g_pPicturePVP_Room_Title_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Title:AddPicture( g_pPicturePVP_Room_Title_Bg1 )

g_pPicturePVP_Room_Title_Bg1:SetTex( "DLG_Common_New_Texture10.TGA", "Title_Window" )

g_pPicturePVP_Room_Title_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(218-60,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













g_pStaticPVP_Room_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Title )
g_pStaticPVP_Room_Title:SetName( "StaticPVP_Room_GameType" )


g_pPicturePVP_Room_Title_TeamMatch = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Title:AddPicture( g_pPicturePVP_Room_Title_TeamMatch )
--g_pPicturePVP_Room_Title_TeamMatch:SetShow( false )

g_pPicturePVP_Room_Title_TeamMatch:SetTex( "DLG_Common_Texture00.TGA", "TeamMatch" )

g_pPicturePVP_Room_Title_TeamMatch:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Room_Title_Team_Death = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Title:AddPicture( g_pPicturePVP_Room_Title_Team_Death )
--g_pPicturePVP_Room_Title_Team_Death:SetShow( false )

g_pPicturePVP_Room_Title_Team_Death:SetTex( "DLG_Common_Texture00.TGA", "Team_Death" )

g_pPicturePVP_Room_Title_Team_Death:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Title_Survival = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Title:AddPicture( g_pPicturePVP_Room_Title_Survival )
--g_pPicturePVP_Room_Title_Survival:SetShow( false )

g_pPicturePVP_Room_Title_Survival:SetTex( "DLG_Common_Texture00.TGA", "Survival" )

g_pPicturePVP_Room_Title_Survival:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





    ------------컨트롤 윈도우------------
 
 



g_pStaticPVP_Room_Control_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Control_Window )
g_pStaticPVP_Room_Control_Window:SetName( "Background" )




g_pPicturePVP_Room_Control_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Control_Window:AddPicture( g_pPicturePVP_Room_Control_Bg1 )

g_pPicturePVP_Room_Control_Bg1:SetTex( "DLG_Common_New_Texture09.TGA", "PVP_Menu_Window" )

g_pPicturePVP_Room_Control_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(779,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





























g_pStaticPVP_Room_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Name )
g_pStaticPVP_Room_Name:SetName( "StaticPVP_Room_Name" )

	g_pStaticPVP_Room_Name:AddString
	{
		-- MSG 			= "하하하하하하하하하하하하핳하하하하핳하하할",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(295-60,20)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	}










-------------(모드 라디오 버튼)



g_pRadioButtonRed_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRed_Button )

g_pRadioButtonRed_Button:SetFixOverByCheck( true )
g_pRadioButtonRed_Button:SetShowOffBGByCheck( true )

g_pRadioButtonRed_Button:SetName( "RadioButtonRed" )

g_pRadioButtonRed_Button:SetNormalTex( "DLG_Common_New_Texture09.TGA", "Red_Button_Normal" )


g_pRadioButtonRed_Button:SetOverTex( "DLG_Common_New_Texture09.TGA", "Red_Button_Over" )


g_pRadioButtonRed_Button:SetCheckedTex( "DLG_Common_New_Texture09.TGA", "Red_Button_Over" )


g_pRadioButtonRed_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(797,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(797,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(797,209)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(797+100,209+69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Button:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(798,210)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Button:SetGroupID( 1 )
g_pRadioButtonRed_Button:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_RED_TEAM"] )

g_pRadioButtonBlue_Button = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonBlue_Button )

g_pRadioButtonBlue_Button:SetFixOverByCheck( true )
g_pRadioButtonBlue_Button:SetShowOffBGByCheck( true )

g_pRadioButtonBlue_Button:SetName( "RadioButtonBlue" )

g_pRadioButtonBlue_Button:SetNormalTex( "DLG_Common_New_Texture09.TGA", "Blue_Button_Normal" )


g_pRadioButtonBlue_Button:SetOverTex( "DLG_Common_New_Texture09.TGA", "Blue_Button_Over" )


g_pRadioButtonBlue_Button:SetCheckedTex( "DLG_Common_New_Texture09.TGA", "Blue_Button_Over" )


g_pRadioButtonBlue_Button:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(899,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Button:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(899,209)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Button:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(899,209)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(899+100,209+69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Button:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(900,210)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Button:SetGroupID( 1 )
g_pRadioButtonBlue_Button:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_BLUE_TEAM"] )




IncludeLua( "DLG_PVP_Room_Button.lua" )





--연습채널도움말--

g_pStaticPractice_Channel_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPractice_Channel_Notice )
g_pStaticPractice_Channel_Notice:SetName( "Practice_Channel_Notice" )
g_pStaticPractice_Channel_Notice:SetShow( false )
g_pStaticPractice_Channel_Notice:SetEnable( false )



g_pPicturePractice_Channel_Notice = g_pUIDialog:CreatePicture()
g_pStaticPractice_Channel_Notice:AddPicture( g_pPicturePractice_Channel_Notice )

g_pPicturePractice_Channel_Notice:SetTex( "DLG_Common_New_Texture63.TGA", "Practice_Channel_Notice" )

g_pPicturePractice_Channel_Notice:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(796,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

