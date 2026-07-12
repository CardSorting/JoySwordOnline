-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------(던전 이름) 어둠의 숲
g_pStaticVelder_East = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_East )
g_pStaticVelder_East:SetName( "Velder_East_Title" )


g_pPictureVelder_East_Darkness_Forest = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Darkness_Forest )

g_pPictureVelder_East_Darkness_Forest:SetTex( "DLG_Common_New_Texture44.tga", "Darkness_Forest" )

g_pPictureVelder_East_Darkness_Forest:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(194-10,320)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--벤더스의 동굴
g_pPictureVelder_East_Venders_Cave = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Venders_Cave )

g_pPictureVelder_East_Venders_Cave:SetTex( "DLG_Common_New_Texture44.tga", "Venders_Cave" )

g_pPictureVelder_East_Venders_Cave:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(403,219)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--지하수로
g_pPictureVelder_East_Cave = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Cave )

g_pPictureVelder_East_Cave:SetTex( "DLG_Common_New_Texture44.tga", "Cave" )

g_pPictureVelder_East_Cave:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(272-35,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--윌리의 성 외곽
g_pPictureVelder_East_Wally_Castle_Side = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Wally_Castle_Side )

g_pPictureVelder_East_Wally_Castle_Side:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Castle_Side" )

g_pPictureVelder_East_Wally_Castle_Side:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(107-40,226)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--윌리의 성
g_pPictureVelder_East_Wally_Castle = g_pUIDialog:CreatePicture()
g_pStaticVelder_East:AddPicture( g_pPictureVelder_East_Wally_Castle )

g_pPictureVelder_East_Wally_Castle:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Castle" )

g_pPictureVelder_East_Wally_Castle:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(359-180+22-7,289-180+22)",

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

	g_pPictureWilliam_space:SetTex( "DLG_UI_Title02_B.tga", "William_Title" )

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
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
		"LEFT_TOP		= D3DXVECTOR2(117,641)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]
--비던
g_pStaticSecret_Dungeon_Wally_Laboratory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSecret_Dungeon_Wally_Laboratory )
g_pStaticSecret_Dungeon_Wally_Laboratory:SetName( "Wally's Underground Laboratory_Icon_Info" )
g_pPictureVelder_East_Secreat_Dungeon = g_pUIDialog:CreatePicture()
g_pStaticSecret_Dungeon_Wally_Laboratory:AddPicture( g_pPictureVelder_East_Secreat_Dungeon )

g_pPictureVelder_East_Secreat_Dungeon:SetTex( "DLG_Common_New_Texture44.tga", "Wally_Secreat_Dungeon" )

g_pPictureVelder_East_Secreat_Dungeon:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,

	"LEFT_TOP		= D3DXVECTOR2(534-210+18-37,274+10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--- 헤니르의시공
g_pStaticHenir = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHenir )
g_pStaticHenir:SetNameStrID( STR_ID_3722 )
g_pPictureHenir_space = g_pUIDialog:CreatePicture()
g_pStaticHenir:AddPicture( g_pPictureHenir_space )
g_pPictureHenir_space:SetTex( "DLG_UI_Title02_B.tga", "Local_Henir" )
g_pPictureHenir_space:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(468-25,82+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
-- 디펜스 던전
g_pStatic_Secretgarden = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Secretgarden )
g_pStatic_Secretgarden:SetName( "DefenceName" )

g_pPicture_Secretgarden_text = g_pUIDialog:CreatePicture()
g_pStatic_Secretgarden:AddPicture( g_pPicture_Secretgarden_text )

g_pPicture_Secretgarden_text:SetTex( "DLG_UI_Title03.tga", "defence_title" )

g_pPicture_Secretgarden_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(37-20, 334)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
--[[
		-- -할로윈 던전---
	g_pStaticHalloween = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticHalloween )
	g_pStaticHalloween:SetName( "Halloween" )


	g_pPictureHalloween = g_pUIDialog:CreatePicture()
	g_pStaticHalloween:AddPicture( g_pPictureHalloween )

	g_pPictureHalloween:SetTex( "DLG_Common_New_Texture44.tga", "Holloween" )

	g_pPictureHalloween:SetPoint
	{

	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
		"LEFT_TOP		= D3DXVECTOR2(475,335)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]
--[[
	--식목일 이벤트
	g_pStaticTree_Day = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticTree_Day )
	g_pStaticTree_Day:SetName( "식목일 이벤트" )

	g_pPictureTree_Day_space = g_pUIDialog:CreatePicture()
	g_pStaticTree_Day:AddPicture( g_pPictureTree_Day_space )

	g_pPictureTree_Day_space:SetTex( "DLG_UI_Title02.tga", "tears" )

	g_pPictureTree_Day_space:SetPoint
	{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
		"LEFT_TOP		= D3DXVECTOR2(471,334)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]

-- --발렌타인 이벤트
-- g_pStatic_Valentine_Day  = g_pUIDialog:CreateStatic()
-- g_pUIDialog:AddControl( g_pStatic_Valentine_Day )
-- g_pStatic_Valentine_Day:SetName( "월리와 초콜릿 공장" ) 

-- g_pPicture = g_pUIDialog:CreatePicture()
-- g_pStatic_Valentine_Day:AddPicture( g_pPicture )
-- g_pPicture:SetTex( "DLG_UI_Title03.tga", "EVENT_VALENTINE" )
-- g_pPicture:SetPoint
-- {
--	RESIZE_X = 0.66,
--	RESIZE_Y = 0.66,
	-- "LEFT_TOP		= D3DXVECTOR2(312,120)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

--[[
--해외 나와 이벤트
g_pStatic_Night_Watcher  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Night_Watcher )

g_pStatic_Night_Watcher:AddDummyInt( DUNGEON_ID["DI_EVENT_NIGHT_WATCHER"] )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Night_Watcher:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Title_CN01.tga", "KING_NASODS_LAIR" )
g_pPicture:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(471+5,334+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--해외 할로윈 이벤트 2013
g_pStatic_Halloween_2013  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Halloween_2013 )
g_pStatic_Halloween_2013:AddDummyInt( DUNGEON_ID["DI_EVENT_HALLOWEEN_2013"] )
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Halloween_2013:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture_INT01.tga", "HALLOWEEN_BANQUET" )
g_pPicture:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(471-390-20,334+25-240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Halloween_2013  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Halloween_2013 )
g_pStatic_Halloween_2013:AddDummyInt( DUNGEON_ID["DI_EVENT_HALLOWEEN_2013_BOSS"] )
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Halloween_2013:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture_INT01.tga", "HALLOWEEN_BANQUET" )
g_pPicture:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(471-390-20,334+25-240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Halloween_2013  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Halloween_2013 )
g_pStatic_Halloween_2013:AddDummyInt( DUNGEON_ID["DI_EVENT_HALLOWEEN_2013_LINKER"] )
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Halloween_2013:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture_INT01.tga", "HALLOWEEN_BANQUET" )
g_pPicture:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(471-390-20,334+25-240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]