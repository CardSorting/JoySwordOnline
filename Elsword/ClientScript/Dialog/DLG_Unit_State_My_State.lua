-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Unit_State_My_State" )
g_pUIDialog:SetPos( 0, 40 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


--CB Version

g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "StaticUser_Room" )



-----SCORE 윈도우

g_pPictureUser_Score_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window1 )

g_pPictureUser_Score_Window1:SetTex( "DLG_Unit_State.TGA", "Info_Window1" )

g_pPictureUser_Score_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(479,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_Score_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window2 )

g_pPictureUser_Score_Window2:SetTex( "DLG_Unit_State.TGA", "Info_Window2" )

g_pPictureUser_Score_Window2:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(494,75)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(987,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Score_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window3 )

g_pPictureUser_Score_Window3:SetTex( "DLG_Unit_State.TGA", "Info_Window3" )

g_pPictureUser_Score_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(987,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window4 )

g_pPictureUser_Score_Window4:SetTex( "DLG_Unit_State.TGA", "Info_Window4" )

g_pPictureUser_Score_Window4:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(479,90)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(494,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window5 )

g_pPictureUser_Score_Window5:SetTex( "DLG_Unit_State.TGA", "Info_Window5" )

g_pPictureUser_Score_Window5:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(494,90)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(987,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window6 )

g_pPictureUser_Score_Window6:SetTex( "DLG_Unit_State.TGA", "Info_Window6" )

g_pPictureUser_Score_Window6:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(987,90)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(994,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window7 )

g_pPictureUser_Score_Window7:SetTex( "DLG_Unit_State.TGA", "Info_Window7" )

g_pPictureUser_Score_Window7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(479,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window8 )

g_pPictureUser_Score_Window8:SetTex( "DLG_Unit_State.TGA", "Info_Window8" )

g_pPictureUser_Score_Window8:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(494,648)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(987,655)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window9 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window9 )

g_pPictureUser_Score_Window9:SetTex( "DLG_Unit_State.TGA", "Info_Window9" )

g_pPictureUser_Score_Window9:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(987,648)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----SCORE 윈도우 라운드


g_pPictureUser_Score_Window_Round1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round1 )

g_pPictureUser_Score_Window_Round1:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG1" )

g_pPictureUser_Score_Window_Round1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(488,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_Score_Window_Round2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round2 )

g_pPictureUser_Score_Window_Round2:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG2" )

g_pPictureUser_Score_Window_Round2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(974,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Score_Window_Round3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round3 )

g_pPictureUser_Score_Window_Round3:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG3" )

g_pPictureUser_Score_Window_Round3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(488,611)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window_Round4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round4 )

g_pPictureUser_Score_Window_Round4:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG4" )

g_pPictureUser_Score_Window_Round4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(974,611)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window_Round5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round5 )

g_pPictureUser_Score_Window_Round5:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG5" )

g_pPictureUser_Score_Window_Round5:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(493,100)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(974,615)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window_Round6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round6 )

g_pPictureUser_Score_Window_Round6:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG5" )

g_pPictureUser_Score_Window_Round6:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(489,104)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(497,611)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_Window_Round7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_Window_Round7 )

g_pPictureUser_Score_Window_Round7:SetTex( "DLG_Unit_State.TGA", "Info_Plane_BG5" )

g_pPictureUser_Score_Window_Round7:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(970,104)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(978,611)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------내용

g_pPictureUser_Score_EXP = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_EXP )

g_pPictureUser_Score_EXP:SetTex( "DLG_Unit_State.TGA", "EXP" )

g_pPictureUser_Score_EXP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(507,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_SP = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_SP )

g_pPictureUser_Score_SP:SetTex( "DLG_Unit_State.TGA", "VP" )

g_pPictureUser_Score_SP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(507,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_SP_Bar1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_SP_Bar1 )

g_pPictureUser_Score_SP_Bar1:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_SP_Bar1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPictureUser_Score_SP_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_SP_Bar2 )

g_pPictureUser_Score_SP_Bar2:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_SP_Bar2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(778,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPictureUser_Score_VP = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_VP )

g_pPictureUser_Score_VP:SetTex( "DLG_Unit_State.TGA", "SP" )

g_pPictureUser_Score_VP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(508,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Score_VP_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_VP_Bar )

g_pPictureUser_Score_VP_Bar:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_VP_Bar:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_Rank = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_Rank )

g_pPictureUser_Score_PVP_Rank:SetTex( "DLG_Unit_State.TGA", "PVP_Rank" )

g_pPictureUser_Score_PVP_Rank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(505,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_Rank_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_Rank_Bar )

g_pPictureUser_Score_PVP_Rank_Bar:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_PVP_Rank_Bar:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_Score_PVP_Score = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_Score )

g_pPictureUser_Score_PVP_Score:SetTex( "DLG_Unit_State.TGA", "PVP_Score" )

g_pPictureUser_Score_PVP_Score:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,312)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_Score_Bar1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_Score_Bar1 )

g_pPictureUser_Score_PVP_Score_Bar1:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_PVP_Score_Bar1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,313)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_WinMark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_WinMark )

g_pPictureUser_Score_PVP_WinMark:SetTex( "DLG_Unit_State.TGA", "Win" )

g_pPictureUser_Score_PVP_WinMark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715,311)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_Score_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_Score_Bar2 )

g_pPictureUser_Score_PVP_Score_Bar2:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_PVP_Score_Bar2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(756,313)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_PVP_LoseMark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_PVP_LoseMark )

g_pPictureUser_Score_PVP_LoseMark:SetTex( "DLG_Unit_State.TGA", "Lose" )

g_pPictureUser_Score_PVP_LoseMark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(878,311)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Score_User_Title = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_Title )

g_pPictureUser_Score_User_Title:SetTex( "DLG_Unit_State.TGA", "User_Title" )

g_pPictureUser_Score_User_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(510,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_User_Title_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_Title_Emblem )

g_pPictureUser_Score_User_Title_Emblem:SetTex( "DLG_Unit_State.TGA", "User_Title_Chack" )

g_pPictureUser_Score_User_Title_Emblem:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(560,366)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_User_Title_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_Title_Bar )

g_pPictureUser_Score_User_Title_Bar:SetTex( "DLG_Unit_State.TGA", "State_Bar" )

g_pPictureUser_Score_User_Title_Bar:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(593,364)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(957,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_User_EXP_Gauge1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_EXP_Gauge1 )

g_pPictureUser_Score_User_EXP_Gauge1:SetTex( "DLG_Unit_State.TGA", "EXP_Gauge_Bar1" )

g_pPictureUser_Score_User_EXP_Gauge1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_User_EXP_Gauge2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_EXP_Gauge2 )

g_pPictureUser_Score_User_EXP_Gauge2:SetTex( "DLG_Unit_State.TGA", "EXP_Gauge_Bar2" )

g_pPictureUser_Score_User_EXP_Gauge2:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(597,115)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(955,143)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_Score_User_EXP_Gauge3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_Score_User_EXP_Gauge3 )

g_pPictureUser_Score_User_EXP_Gauge3:SetTex( "DLG_Unit_State.TGA", "EXP_Gauge_Bar1" )

g_pPictureUser_Score_User_EXP_Gauge3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(955,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticUser_My_State_EXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_My_State_EXP )
g_pStaticUser_My_State_EXP:SetName( "StaticUser_My_State_EXP" )

g_pPictureUser_Score_User_EXP_Gauge4 = g_pUIDialog:CreatePicture()
g_pStaticUser_My_State_EXP:AddPicture( g_pPictureUser_Score_User_EXP_Gauge4 )

g_pPictureUser_Score_User_EXP_Gauge4:SetTex( "DLG_Unit_State.TGA", "EXP_Gauge" )

g_pPictureUser_Score_User_EXP_Gauge4:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(597,119)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(955,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticUser_My_State_EXP:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 772, 122 )",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


















g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_SP" )

g_pStatic:AddString
{
	-- MSG 				= "0",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 648, 171+50 )",
	"COLOR				= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}








g_pStaticPVP_Room_Unit_VP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Unit_VP )
g_pStaticPVP_Room_Unit_VP:SetName( "StaticPVP_Room_Unit_VP" )

-- vp <-> exp 변환에서 vp 부분
g_pStaticPVP_Room_Unit_VP:AddString
{
	-- MSG 				= "0",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 648, 171 )",
	"COLOR				= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





g_pStaticPVP_Room_Unit_WinNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Unit_WinNum )
g_pStaticPVP_Room_Unit_WinNum:SetName( "StaticPVP_Room_Unit_WinNum" )

g_pStaticPVP_Room_Unit_WinNum:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 649, 319 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticPVP_Room_Unit_LoseNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Unit_LoseNum )
g_pStaticPVP_Room_Unit_LoseNum:SetName( "StaticPVP_Room_Unit_LoseNum" )

g_pStaticPVP_Room_Unit_LoseNum:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 811, 319 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---2007. 10. 5  최육사  근성도 임시 출력
g_pStaticSpiritPoint = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSpiritPoint )
g_pStaticSpiritPoint:SetName( "StaticSpiritPoint" )

g_pStaticSpiritPoint:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 811, 400 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

