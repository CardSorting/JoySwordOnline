-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[	kimhc // 2010-11-16
		캐릭터 생성창에서 캐릭터의 얼굴이 나오는 버튼 및 NEW 이미지 다루고 있는 파일
--]]
---------라디오 버튼--------
----엘소드
g_pRadioButtonElsword_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonElsword_Slot )
g_pRadioButtonElsword_Slot:SetFixOverByCheck( true )
g_pRadioButtonElsword_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonElsword_Slot:SetName( "Elsword_Slot" )
g_pRadioButtonElsword_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_02.TGA", "BT_CREATE_ELSWORD" )
g_pRadioButtonElsword_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_02.TGA", "BT_CREATE_ELSWORD_OVER" )
g_pRadioButtonElsword_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_02.TGA", "BT_CREATE_ELSWORD_OVER" )
g_pRadioButtonElsword_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(416+1,575)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonElsword_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(416+1,575+1)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonElsword_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(416+1,575)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(416+1+194,576+241)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonElsword_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(416+1,575-15)",
 	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonElsword_Slot:SetGroupID( 1 )
g_pRadioButtonElsword_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_ELSWORD_BUTTON_UP"] )

-----------아이샤
g_pRadioButtonAisha_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonAisha_Slot )
g_pRadioButtonAisha_Slot:SetFixOverByCheck( true )
g_pRadioButtonAisha_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonAisha_Slot:SetName( "Aisha_Slot" )
g_pRadioButtonAisha_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_AISHA" )
g_pRadioButtonAisha_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_AISHA_OVER" )
g_pRadioButtonAisha_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_AISHA_OVER" )
g_pRadioButtonAisha_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(285+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAisha_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(285+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAisha_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(285+1,576)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(285+1+153,576+119)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonAisha_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(285+1,576-15)",
 	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAisha_Slot:SetGroupID( 1 )
g_pRadioButtonAisha_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_ARME_BUTTON_UP"] )

----------레나
g_pRadioButtonRena_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRena_Slot )
g_pRadioButtonRena_Slot:SetFixOverByCheck( true )
g_pRadioButtonRena_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonRena_Slot:SetName( "Rena_Slot" )
g_pRadioButtonRena_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_LENA" )
g_pRadioButtonRena_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_LENA_OVER" )
g_pRadioButtonRena_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_LENA_OVER" )
g_pRadioButtonRena_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(589+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonRena_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(589+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonRena_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(589+1,576)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(589+1+153,576+119)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonRena_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(589+1,576-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonRena_Slot:SetGroupID( 1 )
g_pRadioButtonRena_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_LIRE_BUTTON_UP"] )

---------레이븐
g_pRadioButtonRaven_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRaven_Slot )

g_pRadioButtonRaven_Slot:SetFixOverByCheck( true )
g_pRadioButtonRaven_Slot:SetShowOffBGByCheck( true )

g_pRadioButtonRaven_Slot:SetName( "Raven_Slot" )
g_pRadioButtonRaven_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_RAVEN" )
g_pRadioButtonRaven_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_RAVEN_OVER" )
g_pRadioButtonRaven_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_RAVEN_OVER" )
g_pRadioButtonRaven_Slot:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(719+1,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(719+1,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(719+1,576)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(719+1+153,576+119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(719+1,576-15)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetGroupID( 1 )
g_pRadioButtonRaven_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_RAVEN_BUTTON_UP"]  )

--------이브
g_pRadioButtonEve_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonEve_Slot )
g_pRadioButtonEve_Slot:SetFixOverByCheck( true )
g_pRadioButtonEve_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonEve_Slot:SetName( "Eve_Slot" )
g_pRadioButtonEve_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_EVE" )
g_pRadioButtonEve_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_EVE_OVER" )
g_pRadioButtonEve_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_EVE_OVER" )
g_pRadioButtonEve_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(154+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonEve_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(154+1,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonEve_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(154+1,576)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(154+1+153,576+119)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonEve_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(154+1,576-15)",
 	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonEve_Slot:SetGroupID( 1 )
g_pRadioButtonEve_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_EVE_BUTTON_UP"]  )

---------청
g_pRadioButtonChung_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonChung_Slot )
g_pRadioButtonChung_Slot:SetFixOverByCheck( true )
g_pRadioButtonChung_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonChung_Slot:SetName( "Chung_Slot" )
g_pRadioButtonChung_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_CHUNG" )
g_pRadioButtonChung_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_CHUNG_OVER" )
g_pRadioButtonChung_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_CHUNG_OVER" )
g_pRadioButtonChung_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(37,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(37,576+1)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(37,576)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(37+153,576+119)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonChung_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(37,576-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetGroupID( 1 )
g_pRadioButtonChung_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_CHUNG_BUTTON_UP"]  )


--------- 아라
g_pRadioButtonAra_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonAra_Slot )
g_pRadioButtonAra_Slot:SetFixOverByCheck( true )
g_pRadioButtonAra_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonAra_Slot:SetName( "Ara_Slot" )
g_pRadioButtonAra_Slot:SetNormalTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_ARA" )
g_pRadioButtonAra_Slot:SetOverTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_ARA_OVER" )
g_pRadioButtonAra_Slot:SetCheckedTex( "DLG_UI_BUTTON_CREATE_CHA_01.TGA", "BT_CREATE_ARA_OVER" )
g_pRadioButtonAra_Slot:SetBGPoint
{
	ADD_SIZE_X = 30,
	ADD_SIZE_Y = 30,
	"LEFT_TOP	= D3DXVECTOR2(850,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetBGMouseOverPoint
{
	ADD_SIZE_X = 30,
	ADD_SIZE_Y = 30,
	"LEFT_TOP	= D3DXVECTOR2(850,576)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetRBPoint
{
	ADD_SIZE_X = 30,
	ADD_SIZE_Y = 30,
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(850,576)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(850+153,576+119)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonAra_Slot:SetCheckPoint
{
	ADD_SIZE_X = 28,
	ADD_SIZE_Y = 28,
	"LEFT_TOP	= D3DXVECTOR2(850,576-15)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetGroupID( 1 )
g_pRadioButtonAra_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_ARA_BUTTON_UP"]  )

--아라 머리위에 NEW!
g_pStatic_NewCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_NewCharacter )
g_pStatic_NewCharacter:SetName( "g_pStatic_NewCharacter" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_NewCharacter:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture_INT01.tga", "EVENT_TEXT" )
g_pPicture:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(882,547)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
