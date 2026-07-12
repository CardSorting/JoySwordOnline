-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-----------획득EXP-------------

g_pStaticReward_Exp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReward_Exp )
g_pStaticReward_Exp:SetName( "Dungeon_Result_EXP_BG" )
g_pStaticReward_Exp:SetShow( false )

g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 533 - 19, 480 + 16 + 14, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 656 - 19, 480 + 16 + 14, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 778 - 19, 480 + 16 + 14, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 905 - 19, 480 + 16 + 14, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 535 - 19, 522 + 16 + 20, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 659 - 19, 522 + 16 + 20, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 781 - 19, 522 + 16 + 20, 0 ) )
g_pStaticReward_Exp:AddDummyPos( D3DXVECTOR3( 908 - 19, 522 + 16 + 20, 0 ) )

g_pPictureExp_Window = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureExp_Window )

g_pPictureExp_Window:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_TakeExp" )

g_pPictureExp_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(442,463)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureExp_Window2 = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureExp_Window2 )

g_pPictureExp_Window2:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_Arrow1" )

g_pPictureExp_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(385,559)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-----추가된 클리어,랭크 기타등등 활성화 이미지-----

g_pPictureEXP_Clear = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Clear )
g_pPictureEXP_Clear:SetShow( false )
g_pPictureEXP_Clear:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_Clear" )

g_pPictureEXP_Clear:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(477-5-20,480-5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureEXP_Rank = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Rank )
g_pPictureEXP_Rank:SetShow( false )
g_pPictureEXP_Rank:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_Rank" )

g_pPictureEXP_Rank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(599-5-20,480-5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureEXP_Rank = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Rank )
g_pPictureEXP_Rank:SetShow( false )
g_pPictureEXP_Rank:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_Party" )

g_pPictureEXP_Rank:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(721-5-20,480-5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureEXP_MVP = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_MVP )
g_pPictureEXP_MVP:SetShow( false )
g_pPictureEXP_MVP:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_MVP" )

g_pPictureEXP_MVP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(843-5-20,480-5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureEXP_PCRoom = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_PCRoom )
g_pPictureEXP_PCRoom:SetShow( false )
g_pPictureEXP_PCRoom:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_PCROOM" )

g_pPictureEXP_PCRoom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(477-5-20,522-5+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureEXP_Premium = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Premium )
g_pPictureEXP_Premium:SetShow( false )
g_pPictureEXP_Premium:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_Premium" )

g_pPictureEXP_Premium:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(599-5-20,522-5+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



 -------------수정 되었음------------- 
g_pPictureEXP_Empty1 = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Empty1 )
g_pPictureEXP_Empty1:SetShow( false )

g_pPictureEXP_Empty1:SetTex( "DLG_Common_New_Texture14.TGA", "Dungeon_Reward_Exp_Event" )

g_pPictureEXP_Empty1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(721-5-20,522-5+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----채널 보상 
g_pPictureEXP_Empty1 = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureEXP_Empty1 )
g_pPictureEXP_Empty1:SetShow( false )

g_pPictureEXP_Empty1:SetTex( "DLG_Common_New_Texture14.TGA", "DUNGEON_REWARD_EXP_CHANNEL" )

g_pPictureEXP_Empty1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(843-5-20,522-5+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureExp_Bar = g_pUIDialog:CreatePicture()
g_pStaticReward_Exp:AddPicture( g_pPictureExp_Bar )

g_pPictureExp_Bar:SetTex( "DLG_Common_New_Texture17.tga", "Exp_Gauge_Bar" )

g_pPictureExp_Bar:SetPoint
{
       ADD_SIZE_X = 387,
	"LEFT_TOP		= D3DXVECTOR2(528-3,681+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









	g_pStaticReward_Exp:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(705-40+12+50,709)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}









 



 


































