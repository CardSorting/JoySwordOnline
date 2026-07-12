-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----------------------체널 버튼


-----------------------------   1채널  ----------------------
		 
g_pButtonchanal1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal1 )
g_pButtonchanal1:SetName( "chanal1" )
g_pButtonchanal1:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal1:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal1:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,117)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,117+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal1:AddDummyInt(1)
g_pButtonchanal1:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




         -----------------------------   2채널  ----------------------
		 
g_pButtonchanal2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal2 )
g_pButtonchanal2:SetName( "chanal2" )
g_pButtonchanal2:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal2:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal2:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(665,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,117)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,117+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal2:AddDummyInt(2)
g_pButtonchanal2:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )



         -----------------------------   3채널  ----------------------
		 
g_pButtonchanal3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal3 )
g_pButtonchanal3:SetName( "chanal3" )
g_pButtonchanal3:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal3:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal3:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,165+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal3:AddDummyInt(3)
g_pButtonchanal3:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )


         -----------------------------   4채널  ----------------------
		 
g_pButtonchanal4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal4 )
g_pButtonchanal4:SetName( "chanal4" )
g_pButtonchanal4:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal4:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal4:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal4:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,165)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal4:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,165+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal4:AddDummyInt(4)
g_pButtonchanal4:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )


         -----------------------------   5채널  ----------------------
		 
g_pButtonchanal5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal5 )
g_pButtonchanal5:SetName( "chanal5" )
g_pButtonchanal5:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal5:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal5:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal5:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341,213)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal5:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal5:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal5:AddDummyInt(5)
g_pButtonchanal5:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )



         -----------------------------   6채널  ----------------------
		 
g_pButtonchanal6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal6 )
g_pButtonchanal6:SetName( "chanal6" )
g_pButtonchanal6:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal6:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal6:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal6:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal6:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal6:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal6:AddDummyInt(6)
g_pButtonchanal6:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




         -----------------------------   7채널  ----------------------
		 
g_pButtonchanal7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal7 )
g_pButtonchanal7:SetName( "chanal7" )
g_pButtonchanal7:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal7:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal7:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal7:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal7:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal7:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal7:AddDummyInt(7)
g_pButtonchanal7:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




         -----------------------------   8채널  ----------------------
		 
g_pButtonchanal8= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal8)
g_pButtonchanal8:SetName( "chanal8" )
g_pButtonchanal8:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal8:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal8:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal8:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal8:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal8:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal8:AddDummyInt(8)
g_pButtonchanal8:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






         -----------------------------   9채널  ----------------------
		 
g_pButtonchanal9= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal9)
g_pButtonchanal9:SetName( "chanal9" )
g_pButtonchanal9:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal9:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal9:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal9:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal9:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+48+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal9:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+48+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal9:AddDummyInt(9)
g_pButtonchanal9:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






-----------------------------   10채널  ----------------------
		 
g_pButtonchanal10= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal10)
g_pButtonchanal10:SetName( "chanal10" )
g_pButtonchanal10:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal10:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal10:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal10:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal10:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+48+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal10:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+48+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal10:AddDummyInt(10)
g_pButtonchanal10:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






-----------------------------   11채널  ----------------------
		 
g_pButtonchanal11= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal11)
g_pButtonchanal11:SetName( "chanal11" )
g_pButtonchanal11:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal11:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal11:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal11:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal11:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal11:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal11:AddDummyInt(11)
g_pButtonchanal11:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






-----------------------------   12채널  ----------------------
		 
g_pButtonchanal12= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal12)
g_pButtonchanal12:SetName( "chanal12" )
g_pButtonchanal12:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal12:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal12:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal12:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal12:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal12:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal12:AddDummyInt(12)
g_pButtonchanal12:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




-----------------------------   13채널  ----------------------
		 
g_pButtonchanal13= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal13)
g_pButtonchanal13:SetName( "chanal13" )
g_pButtonchanal13:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal13:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal13:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal13:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal13:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal13:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal13:AddDummyInt(13)
g_pButtonchanal13:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




-----------------------------   14채널  ----------------------
		 
g_pButtonchanal14= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal14)
g_pButtonchanal14:SetName( "chanal14" )
g_pButtonchanal14:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal14:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal14:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal14:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal14:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal14:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal14:AddDummyInt(14)
g_pButtonchanal14:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )






-----------------------------   15채널  ----------------------
		 
g_pButtonchanal15= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal15)
g_pButtonchanal15:SetName( "chanal15" )
g_pButtonchanal15:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal15:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal15:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal15:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal15:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal15:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal15:AddDummyInt(15)
g_pButtonchanal15:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




-----------------------------   16채널  ----------------------
		 
g_pButtonchanal16= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal16)
g_pButtonchanal16:SetName( "chanal16" )
g_pButtonchanal16:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal16:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal16:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal16:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal16:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal16:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal16:AddDummyInt(16)
g_pButtonchanal16:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )

-----------------------------   17채널  ----------------------
		 
g_pButtonchanal17= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal17 )
g_pButtonchanal17:SetName( "chanal17" )
g_pButtonchanal17:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal17:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal17:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal17:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal17:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+96+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal17:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+96+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal17:AddDummyInt(17)
g_pButtonchanal17:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




-----------------------------   18채널  ----------------------
		 
g_pButtonchanal18= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal18 )
g_pButtonchanal18:SetName( "chanal18" )
g_pButtonchanal18:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal18:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal18:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal18:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal18:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+96+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal18:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+96+96+96)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal18:AddDummyInt(18)
g_pButtonchanal18:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )

-----------------------------   19채널  ----------------------
		 
g_pButtonchanal19= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal19 )
g_pButtonchanal19:SetName( "chanal19" )
g_pButtonchanal19:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal19:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal19:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal19:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(341,213+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal19:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341,213+96+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal19:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1,213+1+96+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal19:AddDummyInt(19)
g_pButtonchanal19:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )




-----------------------------   20채널  ----------------------
		 
g_pButtonchanal20= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal20 )
g_pButtonchanal20:SetName( "chanal20" )
g_pButtonchanal20:SetNormalTex( "DLG_UI_BUTTON07.tga", "chanal_normal" )

g_pButtonchanal20:SetOverTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal20:SetDownTex( "DLG_UI_BUTTON07.tga", "chanal_over" )

g_pButtonchanal20:SetNormalPoint
{   
	
    "LEFT_TOP		= D3DXVECTOR2(665,213+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal20:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(665,213+96+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal20:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(665+1,213+1+96+96+96+48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal20:AddDummyInt(20)
g_pButtonchanal20:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_SERVER_CONNECT0"] )

----------------------------------------------------------  채널   ---------------------------

g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "chanal_num" )



---------------      1     -----------------

g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Title02.TGA", "1" )	-- 루벤1

g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(358,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------------      2    -----------------

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Title02.TGA", "8" )	-- 알테라1

g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------      3   -----------------

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Title02.TGA", "3" )	-- 루벤2

g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(358,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------      4   -----------------

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_four )

g_pPicture_four:SetTex( "DLG_UI_Title02.TGA", "10" )	-- 알테라2

g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------      5   -----------------

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_five )

g_pPicture_five:SetTex( "DLG_UI_Title02.TGA", "5" )	-- 루벤3

g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------    6   -----------------

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_six )

g_pPicture_six:SetTex( "DLG_UI_Title02.TGA", "VELDER01" ) -- 벨더 1

g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------      7   -----------------

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_seven )

g_pPicture_seven:SetTex( "DLG_UI_Title02.TGA", "2" )	-- 엘더1

g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------    8   -----------------

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_eight )

g_pPicture_eight:SetTex( "DLG_UI_Title02.TGA", "VELDER02" )	-- 벨더2

g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------    9   -----------------

g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_nine )

g_pPicture_nine:SetTex( "DLG_UI_Title02.TGA", "4" )	-- 엘더2

g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------    10  -----------------

g_pPicture_ten = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_ten )

g_pPicture_ten:SetTex( "DLG_UI_Title03.TGA", "HAMEL1" )	-- 하멜1

g_pPicture_ten:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










---------------    11  -----------------

g_pPicture_eleven = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_eleven )

g_pPicture_eleven:SetTex( "DLG_UI_Title02.TGA", "7" )	-- 베스마1

g_pPicture_eleven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,366)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------    12  -----------------

g_pPicture_twelve = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_twelve )

g_pPicture_twelve:SetTex( "DLG_UI_Title03.TGA", "HAMEL2" )	-- 하멜2

g_pPicture_twelve:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,366)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------------    13  -----------------

g_pPicture_thirteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_thirteen )

g_pPicture_thirteen:SetTex( "DLG_UI_Title02.TGA", "9" )	-- 베스마2

g_pPicture_thirteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355 ,414)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------------------------------------------------------------------------------------------------------여기부터 안씀.
---------------    14  -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title03.TGA", "HAMEL2" )	-- 하멜2

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,414)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------    15  -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title02.TGA", "9" )	--베스마2

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,414+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------    16 -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title03.TGA", "HAMEL3" )	-- 하멜3

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,414+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------    17  -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title02.TGA", "11" )	--베스마3

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,414+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------    18 -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title03.TGA", "HAMEL4" )	-- 하멜4

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,414+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------    19  -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title02.TGA", "8" )	--알테라1

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355,414+48+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------    20 -----------------

g_pPicture_fourteen = g_pUIDialog:CreatePicture()
g_pStaticnum:AddPicture( g_pPicture_fourteen )

g_pPicture_fourteen:SetTex( "DLG_UI_Title02.TGA", "15" )	-- 임시

g_pPicture_fourteen:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(678,414+48+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------   채널 상태 박스


g_pStaticchanal_state = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticchanal_state )
g_pStaticchanal_state:SetName( "chanal_state" )


----------------          1

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          2

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756 ,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          3

g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          4

g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756 ,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box4:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          5

g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box5:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          6

g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756 ,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box6:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          7

g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box7:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box7 )

g_pPicture_box7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          8

g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box8 )

g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756 ,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box8 )

g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box8:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box8 )

g_pPicture_box8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----------------          9

g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box9:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          10

g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box10:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----------------          11

g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box11:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------          12

g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box12:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------          13

g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box13:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          14

g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box14:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          15

g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box15:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box15:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box15:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          16

g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box16:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------          17

g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box17:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          18

g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box18:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------          19

g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box19:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(433,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box19:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(438,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box19:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(651,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          20

g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_left" )

g_pPicture_box20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(756,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_middle" )

g_pPicture_box20:SetPoint
{
    ADD_SIZE_X = 212,
	"LEFT_TOP		= D3DXVECTOR2(761,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_state:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_state_right" )

g_pPicture_box20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(974,227+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------     각 채널 현왕 라인


g_pStaticchanal_line = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticchanal_line )
g_pStaticchanal_line:SetName( "chanal_line" )


----------------          1

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          2

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------          3

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          4

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line4:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line4:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line4:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          5

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line5:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line5:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line5:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          6

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line6:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line6:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line6:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          7

g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line7:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line7:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line7:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------          8

g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_line8:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_line8:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_line8:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








----------------          9

g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box9:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box9:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box9 )

g_pPicture_box9:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box9:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----------------          10

g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box10:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box10:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box10 )

g_pPicture_box10:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box10:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------          11

g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box11:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box11:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box11 )

g_pPicture_box11:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box11:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----------------          12

g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box12:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box12:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box12 )

g_pPicture_box12:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box12:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----------------          13

g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box13:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box13:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box13 )

g_pPicture_box13:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box13:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          14

g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box14:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box14:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box14 )

g_pPicture_box14:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box14:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          15

g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box15:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box15:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box15 )

g_pPicture_box15:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box15:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          16

g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box16:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box16:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box16 )

g_pPicture_box16:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box16:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------          17

g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box17:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box17:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box17 )

g_pPicture_box17:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box17:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          18

g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box18:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box18:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box18 )

g_pPicture_box18:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box18:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------          19

g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box19:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box19:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box19 )

g_pPicture_box19:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box19:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(435,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------          20

g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_smooth" )

g_pPicture_box20:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_normal" )

g_pPicture_box20:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_box20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_line:AddPicture( g_pPicture_box20 )

g_pPicture_box20:SetTex( "DLG_UI_Common_Texture01.TGA", "chanal_confusion" )

g_pPicture_box20:SetPoint
{
   ADD_SIZE_X = 218,
	"LEFT_TOP		= D3DXVECTOR2(758,229+96+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------  채널 상태 텍스처


--------------------      1


g_pStatic_chanal1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal1 )
g_pStatic_chanal1:SetName( "statechanal1" )

g_pStatic_chanal1:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------      2

g_pStatic_chanal2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal2 )
g_pStatic_chanal2:SetName( "statechanal2" )

g_pStatic_chanal2:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------      3

g_pStatic_chanal3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal3 )
g_pStatic_chanal3:SetName( "statechanal3" )

g_pStatic_chanal3:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      4

g_pStatic_chanal4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal4 )
g_pStatic_chanal4:SetName( "statechanal4" )

g_pStatic_chanal4:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      5

g_pStatic_chanal5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal5 )
g_pStatic_chanal5:SetName( "statechanal5" )

g_pStatic_chanal5:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      6

g_pStatic_chanal6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal6 )
g_pStatic_chanal6:SetName( "statechanal6" )

g_pStatic_chanal6:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      7

g_pStatic_chanal7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal7 )
g_pStatic_chanal7:SetName( "statechanal7" )

g_pStatic_chanal7:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,232+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      8

g_pStatic_chanal8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal8 )
g_pStatic_chanal8:SetName( "statechanal8" )

g_pStatic_chanal8:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,232+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------      9

g_pStatic_chanal9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal9 )
g_pStatic_chanal9:SetName( "statechanal9" )

g_pStatic_chanal9:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,232+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------      10

g_pStatic_chanal10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal10 )
g_pStatic_chanal10:SetName( "statechanal10" )

g_pStatic_chanal10:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,232+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      11

g_pStatic_chanal11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal11 )
g_pStatic_chanal11:SetName( "statechanal11" )

g_pStatic_chanal11:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,232+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      12

g_pStatic_chanal12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal12 )
g_pStatic_chanal12:SetName( "statechanal12" )

g_pStatic_chanal12:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,232+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------      13

g_pStatic_chanal13 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal13 )
g_pStatic_chanal13:SetName( "statechanal13" )

g_pStatic_chanal13:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(440,232+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      14

g_pStatic_chanal14 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal14 )
g_pStatic_chanal14:SetName( "statechanal14" )

g_pStatic_chanal14:AddString
{
	MSG 			= STR_ID_385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(763,232+96+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      15

g_pStatic_chanal15 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal15 )
g_pStatic_chanal15:SetName( "statechanal15" )

g_pStatic_chanal15:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(440,232+96+96+48)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      16

g_pStatic_chanal16 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal16 )
g_pStatic_chanal16:SetName( "statechanal16" )

g_pStatic_chanal16:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(763,232+96+96+48)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      17

g_pStatic_chanal17 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal17 )
g_pStatic_chanal17:SetName( "statechanal17" )

g_pStatic_chanal17:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(440,232+96+96+96)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      18

g_pStatic_chanal18 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal18 )
g_pStatic_chanal18:SetName( "statechanal18" )

g_pStatic_chanal18:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(763,232+96+96+96)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      19

g_pStatic_chanal19 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal19 )
g_pStatic_chanal19:SetName( "statechanal19" )

g_pStatic_chanal19:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(440,232+96+96+96+48)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------      20

g_pStatic_chanal20 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chanal20 )
g_pStatic_chanal20:SetName( "statechanal20" )

g_pStatic_chanal20:AddString
{
    MSG    = STR_ID_385,
    FONT_INDEX  = XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
    SORT_FLAG  = DRAW_TEXT["DT_LEFT"],
    "POS    = D3DXVECTOR2(763,232+96+96+96+48)",
    "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
    "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
} 





------------------bar
 
g_pStaticchanal_bar = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticchanal_bar )
g_pStaticchanal_bar:SetName( "chanal_bar" )





g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_bar:SetPoint
{
    ADD_SIZE_X = 657,
	"LEFT_TOP		= D3DXVECTOR2(337,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_bar1 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar1 )

g_pPicture_bar1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar1:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar2 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar2 )

g_pPicture_bar2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar2:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bar3 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar3 )

g_pPicture_bar3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar3:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bar4 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar4 )

g_pPicture_bar4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar4:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bar5 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar5 )

g_pPicture_bar5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar5:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bar6 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar6 )

g_pPicture_bar6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar6:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
g_pPicture_bar7 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar7 )

g_pPicture_bar7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar7:SetPoint
{
    ADD_SIZE_Y = 38, 
	"LEFT_TOP		= D3DXVECTOR2(425,267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
g_pPicture_bar8 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar8 )

g_pPicture_bar8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar8:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
 
 
 
g_pPicture_bar9 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar9 )

g_pPicture_bar9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar9:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,315)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
g_pPicture_bar10 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar10 )

g_pPicture_bar10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar10:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,315)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
 
 
 
 
g_pPicture_bar11 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar11 )

g_pPicture_bar11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar11:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
 
g_pPicture_bar12 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar12 )

g_pPicture_bar12:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar12:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
 
 
 
 
g_pPicture_bar13 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar13 )

g_pPicture_bar13:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar13:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,411)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--{{오현빈 // 2012-03-21 // 제거될 채널의 UI 제거
--[[ 
g_pPicture_bar14 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar14 )

g_pPicture_bar14:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar14:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,219+95+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
 
 
 
 
g_pPicture_bar15 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar15 )

g_pPicture_bar15:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar15:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,411+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
g_pPicture_bar16 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar16 )

g_pPicture_bar16:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar16:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,219+95+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar17 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar17 )

g_pPicture_bar17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar17:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,411+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
g_pPicture_bar18 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar18 )

g_pPicture_bar18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar18:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,219+95+96+48+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bar19 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar19 )

g_pPicture_bar19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar19:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(425,411+48+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
g_pPicture_bar20 = g_pUIDialog:CreatePicture()
g_pStaticchanal_bar:AddPicture( g_pPicture_bar20 )

g_pPicture_bar20:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar20:SetPoint
{
    ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(748,219+95+96+96+48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
--}}오현빈 // 2012-03-21 // 제거될 채널의 UI 제거