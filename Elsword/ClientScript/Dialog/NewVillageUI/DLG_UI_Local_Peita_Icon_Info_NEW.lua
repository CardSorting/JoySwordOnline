-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--------------- Static
g_pStatic_Pat_GAGE_BAR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_GAGE_BAR )
g_pStatic_Pat_GAGE_BAR:SetName( "g_pStatic_Pat_GAGE_BAR" )

---------------MAP BG
g_pPicture_Pat_GAGE_BAR_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_GAGE_BAR:AddPicture( g_pPicture_Pat_GAGE_BAR_BG2 )
g_pPicture_Pat_GAGE_BAR_BG2:SetTex( "Test_MAP.TGA", "TEST_MAP_BACK_HAMEL" )
g_pPicture_Pat_GAGE_BAR_BG2:SetPoint
{
	ADD_SIZE_X = 62,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------------마을이름텍스트---------- 
g_pStaticPeita_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPeita_Local_Text )
g_pStaticPeita_Local_Text:SetName( "Peita_Local_Text" )


--봉헌의 신전 입구

g_pPicturebonghun_temple_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPicturebonghun_temple_text )

g_pPicturebonghun_temple_text:SetTex( "DLG_UI_Title02_B.tga", "bonghun_gate" )

g_pPicturebonghun_temple_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(158-80+12-20,561-280-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--나선회랑
g_pPicturescrew_corridor_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPicturescrew_corridor_text )

g_pPicturescrew_corridor_text:SetTex( "DLG_UI_Title02_B.tga", "screw_pass" )

g_pPicturescrew_corridor_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(348-150+38-16,619-300-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------------------------------------------------------------
--{{ kimhc -- 2009-05-14
--지하 예배당

g_pPictureChapel_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureChapel_text )

g_pPictureChapel_text:SetTex( "DLG_UI_Title02_B.tga", "CHAPEL" )

g_pPictureChapel_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(624-263+50-25,641-306-76 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------
-- 지하 정원

g_pPictureUnderGarden_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureUnderGarden_text )

g_pPictureUnderGarden_text:SetTex( "DLG_UI_Title02_B.tga", "GARDEN" )

g_pPictureUnderGarden_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(502-209+21-25,553-274-70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------------------------------------------------------------

-- 첨탑의 심장부

g_pPictureTowerHeart_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureTowerHeart_text )

g_pPictureTowerHeart_text:SetTex( "DLG_UI_Title02_B.tga", "Tower_Heart" )

g_pPictureTowerHeart_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(444-196-48-5, 373-196-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------


-- 봉헌의 제단

g_pPictureOfferingsAlter_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureOfferingsAlter_text )

g_pPictureOfferingsAlter_text:SetTex( "DLG_UI_Title02_B.tga", "Offerings_Alter" )

g_pPictureOfferingsAlter_text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(461-198+43-15,195-130+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------------------------------------------------------








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
			----식목일 이벤트
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