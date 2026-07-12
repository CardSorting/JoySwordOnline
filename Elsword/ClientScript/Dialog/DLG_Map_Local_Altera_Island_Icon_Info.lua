-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






------------블랙크로우 호
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureAltera_BattleShip = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureAltera_BattleShip )

g_pPictureAltera_BattleShip:SetTex( "DLG_Common_New_Texture45.tga", "Battleship_Title" )

g_pPictureAltera_BattleShip:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(112-5,280-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------회귀의 평원
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureAltera_BattleShip = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureAltera_BattleShip )

g_pPictureAltera_BattleShip:SetTex( "DLG_Common_New_Texture45.tga", "Altera_Plain_Recycle" )

g_pPictureAltera_BattleShip:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(281,419)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------알테라 지하터널B4-1
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureAltera_BattleShip = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureAltera_BattleShip )

g_pPictureAltera_BattleShip:SetTex( "DLG_Common_New_Texture45.tga", "Altera_Below_Tunnel" )

g_pPictureAltera_BattleShip:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(470,465)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------알테라 평원
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureAltera_PLAIN = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureAltera_PLAIN )

g_pPictureAltera_PLAIN:SetTex( "DLG_Common_New_Texture45.tga", "Altera_PLAIN" )

g_pPictureAltera_PLAIN:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(678,438)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------나소드 생산공장
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureNasod_Factory = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureNasod_Factory )

g_pPictureNasod_Factory:SetTex( "DLG_Common_New_Texture13.tga", "Nasod_Factory" )

g_pPictureNasod_Factory:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(752,622)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------알테라 코어
g_pStaticAltera_Dungeon_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Dungeon_Name )
g_pStaticAltera_Dungeon_Name:SetName( "Altera_Dungeon_Name" )


g_pPictureAltera_Core = g_pUIDialog:CreatePicture()
g_pStaticAltera_Dungeon_Name:AddPicture( g_pPictureAltera_Core )

g_pPictureAltera_Core:SetTex( "DLG_Common_New_Texture45.tga", "Altera_Core" )

g_pPictureAltera_Core:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(490,651)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--------알테라 비던  ---- 운송터널:오염구역
g_pStaticAltera_Secret_Dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Secret_Dungeon )
g_pStaticAltera_Secret_Dungeon:SetName( "운송터널 : 오염구역_Icon_Info" )


g_pPictureAltera_Pollution = g_pUIDialog:CreatePicture()
g_pStaticAltera_Secret_Dungeon:AddPicture( g_pPictureAltera_Pollution )

g_pPictureAltera_Pollution:SetTex( "DLG_Common_New_Texture72.tga", "Altera_Secret_Dungeon_INFO" )

g_pPictureAltera_Pollution:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(530,309)",

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

		"LEFT_TOP		= D3DXVECTOR2(122,563)",
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

	"LEFT_TOP		= D3DXVECTOR2(312-10+84,124+116)",
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