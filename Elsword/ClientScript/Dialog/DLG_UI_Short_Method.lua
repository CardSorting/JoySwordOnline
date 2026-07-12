-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







g_pUIDialog:SetName( "DLG_UI_SHORT_METHOD" )
g_pUIDialog:SetPos( 275, 124 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_IMMEDIATE_MODE_CANCEL"] )









g_pStatic_short = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_short )
g_pStatic_short:SetName( "g_pStatic_short" )



g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_short:AddPicture( g_pPictureWindow1 )

g_pPictureWindow1:SetTex( "DLG_UI_Common_Texture05.tga", "short_method" )

g_pPictureWindow1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



------------------선택


g_pButton_chois = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_chois )
g_pButton_chois:SetName( "g_pButton_chois" )

g_pButton_chois:SetNormalTex( "DLG_UI_Button05.tga", "chois_NORMAL" )

g_pButton_chois:SetOverTex( "DLG_UI_Button05.tga", "chois_OVER" )

g_pButton_chois:SetDownTex( "DLG_UI_Button05.tga", "chois_OVER" )

g_pButton_chois:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(145,379)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_chois:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142.5,376)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_chois:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(142.5+1,376+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_chois:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_IMMEDIATE_MODE_OK"] )




------------------취소





g_pButton_cancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_cancle )
g_pButton_cancle:SetName( "g_pButton_cancle" )

g_pButton_cancle:SetNormalTex( "DLG_UI_Button02.tga", "cancle_NORMAL" )

g_pButton_cancle:SetOverTex( "DLG_UI_Button02.tga", "cancle_OVER" )

g_pButton_cancle:SetDownTex( "DLG_UI_Button02.tga", "cancle_OVER" )

g_pButton_cancle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(235,379)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(232,376)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(232+1,376+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_SELECT_SKILL_IMMEDIATE_MODE_CANCEL"] )
