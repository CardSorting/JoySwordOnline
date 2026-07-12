-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_CLOSE"] )

g_pStaticopen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticopen )
g_pStaticopen:SetName( "open" )

g_pUIDialog:SetPos(750,550) 
---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_LEFT" )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_LEFT_3" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_CENTER" )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_CENTER_3" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X=140,   
--"LEFT_TOP		= D3DXVECTOR2(40,45)",
	"LEFT_TOP		= D3DXVECTOR2(40,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_RIGHT" )
--g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture75.TGA", "PC_BG_RIGHT_3" )
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(180,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------g_pStatic_TEXT

g_pStatic_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TEXT )

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_22507, --프리카메라
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,63)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_2606, --ON
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(100,63)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_2607, --OFF
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(152,63)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_22508, --메뉴얼 카메라
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,93)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_2606, --ON
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(100,93)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_2607, --ON
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(148,93)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_22509, -- /sf 0.1 100
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,123)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_22510, -- /sf 0.5 100
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,153)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_22511, -- /sf 1(초기화)
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,183)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
-- FREE CAMERA
g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(105+8,45+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(105,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(105+1,45+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_FREE_CAMERA_ON"] )

g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(157+8,45+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(157,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(157+1,45+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_FREE_CAMERA_OFF"] )


-- MENUAL CAMERA
----g_pRadioButton_Tybe_A
g_pRadioButton_Tybe_A = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tybe_A )
g_pRadioButton_Tybe_A:SetFixOverByCheck( true ) 
g_pRadioButton_Tybe_A:SetShowOffBGByCheck( true )
g_pRadioButton_Tybe_A:SetName( "Menual_Camera_On" )
g_pRadioButton_Tybe_A:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButton_Tybe_A:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_A:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_A:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(110,90)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(110+15,90+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110,90)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetGroupID( 2 )
g_pRadioButton_Tybe_A:SetCustomMsgChecked( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_MENUAL_CAMERA_ON"] )
----g_pRadioButton_Tybe_B
g_pRadioButton_Tybe_B = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tybe_B )
g_pRadioButton_Tybe_B:SetFixOverByCheck( true ) 
g_pRadioButton_Tybe_B:SetShowOffBGByCheck( true )
g_pRadioButton_Tybe_B:SetName( "Menual_Camera_Off" )
g_pRadioButton_Tybe_B:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButton_Tybe_B:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_B:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_B:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(160,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(160,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(160,90)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(160+15,90+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(160,90)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetGroupID( 2 )
g_pRadioButton_Tybe_B:SetCustomMsgChecked( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_MENUAL_CAMERA_OFF"] )


-- SF 0.1 100
g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(90+8,110+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(90+1,110+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_SLOW_FRAME_01"] )

-- SF 0.5 100
g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(90+8,140+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(90+1,140+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_SLOW_FRAME_02"] )

-- SF 1
g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )
g_pButton_SocketCheat:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButton_SocketCheat:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(90+8,170+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(90+1,170+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_GAME_EDIT_CUSTOM_MSG["UGECM_CAMERA_EDIT_SLOW_FRAME_03"] )
