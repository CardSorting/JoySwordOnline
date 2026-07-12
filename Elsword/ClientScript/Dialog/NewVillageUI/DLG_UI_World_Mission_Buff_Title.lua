-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_World_Mission_Buff_Title" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )


g_pStatictown = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictown )
g_pStatictown:SetName( "World_Mission_Buff_Title" )

-----------------마족침공
g_pPictureWorldMissionStart = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureWorldMissionStart )
g_pPictureWorldMissionStart:SetTex( "DLG_UI_Common_Texture46.tga", "EVENT_START" )
g_pPictureWorldMissionStart:SetIndex(120)
g_pPictureWorldMissionStart:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(293,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureWorldMissionStart:SetShow( false )

-----------------방어성공
g_pPictureWorldMissionSuccess = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureWorldMissionSuccess )
g_pPictureWorldMissionSuccess:SetTex( "DLG_UI_Common_Texture47.tga", "Mission_Clear" )
g_pPictureWorldMissionSuccess:SetIndex(121)
g_pPictureWorldMissionSuccess:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(293,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureWorldMissionSuccess:SetShow( false )

-----------------방어실패
g_pPictureWorldMissionFailed = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureWorldMissionFailed )
g_pPictureWorldMissionFailed:SetTex( "DLG_UI_Common_Texture47.tga", "Mission_Fale" )
g_pPictureWorldMissionFailed:SetIndex(122)
g_pPictureWorldMissionFailed:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(293,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureWorldMissionFailed:SetShow( false )