-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_Result_Back_MatchPvp" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )



-- 캐릭터 레벨업 위치 (team, team death)


g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127, 128, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127+278, 110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127+278+278, 110, 0 ) )


-- 캐릭터 레벨업 위치 (death survival)
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 537, 435, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 211, 427, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 857, 427, 0 ) )



g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "PVP_Result_Match" )

------------TITLE_WIN
g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "MatchPvp_Win" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_Win = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Win )
g_pPicturePVP_Result_Title_Win:SetTex( "DLG_Common_Texture24.tga", "PVP_WIN" )
g_pPicturePVP_Result_Title_Win:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(379-5,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------TITLE_LOSE
g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "MatchPvp_lose" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_lose = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_lose )

g_pPicturePVP_Result_Title_lose:SetTex( "DLG_Common_Texture24.tga", "PVP_LOSE" )

g_pPicturePVP_Result_Title_lose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(348-8,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------TITLE_DRAW
g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "MatchPvp_draw" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_draw = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_draw )

g_pPicturePVP_Result_Title_draw:SetTex( "DLG_Common_Texture24.tga", "PVP_draw" )

g_pPicturePVP_Result_Title_draw:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(348-5,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
g_pStaticPVP_RESULT_DRAW = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_RESULT_DRAW )
g_pStaticPVP_RESULT_DRAW:SetName( "Survival_Draw" )
g_pStaticPVP_RESULT_DRAW:SetShow( false )

g_pPicturePVP_Result_Title_Draw = g_pUIDialog:CreatePicture()
g_pStaticPVP_RESULT_DRAW:AddPicture( g_pPicturePVP_Result_Title_Draw )

g_pPicturePVP_Result_Title_Draw:SetTex( "DLG_Common_New_Texture24.tga", "PVP_Result_Draw" )

g_pPicturePVP_Result_Title_Draw:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(368,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]




-----검은색 상자 BG-----------
g_pStaticPVP_Result_Back2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Back2 )
g_pStaticPVP_Result_Back2:SetName( "PVP_Result_Back2" )

g_pPicturePVP_Result_InfoBg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg1 )
g_pPicturePVP_Result_InfoBg1:SetTex( "DLG_Common_Texture24.tga", "PVP_BG_LEFT" )
g_pPicturePVP_Result_InfoBg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(125,475)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg2 )
g_pPicturePVP_Result_InfoBg2:SetTex( "DLG_Common_Texture24.tga", "PVP_BG_RIGHT" )
g_pPicturePVP_Result_InfoBg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(130+764,475)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg3 )
g_pPicturePVP_Result_InfoBg3:SetTex( "DLG_Common_Texture24.tga", "PVP_BG_CENTER" )
g_pPicturePVP_Result_InfoBg3:SetPoint
{
         ADD_SIZE_X = 759,
	"LEFT_TOP		= D3DXVECTOR2(133,475)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------항목 BG
g_pPicturePVP_Result_InfoBg4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg4 )
g_pPicturePVP_Result_InfoBg4:SetTex( "DLG_Common_Texture25.tga", "LIST_BG_01" )
g_pPicturePVP_Result_InfoBg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123+1,470-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg5 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg5 )
g_pPicturePVP_Result_InfoBg5:SetTex( "DLG_Common_Texture25.tga", "LIST_BG_02" )
g_pPicturePVP_Result_InfoBg5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448-1,470-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg6 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg6 )
g_pPicturePVP_Result_InfoBg6:SetTex( "DLG_Common_Texture25.tga", "LIST_BG_03" )
g_pPicturePVP_Result_InfoBg6:SetPoint
{
         
	"LEFT_TOP		= D3DXVECTOR2(771-2,470-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------NOTICE BG
g_pPicturePVP_Result_InfoBg7 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg7 )
g_pPicturePVP_Result_InfoBg7:SetTex( "DLG_Common_Texture25.tga", "NOTICE_BG_TOP" )
g_pPicturePVP_Result_InfoBg7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(738,508)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg8 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg8 )
g_pPicturePVP_Result_InfoBg8:SetTex( "DLG_Common_Texture25.tga", "NOTICE_BG_MIDDLE" )
g_pPicturePVP_Result_InfoBg8:SetPoint
{
    ADD_SIZE_Y=198, 
	"LEFT_TOP		= D3DXVECTOR2(738,517)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBg9 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg9 )
g_pPicturePVP_Result_InfoBg9:SetTex( "DLG_Common_Texture25.tga", "NOTICE_BG_BOTTOM" )
g_pPicturePVP_Result_InfoBg9:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(738,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----NOTICE
g_pPicturePVP_Result_InfoBg10 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg10 )
g_pPicturePVP_Result_InfoBg10:SetTex( "DLG_Common_Texture25.tga", "NOTICE" )
g_pPicturePVP_Result_InfoBg10:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(749,600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------대전결과정보창---레드팀이 이겼을 경우--------------
g_pStaticPVP_Result_RedTeamWin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_RedTeamWin )
g_pStaticPVP_Result_RedTeamWin:SetName( "PVP_Result_RedTeamWin" )
g_pStaticPVP_Result_RedTeamWin:SetShow( false )

-----레드팀 _BG
g_pPicturePVP_Result_InfoBgRed1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed1 )
g_pPicturePVP_Result_InfoBgRed1:SetTex( "DLG_Common_Texture25.tga", "RED_BG_01" )
g_pPicturePVP_Result_InfoBgRed1:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(132,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Result_InfoBgRed2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed2 )
g_pPicturePVP_Result_InfoBgRed2:SetTex( "DLG_Common_Texture25.tga", "RED_BG_02" )
g_pPicturePVP_Result_InfoBgRed2:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(642,506)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_RED_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_RED_BAR1 )
g_pPicturePVP_RED_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_RED_BAR1:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,545)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_RED_BAR2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_RED_BAR2 )
g_pPicturePVP_RED_BAR2:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_RED_BAR2:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,545+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----블루팀_BG
g_pPicturePVP_Result_InfoBgBlue1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue1 )
g_pPicturePVP_Result_InfoBgBlue1:SetTex( "DLG_Common_Texture25.tga", "BLUE_BG_01" )
g_pPicturePVP_Result_InfoBgBlue1:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(134,620)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgBlue2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue2 )
g_pPicturePVP_Result_InfoBgBlue2:SetTex( "DLG_Common_Texture25.tga", "BLUE_BG_02" )
g_pPicturePVP_Result_InfoBgBlue2:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(640,620)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_BLUE_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_BLUE_BAR1 )
g_pPicturePVP_BLUE_BAR1:SetTex( "DLG_Common_Texture25.tga", "BLUE_BAR" )
g_pPicturePVP_BLUE_BAR1:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,545+115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_BLUE_BAR2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_BLUE_BAR2 )
g_pPicturePVP_BLUE_BAR2:SetTex( "DLG_Common_Texture25.tga", "BLUE_BAR" )
g_pPicturePVP_BLUE_BAR2:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,545+35+115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------대전결과정보창---블루팀이 이겼을 경우--------------
g_pStaticPVP_Result_BlueTeamWin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_BlueTeamWin )
g_pStaticPVP_Result_BlueTeamWin:SetName( "PVP_Result_BlueTeamWin" )
g_pStaticPVP_Result_BlueTeamWin:SetShow( false )

----블루팀_BG
g_pPicturePVP_Result_InfoBgBlue1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue1 )
g_pPicturePVP_Result_InfoBgBlue1:SetTex( "DLG_Common_Texture25.tga", "BLUE_BG_01" )
g_pPicturePVP_Result_InfoBgBlue1:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(134,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgBlue2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue2 )
g_pPicturePVP_Result_InfoBgBlue2:SetTex( "DLG_Common_Texture25.tga", "BLUE_BG_02" )
g_pPicturePVP_Result_InfoBgBlue2:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(640,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_BLUE_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_BLUE_BAR1 )
g_pPicturePVP_BLUE_BAR1:SetTex( "DLG_Common_Texture25.tga", "BLUE_BAR" )
g_pPicturePVP_BLUE_BAR1:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,505+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_BLUE_BAR2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_BLUE_BAR2 )
g_pPicturePVP_BLUE_BAR2:SetTex( "DLG_Common_Texture25.tga", "BLUE_BAR" )
g_pPicturePVP_BLUE_BAR2:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,505+75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----레드팀 _BG
g_pPicturePVP_Result_InfoBgRed1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed1 )
g_pPicturePVP_Result_InfoBgRed1:SetTex( "DLG_Common_Texture25.tga", "RED_BG_01" )
g_pPicturePVP_Result_InfoBgRed1:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(132,620)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Result_InfoBgRed2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed2 )
g_pPicturePVP_Result_InfoBgRed2:SetTex( "DLG_Common_Texture25.tga", "RED_BG_02" )
g_pPicturePVP_Result_InfoBgRed2:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(642,621)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_RED_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_RED_BAR1 )
g_pPicturePVP_RED_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_RED_BAR1:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,620+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_RED_BAR2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_RED_BAR2 )
g_pPicturePVP_RED_BAR2:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_RED_BAR2:SetPoint
{
	ADD_SIZE_X=570,	 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------draw_bg-----------
g_pStaticPVP_Result_Survivar_Drow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Survivar_Drow )
g_pStaticPVP_Result_Survivar_Drow:SetName( "PVP_Result_Survivar_Draw" )
g_pStaticPVP_Result_Survivar_Drow:SetShow( false )


g_pPicturePVP_Result_InfoBg_Yelllow_Draw = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBg_Yelllow_Draw )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetTex( "DLG_Common_Texture25.tga", "draw_bg_left" )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(133,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgDraw2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBgDraw2 )
g_pPicturePVP_Result_InfoBgDraw2:SetTex( "DLG_Common_Texture25.tga", "draw_bg_center" )
g_pPicturePVP_Result_InfoBgDraw2:SetPoint
{
    ADD_SIZE_X=572,
	"LEFT_TOP		= D3DXVECTOR2(133+10,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Result_InfoBg_Yelllow_Draw3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBg_Yelllow_Draw3 )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw3:SetTex( "DLG_Common_Texture25.tga", "draw_bg_right" )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw3:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(133+586,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Result_InfoBg_Yelllow_Draw4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBg_Yelllow_Draw4 )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw4:SetTex( "DLG_Common_Texture25.tga", "draw" )
g_pPicturePVP_Result_InfoBg_Yelllow_Draw4:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(310,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------bar
g_pPicturePVP_Draw_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Draw_BAR1 )
g_pPicturePVP_Draw_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_Draw_BAR1:SetPoint
{
	ADD_SIZE_X=570,			 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Draw_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Draw_BAR1 )
g_pPicturePVP_Draw_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_Draw_BAR1:SetPoint
{
	ADD_SIZE_X=570,			 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Draw_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Draw_BAR1 )
g_pPicturePVP_Draw_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_Draw_BAR1:SetPoint
{
	ADD_SIZE_X=570,			 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75-75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Draw_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Draw_BAR1 )
g_pPicturePVP_Draw_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_Draw_BAR1:SetPoint
{
	ADD_SIZE_X=570,			 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75-75-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Draw_BAR1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Draw_BAR1 )
g_pPicturePVP_Draw_BAR1:SetTex( "DLG_Common_Texture25.tga", "RED_BAR" )
g_pPicturePVP_Draw_BAR1:SetPoint
{
	ADD_SIZE_X=570,			 
	"LEFT_TOP		= D3DXVECTOR2(144,620+75-150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicturePVP_Result_InfoBgRed1_Text = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed1_Text )
g_pPicturePVP_Result_InfoBgRed1_Text:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Red" )
g_pPicturePVP_Result_InfoBgRed1_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(432,503)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgBlue1_Text = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue1_Text )
g_pPicturePVP_Result_InfoBgBlue1_Text:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Blue" )
g_pPicturePVP_Result_InfoBgBlue1_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,629)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPVP_Result_BlueTeamWin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_BlueTeamWin)
g_pStaticPVP_Result_BlueTeamWin:SetName( "PVP_Result_BlueTeamWin" )
g_pStaticPVP_Result_BlueTeamWin:SetShow( true )

-----블루,레드(X로 20정도 더 늘렸음)-----------
---------------(수정 되었음)-- 
g_pPicturePVP_Result_InfoBgBlue2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue2 )

g_pPicturePVP_Result_InfoBgBlue2:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgBlue" )

g_pPicturePVP_Result_InfoBgBlue2:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----(수정 되었음)-- 
g_pPicturePVP_Result_InfoBgRed2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed2 )

g_pPicturePVP_Result_InfoBgRed2:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgRed" )

g_pPicturePVP_Result_InfoBgRed2:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgBlue2_Text = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue2_Text )

g_pPicturePVP_Result_InfoBgBlue2_Text:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Blue" )

g_pPicturePVP_Result_InfoBgBlue2_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,503)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgRed2_Text = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_BlueTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed2_Text )

g_pPicturePVP_Result_InfoBgRed2_Text:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Red" )

g_pPicturePVP_Result_InfoBgRed2_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(432,629)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPVP_Result_Survivar = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Survivar )
g_pStaticPVP_Result_Survivar:SetName( "PVP_Result_Survivar" )
g_pStaticPVP_Result_Survivar:SetShow( false)
---------노란 바탕, Win,Lose(X로 20정도 더 늘렸음)-------

---------(수정 되었음)-- 
g_pPicturePVP_Result_InfoBg_Yellow = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar:AddPicture( g_pPicturePVP_Result_InfoBg_Yellow )

g_pPicturePVP_Result_InfoBg_Yellow:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgYellow" )

g_pPicturePVP_Result_InfoBg_Yellow:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgWin = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar:AddPicture( g_pPicturePVP_Result_InfoBgWin )

g_pPicturePVP_Result_InfoBgWin:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Win" )

g_pPicturePVP_Result_InfoBgWin:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(432,503)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgLose = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar:AddPicture( g_pPicturePVP_Result_InfoBgLose )

g_pPicturePVP_Result_InfoBgLose:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Lose" )

g_pPicturePVP_Result_InfoBgLose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,629)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Result_RedTeamDraw = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_RedTeamDraw )
g_pStaticPVP_Result_RedTeamDraw:SetName( "PVP_Result_RedTeamDraw" )
g_pStaticPVP_Result_RedTeamDraw:SetShow( false )

-------레드,블루 Draw(X로 20정도 더 늘렸음)----

--(수정 되었음)-- 
g_pPicturePVP_Result_InfoBgRed1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamDraw:AddPicture( g_pPicturePVP_Result_InfoBgRed1 )

g_pPicturePVP_Result_InfoBgRed1:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgRed" )

g_pPicturePVP_Result_InfoBgRed1:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--(수정 되었음)-- 
g_pPicturePVP_Result_InfoBgBlue1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamDraw:AddPicture( g_pPicturePVP_Result_InfoBgBlue1 )

g_pPicturePVP_Result_InfoBgBlue1:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgBlue" )

g_pPicturePVP_Result_InfoBgBlue1:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_InfoBgDraw1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamDraw:AddPicture( g_pPicturePVP_Result_InfoBgDraw1 )
g_pPicturePVP_Result_InfoBgDraw1:SetTex( "DLG_Common_New_Texture24.tga", "PVP_Result_Draw" )
g_pPicturePVP_Result_InfoBgDraw1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(370,558)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
}

-- g_pStaticPVP_Result_Survivar_Drow = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStaticPVP_Result_Survivar_Drow )
-- g_pStaticPVP_Result_Survivar_Drow:SetName( "PVP_Result_Survivar_Draw" )
-- g_pStaticPVP_Result_Survivar_Drow:SetShow( false )


-----(수정 되었음)-- 
-- g_pPicturePVP_Result_InfoBg_Yelllow_Draw = g_pUIDialog:CreatePicture()
-- g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBg_Yelllow_Draw )

-- g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgYellow" )

-- g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetPoint
-- {
		 -- ADD_SIZE_X=790,
	-- "LEFT_TOP		= D3DXVECTOR2(130,481)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pPicturePVP_Result_InfoBgDraw2 = g_pUIDialog:CreatePicture()
-- g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBgDraw2 )

-- g_pPicturePVP_Result_InfoBgDraw2:SetTex( "DLG_Common_New_Texture24.tga", "PVP_Result_Draw" )

-- g_pPicturePVP_Result_InfoBgDraw2:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(370,558)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	-- CHANGE_TIME		= 0.0,
-- }
--]]

----------순위 닉네임 등등등---------

g_pPicturePVP_Result_Nick_Name = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Nick_Name )

g_pPicturePVP_Result_Nick_Name:SetTex( "DLG_Common_Texture24.tga", "PVP_NICNAME" )

g_pPicturePVP_Result_Nick_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,479-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturePVP_Result_Death = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Death )

g_pPicturePVP_Result_Death:SetTex( "DLG_Common_Texture24.tga", "PVP_KILL" )

g_pPicturePVP_Result_Death:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(291,479-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Result_Rank = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Rank )

g_pPicturePVP_Result_Rank:SetTex( "DLG_Common_Texture24.tga", "PVP_RANK" )

g_pPicturePVP_Result_Rank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461,479-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Result_Ap_Point = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Ap_Point )
g_pPicturePVP_Result_Ap_Point:SetTex( "DLG_Common_Texture24.tga", "PVP_AP" )
g_pPicturePVP_Result_Ap_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(584,479-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_Exp = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Exp )
g_pPicturePVP_Result_Exp:SetTex( "DLG_Common_Texture24.tga", "PVP_Exp" )
g_pPicturePVP_Result_Exp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(669,479-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------NOTICE
g_pStaticNOTICE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNOTICE  )
g_pStaticNOTICE:SetName( "StaticNOTICE" )

g_pStaticNOTICE:AddString
{
 	 --MSG    		 = "안내문구입니다아. 안내안내요",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(745,525)",
 	"COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}



--IncludeLua( "DLG_PVP_Result_Lose.lua" )

