-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "BossState" )
g_pUIDialog:SetPos( 207, 100 )
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
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
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
	"LEFT_TOP		= D3DXVECTOR2(9,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(604,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- Gage Right(Pictrue 2)
g_pPictureBoss_State3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State3 )
g_pPictureBoss_State3:SetTex( "DLG_BossState.TGA", "Boss_State3" )
g_pPictureBoss_State3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(604,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------------------------------------보스게이지 - -진우
-- 보스게이지--빨간색
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_BossState.TGA", "Boss_HP1_R" )
g_pPictureBoss_HP1:SetShow( true )
g_pPictureBoss_HP1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 보스게이지
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_BossState.TGA", "Boss_HP2_R" )
g_pPictureBoss_HP1:SetShow( true )
g_pPictureBoss_HP1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(8,2)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(560,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 보스게이지--주황색
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_BossState.TGA", "BOSS_HP1_YG" )
g_pPictureBoss_HP1:SetShow( true )
g_pPictureBoss_HP1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 보스게이지
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_BossState.TGA", "BOSS_HP2_YG" )
g_pPictureBoss_HP1:SetShow( true )
g_pPictureBoss_HP1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(8,2)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(560,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--{{ 숫자
-- 1자리
g_pPictureBoss_LineNum1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum1 )
g_pPictureBoss_LineNum1:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum1:SetShow( TRUE )
g_pPictureBoss_LineNum1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+528, 0+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -16,
	ADD_SIZE_Y		= -16,
	CHANGE_TIME		= 0.0,
}
-- 10자리
g_pPictureBoss_LineNum2 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum2 )
g_pPictureBoss_LineNum2:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum2:SetShow( TRUE )
g_pPictureBoss_LineNum2:SetPoint
{
	--USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0+528-12, 0+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -16,
	ADD_SIZE_Y		= -16,
	CHANGE_TIME		= 0.0,
}
-- 100자리
g_pPictureBoss_LineNum3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum3 )
g_pPictureBoss_LineNum3:SetTex2( "PC_0.dds" )
g_pPictureBoss_LineNum3:SetShow( TRUE )
g_pPictureBoss_LineNum3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+528-12*2, 0+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -16,
	ADD_SIZE_Y		= -16,
	CHANGE_TIME		= 0.0,
}

-- X 표시
g_pPictureBoss_LineNum3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_LineNum3 )
g_pPictureBoss_LineNum3:SetTex2( "PC_X.dds" )
g_pPictureBoss_LineNum3:SetShow( TRUE )
g_pPictureBoss_LineNum3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+528-12*3, 0+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	ADD_SIZE_X		= -20,
	ADD_SIZE_Y		= -20,
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
	"LEFT_TOP		= D3DXVECTOR2(544,0+2)",
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

--------------------보스 라인
g_pStaticBoss_State_Face = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBoss_State_Face )
g_pStaticBoss_State_Face:SetName( "Boss_State_Face" )

g_pPictureBoss_Benders = g_pUIDialog:CreatePicture()
g_pStaticBoss_State_Face:AddPicture( g_pPictureBoss_Benders )
g_pPictureBoss_Benders:SetTex( "DLG_BossState.TGA", "BOSS_HP_LINE" )
g_pPictureBoss_Benders:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(544,0+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

