-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )


--노아스의 호수 입장 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Visit_Noas_Field" )
g_pStatic:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_01" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_02" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-48,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--토부 킬 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Kill_NPC" )
g_pStatic:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_03" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_04" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-86,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--엘의 나무 입장 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Enter_ElTree" )
g_pStatic:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_05" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_06" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-74,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--던전 입장 공용 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Enter_Dungeon" )
g_pStatic:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_07" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_08" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-78,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--도적 뽀루 킬 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Kill_Thief_Pporu" )
g_pStatic:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_09" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_10" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-98,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--보르 킬 가이드
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_Kill_Borr" )
g_pStatic:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_11" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info.tga", "BG_QUEST_NOTICE_12" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-22,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--Q마크를 따라 이동하여, 퀘스트를 수행하세요
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Quest_QMark_Guide" )
g_pStatic:SetShow(true)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info_01.tga", "BG_QUEST_NOTICE_13" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_Quest_Info_01.tga", "BG_QUEST_NOTICE_14" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(204+512-87,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}