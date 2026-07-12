-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticRecordVedio = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRecordVedio )
g_pStaticRecordVedio:SetName( "staticRecordVedio" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_0"] )

-- 키보드 ESC로 창 닫을 수 있는 문제 때문에 아래 CloseCustomUIEvent 는 등록하면 안됨.  
-- 동영상 촬영 창은 항상 상위에 존재해야 하며 Scroll Lock이나 버튼으로만 끌 수 있도록 함
--g_pUIDialog:SetCloseCustomUIEventID( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_EXIT"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 600, 640, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 116,40, 0 ) ) -- Size


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRecordVedio:AddPicture( g_pPicture_bg3 )
g_pPicture_bg3:SetTex( "DLG_UI_Cam.TGA", "CAPTURE_BOARD_02" )
g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 16,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticRecordVedio:AddPicture( g_pPicture_bg3 )
g_pPicture_bg3:SetTex( "DLG_UI_Cam.TGA", "BAR_02" )
g_pPicture_bg3:SetPoint
{
	ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(76,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------
-- EXIT 버튼 
--------------

g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "Btn_Record_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Cam.tga", "CLOSE_RECORD_OVER" )
g_pButton_exit:SetOverTex( "DLG_UI_Cam.tga", "CLOSE_RECORD_OVER" )
g_pButton_exit:SetDownTex( "DLG_UI_Cam.tga", "CLOSE_RECORD_OVER" )
g_pButton_exit:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(84,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,14)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(84,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_EXIT"] )


--------------
-- Start 버튼 
--------------
g_pButton_Start= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Start )
g_pButton_Start:SetName( "Btn_Record_Start" )
g_pButton_Start:SetNormalTex( "DLG_UI_Cam.tga", "PLAY_BUTTON_OVER" )
g_pButton_Start:SetOverTex( "DLG_UI_Cam.tga", "PLAY_BUTTON_NORMAL" )
g_pButton_Start:SetDownTex( "DLG_UI_Cam.tga", "PLAY_BUTTON_NORMAL" )
g_pButton_Start:SetDisableTex( "DLG_UI_Cam.tga", "PLAY_BUTTON_NORMAL" )
g_pButton_Start:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Start:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Start:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,6+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Start:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18,6)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Start:SetCustomMsgMouseUp( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_RECORD_START"] )


--------------
-- 퍼즈  버튼 
--------------

g_pButton_Pause= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pause )
g_pButton_Pause:SetName( "Btn_Record_Pause" )
g_pButton_Pause:SetNormalTex( "DLG_UI_Cam.tga", "PAUSE_BUTTON_NORMAL" )
g_pButton_Pause:SetOverTex( "DLG_UI_Cam.tga", "PAUSE_BUTTON_NORMAL" )
g_pButton_Pause:SetDownTex( "DLG_UI_Cam.tga", "PAUSE_BUTTON_NORMAL" )
g_pButton_Pause:SetDisableTex( "DLG_Record_Icon.tga", "PAUSE_BUTTON_OVER" )

g_pButton_Pause:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pause:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pause:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pause:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18-1,6-1)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_Pause:SetEnable(false)
g_pButton_Pause:SetCustomMsgMouseUp( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_RECORD_PAUSE"] )


--------------
-- Stop 버튼 
--------------


g_pButton_Stop= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Stop )
g_pButton_Stop:SetName( "Btn_Record_Stop" )
g_pButton_Stop:SetNormalTex( "DLG_UI_Cam.tga", "STOP_BUTTON_NORMAL" )
g_pButton_Stop:SetOverTex( "DLG_UI_Cam.tga", "STOP_BUTTON_NORMAL" )
g_pButton_Stop:SetDownTex( "DLG_UI_Cam.tga", "STOP_BUTTON_NORMAL" )
g_pButton_Stop:SetDisableTex( "DLG_UI_Cam.tga", "STOP_BUTTON_STOP" )

g_pButton_Stop:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(48,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Stop:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(48,4)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Stop:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(48+1,4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Stop:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(48,4)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_Pause:SetEnable(false)
g_pButton_Stop:SetCustomMsgMouseUp( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_RECORD_STOP"] )


--------------
-- Rec 버튼 
--------------
g_pButton_Rec= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Rec )
g_pButton_Rec:SetName( "Btn_Record_Rec" )
g_pButton_Rec:SetNormalTex( "DLG_UI_Cam.tga", "RECORD_BUTTON_NORMAL" )
g_pButton_Rec:SetOverTex( "DLG_UI_Cam.tga", "RECORD_BUTTON_NORMAL" )
g_pButton_Rec:SetDownTex( "DLG_UI_Cam.tga", "RECORD_BUTTON_NORMAL" )
g_pButton_Rec:SetDisableTex( "DLG_UI_Cam.tga", "RECORD_BUTTON_OVER" )
g_pButton_Rec:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rec:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,6)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rec:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(18+1,6+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rec:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(18,6)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rec:SetCustomMsgMouseUp( UI_RECORD_VIDEO_CUSTOM_MSG["URVCM_RECORD_START"] )
g_pButton_Rec:SetShowEnable(false,false)