-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Mouse_Click" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )





g_pStatic_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Arrow )
g_pStatic_Arrow:SetName( "Static_Arrow_From_Right_Bottom" )
g_pStatic_Arrow:SetShowEnable( false, false )

	
g_pPicture_Arrow = g_pUIDialog:CreatePicture()
g_pStatic_Arrow:AddPicture( g_pPicture_Arrow )
g_pPicture_Arrow:SetTex( "DLG_Mouse_Click1.tga", "Mouse_Click1" )
g_pPicture_Arrow:SetPoint
{
	
	ADD_SIZE_X = -113,
	ADD_SIZE_Y = -87,
	"LEFT_TOP		= D3DXVECTOR2(0, 0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pStatic_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Arrow )
g_pStatic_Arrow:SetName( "Static_Arrow_From_Right_Top" )
g_pStatic_Arrow:SetShowEnable( false, false )


	
g_pPicture_Arrow = g_pUIDialog:CreatePicture()
g_pStatic_Arrow:AddPicture( g_pPicture_Arrow )
g_pPicture_Arrow:SetTex( "DLG_Mouse_Click2.tga", "Mouse_Click2" )
g_pPicture_Arrow:SetPoint
{

    ADD_SIZE_X = -113,
	ADD_SIZE_Y = -87,
 	"LEFT_TOP		= D3DXVECTOR2(0, -180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStatic_Arrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Arrow )
g_pStatic_Arrow:SetName( "Static_Arrow_From_Left_Bottom" )
g_pStatic_Arrow:SetShowEnable( false, false )


	
g_pPicture_Arrow = g_pUIDialog:CreatePicture()
g_pStatic_Arrow:AddPicture( g_pPicture_Arrow )
g_pPicture_Arrow:SetTex( "DLG_Mouse_Click3.tga", "Mouse_Click3" )
g_pPicture_Arrow:SetPoint
{
	
	ADD_SIZE_X = -113,
	ADD_SIZE_Y = -87,
	"LEFT_TOP		= D3DXVECTOR2(-250, 0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- fix!! Static_Arrow_From_Left_Top 은 아직 없음



