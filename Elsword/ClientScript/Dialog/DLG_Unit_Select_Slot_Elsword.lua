-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticUnit_Select_Slot_White = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Slot_White )

g_pStaticUnit_Select_Slot_White:SetName( "Unit_Select3" )




g_pPictureUnit_Select_Slot_White1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_White:AddPicture( g_pPictureUnit_Select_Slot_White1 )

g_pPictureUnit_Select_Slot_White1:SetTex( "DLG_Common_Texture03.tga", "White_Box1" )

g_pPictureUnit_Select_Slot_White1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Select_Slot_White2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_White:AddPicture( g_pPictureUnit_Select_Slot_White2 )

g_pPictureUnit_Select_Slot_White2:SetTex( "DLG_Common_Texture03.tga", "White_Box2" )

g_pPictureUnit_Select_Slot_White2:SetPoint
{
    ADD_SIZE_Y = 272,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Select_Slot_White3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_White:AddPicture( g_pPictureUnit_Select_Slot_White3 )

g_pPictureUnit_Select_Slot_White3:SetTex( "DLG_Common_Texture03.tga", "White_Box3" )

g_pPictureUnit_Select_Slot_White3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,289)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------캐릭터 슬롯 노란색 -------------------------------------------- 


g_pStaticUnit_Select_Slot_Yellow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Slot_Yellow )

g_pStaticUnit_Select_Slot_Yellow:SetName( "Unit_Select2" )




g_pPictureUnit_Select_Slot_Yellow1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow:AddPicture( g_pPictureUnit_Select_Slot_Yellow1 )

g_pPictureUnit_Select_Slot_Yellow1:SetTex( "DLG_Common_Texture03.tga", "Yellow_Line1" )

g_pPictureUnit_Select_Slot_Yellow1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Select_Slot_Yellow2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow:AddPicture( g_pPictureUnit_Select_Slot_Yellow2 )

g_pPictureUnit_Select_Slot_Yellow2:SetTex( "DLG_Common_Texture03.tga", "Yellow_Line2" )

g_pPictureUnit_Select_Slot_Yellow2:SetPoint
{
    ADD_SIZE_Y = 273,
	"LEFT_TOP		= D3DXVECTOR2(-1,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Select_Slot_Yellow3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow:AddPicture( g_pPictureUnit_Select_Slot_Yellow3 )

g_pPictureUnit_Select_Slot_Yellow3:SetTex( "DLG_Common_Texture03.tga", "Yellow_Line3" )

g_pPictureUnit_Select_Slot_Yellow3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------캐릭터 슬롯 노란색 다운 -------------------------------------------- 


g_pStaticUnit_Select_Slot_Yellow_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select_Slot_Yellow_Down )

g_pStaticUnit_Select_Slot_Yellow_Down:SetName( "Unit_Select1" )




g_pPictureUnit_Select_Slot_Yellow_Down1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow_Down:AddPicture( g_pPictureUnit_Select_Slot_Yellow_Down1 )

g_pPictureUnit_Select_Slot_Yellow_Down1:SetTex( "DLG_Common_Texture03.tga", "Yellow_Box1" )

g_pPictureUnit_Select_Slot_Yellow_Down1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Select_Slot_Yellow_Down2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow_Down:AddPicture( g_pPictureUnit_Select_Slot_Yellow_Down2 )

g_pPictureUnit_Select_Slot_Yellow_Down2:SetTex( "DLG_Common_Texture03.tga", "Yellow_Box2" )

g_pPictureUnit_Select_Slot_Yellow_Down2:SetPoint
{
    ADD_SIZE_Y = 272,
	"LEFT_TOP		= D3DXVECTOR2(-1,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Select_Slot_Yellow_Down3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select_Slot_Yellow_Down:AddPicture( g_pPictureUnit_Select_Slot_Yellow_Down3 )

g_pPictureUnit_Select_Slot_Yellow_Down3:SetTex( "DLG_Common_Texture03.tga", "Yellow_Box3" )

g_pPictureUnit_Select_Slot_Yellow_Down3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------------(스타트 버튼)-------------------------------
g_pButtonUnit_Slot_White = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnit_Slot_White )
g_pButtonUnit_Slot_White:SetName( "ButtonSlot_Elsword" )
--g_pButtonUnit_Slot_White:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

--g_pButtonUnit_Slot_White:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonUnit_Slot_White:SetNormalStatic( g_pStaticUnit_Select_Slot_White )
g_pButtonUnit_Slot_White:SetOverStatic( g_pStaticUnit_Select_Slot_Yellow )
g_pButtonUnit_Slot_White:SetDownStatic( g_pStaticUnit_Select_Slot_Yellow_Down )

--g_pButtonUnit_Slot_White:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonUnit_Slot_White:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(173,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,301)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(173,301)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnit_Slot_White:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(173,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,301)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(173,301)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnit_Slot_White:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(173,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,301)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(173,301)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUnit_Slot_White:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )
g_pButtonUnit_Slot_White:SetCustomMsgMouseOver( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_OVER"] )
g_pButtonUnit_Slot_White:SetCustomMsgMouseDblClk( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_UNIT_BUTTON_UP"] )










