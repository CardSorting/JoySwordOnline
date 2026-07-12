-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )

---------BG
g_pStaticPopupSkin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPopupSkin )
g_pStaticPopupSkin:SetName( "PopupSkin" )

g_pPicture_bgLT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgLT )
g_pPicture_bgLT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_TOP" )
g_pPicture_bgLT:SetIndex( 0 )
g_pPicture_bgLT:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 0, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgCT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgCT )
g_pPicture_bgCT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_TOP" )
g_pPicture_bgCT:SetIndex( 1 )
g_pPicture_bgCT:SetPoint
{
    ADD_SIZE_X	= 36,
	"LEFT_TOP	= D3DXVECTOR2( 31, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgRT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgRT )
g_pPicture_bgRT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_TOP" )
g_pPicture_bgRT:SetIndex( 2 )
g_pPicture_bgRT:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 86, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

--중간
g_pPicture_bgLM = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgLM )
g_pPicture_bgLM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_MIDDLE" )
g_pPicture_bgLM:SetIndex( 3 )
g_pPicture_bgLM:SetPoint
{
    ADD_SIZE_Y	= 3,
	"LEFT_TOP	= D3DXVECTOR2( 0, 47 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgCM = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgCM )
g_pPicture_bgCM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_MIDDLE" )
g_pPicture_bgCM:SetIndex( 4 )
g_pPicture_bgCM:SetPoint
{
    ADD_SIZE_X	= 46,
	ADD_SIZE_Y	= 3,
	"LEFT_TOP	= D3DXVECTOR2( 31, 47 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgRM = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgRM )
g_pPicture_bgRM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_MIDDLE" )
g_pPicture_bgRM:SetIndex( 5 )
g_pPicture_bgRM:SetPoint
{
     ADD_SIZE_Y	= 3,
	"LEFT_TOP	= D3DXVECTOR2( 86, 47 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

--하단
g_pPicture_bgLB = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgLB )
g_pPicture_bgLB:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_BOTTOM" )
g_pPicture_bgLB:SetIndex( 6 )
g_pPicture_bgLB:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 0, 167 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgCB = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgCB )
g_pPicture_bgCB:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_BOTTOM" )
g_pPicture_bgCB:SetIndex( 7 )
g_pPicture_bgCB:SetPoint
{
    ADD_SIZE_X	= 36,
	"LEFT_TOP	= D3DXVECTOR2( 31, 167 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgRB = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgRB )
g_pPicture_bgRB:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_BOTTOM" )
g_pPicture_bgRB:SetIndex( 8 )
g_pPicture_bgRB:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 86, 167 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgSLT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgSLT )
g_pPicture_bgSLT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_SMALL_LEFT_TOP" )
g_pPicture_bgSLT:SetIndex( 9 )
g_pPicture_bgSLT:SetShow( false )
g_pPicture_bgSLT:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 0, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgSCT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgSCT )
g_pPicture_bgSCT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_SMALL_MIDDLE_TOP" )
g_pPicture_bgSCT:SetIndex( 10 )
g_pPicture_bgSCT:SetShow( false )
g_pPicture_bgSCT:SetPoint
{
    --ADD_SIZE_X	= 36,
	"LEFT_TOP	= D3DXVECTOR2( 31, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bgSRT = g_pUIDialog:CreatePicture()
g_pStaticPopupSkin:AddPicture( g_pPicture_bgSRT )
g_pPicture_bgSRT:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_SMALL_RIGHT_TOP" )
g_pPicture_bgSRT:SetIndex( 11 )
g_pPicture_bgSRT:SetShow( false )
g_pPicture_bgSRT:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 86, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}