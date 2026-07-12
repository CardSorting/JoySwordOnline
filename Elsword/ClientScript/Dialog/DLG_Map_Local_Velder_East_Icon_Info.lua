-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






------------(던전 이름)
g_pStaticVelder_East = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_East )
g_pStaticVelder_East:SetName( "Velder_East_Title" )


g_pPictureVelder_East_Darkness_Forest = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Darkness_Forest )

g_pPictureVelder_East_Darkness_Forest:SetTex( "DLG_Common_New_Texture44.tga", "Darkness_Forest" )

g_pPictureVelder_East_Darkness_Forest:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(298-1,631)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureVelder_East_Nature_Cave = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Nature_Cave )

g_pPictureVelder_East_Nature_Cave:SetTex( "DLG_Common_New_Texture45.tga", "Nature_Cave" )

g_pPictureVelder_East_Nature_Cave:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(771,556)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pPictureVelder_East_Venders_Cave = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Venders_Cave )

g_pPictureVelder_East_Venders_Cave:SetTex( "DLG_Common_New_Texture44.tga", "Venders_Cave" )

g_pPictureVelder_East_Venders_Cave:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(677,413+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureVelder_East_Cave = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Cave )

g_pPictureVelder_East_Cave:SetTex( "DLG_Common_New_Texture44.tga", "Cave" )

g_pPictureVelder_East_Cave:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(454,467)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureVelder_East_Wally_Castle_Side = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Wally_Castle_Side )

g_pPictureVelder_East_Wally_Castle_Side:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Castle_Side" )

g_pPictureVelder_East_Wally_Castle_Side:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(203-6,476)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureVelder_East_Wally_Castle = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Wally_Castle )

g_pPictureVelder_East_Wally_Castle:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Castle" )

g_pPictureVelder_East_Wally_Castle:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(359,289)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
----어린이날 이벤트 던전
----윌리엄의시공
g_pStaticWilliam = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWilliam )
g_pStaticWilliam:SetName( "윌리엄의시공" )

	g_pPictureWilliam_space = g_pUIDialog:CreatePicture()
	g_pStaticWilliam:AddPicture( g_pPictureWilliam_space )

	g_pPictureWilliam_space:SetTex( "DLG_UI_Title02.tga", "William_Title" )

	g_pPictureWilliam_space:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(742,247)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]


--[[
	g_pPictureemir_space = g_pUIDialog:CreatePicture()
	g_pStaticVelder_East:AddPicture( g_pPictureemir_space )

	g_pPictureemir_space:SetTex( "DLG_UI_Title02.tga", "emir_space" )

	g_pPictureemir_space:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(742,247)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]








--[[ 할로윈 이벤트 기간종료로 삭제
	
	--- 2009 새해 이벤트 던전 ---	
	g_pPictureNewyear_Event = g_pUIDialog:CreatePicture()
	g_pStaticVelder_East:AddPicture( g_pPictureNewyear_Event )

	g_pPictureNewyear_Event:SetTex( "DLG_Common_New_Texture72.tga", "wally_newyear_event" )

	g_pPictureNewyear_Event:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(55,369)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]




--[[
	---할로윈 던전---

	g_pPictureVelder_East_Holloween = g_pUIDialog:CreatePicture()
	g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Holloween )

	g_pPictureVelder_East_Holloween:SetTex( "DLG_Common_New_Texture44.tga", "Holloween" )

	g_pPictureVelder_East_Holloween:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(117,641)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]









g_pStaticSecret_Dungeon_Wally_Laboratory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSecret_Dungeon_Wally_Laboratory )
g_pStaticSecret_Dungeon_Wally_Laboratory:SetName( "월리의 지하 연구실_Icon_Info" )


g_pPictureVelder_East_Secreat_Dungeon = g_pUIDialog:CreatePicture()
g_pStaticSecret_Dungeon_Wally_Laboratory:AddPicture( g_pPictureVelder_East_Secreat_Dungeon )

g_pPictureVelder_East_Secreat_Dungeon:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Secreat_Dungeon" )

g_pPictureVelder_East_Secreat_Dungeon:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(534,271)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----헤니르의시공
g_pStaticHenir = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHenir )
g_pStaticHenir:SetName( "헤니르의시공" )

g_pPictureHenir_space = g_pUIDialog:CreatePicture()
g_pStaticHenir:AddPicture( g_pPictureHenir_space )

g_pPictureHenir_space:SetTex( "DLG_UI_Title02.tga", "Local_Henir" )

g_pPictureHenir_space:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(742,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----식목일 이벤트
--[[
g_pStaticTree_Day = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTree_Day )
g_pStaticTree_Day:SetName( "식목일 이벤트" )

g_pPictureTree_Day_space = g_pUIDialog:CreatePicture()
g_pStaticTree_Day:AddPicture( g_pPictureTree_Day_space )

g_pPictureTree_Day_space:SetTex( "DLG_UI_Title02.tga", "tears" )

g_pPictureTree_Day_space:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(312-40-135,124+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


-- 디펜스 던전
g_pStaticDefence = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDefence )
g_pStaticDefence:SetName( "DefenceName" )
g_pStaticDefence:AddDummyInt( 5 )

g_pStaticDefence_space = g_pUIDialog:CreatePicture()
g_pStaticDefence:AddPicture( g_pStaticDefence_space )

g_pStaticDefence_space:SetTex( "Dlg_Ui_Title03.tga", "defence_title" )

g_pStaticDefence_space:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(844,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}