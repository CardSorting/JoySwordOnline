-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Recommend" )
g_pUIDialog:SetPos( 92, 160 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_CANCEL"] )


-----------(방 리스트)

g_pStaticAdd_Nominator = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdd_Nominator )
g_pStaticAdd_Nominator:SetName( "g_pStaticAdd_Nominator" )



g_pPicturePresent_Niminator_Window1 = g_pUIDialog:CreatePicture()
g_pStaticAdd_Nominator:AddPicture(g_pPicturePresent_Niminator_Window1)

g_pPicturePresent_Niminator_Window1:SetTex( "DLG_Nominate1.tga", "back1" )

g_pPicturePresent_Niminator_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePresent_Niminator_Window2 = g_pUIDialog:CreatePicture()
g_pStaticAdd_Nominator:AddPicture(g_pPicturePresent_Niminator_Window2)

g_pPicturePresent_Niminator_Window2:SetTex( "DLG_Nominate2.tga", "back2" )

g_pPicturePresent_Niminator_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(510,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









----------------버튼




g_pButton_OK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetName( "g_pButton_OK" )
g_pButton_OK:SetNormalTex( "DLG_Common_New_Texture37.tga", "add_Nominator_normal" )

g_pButton_OK:SetOverTex( "DLG_Common_New_Texture37.tga", "add_Nominator_over" )

g_pButton_OK:SetDownTex( "DLG_Common_New_Texture37.tga", "add_Nominator_over" )

g_pButton_OK:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(582,13+158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,13+158)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(583,14+158)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_OK"] )






g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(359+335,13+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357+335,11+17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358+335,12+17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_RECOMMEND_CANCEL"] )




	
	

	
	
	
	
	
	
	
g_pIMEEditBoxName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxName )
g_pIMEEditBoxName:SetName( "g_pIMEEditBoxName" )
g_pIMEEditBoxName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(368,180)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(566,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )




