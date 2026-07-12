-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_DungeonMap_UI" )
g_pUIDialog:SetPos( 300, 200 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticDungeon_Map_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Map_Window )
g_pStaticDungeon_Map_Window :SetName( "Dungeon_Map_BG" )
g_pPictureDungeon_Map_Window1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window1)
g_pPictureDungeon_Map_Window1:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background1" )
g_pPictureDungeon_Map_Window1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureDungeon_Map_Window2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window2)
g_pPictureDungeon_Map_Window2:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background2" )
g_pPictureDungeon_Map_Window2:SetPoint
{
    ADD_SIZE_X	= 375,
	"LEFT_TOP	= D3DXVECTOR2(11,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPictureDungeon_Map_Window3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window3)
g_pPictureDungeon_Map_Window3:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background3" )
g_pPictureDungeon_Map_Window3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(387,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- center left
g_pPictureDungeon_Map_Window4 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window4)
g_pPictureDungeon_Map_Window4:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background4" )
g_pPictureDungeon_Map_Window4:SetPoint
{
	ADD_SIZE_Y	= 110,
	"LEFT_TOP	= D3DXVECTOR2(0,11)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- left bottom
g_pPictureDungeon_Map_Window5 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window5)
g_pPictureDungeon_Map_Window5:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background5" )
g_pPictureDungeon_Map_Window5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,122)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- center bottom
g_pPictureDungeon_Map_Window6 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window6)
g_pPictureDungeon_Map_Window6:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background6" )
g_pPictureDungeon_Map_Window6:SetPoint
{
    ADD_SIZE_X	= 375,
	"LEFT_TOP	= D3DXVECTOR2(11,122)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- right bottom
g_pPictureDungeon_Map_Window7 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window7)
g_pPictureDungeon_Map_Window7:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background7" )
g_pPictureDungeon_Map_Window7:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(387,122)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- center right
g_pPictureDungeon_Map_Window8 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window8)
g_pPictureDungeon_Map_Window8:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background8" )
g_pPictureDungeon_Map_Window8:SetPoint
{
	ADD_SIZE_Y	= 110,
	"LEFT_TOP	= D3DXVECTOR2(386,11)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- center 
g_pPictureDungeon_Map_Window9 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Map_Window:AddPicture(g_pPictureDungeon_Map_Window9)
g_pPictureDungeon_Map_Window9:SetTex( "DLG_Common_Texture02.tga", "Dungeon_Playmap_Background9" )
g_pPictureDungeon_Map_Window9:SetPoint
{
	ADD_SIZE_X	= 374,
	ADD_SIZE_Y	= 110,
	"LEFT_TOP	= D3DXVECTOR2(11,11)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Stage_Lines" )

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Stage_Pictures" )

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Stage_Random_Pictures" )

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Stage_Clear_Pictures" )

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_User_Icon" )