-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "PVPGame_RankBox" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStaticPVPGame_RankBox = g_pUIDialog:CreateStatic()
g_pStaticPVPGame_RankBox:SetName( "StaticPVPGame_RankBox" )
g_pUIDialog:AddControl( g_pStaticPVPGame_RankBox )



g_pPicture1st_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Red1 )


g_pPicture1st_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Big1" )

g_pPicture1st_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(783,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture1st_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Red2 )


g_pPicture1st_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Big2" )

g_pPicture1st_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(788,127)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture1st_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Red3 )


g_pPicture1st_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Big3" )

g_pPicture1st_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture1st_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Blue1 )


g_pPicture1st_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Big1" )

g_pPicture1st_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(783,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture1st_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Blue2 )


g_pPicture1st_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Big2" )

g_pPicture1st_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(788,127)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture1st_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture1st_RankBox_Blue3 )


g_pPicture1st_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Big3" )

g_pPicture1st_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture2nd_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Red1 )


g_pPicture2nd_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture2nd_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture2nd_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Red2 )


g_pPicture2nd_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture2nd_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,158)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture2nd_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Red3 )


g_pPicture2nd_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture2nd_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture2nd_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Blue1 )


g_pPicture2nd_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture2nd_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture2nd_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Blue2 )


g_pPicture2nd_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture2nd_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,158)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture2nd_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture2nd_RankBox_Blue3 )


g_pPicture2nd_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture2nd_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture3rd_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Red1 )


g_pPicture3rd_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture3rd_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture3rd_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Red2 )


g_pPicture3rd_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture3rd_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,184)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,207)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture3rd_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Red3 )


g_pPicture3rd_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture3rd_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture3rd_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Blue1 )


g_pPicture3rd_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture3rd_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture3rd_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Blue2 )


g_pPicture3rd_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture3rd_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,184)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,207)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture3rd_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture3rd_RankBox_Blue3 )


g_pPicture3rd_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture3rd_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture4th_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Red1 )


g_pPicture4th_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture4th_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture4th_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Red2 )


g_pPicture4th_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture4th_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,210)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,233)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture4th_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Red3 )


g_pPicture4th_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture4th_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture4th_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Blue1 )


g_pPicture4th_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture4th_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture4th_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Blue2 )


g_pPicture4th_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture4th_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,210)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,233)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture4th_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture4th_RankBox_Blue3 )


g_pPicture4th_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture4th_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture5th_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Red1 )


g_pPicture5th_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture5th_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture5th_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Red2 )


g_pPicture5th_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture5th_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,236)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,259)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture5th_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Red3 )


g_pPicture5th_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture5th_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture5th_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Blue1 )


g_pPicture5th_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture5th_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture5th_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Blue2 )


g_pPicture5th_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture5th_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,236)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,259)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture5th_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture5th_RankBox_Blue3 )


g_pPicture5th_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture5th_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture6th_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Red1 )


g_pPicture6th_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture6th_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture6th_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Red2 )


g_pPicture6th_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture6th_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,262)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,285)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture6th_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Red3 )


g_pPicture6th_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture6th_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture6th_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Blue1 )


g_pPicture6th_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture6th_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture6th_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Blue2 )


g_pPicture6th_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture6th_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,262)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,285)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture6th_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture6th_RankBox_Blue3 )


g_pPicture6th_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture6th_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture7th_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Red1 )


g_pPicture7th_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture7th_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture7th_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Red2 )


g_pPicture7th_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture7th_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,288)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,311)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture7th_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Red3 )


g_pPicture7th_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture7th_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture7th_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Blue1 )


g_pPicture7th_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture7th_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture7th_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Blue2 )


g_pPicture7th_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture7th_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,288)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,311)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture7th_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture7th_RankBox_Blue3 )


g_pPicture7th_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture7th_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture8th_RankBox_Red1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Red1 )


g_pPicture8th_RankBox_Red1:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small1" )

g_pPicture8th_RankBox_Red1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture8th_RankBox_Red2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Red2 )


g_pPicture8th_RankBox_Red2:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small2" )

g_pPicture8th_RankBox_Red2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,314)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture8th_RankBox_Red3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Red3 )


g_pPicture8th_RankBox_Red3:SetTex( "DLG_PVP_State_Info0.tga", "Red_RankBox_Small3" )

g_pPicture8th_RankBox_Red3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture8th_RankBox_Blue1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Blue1 )


g_pPicture8th_RankBox_Blue1:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small1" )

g_pPicture8th_RankBox_Blue1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(794,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture8th_RankBox_Blue2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Blue2 )


g_pPicture8th_RankBox_Blue2:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small2" )

g_pPicture8th_RankBox_Blue2:SetPoint
{

	USE_TEXTURE_SIZE = FALSE,

  	"LEFT_TOP		= D3DXVECTOR2(800,314)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1004,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture8th_RankBox_Blue3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture8th_RankBox_Blue3 )


g_pPicture8th_RankBox_Blue3:SetTex( "DLG_PVP_State_Info0.tga", "Blue_RankBox_Small3" )

g_pPicture8th_RankBox_Blue3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1004,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}









g_pPicture_RankBox_Tap = g_pUIDialog:CreatePicture()
g_pStaticPVPGame_RankBox:AddPicture( g_pPicture_RankBox_Tap )
g_pPicture_RankBox_Tap:SetTex( "DLG_PVP_State_Info0.tga", "Tap" )
g_pPicture_RankBox_Tap:SetPoint
{
	--"LEFT_TOP		= D3DXVECTOR2(791,103)",
	"LEFT_TOP		= D3DXVECTOR2(970,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}










-- 1등 순위 정보
g_pStaticPVPGame_RankBox:AddString
{
	
	-- MSG 				= "왕천만외계인",
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(886, 133)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_RankBox:AddString
{
	
	-- MSG 				= "0", -- 킬 수
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(985, 133)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_RankBox:AddString
{
	
	-- MSG 				= "New!", 
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(769, 133)",
	"COLOR				= D3DXCOLOR(0.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}
g_pStaticPVPGame_RankBox:AddString
{
	
	MSG 				= STR_ID_1139, 
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(769, 133)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}


-- 2~8등 순위 정보
for i = 0, 6 do

	posY = 161 + 26 * i 
	
	g_pStaticPVPGame_RankBox:AddString
	{
		-- MSG 				= "왕천만외계인",
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(892, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_RankBox:AddString
	{
		-- MSG 				= "0", -- 킬 수
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(985, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_RankBox:AddString
	{
		-- MSG 				= "New!", 
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(780, posY)",
		"COLOR				= D3DXCOLOR(0.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	g_pStaticPVPGame_RankBox:AddString
	{
		MSG 				= STR_ID_1139, 
		FONT_INDEX			= XUF_DODUM_13_NORMAL,
		SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
		"POS 				= D3DXVECTOR2(780, posY)",
		"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		FONT_STYLE			= FONT_STYLE["FS_SHELL"],
	}
	
end



