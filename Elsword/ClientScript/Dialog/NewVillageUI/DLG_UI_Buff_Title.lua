-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Buff_Title" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )


g_pStatictown = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictown )
g_pStatictown:SetName( "Buff_Title_Field_Created" )

-----------------그노시스의 축복 기간제 알림
-- kimhc -- 2009-06-17
g_pPictureGnosisDateNotice_Ps = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureGnosisDateNotice_Ps )
g_pPictureGnosisDateNotice_Ps:SetTex( "DLG_UI_Common_Texture13.tga", "CSP_NOTICE" )
g_pPictureGnosisDateNotice_Ps:SetIndex(102)
g_pPictureGnosisDateNotice_Ps:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(259,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureGnosisDateNotice_Ps:SetShow( false )

----------휴면복귀 엠블렘
g_pPicture_magic = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture_magic )
g_pPicture_magic:SetTex( "DLG_UI_Common_Texture55.TGA", "returnuser_emblem" )
g_pPicture_magic:SetIndex(123)
g_pPicture_magic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(315, 217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_magic:SetShow( false )

g_pStaticAtYourNeed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAtYourNeed )
g_pStaticAtYourNeed:SetName( "Buff_Title_Your_Need" )

----------혈맹의 끈
g_pPicture_Blood = g_pUIDialog:CreatePicture()
g_pStaticAtYourNeed:AddPicture( g_pPicture_Blood )
g_pPicture_Blood:SetTex( "DLG_UI_Common_Texture59.TGA", "blod_popup" )
g_pPicture_Blood:SetIndex(124)
g_pPicture_Blood:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(404, 144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Blood:SetShow( false )

----------버파 이벤트
g_pPicture_El = g_pUIDialog:CreatePicture()
g_pStaticAtYourNeed:AddPicture( g_pPicture_El )
g_pPicture_El:SetTex( "DLG_UI_Common_Texture60.TGA", "Bubble_event_popup" )
g_pPicture_El:SetIndex(125)
g_pPicture_El:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(376, 144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_El:SetShow( false )


----------발렌타인 버프
g_pPicture_ValentineBuff = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture_ValentineBuff )
g_pPicture_ValentineBuff:SetTex( "DLG_UI_Common_Texture66.tga", "MAN_BUFF" )
g_pPicture_ValentineBuff:SetIndex(126)
g_pPicture_ValentineBuff:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(315 + 30, 217 - 110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ValentineBuff:SetShow( false )