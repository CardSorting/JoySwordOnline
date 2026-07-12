-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_WORLD_MAP" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )
g_pUIDialog:SetCustomMsgRMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_WORLD_RIGHT_CLICK"] )
g_pUIDialog:SetCustomMsgStopDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_WORLD_MAP_STOP_DRAGGING"] )

g_pUIDialog:SetSize( 1800, 1200 )
g_pUIDialog:SetEnableDraggingRange( true )
g_pUIDialog:SetDraggingRangeCenter( 512, 384 )
g_pUIDialog:SetDraggingRange( 776, 432 )

g_pStaticWorld_Map = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Map )
g_pStaticWorld_Map:SetName( "g_pStaticWorld_Map" )

-- 월드맵 ----------------------------------------------------
-- 상_좌
g_pPicture_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg1 )
g_pPicture_Bg1:SetTex( "DLG_UI_World_Map01.DDS", "world_bg1" )
g_pPicture_Bg1:SetPoint
{
    ADD_SIZE_X	= 88,
    ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 상_중
g_pPicture_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg2 )
g_pPicture_Bg2:SetTex( "DLG_UI_World_Map02.DDS", "world_bg2" )
g_pPicture_Bg2:SetPoint
{
    ADD_SIZE_X	= 88,
    ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(512+88,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 상_우
g_pPicture_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg3 )
g_pPicture_Bg3:SetTex( "DLG_UI_World_Map03.DDS", "world_bg3" )
g_pPicture_Bg3:SetPoint
{
    ADD_SIZE_X	= 88,
    ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(1200,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 하_좌
g_pPicture_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg4 )
g_pPicture_Bg4:SetTex( "DLG_UI_World_Map04.DDS", "world_bg4" )
g_pPicture_Bg4:SetPoint
{
    ADD_SIZE_X	= 88,
	ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(0,512+88)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 하_중
g_pPicture_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg5 )
g_pPicture_Bg5:SetTex( "DLG_UI_World_Map05.DDS", "world_bg5" )
g_pPicture_Bg5:SetPoint
{
    ADD_SIZE_X	= 88,
	ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(512+88,512+88)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 하_우
g_pPicture_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_Bg6 )
g_pPicture_Bg6:SetTex( "DLG_UI_World_Map06.DDS", "world_bg6" )
g_pPicture_Bg6:SetPoint
{
    ADD_SIZE_X	= 88,
	ADD_SIZE_Y	= 88,
	"LEFT_TOP	= D3DXVECTOR2(1200,512+88)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-------------------------------------------------------------

--- 루벤 마을 버튼
g_pButton_RUBEN_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_RUBEN_TOWN )
g_pButton_RUBEN_TOWN:SetName( "RUBEN_TOWN" )
g_pButton_RUBEN_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_RUBEN_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_RUBEN_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_RUBEN_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP		= D3DXVECTOR2(175,558-57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP		= D3DXVECTOR2(175-8,558-8-57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(169,495)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_RUBEN_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_RUBEN_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_RUBEN_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_RUBEN"] )
g_pButton_RUBEN_TOWN:AddDummyPos( D3DXVECTOR3( 145, 500, 0 ) )
--루벤 마을 타이틀
g_pPicture_RUBEN_TOWN = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_RUBEN_TOWN )
g_pPicture_RUBEN_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_RUBEN" )
g_pPicture_RUBEN_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(175-12,500+26)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 루벤 필드_노아스의 호수
g_pButton_RUBEN_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_RUBEN_FIELD_BATTLE_01 )
g_pButton_RUBEN_FIELD_BATTLE_01:SetName( "RUBEN_FIELD_BATTLE_01" )
g_pButton_RUBEN_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_RUBEN_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_RUBEN_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_RUBEN_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(203,473-57+5)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(203-8,473-8-57+5)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(197,415)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_RUBEN_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_RUBEN_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_RUBEN_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_RUBEN_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"] )
g_pButton_RUBEN_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 173, 420, 0 ) )
-- 루벤 필드_노아스의 호수 타이틀
g_pPicture_RUBEN_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Map:AddPicture( g_pPicture_RUBEN_FIELD_BATTLE_01 )
g_pPicture_RUBEN_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_RUBEN_0" )
g_pPicture_RUBEN_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(183, 441)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 엘더 마을 버튼
g_pButton_ELDER_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ELDER_TOWN )
g_pButton_ELDER_TOWN:SetName( "ELDER_TOWN" )
g_pButton_ELDER_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_ELDER_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_ELDER_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_ELDER_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(297,471-57+3)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(297-8,471-8-57+3)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(297-6,471-6-57+3)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ELDER_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ELDER_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ELDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_ELDER"] )
g_pButton_ELDER_TOWN:AddDummyPos( D3DXVECTOR3( 277, 454, 0 ) )
--엘더 마을 타이틀
g_pStatic_ELDER_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ELDER_TOWN )
g_pPicture_ELDER_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_ELDER_TOWN:AddPicture( g_pPicture_ELDER_TOWN )
g_pPicture_ELDER_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_ELDER" )
g_pPicture_ELDER_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(297-12,470-57+3+26)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ELDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_ELDER"] )

-- 엘더 필드_윌리 기념교
g_pButton_ELDER_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ELDER_FIELD_BATTLE_01 )
g_pButton_ELDER_FIELD_BATTLE_01:SetName( "ELDER_FIELD_BATTLE_01" )
g_pButton_ELDER_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_ELDER_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ELDER_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ELDER_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(303,390-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(303-8,390-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(303-6,390-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ELDER_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ELDER_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ELDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"] )
g_pButton_ELDER_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 283, 341, 0 ) )
-- 엘더 필드_윌리 기념교 타이틀
g_pStatic_ELDER_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ELDER_FIELD_BATTLE_01 )
g_pPicture_ELDER_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_ELDER_FIELD_BATTLE_01:AddPicture( g_pPicture_ELDER_FIELD_BATTLE_01 )
g_pPicture_ELDER_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ELDER_0" )
g_pPicture_ELDER_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(303-24,390-57+15+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ELDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"] )

-- 엘더 필드_휴식처_월리성 관문
g_pButton_ELDER_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ELDER_FIELD_REST )
g_pButton_ELDER_FIELD_REST:SetName( "ELDER_FIELD_REST" )
g_pButton_ELDER_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_ELDER_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_ELDER_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_ELDER_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(335,348-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(335-8,348-8-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(335-6,348-6-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ELDER_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ELDER_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ELDER_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_REST_00"] )
g_pButton_ELDER_FIELD_REST:AddDummyPos( D3DXVECTOR3( 315, 301, 0 ) )
-- 엘더 필드_휴식처_월리성 관문 타이틀
g_pStatic_ELDER_FIELD_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ELDER_FIELD_REST )
g_pPicture_ELDER_FIELD_REST = g_pUIDialog:CreatePicture()
g_pStatic_ELDER_FIELD_REST:AddPicture( g_pPicture_ELDER_FIELD_REST )
g_pPicture_ELDER_FIELD_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ELDER_REST" )
g_pPicture_ELDER_FIELD_REST:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2(335-24,348-57+17+18)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ELDER_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_REST_00"] )

-- 엘더 필드_쌍둥이 감시탑
g_pButton_ELDER_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ELDER_FIELD_BATTLE_02 )
g_pButton_ELDER_FIELD_BATTLE_02:SetName( "ELDER_FIELD_BATTLE_02" )
g_pButton_ELDER_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_ELDER_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ELDER_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ELDER_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(377,364-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP		= D3DXVECTOR2(377-8,364-8-57+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP		= D3DXVECTOR2(377-6,364-6-57+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ELDER_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ELDER_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ELDER_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ELDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"] )
g_pButton_ELDER_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 399, 356, 0 ) )
-- 엘더 필드_쌍둥이 감시탑 타이틀
g_pStatic_ELDER_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ELDER_FIELD_BATTLE_02 )
g_pPicture_ELDER_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_ELDER_FIELD_BATTLE_02:AddPicture( g_pPicture_ELDER_FIELD_BATTLE_02 )
g_pPicture_ELDER_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ELDER_1" )
g_pPicture_ELDER_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(377-24,364-57+17+18)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ELDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"] )

-- 엘더 마을 구름
g_pStatic_ELDER_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ELDER_CLOUD )
g_pPicture_ELDER_CLOUD = g_pUIDialog:CreatePicture()
g_pStatic_ELDER_CLOUD:AddPicture( g_pPicture_ELDER_CLOUD )
g_pPicture_ELDER_CLOUD:SetTex( "Cloud_Elder.tga", "Bg_Cloud_Elder" )
g_pPicture_ELDER_CLOUD:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(110,41)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ELDER_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_ELDER"] )
g_pStatic_ELDER_CLOUD:AddDummyInt( 1 )

-- 베스마 마을 버튼
g_pButton_BESMA_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BESMA_TOWN )
g_pButton_BESMA_TOWN:SetName( "BESMA_TOWN" )
g_pButton_BESMA_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_BESMA_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_BESMA_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_BESMA_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(425,308-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(425-8,308-8-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14-4,
	ADD_SIZE_Y	= -14-4,
 	"LEFT_TOP	= D3DXVECTOR2(425-6,308-6-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_BESMA_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_BESMA_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_BESMA_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )
g_pButton_BESMA_TOWN:AddDummyPos( D3DXVECTOR3( 405, 264, 0 ) )
-- 베스마 마을 타이틀
g_pStatic_BESMA_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BESMA_TOWN )
g_pPicture_BESMA_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_BESMA_TOWN:AddPicture( g_pPicture_BESMA_TOWN )
g_pPicture_BESMA_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_BESMA" )
g_pPicture_BESMA_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(425-12,308-57+20+25)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_BESMA_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )

-- 베스마 필드_베스아가라 폭포
g_pButton_BESMA_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BESMA_FIELD_BATTLE_01 )
g_pButton_BESMA_FIELD_BATTLE_01:SetName( "BESMA_FIELD_BATTLE_01" )
g_pButton_BESMA_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_BESMA_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(459,364-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(459-8,364-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(459-6,364-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_BESMA_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_BESMA_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_BESMA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"] )
g_pButton_BESMA_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 439, 315, 0 ) )
-- 베스마 필드_베스아가라 폭포 타이틀
g_pStatic_BESMA_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BESMA_FIELD_BATTLE_01 )
g_pPicture_BESMA_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_BESMA_FIELD_BATTLE_01:AddPicture( g_pPicture_BESMA_FIELD_BATTLE_01 )
g_pPicture_BESMA_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_BESMA_0" )
g_pPicture_BESMA_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(459-24,364-57+15+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_BESMA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"] )

-- 베스마 필드_아슬아슬 하늘길
g_pButton_BESMA_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BESMA_FIELD_REST )
g_pButton_BESMA_FIELD_REST:SetName( "BESMA_FIELD_REST" )
g_pButton_BESMA_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_BESMA_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_BESMA_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_BESMA_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(492,406-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(492-8,406-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(492-6,406-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_BESMA_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_BESMA_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_BESMA_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"] )
g_pButton_BESMA_FIELD_REST:AddDummyPos( D3DXVECTOR3( 472, 357, 0 ) )
-- 베스마 필드_아슬아슬 하늘길 타이틀
g_pStatic_FIELD_BESMA_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_FIELD_BESMA_REST )
g_pPicture_FIELD_BESMA_REST = g_pUIDialog:CreatePicture()
g_pStatic_FIELD_BESMA_REST:AddPicture( g_pPicture_FIELD_BESMA_REST )
g_pPicture_FIELD_BESMA_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_BESMA_REST" )
g_pPicture_FIELD_BESMA_REST:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(492-24,406-57+15+18)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_FIELD_BESMA_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"] )

-- 베스마 필드_레이키키 호수
g_pButton_BESMA_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BESMA_FIELD_BATTLE_02 )
g_pButton_BESMA_FIELD_BATTLE_02:SetName( "BESMA_FIELD_BATTLE_02" )
g_pButton_BESMA_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_BESMA_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(497,455-57+13)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(497-8,455-8-57+13)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(497-6,455-6-57+13)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_BESMA_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_BESMA_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_BESMA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"] )
g_pButton_BESMA_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 477, 404, 0 ) )
-- 베스마 필드_레이키키 호수 타이틀
g_pStatic_BESMA_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BESMA_FIELD_BATTLE_02 )
g_pPicture_BESMA_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_BESMA_FIELD_BATTLE_02:AddPicture( g_pPicture_BESMA_FIELD_BATTLE_02 )
g_pPicture_BESMA_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_BESMA_2" )
g_pPicture_BESMA_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(497-20,455-57+13+18)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_BESMA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"] )

-- 베스마 필드_토리투게라 캐년
g_pButton_BESMA_FIELD_BATTLE_03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_BESMA_FIELD_BATTLE_03 )
g_pButton_BESMA_FIELD_BATTLE_03:SetName( "BESMA_FIELD_BATTLE_03" )
g_pButton_BESMA_FIELD_BATTLE_03:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_BESMA_FIELD_BATTLE_03:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_03:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_BESMA_FIELD_BATTLE_03:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(585,373-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_03:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(585-8,373-8-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_03:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(585-6,373-6-57+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_BESMA_FIELD_BATTLE_03:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_BESMA_FIELD_BATTLE_03:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_BESMA_FIELD_BATTLE_03:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_BESMA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"] )
g_pButton_BESMA_FIELD_BATTLE_03:AddDummyPos( D3DXVECTOR3( 565, 326, 0 ) )
-- 베스마 필드_토리투게라 캐년 타이틀
g_pStatic_BESMA_FIELD_BATTLE_03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BESMA_FIELD_BATTLE_03 )
g_pPicture_BESMA_FIELD_BATTLE_03 = g_pUIDialog:CreatePicture()
g_pStatic_BESMA_FIELD_BATTLE_03:AddPicture( g_pPicture_BESMA_FIELD_BATTLE_03 )
g_pPicture_BESMA_FIELD_BATTLE_03:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_BESMA_1" )
g_pPicture_BESMA_FIELD_BATTLE_03:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2(585-24,373-57+17+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_BESMA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"] )

-- 베스마 마을 구름
g_pStatic_BESMA_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BESMA_CLOUD )
g_pPicture_BESMA_CLOUD = g_pUIDialog:CreatePicture()
g_pStatic_BESMA_CLOUD:AddPicture( g_pPicture_BESMA_CLOUD )
g_pPicture_BESMA_CLOUD:SetTex( "Cloud_Besma_peita.tga", "Bg_Cloud_Besma" )
g_pPicture_BESMA_CLOUD:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(354,147)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_BESMA_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )
g_pStatic_BESMA_CLOUD:AddDummyInt( 1 )

-- 알테라 마을 버튼
g_pButton_ALTERA_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALTERA_TOWN )
g_pButton_ALTERA_TOWN:SetName( "ALTERA_TOWN" )
g_pButton_ALTERA_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_ALTERA_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_ALTERA_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_ALTERA_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(758,398-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(758-8,398-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(758-6,398-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ALTERA_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ALTERA_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ALTERA_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )
g_pButton_ALTERA_TOWN:AddDummyPos( D3DXVECTOR3( 738, 349, 0 ) )
-- 알테라 마을 타이틀
g_pStatic_ALTERA_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALTERA_TOWN )
g_pPicture_ALTERA_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_TOWN:AddPicture( g_pPicture_ALTERA_TOWN )
g_pPicture_ALTERA_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_ALTERA" )
g_pPicture_ALTERA_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(758-12,398-57+15+25)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ALTERA_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_ALTERA"] )

-- 알테라 필드_정화의 무덤
g_pButton_ALTERA_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALTERA_FIELD_BATTLE_01 )
g_pButton_ALTERA_FIELD_BATTLE_01:SetName( "ALTERA_FIELD_BATTLE_01" )
g_pButton_ALTERA_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_ALTERA_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(805,381-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(805-8,381-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12-4,
	ADD_SIZE_Y	= -12-4,
 	"LEFT_TOP	= D3DXVECTOR2(805-6,381-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ALTERA_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ALTERA_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ALTERA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"] )
g_pButton_ALTERA_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 806, 312, 0 ) )
-- 알테라 필드_정화의 무덤 타이틀
g_pStatic_ALTERA_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALTERA_FIELD_BATTLE_01 )
g_pPicture_ALTERA_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_FIELD_BATTLE_01:AddPicture( g_pPicture_ALTERA_FIELD_BATTLE_01 )
g_pPicture_ALTERA_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ALTERA_0" )
g_pPicture_ALTERA_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(805-22,381-57+15+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ALTERA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"] )

-- 알테라 필드_퐁고족 은신처
g_pButton_ALTERA_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALTERA_FIELD_REST )
g_pButton_ALTERA_FIELD_REST:SetName( "ALTERA_FIELD_BATTLE_REST" )
g_pButton_ALTERA_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_ALTERA_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_ALTERA_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_ALTERA_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(850,387-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(850-8,387-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(850-6,387-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ALTERA_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ALTERA_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ALTERA_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"] )
g_pButton_ALTERA_FIELD_REST:AddDummyPos( D3DXVECTOR3( 852, 345-26, 0 ) )
-- 알테라 필드_퐁고족 은신처 타이틀
g_pStatic_FIELD_ALTERA_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_FIELD_ALTERA_REST )
g_pPicture_FIELD_ALTERA_REST = g_pUIDialog:CreatePicture()
g_pStatic_FIELD_ALTERA_REST:AddPicture( g_pPicture_FIELD_ALTERA_REST )
g_pPicture_FIELD_ALTERA_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ALTERA_REST" )
g_pPicture_FIELD_ALTERA_REST:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(850+14,387-57+19)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_FIELD_ALTERA_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"] )

--- 알테라 필드_나소드 폐기장
g_pButton_ALTERA_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALTERA_FIELD_BATTLE_02 )
g_pButton_ALTERA_FIELD_BATTLE_02:SetName( "ALTERA_FIELD_BATTLE_02" )
g_pButton_ALTERA_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_ALTERA_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(850,413-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(850-8,413-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12-4,
	ADD_SIZE_Y	= -12-4,
 	"LEFT_TOP	= D3DXVECTOR2(850-6,413-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ALTERA_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ALTERA_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ALTERA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"] )
g_pButton_ALTERA_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 850+2,371+20, 0 ) )
-- 알테라 필드_나소드 폐기장 타이틀
g_pStatic_ALTERA_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALTERA_FIELD_BATTLE_02 )
g_pPicture_ALTERA_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_FIELD_BATTLE_02:AddPicture( g_pPicture_ALTERA_FIELD_BATTLE_02 )
g_pPicture_ALTERA_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ALTERA_1" )
g_pPicture_ALTERA_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(865,385)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ALTERA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"] )

-- 알테라 필드_천공의 기지
g_pButton_ALTERA_FIELD_BATTLE_03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALTERA_FIELD_BATTLE_03 )
g_pButton_ALTERA_FIELD_BATTLE_03:SetName( "ALTERA_FIELD_BATTLE_03" )
g_pButton_ALTERA_FIELD_BATTLE_03:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_ALTERA_FIELD_BATTLE_03:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_03:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_ALTERA_FIELD_BATTLE_03:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(813,417-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_03:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(813-8,417-8-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_03:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(813-6,417-6-57+15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_ALTERA_FIELD_BATTLE_03:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_ALTERA_FIELD_BATTLE_03:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_ALTERA_FIELD_BATTLE_03:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_ALTERA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"] )
g_pButton_ALTERA_FIELD_BATTLE_03:AddDummyPos( D3DXVECTOR3( 813+3,375+34, 0 ) )
-- 알테라 필드_천공의 기지 타이틀
g_pStatic_ALTERA_FIELD_BATTLE_03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALTERA_FIELD_BATTLE_03 )
g_pPicture_ALTERA_FIELD_BATTLE_03 = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_FIELD_BATTLE_03:AddPicture( g_pPicture_ALTERA_FIELD_BATTLE_03 )
g_pPicture_ALTERA_FIELD_BATTLE_03:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_ALTERA_2" )
g_pPicture_ALTERA_FIELD_BATTLE_03:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(813-22,417-57+15+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ALTERA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"] )

-- 알테라 마을 구름
g_pStatic_ALTERA_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ALTERA_CLOUD )
g_pPicture_ALTERA_CLOUD1 = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_CLOUD:AddPicture( g_pPicture_ALTERA_CLOUD1 )
g_pPicture_ALTERA_CLOUD1:SetTex( "Cloud_peita_Altera.tga", "Bg_Cloud_Altera_01" )
g_pPicture_ALTERA_CLOUD1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(678,258)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_ALTERA_CLOUD2 = g_pUIDialog:CreatePicture()
g_pStatic_ALTERA_CLOUD:AddPicture( g_pPicture_ALTERA_CLOUD2 )
g_pPicture_ALTERA_CLOUD2:SetTex( "Cloud_Etc.tga", "Bg_Cloud_Altera_02" )
g_pPicture_ALTERA_CLOUD2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(590,185)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_ALTERA_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_BESMA"] )
g_pStatic_ALTERA_CLOUD:AddDummyInt( 1 )

-- 페이타 필드_순례자의 관문
g_pButton_PEITA_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PEITA_FIELD_BATTLE_01 )
g_pButton_PEITA_FIELD_BATTLE_01:SetName( "PEITA_FIELD_BATTLE_01" )
g_pButton_PEITA_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_PEITA_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(495,527-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(495-8,527-8-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(495-6,527-6-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_PEITA_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_PEITA_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_PEITA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"] )
g_pButton_PEITA_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 475, 463, 0 ) )
-- 페이타 필드_순례자의 관문 타이틀
g_pStatic_PEITA_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PEITA_FIELD_BATTLE_01 )
g_pPicture_PEITA_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_PEITA_FIELD_BATTLE_01:AddPicture( g_pPicture_PEITA_FIELD_BATTLE_01 )
g_pPicture_PEITA_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_PEITA_0" )
g_pPicture_PEITA_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(495-22,527-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_PEITA_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"] )

-- 페이타_마을
g_pButton_TOWN_PEITA = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_TOWN_PEITA )
g_pButton_TOWN_PEITA:SetName( "TOWN_PEITA" )
g_pButton_TOWN_PEITA:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_TOWN_PEITA:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_TOWN_PEITA:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_TOWN_PEITA:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(554,554-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_TOWN_PEITA:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(554-8,554-8-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_TOWN_PEITA:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(554-6,554-6-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_TOWN_PEITA:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_TOWN_PEITA:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_TOWN_PEITA:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_TOWN_PEITA:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
g_pButton_TOWN_PEITA:AddDummyPos( D3DXVECTOR3( 534+21,490-20, 0 ) )
-- 페이타 마을 타이틀
g_pStatic_TOWN_PEITA = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TOWN_PEITA )
g_pPicture_TOWN_PEITA = g_pUIDialog:CreatePicture()
g_pStatic_TOWN_PEITA:AddPicture( g_pPicture_TOWN_PEITA )
g_pPicture_TOWN_PEITA:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_PEITA" )
g_pPicture_TOWN_PEITA:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2(543,525)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_TOWN_PEITA:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )

-- 페이타_필드_순례자의 터
g_pButton_PEITA_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PEITA_FIELD_BATTLE_02 )
g_pButton_PEITA_FIELD_BATTLE_02:SetName( "PEITA_FIELD_BATTLE_02" )
g_pButton_PEITA_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_PEITA_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(614,554-34-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(614-8,520-8-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(614-6,520-6-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_PEITA_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_PEITA_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_PEITA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"] )
g_pButton_PEITA_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 594, 456, 0 ) )
-- 페이타_필드_순례자의 터 타이틀
g_pStatic_PEITA_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PEITA_FIELD_BATTLE_02 )
g_pPicture_PEITA_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_PEITA_FIELD_BATTLE_02:AddPicture( g_pPicture_PEITA_FIELD_BATTLE_02 )
g_pPicture_PEITA_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_PEITA_1" )
g_pPicture_PEITA_FIELD_BATTLE_02:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2(614-24,554-34-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_PEITA_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"] )

-- 페이타_필드_망자의 언덕
g_pButton_PEITA_FIELD_BATTLE_03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PEITA_FIELD_BATTLE_03 )
g_pButton_PEITA_FIELD_BATTLE_03:SetName( "PEITA_FIELD_BATTLE_03" )
g_pButton_PEITA_FIELD_BATTLE_03:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_PEITA_FIELD_BATTLE_03:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_03:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_PEITA_FIELD_BATTLE_03:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2( 624, 590-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_03:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2( 624-8, 590-8-57 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_03:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2( 624-6, 590-6-57 )",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_PEITA_FIELD_BATTLE_03:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_PEITA_FIELD_BATTLE_03:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_PEITA_FIELD_BATTLE_03:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_PEITA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"] )
g_pButton_PEITA_FIELD_BATTLE_03:AddDummyPos( D3DXVECTOR3( 604, 530, 0 ) )
-- 페이타_필드_망자의 언덕 타이틀
g_pStatic_PEITA_FIELD_BATTLE_03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PEITA_FIELD_BATTLE_03 )
g_pPicture_PEITA_FIELD_BATTLE_03 = g_pUIDialog:CreatePicture()
g_pStatic_PEITA_FIELD_BATTLE_03:AddPicture( g_pPicture_PEITA_FIELD_BATTLE_03 )
g_pPicture_PEITA_FIELD_BATTLE_03:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_PEITA_2" )
g_pPicture_PEITA_FIELD_BATTLE_03:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(624-22, 590-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_PEITA_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"] )

-- 페이타 마을 구름
g_pStatic_PEITA_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PEITA_CLOUD )
g_pPicture_PEITA_CLOUD1 = g_pUIDialog:CreatePicture()
g_pStatic_PEITA_CLOUD:AddPicture( g_pPicture_PEITA_CLOUD1 )
g_pPicture_PEITA_CLOUD1:SetTex( "Cloud_Besma_peita.tga", "Bg_Cloud_Peita_01" )
g_pPicture_PEITA_CLOUD1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(138,502)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_PEITA_CLOUD2 = g_pUIDialog:CreatePicture()
g_pStatic_PEITA_CLOUD:AddPicture( g_pPicture_PEITA_CLOUD2 )
g_pPicture_PEITA_CLOUD2:SetTex( "Cloud_peita_Altera.tga", "Bg_Cloud_Peita_02" )
g_pPicture_PEITA_CLOUD2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(425,377)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_PEITA_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_PEITA"] )
g_pStatic_PEITA_CLOUD:AddDummyInt( 1 )

-- 벨더 마을 버튼
g_pButton_VELDER_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_TOWN )
g_pButton_VELDER_TOWN:SetName( "VELDER_TOWN" )
g_pButton_VELDER_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_VELDER_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_VELDER_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_VELDER_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(678,540-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(678-8,540-8-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(678-6,540-6-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )
g_pButton_VELDER_TOWN:AddDummyPos( D3DXVECTOR3( 658, 476, 0 ) )
-- 벨더 마을 타이틀
g_pStatic_VELDER_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_TOWN )
g_pPicture_VELDER_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_TOWN:AddPicture( g_pPicture_VELDER_TOWN )
g_pPicture_VELDER_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_VELDER" )
g_pPicture_VELDER_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(678-12,540-57+25)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )

-- 벨더 필드_번영의 길
g_pButton_VELDER_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_BATTLE_01 )
g_pButton_VELDER_FIELD_BATTLE_01:SetName( "VELDER_FIELD_BATTLE_01" )
g_pButton_VELDER_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_VELDER_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(730,592-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(730-8,592-8-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(730-6,592-6-57)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"] )
g_pButton_VELDER_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 710,542-12, 0 ) )
-- 벨더 필드_번영의 길 타이틀
g_pStatic_VELDER_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_FIELD_BATTLE_01 )
g_pPicture_VELDER_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_FIELD_BATTLE_01:AddPicture( g_pPicture_VELDER_FIELD_BATTLE_01 )
g_pPicture_VELDER_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_VELDER_0" )
g_pPicture_VELDER_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(730-24,592-57+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"] )

-- 벨더 필드_휴식처_시계탑 광장
g_pButton_VELDER_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_REST )
g_pButton_VELDER_FIELD_REST:SetName( "VELDER_FIELD_REST" )
g_pButton_VELDER_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_VELDER_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_VELDER_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_VELDER_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(764,620-57-7)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(764-8,620-8-57-7)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(764-6,620-6-57-7)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"] )
g_pButton_VELDER_FIELD_REST:AddDummyPos( D3DXVECTOR3( 765,529, 0 ) )
-- 벨더 필드_휴식처_시계탑 광장 타이틀
g_pStatic_FIELD_VELDER_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_FIELD_VELDER_REST )
g_pPicture_FIELD_VELDER_REST = g_pUIDialog:CreatePicture()
g_pStatic_FIELD_VELDER_REST:AddPicture( g_pPicture_FIELD_VELDER_REST )
g_pPicture_FIELD_VELDER_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_VELDER_REST" )
g_pPicture_FIELD_VELDER_REST:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(764-24,620-57-7+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_FIELD_VELDER_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"] )

-- 벨더 필드_평화의 길
g_pButton_VELDER_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_BATTLE_02 )
g_pButton_VELDER_FIELD_BATTLE_02:SetName( "VELDER_FIELD_BATTLE_02" )
g_pButton_VELDER_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_VELDER_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(792,710-57-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(792-8,710-8-57-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(792-6,710-6-57-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"] )
g_pButton_VELDER_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 772,631, 0 ) )
-- 벨더 필드_평화의 길 타이틀
g_pStatic_VELDER_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_FIELD_BATTLE_02 )
g_pPicture_VELDER_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_FIELD_BATTLE_02:AddPicture( g_pPicture_VELDER_FIELD_BATTLE_02 )
g_pPicture_VELDER_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_VELDER_1" )
g_pPicture_VELDER_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(792-22,710-57-15+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"] )

-- 벨더 필드 공존의 길
g_pButton_VELDER_FIELD_BATTLE_03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_BATTLE_03 )
g_pButton_VELDER_FIELD_BATTLE_03:SetName( "VELDER_FIELD_BATTLE_03" )
g_pButton_VELDER_FIELD_BATTLE_03:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_VELDER_FIELD_BATTLE_03:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_03:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_03:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(840,664-57-12)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_03:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(840-8,664-8-57-12)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_03:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(840-6,664-6-57-12)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_03:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_BATTLE_03:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_BATTLE_03:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"] )
g_pButton_VELDER_FIELD_BATTLE_03:AddDummyPos( D3DXVECTOR3( 850,626, 0 ) )
-- 벨더 필드 공존의 길 타이틀
g_pStatic_VELDER_FIELD_BATTLE_03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_FIELD_BATTLE_03 )
g_pPicture_VELDER_FIELD_BATTLE_03 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_FIELD_BATTLE_03:AddPicture( g_pPicture_VELDER_FIELD_BATTLE_03 )
g_pPicture_VELDER_FIELD_BATTLE_03:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_VELDER_2" )
g_pPicture_VELDER_FIELD_BATTLE_03:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(840-22,664-57-12+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"] )

-- 벨더 필드 루렌시아 항구
g_pButton_VELDER_FIELD_BATTLE_04 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_BATTLE_04 )
g_pButton_VELDER_FIELD_BATTLE_04:SetName( "VELDER_FIELD_BATTLE_04" )
g_pButton_VELDER_FIELD_BATTLE_04:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_VELDER_FIELD_BATTLE_04:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_04:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_04:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(816,750-57-20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_04:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(816-8,750-8-57-20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_04:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(816-6,750-6-57-20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_04:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_BATTLE_04:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_BATTLE_04:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_BATTLE_04:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"] )
g_pButton_VELDER_FIELD_BATTLE_04:AddDummyPos( D3DXVECTOR3( 796,666, 0 ) )
-- 벨더 필드 루렌시아 항구 타이틀
g_pStatic_VELDER_FIELD_BATTLE_04 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_FIELD_BATTLE_04 )
g_pPicture_VELDER_FIELD_BATTLE_04 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_FIELD_BATTLE_04:AddPicture( g_pPicture_VELDER_FIELD_BATTLE_04 )
g_pPicture_VELDER_FIELD_BATTLE_04:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_VELDER_3" )
g_pPicture_VELDER_FIELD_BATTLE_04:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(816-22,750-57-20+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_FIELD_BATTLE_04:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"] )

-- 필드 벨더 배
g_pButton_VELDER_FIELD_BATTLE_SHIP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_VELDER_FIELD_BATTLE_SHIP )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetName( "VELDER_FIELD_BATTLE_SHIP" )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(379,713)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(379-8,713-8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(379-6,713-6)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_VELDER_FIELD_BATTLE_SHIP:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_VELDER_FIELD_BATTLE_SHIP:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_SHIP_STAGE"] )
g_pButton_VELDER_FIELD_BATTLE_SHIP:AddDummyPos( D3DXVECTOR3( 382, 713, 0 ) )

-- 벨더 마을 구름
g_pStatic_VELDER_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VELDER_CLOUD )
g_pPicture_VELDER_CLOUD1 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_CLOUD:AddPicture( g_pPicture_VELDER_CLOUD1 )
g_pPicture_VELDER_CLOUD1:SetTex( "Cloud_Velder_01.tga", "Bg_Cloud_Velder_01" )
g_pPicture_VELDER_CLOUD1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(55,579)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_VELDER_CLOUD2 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_CLOUD:AddPicture( g_pPicture_VELDER_CLOUD2 )
g_pPicture_VELDER_CLOUD2:SetTex( "Cloud_Velder_01.tga", "Bg_Cloud_Velder_02" )
g_pPicture_VELDER_CLOUD2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(530,446)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_VELDER_CLOUD3 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_CLOUD:AddPicture( g_pPicture_VELDER_CLOUD3 )
g_pPicture_VELDER_CLOUD3:SetTex( "Cloud_Etc.tga", "Bg_Cloud_Velder_03" )
g_pPicture_VELDER_CLOUD3:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(846,669)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_VELDER_CLOUD4 = g_pUIDialog:CreatePicture()
g_pStatic_VELDER_CLOUD:AddPicture( g_pPicture_VELDER_CLOUD4 )
g_pPicture_VELDER_CLOUD4:SetTex( "Cloud_Etc.tga", "Bg_Cloud_Velder_04" )
g_pPicture_VELDER_CLOUD4:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(1006,511)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_VELDER_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_VELDER"] )
g_pStatic_VELDER_CLOUD:AddDummyInt( 1 )

-- 필드 하멜 배
g_pButton_HAMEL_FIELD_BATTLE_SHIP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_BATTLE_SHIP )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetName( "HAMEL_FIELD_BATTLE_SHIP" )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(666,750)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(666-8,750-8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(666-6,750-6)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_SHIP_STAGE"] )
g_pButton_HAMEL_FIELD_BATTLE_SHIP:AddDummyPos( D3DXVECTOR3( 696, 750, 0 ) )

-- 하멜 마을 버튼
g_pButton_HAMEL_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_TOWN )
g_pButton_HAMEL_TOWN:SetName( "HAMEL_TOWN" )
g_pButton_HAMEL_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_HAMEL_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_HAMEL_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_HAMEL_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(324,955-57-40)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(324-8,955-8-57-40)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(324-6,955-6-57-40)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_HAMEL"] )
g_pButton_HAMEL_TOWN:AddDummyPos( D3DXVECTOR3( 304, 851, 0 ) )
--하멜 마을 타이틀
g_pStatic_HAMEL_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_TOWN )
g_pPicture_HAMEL_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_TOWN:AddPicture( g_pPicture_HAMEL_TOWN )
g_pPicture_HAMEL_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_HAMEL" )
g_pPicture_HAMEL_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(324-12,955-57-40+25)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_HAMEL"] )

-- 하멜 필드_엘라임의 물결
g_pButton_HAMEL_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_BATTLE_01 )
g_pButton_HAMEL_FIELD_BATTLE_01:SetName( "HAMEL_FIELD_BATTLE_01" )
g_pButton_HAMEL_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_HAMEL_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(364,1010-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(364-8,1010-8-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(364-6,1010-6-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"] )
g_pButton_HAMEL_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 366,942, 0 ) )
-- 하멜 필드_엘라임의 물결 타이틀
g_pStatic_HAMEL_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_FIELD_BATTLE_01 )
g_pPicture_HAMEL_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_FIELD_BATTLE_01:AddPicture( g_pPicture_HAMEL_FIELD_BATTLE_01 )
g_pPicture_HAMEL_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_HAMEL_0" )
g_pPicture_HAMEL_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(364-22,1010-57-44+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"] )

-- 하멜 필드_휩쓸린 도시
g_pButton_HAMEL_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_BATTLE_02 )
g_pButton_HAMEL_FIELD_BATTLE_02:SetName( "HAMEL_FIELD_BATTLE_02" )
g_pButton_HAMEL_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_HAMEL_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(420,1010-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(420-8,1010-8-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12-4,
	ADD_SIZE_Y	= -12-4,
 	"LEFT_TOP	= D3DXVECTOR2(420-6,1010-6-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"] )
g_pButton_HAMEL_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 422, 941, 0 ) )
-- 하멜 필드_휩쓸린 도시 타이틀
g_pStatic_HAMEL_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_FIELD_BATTLE_02 )
g_pPicture_HAMEL_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_FIELD_BATTLE_02:AddPicture( g_pPicture_HAMEL_FIELD_BATTLE_02 )
g_pPicture_HAMEL_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_HAMEL_1" )
g_pPicture_HAMEL_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(420-22,1010-57-44+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"] )

-- 하멜 필드_휴식처_치유의 샘터
g_pButton_HAMEL_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_REST )
g_pButton_HAMEL_FIELD_REST:SetName( "HAMEL_FIELD_REST" )
g_pButton_HAMEL_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_HAMEL_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_HAMEL_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_HAMEL_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(460,1010-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(460-8,1010-8-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(460-6,1010-6-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"] )
g_pButton_HAMEL_FIELD_REST:AddDummyPos( D3DXVECTOR3( 462, 940, 0 ) )
-- 하멜 필드_휴식처_치유의 샘터 타이틀
g_pStatic_HAMEL_FIELD_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_FIELD_REST )
g_pPicture_HAMEL_FIELD_REST = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_FIELD_REST:AddPicture( g_pPicture_HAMEL_FIELD_REST )
g_pPicture_HAMEL_FIELD_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_HAMEL_REST" )
g_pPicture_HAMEL_FIELD_REST:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(460-22+8,1010-57-44+17)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"] )

-- 하멜 필드_원형 수로
g_pButton_HAMEL_FIELD_BATTLE_03 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_BATTLE_03 )
g_pButton_HAMEL_FIELD_BATTLE_03:SetName( "HAMEL_FIELD_BATTLE_03" )
g_pButton_HAMEL_FIELD_BATTLE_03:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_HAMEL_FIELD_BATTLE_03:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_03:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_03:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(540,1004-57-45)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_03:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(540-8,1004-8-57-45)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_03:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(540-6,1004-6-57-45)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_03:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_BATTLE_03:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_BATTLE_03:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"] )
g_pButton_HAMEL_FIELD_BATTLE_03:AddDummyPos( D3DXVECTOR3( 542,937, 0 ) )
-- 하멜 필드_원형 수로 타이틀
g_pStatic_HAMEL_FIELD_BATTLE_03 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_FIELD_BATTLE_03 )
g_pPicture_HAMEL_FIELD_BATTLE_03 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_FIELD_BATTLE_03:AddPicture( g_pPicture_HAMEL_FIELD_BATTLE_03 )
g_pPicture_HAMEL_FIELD_BATTLE_03:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_HAMEL_2" )
g_pPicture_HAMEL_FIELD_BATTLE_03:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(540-22,1004-57-45+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_FIELD_BATTLE_03:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"] )

-- 하멜 필드_노아호의 무덤
g_pButton_HAMEL_FIELD_BATTLE_04 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HAMEL_FIELD_BATTLE_04 )
g_pButton_HAMEL_FIELD_BATTLE_04:SetName( "HAMEL_FIELD_BATTLE_04" )
g_pButton_HAMEL_FIELD_BATTLE_04:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_HAMEL_FIELD_BATTLE_04:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_04:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_HAMEL_FIELD_BATTLE_04:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(498,947-57-42)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_04:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(498-8,947-8-57-42)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_04:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(498-6,947-6-57-42)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_HAMEL_FIELD_BATTLE_04:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_HAMEL_FIELD_BATTLE_04:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_HAMEL_FIELD_BATTLE_04:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_HAMEL_FIELD_BATTLE_04:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"] )
g_pButton_HAMEL_FIELD_BATTLE_04:AddDummyPos( D3DXVECTOR3( 478, 841, 0 ) )
-- 하멜 필드_노아호의 무덤 타이틀
g_pStatic_HAMEL_FIELD_BATTLE_04 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_FIELD_BATTLE_04 )
g_pPicture_HAMEL_FIELD_BATTLE_04 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_FIELD_BATTLE_04:AddPicture( g_pPicture_HAMEL_FIELD_BATTLE_04 )
g_pPicture_HAMEL_FIELD_BATTLE_04:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_HAMEL_3" )
g_pPicture_HAMEL_FIELD_BATTLE_04:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(498-22,947-57-42+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_FIELD_BATTLE_04:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"] )

-- 하멜 마을 구름
g_pStatic_HAMEL_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HAMEL_CLOUD )
g_pPicture_HAMEL_CLOUD1 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_CLOUD:AddPicture( g_pPicture_HAMEL_CLOUD1 )
g_pPicture_HAMEL_CLOUD1:SetTex( "Cloud_Hamel.tga", "Bg_Cloud_Hamel_01" )
g_pPicture_HAMEL_CLOUD1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(196,754)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pPicture_HAMEL_CLOUD2 = g_pUIDialog:CreatePicture()
g_pStatic_HAMEL_CLOUD:AddPicture( g_pPicture_HAMEL_CLOUD2 )
g_pPicture_HAMEL_CLOUD2:SetTex( "Cloud_Hamel.tga", "Bg_Cloud_Hamel_02" )
g_pPicture_HAMEL_CLOUD2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(609,872)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_HAMEL_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_HAMEL"] )
g_pStatic_HAMEL_CLOUD:AddDummyInt( 1 )

-- 샌더 마을 버튼
g_pButton_SANDER_TOWN = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SANDER_TOWN )
g_pButton_SANDER_TOWN:SetName( "SANDER_TOWN" )
g_pButton_SANDER_TOWN:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_NORMAL" )
g_pButton_SANDER_TOWN:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_SANDER_TOWN:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_TOWN_OVER" )
g_pButton_SANDER_TOWN:SetNormalPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(710-10,908+83)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_TOWN:SetOverPoint
{
	ADD_SIZE_X	= -14,
	ADD_SIZE_Y	= -14,
	"LEFT_TOP	= D3DXVECTOR2(710-8-10,908-8+83)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_TOWN:SetDownPoint
{
	ADD_SIZE_X	= -14 - 4,
	ADD_SIZE_Y	= -14 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(710-6-10,908-6+83)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_TOWN:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_SANDER_TOWN:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_SANDER_TOWN:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_SANDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_SANDER"] )
-- g_pButton_SANDER_TOWN:AddDummyPos( D3DXVECTOR3( 690, 901, 0 ) ) --이전 버전
g_pButton_SANDER_TOWN:AddDummyPos( D3DXVECTOR3( 741, 1004, 0 ) )

-- 샌더 마을 타이틀
g_pStatic_SANDER_TOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SANDER_TOWN )
g_pPicture_SANDER_TOWN = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_TOWN:AddPicture( g_pPicture_SANDER_TOWN )
g_pPicture_SANDER_TOWN:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "TOWN_SANDER" )
g_pPicture_SANDER_TOWN:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(710-12-10,908+25+83)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_SANDER_TOWN:AddDummyInt( VILLAGE_MAP_ID["VMI_SANDER"] )

-- 샌더 필드_바람의 사원
g_pButton_SANDER_FIELD_BATTLE_01 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SANDER_FIELD_BATTLE_01 )
g_pButton_SANDER_FIELD_BATTLE_01:SetName( "SANDER_FIELD_BATTLE_01" )
g_pButton_SANDER_FIELD_BATTLE_01:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_SANDER_FIELD_BATTLE_01:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_SANDER_FIELD_BATTLE_01:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_SANDER_FIELD_BATTLE_01:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(750,1010-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_01:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(750-8,1010-8-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_01:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(750-6,1010-6-57-44)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_01:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_SANDER_FIELD_BATTLE_01:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_SANDER_FIELD_BATTLE_01:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_SANDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"] )
-- g_pButton_SANDER_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 730,896, 0 ) )
g_pButton_SANDER_FIELD_BATTLE_01:AddDummyPos( D3DXVECTOR3( 753,873, 0 ) )
-- 샌더 필드_바람의 사원 타이틀
g_pStatic_SANDER_FIELD_BATTLE_01 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SANDER_FIELD_BATTLE_01 )
g_pPicture_SANDER_FIELD_BATTLE_01 = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_FIELD_BATTLE_01:AddPicture( g_pPicture_SANDER_FIELD_BATTLE_01 )
g_pPicture_SANDER_FIELD_BATTLE_01:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_SANDER_0" )
g_pPicture_SANDER_FIELD_BATTLE_01:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(750-22,1010-57-44+20)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_SANDER_FIELD_BATTLE_01:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"] )

-- 샌더 필드_추가 1번 필드
g_pButton_SANDER_FIELD_BATTLE_02 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SANDER_FIELD_BATTLE_02 )
g_pButton_SANDER_FIELD_BATTLE_02:SetName( "SANDER_FIELD_BATTLE_02" )
g_pButton_SANDER_FIELD_BATTLE_02:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_NORMAL" )
g_pButton_SANDER_FIELD_BATTLE_02:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_SANDER_FIELD_BATTLE_02:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_BATTLE_OVER" )
g_pButton_SANDER_FIELD_BATTLE_02:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(821,946)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_02:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(821-8,946-8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_02:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(821-6,946-6)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_BATTLE_02:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_SANDER_FIELD_BATTLE_02:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_SANDER_FIELD_BATTLE_02:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_SANDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"] )
g_pButton_SANDER_FIELD_BATTLE_02:AddDummyPos( D3DXVECTOR3( 821+3,926-10, 0) )
-- 샌더 필드_추가 1번 필드 타이틀
g_pStatic_SANDER_FIELD_BATTLE_02 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SANDER_FIELD_BATTLE_02 )
g_pPicture_SANDER_FIELD_BATTLE_02 = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_FIELD_BATTLE_02:AddPicture( g_pPicture_SANDER_FIELD_BATTLE_02 )
g_pPicture_SANDER_FIELD_BATTLE_02:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_NAME_SAND_1" )
g_pPicture_SANDER_FIELD_BATTLE_02:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(788,965)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_SANDER_FIELD_BATTLE_02:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"] )

-- 샌더 필드_휴식처_윈드스톤 유적지
g_pButton_SANDER_FIELD_REST = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SANDER_FIELD_REST )
g_pButton_SANDER_FIELD_REST:SetName( "SANDER_FIELD_REST" )
g_pButton_SANDER_FIELD_REST:SetNormalTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_NORMAL" )
g_pButton_SANDER_FIELD_REST:SetOverTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_SANDER_FIELD_REST:SetDownTex( "DLG_Common_Button02_NEW.tga", "BTN_REST_OVER" )
g_pButton_SANDER_FIELD_REST:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(814,988)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_REST:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP	= D3DXVECTOR2(814-8,988-8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_REST:SetDownPoint
{
	ADD_SIZE_X	= -12 - 4,
	ADD_SIZE_Y	= -12 - 4,
 	"LEFT_TOP	= D3DXVECTOR2(814-6,988-6)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_SANDER_FIELD_REST:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_CLICKED"] )
g_pButton_SANDER_FIELD_REST:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OVER"] )
g_pButton_SANDER_FIELD_REST:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_VILLAGE_MOUSE_OUT"] )
g_pButton_SANDER_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_REST_00"] )
g_pButton_SANDER_FIELD_REST:AddDummyPos( D3DXVECTOR3( 820, 1022, 0 ) )
-- 샌더 필드_휴식처_윈드스톤 유적지
g_pStatic_SANDER_FIELD_REST = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SANDER_FIELD_REST )
g_pPicture_SANDER_FIELD_REST = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_FIELD_REST:AddPicture( g_pPicture_SANDER_FIELD_REST )
g_pPicture_SANDER_FIELD_REST:SetTex( "DLG_UI_Common_Texture71_NEW.tga", "FIELD_REST_SANDER" )
g_pPicture_SANDER_FIELD_REST:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(789,1005)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pStatic_SANDER_FIELD_REST:AddDummyInt( VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_REST_00"] )


-- 샌더 마을 구름
g_pStatic_SANDER_CLOUD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SANDER_CLOUD )
g_pPicture_SANDER_CLOUD1 = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_CLOUD:AddPicture( g_pPicture_SANDER_CLOUD1 )
g_pPicture_SANDER_CLOUD1:SetTex( "Cloud_SANDER.tga", "SANDER_CLOUD_1" )
g_pPicture_SANDER_CLOUD1:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(567,812)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

--[[
g_pPicture_SANDER_CLOUD2 = g_pUIDialog:CreatePicture()
g_pStatic_SANDER_CLOUD:AddPicture( g_pPicture_SANDER_CLOUD2 )
g_pPicture_SANDER_CLOUD2:SetTex( "Cloud_SANDER.tga", "SANDER_CLOUD_2" )
g_pPicture_SANDER_CLOUD2:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(530,771)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
]]--

g_pStatic_SANDER_CLOUD:AddDummyInt( VILLAGE_MAP_ID["VMI_SANDER"] )
g_pStatic_SANDER_CLOUD:AddDummyInt( 1 )


-- 캐릭터/파티원 위치 마크 'ㅅ'
g_pButtonMyChar = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMyChar )
g_pButtonMyChar:SetName( "Button_Mychar" )
g_pButtonMyChar:SetNormalTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_My" )
g_pButtonMyChar:SetOverTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_My" )
g_pButtonMyChar:SetDownTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_My" )
g_pButtonMyChar:SetNormalPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
    "LEFT_TOP	= D3DXVECTOR2( 0, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMyChar:SetOverPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2( 0, 0)",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMyChar:SetDownPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2( 0, 0 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMyChar:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MYCHAR_MOUSE_OVER"] )
g_pButtonMyChar:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_MYCHAR_MOUSE_OUT"] )

g_pButtonPartyMember0 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember0 )
g_pButtonPartyMember0:SetName( "Button_PartyMember0" )
g_pButtonPartyMember0:SetNormalTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember0:SetOverTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember0:SetDownTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember0:SetNormalPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
   "LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember0:SetOverPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember0:SetDownPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember0:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember0:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember0:AddDummyInt( 0 )

g_pButtonPartyMember1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember1 )
g_pButtonPartyMember1:SetName( "Button_PartyMember1" )
g_pButtonPartyMember1:SetNormalTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember1:SetOverTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember1:SetDownTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember1:SetNormalPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
    "LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember1:SetOverPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember1:SetDownPoint
{
    ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember1:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember1:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember1:AddDummyInt( 1 )

g_pButtonPartyMember2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPartyMember2 )
g_pButtonPartyMember2:SetName( "Button_PartyMember2" )
g_pButtonPartyMember2:SetNormalTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember2:SetOverTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember2:SetDownTex( "DLG_UI_Common_Texture70_NEW.TGA", "MiniMap_Char_Party" )
g_pButtonPartyMember2:SetNormalPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember2:SetOverPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember2:SetDownPoint
{
	ADD_SIZE_X	= -12,
	ADD_SIZE_Y	= -22,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonPartyMember2:SetCustomMsgMouseOver( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OVER"] )
g_pButtonPartyMember2:SetCustomMsgMouseOut( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_PARTY_MEMBER_MOUSE_OUT"] )
g_pButtonPartyMember2:AddDummyInt( 2 )