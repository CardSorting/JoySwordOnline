-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_FIELD_MAP_BESMA_Rest" )
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
g_pStaticBesma_Rest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBesma_Rest )
g_pStaticBesma_Rest:SetName( "Besma_Rest" )

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_01.DDS", "BESMA_Rest_01" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_02.DDS", "BESMA_Rest_02" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_03.DDS", "BESMA_Rest_03" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1024,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_04.DDS", "BESMA_Rest_04" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_04.DDS", "BESMA_Rest_05" ) 
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticBesma_Rest:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_FIELD_MAP_Besma_Rest_05.DDS", "BESMA_Rest_06" ) 
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
    "LEFT_TOP	= D3DXVECTOR2( 76, 422 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 76-1, 422-2 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 76, 422 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 76+3, 412 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonLeft:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonLeft:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonLeft:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PREV_FIELD_MAP"] )
g_pButtonLeft:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"] )

-- 이벤트 NPC
--[[
	g_pButtonNPC2 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButtonNPC2 )
	g_pButtonNPC2:SetName( "EVENT" )
	g_pButtonNPC2:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
	g_pButtonNPC2:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
	g_pButtonNPC2:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
	g_pButtonNPC2:SetNormalPoint
	{
		"LEFT_TOP	= D3DXVECTOR2( 763, 492 )",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButtonNPC2:SetOverPoint
	{
		"LEFT_TOP	= D3DXVECTOR2( 763, 492 )",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButtonNPC2:SetDownPoint
	{
		"LEFT_TOP	= D3DXVECTOR2( 763, 492 )",
		"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME	= 0.0,
	}
	g_pButtonNPC2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
	g_pButtonNPC2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
	g_pButtonNPC2:AddDummyInt( NPC_UNIT_ID["NUI_EVENT_APINK"] ) -- <-- 이벤트 NPC에 따라 변경해야됨
--]]
-- 헬렌_행상인
g_pButtonHelren = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHelren )
g_pButtonHelren:SetName( "HELREN" )
g_pButtonHelren:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonHelren:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonHelren:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonHelren:SetNormalPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 660, 270 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonHelren:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 660, 270 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonHelren:SetDownPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 660, 270 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonHelren:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonHelren:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonHelren:AddDummyInt( NPC_UNIT_ID["NUI_HELLEN"] )

-- 우편함
g_pButtonPost = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPost )
g_pButtonPost:SetName( "Post" )
g_pButtonPost:SetNormalTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetOverTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetDownTex( "MiniMap_Post.dds", "MiniMap_Post" )
g_pButtonPost:SetNormalPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 502, 291 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 502, 291 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetDownPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 502, 291 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPost:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OVER"] )
g_pButtonPost:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_POSTBOX_MOUSE_OUT"] )

-- 게시판
g_pButtonBOARD = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBOARD )
g_pButtonBOARD:SetName( "BOARD" )
g_pButtonBOARD:SetNormalTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetOverTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetDownTex( "MiniMap_BOARD.dds", "MiniMap_BOARD" )
g_pButtonBOARD:SetNormalPoint
{
    "LEFT_TOP	= D3DXVECTOR2( 809, 297 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 809, 297 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetDownPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 809, 297 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonBOARD:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonBOARD:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonBOARD:AddDummyInt( NPC_UNIT_ID["NUI_BILLBOARD"] )

-- 글레이브_시공 관리자
g_pButtonGlave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGlave )
g_pButtonGlave:SetName( "GLAVE" )
g_pButtonGlave:SetNormalTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetOverTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetDownTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )
g_pButtonGlave:SetNormalPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 555, 488 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 555, 488 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetDownPoint
{
 	"LEFT_TOP	= D3DXVECTOR2( 555, 488 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonGlave:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OVER"] )
g_pButtonGlave:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NPC_MOUSE_OUT"] )
g_pButtonGlave:AddDummyInt( NPC_UNIT_ID["NUI_GLAVE"] )

-- 오른쪽 출구
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
    "LEFT_TOP	= D3DXVECTOR2( 1348, 305 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 1348, 305 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1348, 305 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1348, 305 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"] )

-- 오른쪽 출구2
g_pButtonRight2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight2 )
g_pButtonRight2:SetName( "Right_Cusor" )
g_pButtonRight2:SetNormalTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight2:SetOverTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight2:SetDownTex( "DLG_UI_Button04.tga", "R_gate" )
g_pButtonRight2:SetDisableTex( "DLG_UI_Button04.tga", "R_gate_noactive" )
g_pButtonRight2:SetNormalPoint
{
	ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
    "LEFT_TOP	= D3DXVECTOR2( 1329, 367 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight2:SetOverPoint
{
    ADD_SIZE_X	= 4,
	ADD_SIZE_Y	= 4,
	"LEFT_TOP	= D3DXVECTOR2( 1329, 367 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight2:SetDownPoint
{
    ADD_SIZE_X	= 2,
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1329, 367 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight2:SetDisablePoint
{
	ADD_SIZE_Y	= 2,
 	"LEFT_TOP	= D3DXVECTOR2( 1329, 367 )",
    "COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonRight2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OVER"] )
g_pButtonRight2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_OTHER_FIELD_MOUSE_OUT"] )
g_pButtonRight2:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NEXT_FIELD_MAP"] )
g_pButtonRight2:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"] )