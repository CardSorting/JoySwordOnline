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
g_pRadioButtonElsword_Slot:SetNormalTex( "DLG_Common_Texture04.TGA", "Elsword_Normal" )
g_pRadioButtonElsword_Slot:SetOverTex( "DLG_Common_Texture04.TGA", "Elsword_Over" )
g_pRadioButtonElsword_Slot:SetCheckedTex( "DLG_Common_Texture04.TGA", "Elsword_Over" )
g_pRadioButtonElsword_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+6-20,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonElsword_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+6-20,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonElsword_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(90+6-20,569)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(90+134+6-20,569+134)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonElsword_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(89+6-20,570)",
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
g_pRadioButtonAisha_Slot:SetNormalTex( "DLG_Common_Texture04.TGA", "Aisha_Normal" )
g_pRadioButtonAisha_Slot:SetOverTex( "DLG_Common_Texture04.TGA", "Aisha_Over" )
g_pRadioButtonAisha_Slot:SetCheckedTex( "DLG_Common_Texture04.TGA", "Aisha_Over" )
g_pRadioButtonAisha_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+140+6-10,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAisha_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+140+6-10,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAisha_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(90+140+6-10,569)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(90+140+134+6-10,569+134)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonAisha_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(90+140-1+6-10,570)",
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
g_pRadioButtonRena_Slot:SetNormalTex( "DLG_Common_Texture04.TGA", "Rena_Normal" )
g_pRadioButtonRena_Slot:SetOverTex( "DLG_Common_Texture04.TGA", "Rena_Over" )
g_pRadioButtonRena_Slot:SetCheckedTex( "DLG_Common_Texture04.TGA", "Rena_Over" )
g_pRadioButtonRena_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+280+6,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonRena_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+280+6,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonRena_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(90+280+6,569)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(90+280+134+6,569+134)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pRadioButtonRena_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(90+280-1+6,570)",
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
g_pRadioButtonRaven_Slot:SetNormalTex( "DLG_Common_Texture21.TGA", "Raven_Normal" )
g_pRadioButtonRaven_Slot:SetOverTex( "DLG_Common_Texture21.TGA", "Raven_Over" )
g_pRadioButtonRaven_Slot:SetCheckedTex( "DLG_Common_Texture21.TGA", "Raven_Over" )
g_pRadioButtonRaven_Slot:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+420+6+10,569)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+420+6+10,569-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(90+420+6+10,569)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(90+420+134+6,569+134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRaven_Slot:SetCheckPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(90+420-1+6+10,570)",
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
g_pRadioButtonEve_Slot:SetNormalTex( "DLG_Common_Texture21.TGA", "Eve_Normal" )
g_pRadioButtonEve_Slot:SetOverTex( "DLG_Common_Texture21.TGA", "Eve_Over" )
g_pRadioButtonEve_Slot:SetCheckedTex( "DLG_Common_Texture21.TGA", "Eve_Over" )
g_pRadioButtonEve_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+560+6+20,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonEve_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+560+6+20,569-1)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonEve_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(90+560+6+20,569)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(90+560+134+6+20,569+134)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonEve_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2(90+560-1+6+20,570)",
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
g_pRadioButtonChung_Slot:SetNormalTex( "DLG_Common_Texture21.TGA", "Chung_Normal" )
g_pRadioButtonChung_Slot:SetOverTex( "DLG_Common_Texture21.TGA", "Chung_Over" )
g_pRadioButtonChung_Slot:SetCheckedTex( "DLG_Common_Texture21.TGA", "Chung_Over" )
g_pRadioButtonChung_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+700+6+30,569)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(90+700+6-1+30,569-1)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(90+700+6+30,569)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(90+700+134+6+20,569+134)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonChung_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(90+700+6+30,570)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonChung_Slot:SetGroupID( 1 )
g_pRadioButtonChung_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_CHUNG_BUTTON_UP"]  )

--[[
--------- 아라
g_pRadioButtonAra_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonAra_Slot )
g_pRadioButtonAra_Slot:SetFixOverByCheck( true )
g_pRadioButtonAra_Slot:SetShowOffBGByCheck( true )
g_pRadioButtonAra_Slot:SetName( "Ara_Slot" )
g_pRadioButtonAra_Slot:SetNormalTex( "DLG_Common_Texture21.TGA", "Eve_Normal" )
g_pRadioButtonAra_Slot:SetOverTex( "DLG_Common_Texture21.TGA", "Eve_Over" )
g_pRadioButtonAra_Slot:SetCheckedTex( "DLG_Common_Texture21.TGA", "Eve_Over" )
g_pRadioButtonAra_Slot:SetBGPoint
{
	"LEFT_TOP	= D3DXVECTOR2(826,569-50)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetBGMouseOverPoint
{
	"LEFT_TOP	= D3DXVECTOR2(826-1,569-1-50)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(826,569-50)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(950,703-50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
 
g_pRadioButtonAra_Slot:SetCheckPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(826,570-50)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pRadioButtonAra_Slot:SetGroupID( 1 )
g_pRadioButtonAra_Slot:SetCustomMsgChecked( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_ARA_BUTTON_UP"]  )
--]]