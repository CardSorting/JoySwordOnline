-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "BossState" )
g_pUIDialog:SetPos( 0, 25 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticBoss_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBoss_State )
g_pStaticBoss_State:SetName( "Boss_State" )

-------------------- 보스 Max Gage
-- Gage Left(Pictrue 0)
g_pPictureBoss_State1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State1 )
g_pPictureBoss_State1:SetTex( "DLG_BossState.TGA", "Boss_State1" )
g_pPictureBoss_State1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(85,133+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- Gage Center(Pictrue 1)
g_pPictureBoss_State2 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State2 )
g_pPictureBoss_State2:SetTex( "DLG_BossState.TGA", "Boss_State2" )
g_pPictureBoss_State2:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(261,133+20)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(887,187+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- Gage Right(Pictrue 2)
g_pPictureBoss_State3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State3 )
g_pPictureBoss_State3:SetTex( "DLG_BossState.TGA", "Boss_State3" )
g_pPictureBoss_State3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(887,133+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------------- 보스 현재 게이지 상태
-- 연두색 왼쪽(Pictrue 3)
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_BossState.TGA", "Boss_HP1_YG" )
g_pPictureBoss_HP1:SetShow( false )
g_pPictureBoss_HP1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(252,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 연두색 중앙(Pictrue 4)
g_pPictureBoss_HP2 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP2 )
g_pPictureBoss_HP2:SetTex( "DLG_BossState.TGA", "Boss_HP2_YG" )
g_pPictureBoss_HP2:SetShow( false )
g_pPictureBoss_HP2:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(261,150+20)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(879,169+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 연두색 오른쪽(Pictrue 5)
g_pPictureBoss_HP3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP3 )
g_pPictureBoss_HP3:SetTex( "DLG_BossState.TGA", "Boss_HP3_YG" )
g_pPictureBoss_HP3:SetShow( false )
g_pPictureBoss_HP3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(879,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 주황색 왼쪽(Pictrue 3)
g_pPictureBoss_HP4 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP4 )
g_pPictureBoss_HP4:SetTex( "DLG_BossState.TGA", "Boss_HP1_O" )
g_pPictureBoss_HP4:SetShow( false )
g_pPictureBoss_HP4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(252,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 주황색 중앙(Pictrue 4)
g_pPictureBoss_HP5 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP5 )
g_pPictureBoss_HP5:SetTex( "DLG_BossState.TGA", "Boss_HP2_O" )
g_pPictureBoss_HP5:SetShow( false )
g_pPictureBoss_HP5:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(261,150+20)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(879,169+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 주황색 오른쪽(Pictrue 5)
g_pPictureBoss_HP6 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP6 )
g_pPictureBoss_HP6:SetTex( "DLG_BossState.TGA", "Boss_HP3_O" )
g_pPictureBoss_HP6:SetShow( false )
g_pPictureBoss_HP6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(879,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--{{ 숫자
-- 1자리
g_pPictureBoss_LineNum1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum1 )
g_pPictureBoss_LineNum1:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum1:SetShow( false )
g_pPictureBoss_LineNum1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(866, 150.5+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -13,
	ADD_SIZE_Y		= -13,
	CHANGE_TIME		= 0.0,
}
-- 10자리
g_pPictureBoss_LineNum2 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum2 )
g_pPictureBoss_LineNum2:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum2:SetShow( false )
g_pPictureBoss_LineNum2:SetPoint
{
	--USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(853, 150.5+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -13,
	ADD_SIZE_Y		= -13,
	CHANGE_TIME		= 0.0,
}
-- 100자리
g_pPictureBoss_LineNum3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum3 )
g_pPictureBoss_LineNum3:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum3:SetShow( false )
g_pPictureBoss_LineNum3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(840, 150.5+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -13,
	ADD_SIZE_Y		= -13,
	CHANGE_TIME		= 0.0,
}

-- X 표시
g_pPictureBoss_LineNum3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum3 )
g_pPictureBoss_LineNum3:SetTex2( "PC_X.dds" )
g_pPictureBoss_LineNum3:SetShow( false )
g_pPictureBoss_LineNum3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(840, 153+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -16,
	ADD_SIZE_Y		= -16,
	CHANGE_TIME		= 0.0,
}
--}}
--------------------보스 얼굴
g_pStaticBoss_State_Face = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBoss_State_Face )
g_pStaticBoss_State_Face:SetName( "Boss_State_Face" )

g_pPictureBoss_Benders = g_pUIDialog:CreatePicture()
g_pStaticBoss_State_Face:AddPicture( g_pPictureBoss_Benders )
g_pPictureBoss_Benders:SetTex( "DLG_BossState.TGA", "NUI_BENDERS_NORMAL" )
g_pPictureBoss_Benders:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(123,144+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[

	g_pPictureBoss_William = g_pUIDialog:CreatePicture()
	g_pStaticBoss_State_Face:AddPicture( g_pPictureBoss_William )

	g_pPictureBoss_William:SetTex( "DLG_BossState.TGA", "William" )

	g_pPictureBoss_William:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(123,144)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureBoss_RED_GiantPporu = g_pUIDialog:CreatePicture()
	g_pStaticBoss_State_Face:AddPicture( g_pPictureBoss_RED_GiantPporu )

	g_pPictureBoss_RED_GiantPporu:SetTex( "DLG_BossState.TGA", "RED_GiantPporu" )

	g_pPictureBoss_RED_GiantPporu:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(123,144)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

--]]


