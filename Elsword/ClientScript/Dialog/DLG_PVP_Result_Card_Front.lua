-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_Result_Card_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 21,  99, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 278, 99, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 540, 99, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 796, 99, 0 ) )

g_pStaticPVP_Result_User_Box_Level_Up = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_User_Box_Level_Up )
g_pStaticPVP_Result_User_Box_Level_Up:SetName( "PVP_Result_User_Box_Level_Up" )
g_pStaticPVP_Result_User_Box_Level_Up:SetShow( false )

-----캐릭터위에 커다란 레벨업-----------  
g_pPicturePVP_Result_User_BoxLevel_Up = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_User_Box_Level_Up:AddPicture( g_pPicturePVP_Result_User_BoxLevel_Up )
g_pPicturePVP_Result_User_BoxLevel_Up:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Level_Up" )
g_pPicturePVP_Result_User_BoxLevel_Up:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(16,242)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

----------폰트---------------- 
g_pStaticPVP_Result_User_Box_Id= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_User_Box_Id)
g_pStaticPVP_Result_User_Box_Id:SetName( "PVP_Result_User_Box_Id" )
g_pStaticPVP_Result_User_Box_Id:SetShow( false )

g_pPicturePVP_Result_User_Box_Shadow = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_User_Box_Id:AddPicture( g_pPicturePVP_Result_User_Box_Shadow )
g_pPicturePVP_Result_User_Box_Shadow:SetTex( "DLG_Common_New_Texture22.tga", "PVP_Result_Bg_Shadow" )
g_pPicturePVP_Result_User_Box_Shadow:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(10+10,271+19 - 2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticPVP_Result_User_Box_Id:AddString
{
	-- MSG			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS			= D3DXVECTOR2(106+7,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


