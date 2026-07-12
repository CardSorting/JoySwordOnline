-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_FIELD_MAP_ALTERA_03" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_FIELD_RIGHT_CLICK"] )
g_pUIDialog:SetCustomMsgRMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_FIELD_RIGHT_CLICK"] )
g_pUIDialog:SetCustomMsgStopDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_FIELD_MAP_STOP_DRAGGING"] )

g_pUIDialog:SetSize( 1536, 768 )
g_pUIDialog:SetEnableDraggingRange( true )
g_pUIDialog:SetDraggingRangeCenter( 512, 384 )
g_pUIDialog:SetDraggingRange( 512, 0 )

-- 지도 부분
g_pStaticAltera_Field03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAltera_Field03 )
g_pStaticAltera_Field03:SetName( "Altera_Field03" )

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_01.DDS", "ALTERA_03_01" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_02.DDS", "ALTERA_03_02" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_03.DDS", "ALTERA_03_03" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1024,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_04.DDS", "ALTERA_03_04" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_04.DDS", "ALTERA_03_05" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticAltera_Field03:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Altera_03_05.DDS", "ALTERA_03_06" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1024,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 왼쪽 출구
g_pButtonLeft = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft )
g_pButtonLeft:SetName( "LEFT_cusor" )
g_pButtonLeft:SetNormalTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetOverTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetDownTex( "DLG_UI_Button04.tga", "l_gate" )
g_pButtonLeft:SetDisableTex( "DLG_UI_Button04.tga", "l_gate_noactive" )
g_pButtonLeft:SetNormalPoint
{
	ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
    "LEFT_TOP	= D3DXVECTOR2( 110, 263 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 110-1, 263-2 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 110, 263 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 110+3, 263 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )


---오른쪽 출구_1
g_pButtonRight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight )
g_pButtonRight:SetName( "Right_Cusor" )
g_pButtonRight:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )
g_pButtonRight:SetNormalPoint
{
	ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
    "LEFT_TOP	= D3DXVECTOR2( 1370, 257 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 1370-1, 257-1 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1370, 257 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1370, 257 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"] )