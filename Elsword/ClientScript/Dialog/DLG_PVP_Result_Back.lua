-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_Result_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )



-- 캐릭터 레벨업 위치 (team, team death)


g_pUIDialog:AddDummyPos( D3DXVECTOR3( 160, 430, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 425, 430, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 604, 430, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 904, 430, 0 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 657, 770, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 756, 770, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 852, 770, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 957, 770, 0 ) )



-- 캐릭터 레벨업 위치 (death survival)
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 537, 435, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 211, 427, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 857, 427, 0 ) )


g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "PVP_Result" )


-----타이틀, Blue.Red,Lose,Win------------- 
g_pPicturePVP_Result_Title_WiteBack = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_WiteBack )

g_pPicturePVP_Result_Title_WiteBack:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Title_BgWhite" )

g_pPicturePVP_Result_Title_WiteBack:SetPoint
{
         ADD_SIZE_X = 231,
		ADD_SIZE_Y = 93,
	"LEFT_TOP		= D3DXVECTOR2(170,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "Blue_Win" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_Blue = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Blue )

g_pPicturePVP_Result_Title_Blue:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Blue" )

g_pPicturePVP_Result_Title_Blue:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(235,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "Red_Win" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_Red = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Red )

g_pPicturePVP_Result_Title_Red:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Red" )

g_pPicturePVP_Result_Title_Red:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(282,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "Team_Win" )
g_pStaticPVP_Result:SetShow( false )

g_pPictureTeam_Win= g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPictureTeam_Win)


g_pPicturePVP_Result_Title_Team = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Team )

g_pPicturePVP_Result_Title_Team:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Team" )

g_pPicturePVP_Result_Title_Team:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(445,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Result_Title_Win = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Win )

g_pPicturePVP_Result_Title_Win:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Win" )

g_pPicturePVP_Result_Title_Win:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(563,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
g_pPicturePVP_Result_Title_Lose = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Lose )

g_pPicturePVP_Result_Title_Lose:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Lose" )

g_pPicturePVP_Result_Title_Lose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(555,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]





g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "Survival_Win" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_Win = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Win )

g_pPicturePVP_Result_Title_Win:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Win" )

g_pPicturePVP_Result_Title_Win:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(415,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Result = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result )
g_pStaticPVP_Result:SetName( "Survival_Lose" )
g_pStaticPVP_Result:SetShow( false )

g_pPicturePVP_Result_Title_Lose = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result:AddPicture( g_pPicturePVP_Result_Title_Lose )

g_pPicturePVP_Result_Title_Lose:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Lose" )

g_pPicturePVP_Result_Title_Lose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(415,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




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









g_pStaticPVP_Result_RedTeamWin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_RedTeamWin )
g_pStaticPVP_Result_RedTeamWin:SetName( "PVP_Result_RedTeamWin" )
g_pStaticPVP_Result_RedTeamWin:SetShow( false )
-------대전결과정보창--------------


g_pPicturePVP_Result_InfoBgRed1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgRed1 )

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
g_pStaticPVP_Result_RedTeamWin:AddPicture( g_pPicturePVP_Result_InfoBgBlue1 )

g_pPicturePVP_Result_InfoBgBlue1:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgBlue" )

g_pPicturePVP_Result_InfoBgBlue1:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



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
g_pStaticPVP_Result_BlueTeamWin:SetShow( false )

---------블루,레드(X로 20정도 더 늘렸음)-----------

--(수정 되었음)-- 
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


--(수정 되었음)-- 
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
g_pStaticPVP_Result_Survivar:SetShow( false )
-----------노란 바탕, Win,Lose(X로 20정도 더 늘렸음)-------

--(수정 되었음)-- 
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










 

g_pStaticPVP_Result_Survivar_Drow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Survivar_Drow )
g_pStaticPVP_Result_Survivar_Drow:SetName( "PVP_Result_Survivar_Draw" )
g_pStaticPVP_Result_Survivar_Drow:SetShow( false )


--(수정 되었음)-- 
g_pPicturePVP_Result_InfoBg_Yelllow_Draw = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBg_Yelllow_Draw )

g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_BgYellow" )

g_pPicturePVP_Result_InfoBg_Yelllow_Draw:SetPoint
{
		 ADD_SIZE_X=790,
	"LEFT_TOP		= D3DXVECTOR2(130,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Result_InfoBgDraw2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Survivar_Drow:AddPicture( g_pPicturePVP_Result_InfoBgDraw2 )

g_pPicturePVP_Result_InfoBgDraw2:SetTex( "DLG_Common_New_Texture24.tga", "PVP_Result_Draw" )

g_pPicturePVP_Result_InfoBgDraw2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(370,558)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
}










g_pStaticPVP_Result_Back2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Back2 )
g_pStaticPVP_Result_Back2:SetName( "PVP_Result_Back2" )




-----검은색 상자 틀-----------
g_pPicturePVP_Result_InfoBg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg1 )

g_pPicturePVP_Result_InfoBg1:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Bg1" )

g_pPicturePVP_Result_InfoBg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(106,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPicturePVP_Result_InfoBg2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg2 )

g_pPicturePVP_Result_InfoBg2:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Bg2" )

g_pPicturePVP_Result_InfoBg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(106+432,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturePVP_Result_InfoBg3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_InfoBg3 )

g_pPicturePVP_Result_InfoBg3:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Bg3" )

g_pPicturePVP_Result_InfoBg3:SetPoint
{
         ADD_SIZE_X = 413,
	"LEFT_TOP		= D3DXVECTOR2(145,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





















----------순위 닉네임 등등등---------

g_pPicturePVP_Result_Rank = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Rank )

g_pPicturePVP_Result_Rank:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Rank" )

g_pPicturePVP_Result_Rank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(257,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Result_Nick_Name = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Nick_Name )

g_pPicturePVP_Result_Nick_Name:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Nick_Name" )

g_pPicturePVP_Result_Nick_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(381,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Result_Nick_Name = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Nick_Name )

g_pPicturePVP_Result_Nick_Name:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Assist" )

g_pPicturePVP_Result_Nick_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(483,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicturePVP_Result_Death = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Death )

g_pPicturePVP_Result_Death:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Death" )

g_pPicturePVP_Result_Death:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(599,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicturePVP_Result_Vp_Point = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Vp_Point )

g_pPicturePVP_Result_Vp_Point:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Vp_Point" )

g_pPicturePVP_Result_Vp_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(664,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturePVP_Result_Exp = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Exp )

g_pPicturePVP_Result_Exp:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Exp" )

g_pPicturePVP_Result_Exp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(771+15,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Result_Sp = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Back2:AddPicture( g_pPicturePVP_Result_Sp )

g_pPicturePVP_Result_Sp:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_sp" )

g_pPicturePVP_Result_Sp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(849+20,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














--IncludeLua( "DLG_PVP_Result_Lose.lua" )

