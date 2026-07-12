-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "NewYear2014Event" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
--g_pUIDialog:SetShow( false )

--스페셜미션 버튼
g_pButtonRed = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed )
g_pButtonRed:SetName( "Special" )
g_pButtonRed:SetNormalTex( "DLG_UI_Event_End_Year.tga", "MISSION_SPECIAL_NORMAL" )
g_pButtonRed:SetOverTex( "DLG_UI_Event_End_Year.tga", "MISSION_SPECIAL_OVER" )
g_pButtonRed:SetDownTex( "DLG_UI_Event_End_Year.tga", "MISSION_SPECIAL_OVER" )
g_pButtonRed:SetDisableTex( "DLG_UI_Event_End_Year.tga", "MISSION_SPECIAL_GRAY" )
g_pButtonRed:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(340+1,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340,5)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_SPECIAL_MISSION"] )
g_pButtonRed:SetShowEnable( false, false )
g_pButtonRed:SetGuideDesc( STR_ID_29053 )
g_pButtonRed:SetShowDescriptionWhenDisable( true )

--만렙달성미션 버튼
g_pButtonRed = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed )
g_pButtonRed:SetName( "Complete" )
g_pButtonRed:SetNormalTex( "DLG_UI_Event_End_Year.tga", "MISSION_COMPLETE_NORMAL" )
g_pButtonRed:SetOverTex( "DLG_UI_Event_End_Year.tga", "MISSION_COMPLETE_OVER" )
g_pButtonRed:SetDownTex( "DLG_UI_Event_End_Year.tga", "MISSION_COMPLETE_OVER" )
g_pButtonRed:SetDisableTex( "DLG_UI_Event_End_Year.tga", "MISSION_COMPLETE_GRAY" )
g_pButtonRed:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(340+1+115,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115,5)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_SUPPORT_MISSION"] )
g_pButtonRed:SetShowEnable( false, false )
g_pButtonRed:SetGuideDesc( STR_ID_29052 )
g_pButtonRed:SetShowDescriptionWhenDisable( true )

--서포트미션 버튼
g_pButtonRed = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed )
g_pButtonRed:SetName( "Support" )
g_pButtonRed:SetNormalTex( "DLG_UI_Event_End_Year.tga", "MISSION_SUPPORT_NORMAL" )
g_pButtonRed:SetOverTex( "DLG_UI_Event_End_Year.tga", "MISSION_SUPPORT_OVER" )
g_pButtonRed:SetDownTex( "DLG_UI_Event_End_Year.tga", "MISSION_SUPPORT_OVER" )
g_pButtonRed:SetDisableTex( "DLG_UI_Event_End_Year.tga", "MISSION_SUPPORT_GRAY" )
g_pButtonRed:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115+115,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115+115,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(340+1+115+115,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(340+115+115,5)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_SUPPORT_MISSION"] )
g_pButtonRed:SetShowEnable( false, false )
g_pButtonRed:SetGuideDesc( STR_ID_29051 )
g_pButtonRed:SetShowDescriptionWhenDisable( true )

--새해미션 버튼
g_pButtonRed = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed )
g_pButtonRed:SetName( "NewYear" )
g_pButtonRed:SetNormalTex( "DLG_UI_Event_New_Year02.tga", "NEW_YEAR_MISSION_NORMAL" )
g_pButtonRed:SetOverTex( "DLG_UI_Event_New_Year02.tga", "NEW_YEAR_MISSION_OVER" )
g_pButtonRed:SetDownTex( "DLG_UI_Event_New_Year02.tga", "NEW_YEAR_MISSION_OVER" )
g_pButtonRed:SetDisableTex( "DLG_UI_Event_New_Year02.tga", "NEW_YEAR_MISSION_NORMAL" )
g_pButtonRed:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(440,-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(440-5,-6-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(440-5+1,-6-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(440,-6)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_NEW_YEAR_2014_UI_TOGGLE"] )
g_pButtonRed:SetShowEnable( false, false )


-----여기부터 2014 새해 이벤트용 UI
--{{ 배경
g_pStatic_Event = g_pUIDialog:CreateStatic() -- 배경
g_pUIDialog:AddControl( g_pStatic_Event )
g_pStatic_Event:SetName( "g_pStatic_Event" )
g_pEvent_BG_top = g_pUIDialog:CreatePicture()
g_pStatic_Event:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pStatic_Event:SetShowEnable( false, false )

g_pStatic_Event:AddPicture( g_pEvent_BG_top )
g_pEvent_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
g_pEvent_BG_top:SetPoint
{
	ADD_SIZE_X = -155,
	"LEFT_TOP		= D3DXVECTOR2(122+230,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEvent_BG_middle = g_pUIDialog:CreatePicture()
g_pStatic_Event:AddPicture( g_pEvent_BG_middle )
g_pEvent_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
g_pEvent_BG_middle:SetPoint
{
	ADD_SIZE_X = -155,
	ADD_SIZE_Y = 288,
	"LEFT_TOP		= D3DXVECTOR2(122+230,105+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEvent_BG_bottom= g_pUIDialog:CreatePicture()
g_pStatic_Event:AddPicture( g_pEvent_BG_bottom)
g_pEvent_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
g_pEvent_BG_bottom:SetPoint
{
	ADD_SIZE_X = -155,
	"LEFT_TOP		= D3DXVECTOR2(122+230,105+19+6+288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pEvent_BG_top = g_pUIDialog:CreatePicture()
g_pStatic_Event:AddPicture( g_pEvent_BG_top )
g_pEvent_BG_top:SetTex( "DLG_UI_Event_New_Year01.TGA", "TITLE_MISSION_LIST" )
g_pEvent_BG_top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(136+230,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 배경

-- 닫기 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(385+230,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(385-4+230,117-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(385-4+1+230,117-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_NEW_YEAR_2014_UI_CLOSE"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )

-- 새해 미션1 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission1" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "1ST_MISSION_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "1ST_MISSION_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "1ST_MISSION_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "1ST_MISSION_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 2 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29055 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션1 진행버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission1Progress" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 3 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29056 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션1 완료버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission1Complete" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 4 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )

-- 새해 미션2 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission2" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "20_MISSION_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "20_MISSION_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "20_MISSION_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "20_MISSION_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 2 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29057 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션2 진행버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission2Progress" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 3 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29058 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션2 완료버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission2Complete" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 4 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )

-- 새해 미션3 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission3" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "30_MISSION_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "30_MISSION_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "30_MISSION_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "30_MISSION_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 2 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29059 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션3 진행버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission3Progress" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 3 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29060 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션3 완료버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission3Complete" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 4 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )

-- 새해 미션4 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission4" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "2ND_MISSION_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "2ND_MISSION_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "2ND_MISSION_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "2ND_MISSION_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 2 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29061 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션4 진행버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission4Progress" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 3 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29062 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션4 완료버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission4Complete" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 4 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )

-- 새해 미션5 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission5" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "45_MISSION_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "45_MISSION_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "45_MISSION_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "45_MISSION_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 2 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29063 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션5 진행버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission5Progress" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "INPROGRESS_NORMAL" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 3 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
g_pButtonX:SetGuideDesc( STR_ID_29064 )
g_pButtonX:SetShowDescriptionWhenDisable( true )

-- 새해 미션5 완료버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "NewYearMission5Complete" )
g_pButtonX:SetNormalTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_OVER" )
g_pButtonX:SetDisableTex( "DLG_UI_Event_New_Year01.tga", "COMPLETE_GRAY" )

g_pButtonX:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(144+1+230,166+1+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDisablePoint
{	
    "LEFT_TOP		= D3DXVECTOR2(144+230,166+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMPLETE_NEW_YEAR_MISSION"] )
g_pButtonX:AddDummyInt( 1 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:AddDummyInt( 4 ) -- 같은 DummyInt를 가진 모든 컨트롤을 끄는 기능에 이용함
g_pButtonX:SetShowEnable( false, false )
