-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Game_EXP_Gage" )
g_pUIDialog:SetPos( 0,12 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




g_pStaticBoss_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBoss_State )
g_pStaticBoss_State:SetName( "Static_EXP_Gage_BG" )



-- 'EXP'
g_pPictureBoss_State1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State1 )
g_pPictureBoss_State1:SetTex( "DLG_InGameExpGage.TGA", "EXP" )
g_pPictureBoss_State1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(29,740-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-- EXP 게이지 BG
g_pPictureBoss_State1 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State1 )
g_pPictureBoss_State1:SetTex( "DLG_InGameExpGage.TGA", "LEFT_GAGE_BG" )
g_pPictureBoss_State1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(61,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



for i = 0, 7 do

	posX = 159 + i * 94
	posY = 740

	g_pPictureBoss_State2 = g_pUIDialog:CreatePicture()
	g_pStaticBoss_State:AddPicture( g_pPictureBoss_State2 )
	g_pPictureBoss_State2:SetTex( "DLG_InGameExpGage.TGA", "MID_GAGE_BG" )
	g_pPictureBoss_State2:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(posX,posY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
end




posX = 159 + 8*94
g_pPictureBoss_State3 = g_pUIDialog:CreatePicture()
g_pStaticBoss_State:AddPicture( g_pPictureBoss_State3 )
g_pPictureBoss_State3:SetTex( "DLG_InGameExpGage.TGA", "RIGHT_GAGE_BG" )
g_pPictureBoss_State3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(posX,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











g_pStatic_ExpGage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ExpGage )
g_pStatic_ExpGage:SetName( "Static_EXP_Gage" )




-- 현재 게이지 상태
g_pPictureBoss_HP1 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP1 )
g_pPictureBoss_HP1:SetTex( "DLG_InGameExpGage.TGA", "LEFT_GAGE" )
g_pPictureBoss_HP1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBoss_HP2 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP2 )
g_pPictureBoss_HP2:SetTex( "DLG_InGameExpGage.TGA", "MID_GAGE" )
g_pPictureBoss_HP2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63+8,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBoss_HP3 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP3 )
g_pPictureBoss_HP3:SetTex( "DLG_InGameExpGage.TGA", "RIGHT_GAGE" )
g_pPictureBoss_HP3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 파란색
g_pPictureBoss_HP4 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP4 )
g_pPictureBoss_HP4:SetTex( "DLG_InGameExpGage.TGA", "LEFT_GAGE_BLUE" )
g_pPictureBoss_HP4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBoss_HP5 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP5 )
g_pPictureBoss_HP5:SetTex( "DLG_InGameExpGage.TGA", "MID_GAGE_BLUE" )
g_pPictureBoss_HP5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63+8,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBoss_HP6 = g_pUIDialog:CreatePicture()
g_pStatic_ExpGage:AddPicture( g_pPictureBoss_HP6 )
g_pPictureBoss_HP6:SetTex( "DLG_InGameExpGage.TGA", "RIGHT_GAGE_BLUE" )
g_pPictureBoss_HP6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStatic_ExpGage:AddString
{
	-- MSG 			= "99.9%",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2( 90-20, 742-3 )",
	"COLOR			= D3DXCOLOR(1, 1, 1, 1)",
	"OUTLINE_COLOR	= D3DXCOLOR(1, 1, 1, 1)",
}
