-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

---------------------- 뒤로가기 버튼_101210 
g_pButtonMenu1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu1 )
g_pButtonMenu1:SetName( "ButtonBack" )
g_pButtonMenu1:SetNormalTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Back_Normal" )
g_pButtonMenu1:SetOverTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Back_Over" )
g_pButtonMenu1:SetDownTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Back_Over" )
g_pButtonMenu1:SetNormalPoint
{
	"LEFT_TOP	= D3DXVECTOR2(50,723)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMenu1:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(50,723)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMenu1:SetDownPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(50+1,723)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonMenu1:SetCustomMsgMouseUp( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_BACK_TO_UNIT_SELECT"] )

-------------------------------생성 버튼 _101210
g_pButtonCreate_Box = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCreate_Box )
g_pButtonCreate_Box:SetName( "ButtonCreate" )
g_pButtonCreate_Box:SetShow( false )
g_pButtonCreate_Box:SetNormalTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Create_Normal" )
g_pButtonCreate_Box:SetOverTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Create_Over" )
g_pButtonCreate_Box:SetDownTex( "DLG_Character_Create_Texture_01.TGA", "Bt_Create_Over" )
g_pButtonCreate_Box:SetNormalPoint
{
	"LEFT_TOP	= D3DXVECTOR2(329,469)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCreate_Box:SetOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(329,469)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCreate_Box:SetDownPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(329+1,469+1)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonCreate_Box:SetCustomMsgMouseUp( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_CREATE_UNIT"] )


--3D 캐릭터가 뜨는 위치
g_pButtonUnitSelectDomain = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnitSelectDomain )
g_pButtonUnitSelectDomain:SetName( "ButtonUnitSelectDomain" )
g_pButtonUnitSelectDomain:SetSound( false )
g_pButtonUnitSelectDomain:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )
g_pButtonUnitSelectDomain:SetOverTex( "DLG_Common_Button00.TGA", "invisible" )
g_pButtonUnitSelectDomain:SetDownTex( "DLG_Common_Button00.TGA", "invisible" )
g_pButtonUnitSelectDomain:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(110,110)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(370,470)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonUnitSelectDomain:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(110,110)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(370,470)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonUnitSelectDomain:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(110,110)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(370,470)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButtonUnitSelectDomain:SetCustomMsgMouseUp( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_UNIT_ANIMATION_UP"] )
g_pButtonUnitSelectDomain:SetCustomMsgMouseDown( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_UNIT_ANIMATION_DOWN"] )
g_pButtonUnitSelectDomain:SetCustomMsgMouseOver( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_UNIT_ANIMATION_OVER"] )