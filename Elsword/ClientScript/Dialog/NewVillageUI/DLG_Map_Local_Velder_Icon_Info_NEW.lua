-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------마을이름텍스트---------- 
g_pStaticVelder_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Local_Text )
g_pStaticVelder_Local_Text:SetName( "Velder_Local_Text" )


---- 제3거주지구
g_pPictureVelder_Dwelling_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_Dwelling_Text )

g_pPictureVelder_Dwelling_Text:SetTex( "DLG_UI_Title02_B.tga", "Velder_Dwelling" )

g_pPictureVelder_Dwelling_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(107-10,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 희망의 다리
g_pPictureVelder_Bridge_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_Bridge_Text )

g_pPictureVelder_Bridge_Text:SetTex( "DLG_UI_Title02_B.tga", "Velder_Bridge" )

g_pPictureVelder_Bridge_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(211+4-10,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 왕궁진입로
g_pPictureVelder_PALACE_ENTRANCE_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_PALACE_ENTRANCE_Text )

g_pPictureVelder_PALACE_ENTRANCE_Text:SetTex( "DLG_UI_Title02_B.tga", "ROAD_PALACE" )

g_pPictureVelder_PALACE_ENTRANCE_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(326-7,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 불타는 희망의 다리
g_pPictureVelder_BRIDGE_BUNNING_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_BRIDGE_BUNNING_Text )

g_pPictureVelder_BRIDGE_BUNNING_Text:SetTex( "DLG_UI_TITLE03.tga", "BRIDGE_BUNNING" )

g_pPictureVelder_BRIDGE_BUNNING_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(412-10,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 제 1상업지구
g_pPictureVelder_MARKET_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_MARKET_Text )

g_pPictureVelder_MARKET_Text:SetTex( "DLG_UI_TITLE03.tga", "MARKET" )

g_pPictureVelder_MARKET_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(359-20+8,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- 남쪽게이트
g_pPictureVelder_GATE_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Local_Text:AddPicture( g_pPictureVelder_GATE_Text )

g_pPictureVelder_GATE_Text:SetTex( "DLG_UI_TITLE03.tga", "GATE" )

g_pPictureVelder_GATE_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(384-156+15-10,614-286-14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 벨더 비던 (환각의 벨더)
g_pStaticVelder_Secret_Dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_Secret_Dungeon )
g_pStaticVelder_Secret_Dungeon:SetName( "Velder's Hallucination_Icon_Info" )

g_pPictureVelder_Secret_Text = g_pUIDialog:CreatePicture()
g_pStaticVelder_Secret_Dungeon:AddPicture( g_pPictureVelder_Secret_Text )
g_pPictureVelder_Secret_Text:SetTex( "DLG_UI_TITLE03.tga", "VELDER_SCRET" )
g_pPictureVelder_Secret_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(32-25,92)",
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
--]]