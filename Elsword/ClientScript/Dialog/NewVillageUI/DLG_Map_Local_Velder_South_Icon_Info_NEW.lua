-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------마을이름텍스트---------- 
g_pStaticBesma_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma_Local_Text )
g_pStaticBesma_Local_Text:SetName( "Besma_Local_Text" )


--용의길
g_pPictureDragon_Way_Text = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureDragon_Way_Text )

g_pPictureDragon_Way_Text:SetTex( "DLG_Common_New_Texture44.tga", "Dragon_Road" )

g_pPictureDragon_Way_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(372-188-93-15,376-216-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--베스마 호수
g_pPictureBesma_Lake_Text = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Lake_Text )

g_pPictureBesma_Lake_Text:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Lake" )

g_pPictureBesma_Lake_Text:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(637-288-67-10,489-258-23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--베스마 호수 밤
g_pPictureBesma_Lakenight = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Lakenight )

g_pPictureBesma_Lakenight:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Lake_night" )

g_pPictureBesma_Lakenight:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(789-356-60-5,607-308+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureBesma_Coal = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Coal )

g_pPictureBesma_Coal:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Coal" )

g_pPictureBesma_Coal:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(879,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

--리치광산
g_pPictureBesma_Coal_Deep = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Coal_Deep )

g_pPictureBesma_Coal_Deep:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Coal_Deep" )

g_pPictureBesma_Coal_Deep:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(777-346-86,333-200-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--수송비공정
g_pPictureSky_Ship = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureSky_Ship )

g_pPictureSky_Ship:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Air_Ship" )

g_pPictureSky_Ship:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(579-266-120-7,245-160-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
g_pPictureBesma_Velley = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Velley )

g_pPictureBesma_Velley:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Velley" )

g_pPictureBesma_Velley:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(391,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]



--용의 둥지
g_pPictureDragon_Nest = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureDragon_Nest )

g_pPictureDragon_Nest:SetTex( "DLG_Common_New_Texture44.tga", "Dragon_Nest" )

g_pPictureDragon_Nest:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(391-196+10,631-314-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--용의 둥지 나락
g_pStaticSecret_Dungeon_Besma_Secret = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSecret_Dungeon_Besma_Secret )
g_pStaticSecret_Dungeon_Besma_Secret:SetName( "Dragon Nest: Abyss_Icon_Info" )


g_pPictureVelder_South_Secreat_Dungeon = g_pUIDialog:CreatePicture()
g_pStaticSecret_Dungeon_Besma_Secret:AddPicture( g_pPictureVelder_South_Secreat_Dungeon )

g_pPictureVelder_South_Secreat_Dungeon:SetTex( "DLG_Common_New_Texture45.tga", "Dragon_Nest_Secret" )

g_pPictureVelder_South_Secreat_Dungeon:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(197-90+4-5,631-314-30+3)",

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

		"LEFT_TOP		= D3DXVECTOR2(52,267)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]


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