-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGame_RankBox" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

--===============================================================================================
--전체배경=======================================================================================
g_pStaticPVPGame_BG = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_BG:SetName( "BG" )
g_pUIDialog:AddControl( g_pStaticPVPGame_BG )
--닫았을 때는 Y 위치 700
--최대 크기 일때 Y위치 533
g_pPicture1st_RankBox_BG_TOP = g_pUIDialog:CreatePicture() --picture(0)
g_pStaticPVPGame_BG:AddPicture( g_pPicture1st_RankBox_BG_TOP )
g_pPicture1st_RankBox_BG_TOP:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_TOP" ) --HEIGHT 30
g_pPicture1st_RankBox_BG_TOP:SetPoint
{
	ADD_SIZE_X		= 3,
	"LEFT_TOP		= D3DXVECTOR2(774,533)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
g_pPicture1st_RankBox_BG_MIDDLE = g_pUIDialog:CreatePicture() --picture(1)
g_pStaticPVPGame_BG:AddPicture( g_pPicture1st_RankBox_BG_MIDDLE )
g_pPicture1st_RankBox_BG_MIDDLE:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_MIDDLE" ) --height 1
g_pPicture1st_RankBox_BG_MIDDLE:SetPoint
{
    ADD_SIZE_Y=166,
	ADD_SIZE_X		= 3,
	"LEFT_TOP		= D3DXVECTOR2(774,563)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
g_pPicture1st_RankBox_BG_BOTTOM = g_pUIDialog:CreatePicture() --picture(2)
g_pStaticPVPGame_BG:AddPicture( g_pPicture1st_RankBox_BG_BOTTOM )
g_pPicture1st_RankBox_BG_BOTTOM:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BOTTOM" ) --height 10
g_pPicture1st_RankBox_BG_BOTTOM:SetPoint
{   
	ADD_SIZE_X		= 3,
	"LEFT_TOP		= D3DXVECTOR2(774,730)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
----닉네임과 총점 사이 열 경계선
g_pPicture1st_RankBox_LINE = g_pUIDialog:CreatePicture() --picture(3)
g_pStaticPVPGame_BG:AddPicture( g_pPicture1st_RankBox_LINE )
g_pPicture1st_RankBox_LINE:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_LINE" )
g_pPicture1st_RankBox_LINE:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(872,572)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--===============================================================================================
--순위배경=======================================================================================
g_pStaticPVPGame_RankBG = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_RankBG:SetName( "RankBG" )
g_pUIDialog:AddControl( g_pStaticPVPGame_RankBG )

---1번째RED
g_pPicture2nd_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Red3 )
g_pPicture2nd_RankBox_Red3:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture2nd_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(779,719-147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---2번째RED
g_pPicture2nd_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Red3 )
g_pPicture2nd_RankBox_Red3:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture2nd_RankBox_Red3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---3번째RED
g_pPicture2nd_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Red3 )
g_pPicture2nd_RankBox_Red3:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture2nd_RankBox_Red3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---4번째RED
g_pPicture2nd_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Red2 )
g_pPicture2nd_RankBox_Red2:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture2nd_RankBox_Red2:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(779,719-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--5번째RED
g_pPicture2nd_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Red1 )
g_pPicture2nd_RankBox_Red1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture2nd_RankBox_Red1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--6번째RED
g_pPicture1st_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_Red3 )
g_pPicture1st_RankBox_Red3:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture1st_RankBox_Red3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--7번째RED
g_pPicture1st_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_Red2 )
g_pPicture1st_RankBox_Red2:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture1st_RankBox_Red2:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(779,719-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-------8번쨰 RED
g_pPicture1st_RankBox_Red1 = g_pUIDialog:CreatePicture() 
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_Red1 )
g_pPicture1st_RankBox_Red1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_RED" )
g_pPicture1st_RankBox_Red1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--1번째BLUE
g_pPicture2nd_RankBox_Blue8 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Blue8 )
g_pPicture2nd_RankBox_Blue8:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture2nd_RankBox_Blue8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(779,719-147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--2번째BLUE
g_pPicture2nd_RankBox_Blue7 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Blue7 )
g_pPicture2nd_RankBox_Blue7:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture2nd_RankBox_Blue7:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--3번째BLUE
g_pPicture2nd_RankBox_Blue6 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Blue6 )
g_pPicture2nd_RankBox_Blue6:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture2nd_RankBox_Blue6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---4번째BLUE
g_pPicture2nd_RankBox_Blue5 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Blue5 )
g_pPicture2nd_RankBox_Blue5:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture2nd_RankBox_Blue5:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(779,719-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---5번째BLUE
g_pPicture2nd_RankBox_Blue4 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture2nd_RankBox_Blue4 )
g_pPicture2nd_RankBox_Blue4:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture2nd_RankBox_Blue4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
---6번쨰BLUE
g_pPicture1st_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_Blue3 )
g_pPicture1st_RankBox_Blue3:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture1st_RankBox_Blue3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719-42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
----7번째BLUE
g_pPicture1st_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_Blue2 )
g_pPicture1st_RankBox_Blue2:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture1st_RankBox_Blue2:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(779,719-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
----8번째 BLUE
g_pPicture1st_RankBox_BLUE1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBG:AddPicture( g_pPicture1st_RankBox_BLUE1 )
g_pPicture1st_RankBox_BLUE1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_BLUE" )
g_pPicture1st_RankBox_BLUE1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--===============================================================================================
--탭 이미지======================================================================================
g_pStaticPVPGame_Tab = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_Tab:SetName( "Tab")
g_pUIDialog:AddControl( g_pStaticPVPGame_Tab )

g_pPicture_RankBox_Tap = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_Tab:AddPicture( g_pPicture_RankBox_Tap )
g_pPicture_RankBox_Tap:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "PVP_SCORE_TAB" )
g_pPicture_RankBox_Tap:SetPoint
{
	--탭 닫혀있을 때는 y값 703
	"LEFT_TOP		= D3DXVECTOR2(993,538)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--===============================================================================================
--항목명=========================================================================================
g_pStaticPVPGame_StringCategory = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_StringCategory:SetName( "StringCategory")
g_pUIDialog:AddControl( g_pStaticPVPGame_StringCategory )

g_pStaticPVPGame_StringCategory:AddString --string(0)
{	
	MSG					= STR_ID_1127, --닉네임
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(822,553)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_StringCategory:AddString --string(1)
{	
	MSG 				= STR_ID_17269, --"총점", 
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(822+86-1,553)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_StringCategory:AddString --string(2)
{	
	MSG 				= STR_ID_17270, --"킬", 
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(822+130-3,553)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_StringCategory:AddString --string(3)
{	
	MSG 				= STR_ID_17271, --"어시", 
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(822+155-4,553)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_StringCategory:AddString --string(4)
{	
	MSG 				= STR_ID_17272, --"데스", 
	FONT_INDEX			= XUF_DODUM_11_NORMAL,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(822+182,553)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}

--===============================================================================================
--순위정보=======================================================================================
g_pStaticPVPGame_StringRankInfo = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_StringRankInfo:SetName( "StringRankInfo")
g_pUIDialog:AddControl( g_pStaticPVPGame_StringRankInfo )
for i = 0, 7 do
	posY = 576 + ( 21 * i )
--	posY = 723 - ( 21 * i )
	g_pStaticPVPGame_StringRankInfo:AddString  --string(0)
	{
--		MSG 				= "닉네임",
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(826, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_StringRankInfo:AddString --string(1)
	{
--		 MSG 				= "99", -- 총점
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(907, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_StringRankInfo:AddString --string(2)
	{
--		MSG 				= "12", -- 킬수
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(954, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_StringRankInfo:AddString --string(3)
	{
--		MSG 				= "12",  --어시
		--MSG 				= STR_ID_1139, 
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(978, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_StringRankInfo:AddString --string(4)
	{
--		MSG 				= "12",  --데스
		--MSG 				= STR_ID_1139, 
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(1003, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}	
end



