-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 기력 빈칸
g_pStatic_Ara_ForcePower = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ara_ForcePower )
g_pStatic_Ara_ForcePower:SetName( "Ara_ForcePower" )
g_pStatic_Ara_ForcePower:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_L = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_L )
g_pPicture_Ara_ForcePower_Bg_L:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_LEFT" )
g_pPicture_Ara_ForcePower_Bg_L:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_L:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M1 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M1 )
g_pPicture_Ara_ForcePower_Bg_M1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+0*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M1:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M2 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M2 )
g_pPicture_Ara_ForcePower_Bg_M2:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+1*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M2:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M3 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M3 )
g_pPicture_Ara_ForcePower_Bg_M3:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+2*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M3:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M4 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M4 )
g_pPicture_Ara_ForcePower_Bg_M4:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+3*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M4:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M5 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M5 )
g_pPicture_Ara_ForcePower_Bg_M5:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+4*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M5:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M6 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M6 )
g_pPicture_Ara_ForcePower_Bg_M6:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+5*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M6:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M7 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M7 )
g_pPicture_Ara_ForcePower_Bg_M7:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M7:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+6*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M7:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_M8 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_M8 )
g_pPicture_Ara_ForcePower_Bg_M8:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_MIDDLE" )
g_pPicture_Ara_ForcePower_Bg_M8:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97+29+7*20,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_M8:SetShow( false )

g_pPicture_Ara_ForcePower_Bg_R = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower:AddPicture( g_pPicture_Ara_ForcePower_Bg_R )
g_pPicture_Ara_ForcePower_Bg_R:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_GAUGE_RIGHT" )
g_pPicture_Ara_ForcePower_Bg_R:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(97,69)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_Ara_ForcePower_Bg_R:SetShow( false )

-- 기력칸
g_pStatic_Ara_ForcePower_Ball = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ara_ForcePower_Ball )
g_pStatic_Ara_ForcePower_Ball:SetName( "Ara_ForcePower_Ball" )
g_pStatic_Ara_ForcePower_Ball:SetShow( false )

g_pPicture_Ara_ForcePower_1 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_1 )
g_pPicture_Ara_ForcePower_1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_2 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_2 )
g_pPicture_Ara_ForcePower_2:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*1,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_3 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_3 )
g_pPicture_Ara_ForcePower_3:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*2,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_4 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_4 )
g_pPicture_Ara_ForcePower_4:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*3,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_5 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_5 )
g_pPicture_Ara_ForcePower_5:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_5:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*4,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_6 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_6 )
g_pPicture_Ara_ForcePower_6:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_6:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*5,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_7 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_7 )
g_pPicture_Ara_ForcePower_7:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_7:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*6,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_8 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_8 )
g_pPicture_Ara_ForcePower_8:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_8:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*7,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_9 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_9 )
g_pPicture_Ara_ForcePower_9:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_9:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*8,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_Ara_ForcePower_10 = g_pUIDialog:CreatePicture()
g_pStatic_Ara_ForcePower_Ball:AddPicture( g_pPicture_Ara_ForcePower_10 )
g_pPicture_Ara_ForcePower_10:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "BG_ARA_FORCE_BALL" )
g_pPicture_Ara_ForcePower_10:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(109+20*9,72)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}