-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------마을이름텍스트---------- 
g_pStaticVelder_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Local_Text )
g_pStaticVelder_Local_Text:SetName( "Velder_Local_Text" )


---- 제3거주지구
g_pPictureVelder_Dwelling_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_Dwelling_Text )

g_pPictureVelder_Dwelling_Text:SetTex( "DLG_UI_TITLE02.tga", "Velder_Dwelling" )

g_pPictureVelder_Dwelling_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(157,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 희망의 다리
g_pPictureVelder_Bridge_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_Bridge_Text )

g_pPictureVelder_Bridge_Text:SetTex( "DLG_UI_TITLE02.tga", "Velder_Bridge" )

g_pPictureVelder_Bridge_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(331,344)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 왕궁진입로
g_pPictureVelder_PALACE_ENTRANCE_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_PALACE_ENTRANCE_Text )

g_pPictureVelder_PALACE_ENTRANCE_Text:SetTex( "DLG_UI_TITLE02.tga", "ROAD_PALACE" )

g_pPictureVelder_PALACE_ENTRANCE_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491,272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 불타는 희망의 다리
g_pPictureVelder_BRIDGE_BUNNING_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_BRIDGE_BUNNING_Text )

g_pPictureVelder_BRIDGE_BUNNING_Text:SetTex( "DLG_UI_TITLE03.tga", "BRIDGE_BUNNING" )

g_pPictureVelder_BRIDGE_BUNNING_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(628,372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 제 1상업지구
g_pPictureVelder_MARKET_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_MARKET_Text )

g_pPictureVelder_MARKET_Text:SetTex( "DLG_UI_TITLE03.tga", "MARKET" )

g_pPictureVelder_MARKET_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(553,531)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 남쪽게이트
g_pPictureVelder_GATE_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_GATE_Text )

g_pPictureVelder_GATE_Text:SetTex( "DLG_UI_TITLE03.tga", "GATE" )

g_pPictureVelder_GATE_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(384,614)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 벨더 비던 (환각의 벨더)
g_pStaticVelder_Secret_Dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Secret_Dungeon )
g_pStaticVelder_Secret_Dungeon:SetName( "환각의 벨더_Icon_Info" )

g_pPictureVelder_Secret_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Secret_Dungeon:AddPicture( g_pPictureVelder_Secret_Text )
g_pPictureVelder_Secret_Text:SetTex( "DLG_UI_TITLE03.tga", "VELDER_SCRET" )
g_pPictureVelder_Secret_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(783,141+113)",
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

--[[
	---할로윈 던전---
g_pStaticHalloween = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHalloween )
g_pStaticHalloween:SetName( "Halloween" )


g_pPictureHalloween = g_pUIDialog:CreatePicture()
g_pStaticHalloween:AddPicture( g_pPictureHalloween )

g_pPictureHalloween:SetTex( "DLG_Common_New_Texture44.tga", "Holloween" )

g_pPictureHalloween:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(117,641)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

--[[
		----식목일 이벤트
		g_pStaticTree_Day = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticTree_Day )
		g_pStaticTree_Day:SetName( "식목일 이벤트" )

		g_pPictureTree_Day_space = g_pUIDialog:CreatePicture()
		g_pStaticTree_Day:AddPicture( g_pPictureTree_Day_space )

		g_pPictureTree_Day_space:SetTex( "DLG_UI_Title02.tga", "tears" )

		g_pPictureTree_Day_space:SetPoint
		{
			"LEFT_TOP		= D3DXVECTOR2(312-40+82,124+49)",
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