-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------마을이름텍스트---------- 
g_pStaticBesma_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma_Local_Text )
g_pStaticBesma_Local_Text:SetName( "Besma_Local_Text" )



g_pPictureDragon_Way_Text = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureDragon_Way_Text )

g_pPictureDragon_Way_Text:SetTex( "DLG_Common_New_Texture44.tga", "Dragon_Road" )

g_pPictureDragon_Way_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureBesma_Lake_Text = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Lake_Text )

g_pPictureBesma_Lake_Text:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Lake" )

g_pPictureBesma_Lake_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(637,489)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBesma_Lakenight = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Lakenight )

g_pPictureBesma_Lakenight:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Lake_night" )

g_pPictureBesma_Lakenight:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(789,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureBesma_Coal = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Coal )

g_pPictureBesma_Coal:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Coal" )

g_pPictureBesma_Coal:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(879,437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

g_pPictureBesma_Coal_Deep = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureBesma_Coal_Deep )

g_pPictureBesma_Coal_Deep:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Coal_Deep" )

g_pPictureBesma_Coal_Deep:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(777,333)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSky_Ship = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureSky_Ship )

g_pPictureSky_Ship:SetTex( "DLG_Common_New_Texture45.tga", "Besma_Air_Ship" )

g_pPictureSky_Ship:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(579,245)",
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




g_pPictureDragon_Nest = g_pUIDialog:CreatePicture()
g_pStaticBesma_Local_Text:AddPicture( g_pPictureDragon_Nest )

g_pPictureDragon_Nest:SetTex( "DLG_Common_New_Texture44.tga", "Dragon_Nest" )

g_pPictureDragon_Nest:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(391,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


















g_pStaticSecret_Dungeon_Besma_Secret = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSecret_Dungeon_Besma_Secret )
g_pStaticSecret_Dungeon_Besma_Secret:SetName( "용의 둥지:나락_Icon_Info" )


g_pPictureVelder_South_Secreat_Dungeon = g_pUIDialog:CreatePicture()
g_pStaticSecret_Dungeon_Besma_Secret:AddPicture( g_pPictureVelder_South_Secreat_Dungeon )

g_pPictureVelder_South_Secreat_Dungeon:SetTex( "DLG_Common_New_Texture45.tga", "Dragon_Nest_Secret" )

g_pPictureVelder_South_Secreat_Dungeon:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(197,360)",

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
	"LEFT_TOP		= D3DXVECTOR2(312-10+70,124+105)",
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