-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






g_pUIDialog:SetName( "DLG_Event_Clock_Talk_Box" )
g_pUIDialog:SetPos( 430 + 120 , 50 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



g_pStaticEVENT_CLOCK_TALK_BOX = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEVENT_CLOCK_TALK_BOX )
g_pStaticEVENT_CLOCK:SetName( "g_pStaticEVENT_CLOCK_TALK_BOX" )


g_pPicture_EVENT_CLOCK_TALK_BOX = g_pUIDialog:CreatePicture()
g_pStaticEVENT_CLOCK_TALK_BOX:AddPicture( g_pPicture_EVENT_CLOCK_TALK_BOX )

g_pPicture_EVENT_CLOCK_TALK_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "EVENT_TALK_BOX" )

g_pPicture_EVENT_CLOCK_TALK_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticEVENT_CLOCK_TALK_BOX = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEVENT_CLOCK_TALK_BOX )
g_pStaticEVENT_CLOCK_TALK_BOX:SetName( "EVENT_CLOCK_TALK_BOX" )



g_pStaticEVENT_CLOCK_TALK_BOX:AddString
{
	-- MSG    = "[이벤트큐브] 지급\n앞으로 29분. ",
  	FONT_INDEX  = XUF_DODUM_15_BOLD,
  	SORT_FLAG  = DRAW_TEXT["DT_CENTER"],
  	"POS    = D3DXVECTOR2(0+69,0+16)",
  	"COLOR   = D3DXCOLOR(0.1,0.1,0.1,1.0)",
  	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
