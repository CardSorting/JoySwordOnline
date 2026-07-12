-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Event_Clock" )
g_pUIDialog:SetPos( 464+120, -1 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )







g_pStaticEVENT_CLOCK = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEVENT_CLOCK )
g_pStaticEVENT_CLOCK:SetName( "g_pStaticEVENT_CLOCK" )




g_pPicture_EVENT_CLOCK = g_pUIDialog:CreatePicture()
g_pStaticEVENT_CLOCK:AddPicture( g_pPicture_EVENT_CLOCK )

g_pPicture_EVENT_CLOCK:SetTex( "DLG_Common_New_Texture56.TGA", "EVENT_CLOCK" )

g_pPicture_EVENT_CLOCK:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticEVENT_COUNT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEVENT_COUNT )
g_pStaticEVENT_COUNT:SetName( "EVENT_COUNT" )



g_pStaticEVENT_COUNT:AddString
{
	-- MSG    = "0",
  	FONT_INDEX  = XUF_DODUM_20_BOLD,
  	SORT_FLAG  = DRAW_TEXT["DT_CENTER"],
  	"POS    = D3DXVECTOR2(84, 23)",
  	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,0.8)",
  	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}







-- mouse over를 처리하기 위한 안보이는 버튼
g_pButton_Invisible = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Invisible )
g_pButton_Invisible:SetName( "Button_Invisible" )
g_pButton_Invisible:SetNormalTex(	"DLG_Common_Button00.TGA", "invisible" )
g_pButton_Invisible:SetOverTex( 	"DLG_Common_Button00.TGA", "invisible" )
g_pButton_Invisible:SetDownTex( 	"DLG_Common_Button00.TGA", "invisible" )

g_pButton_Invisible:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(120, 64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Invisible:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(120, 64)",
 	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Invisible:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(120, 64)",
 	

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Invisible:SetEnableClick( false )
g_pButton_Invisible:SetCustomMsgMouseOver( STATE_UI_CUSTOM_MSG["SUCM_EVENT_CLOCK_MOUSE_OVER"] )
g_pButton_Invisible:SetCustomMsgMouseOut( STATE_UI_CUSTOM_MSG["SUCM_EVENT_CLOCK_MOUSE_OUT"] )


