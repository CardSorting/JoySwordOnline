-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Time_Of_Glory_Title" )
g_pUIDialog:SetPos( -40, -30 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )


g_pStatictown = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictown )
g_pStatictown:SetName( "Time_Of_Glory_Title" )

-----------------영광의 시간
g_pPictureWorldMissionStart = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureWorldMissionStart )
g_pPictureWorldMissionStart:SetTex( "DLG_UI_Common_Texture77.tga", "Bg_TimeofHonor" )
g_pPictureWorldMissionStart:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(293,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureWorldMissionStart:SetShow( true )