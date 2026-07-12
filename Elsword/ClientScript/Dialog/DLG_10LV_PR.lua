-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "10LV_PR" )
g_pUIDialog:SetPos( -41,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_10LV_PR"] )

g_pStatic10LV_PR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic10LV_PR )
g_pStatic10LV_PR:SetName( "Static10LV_PR" )


 



-------------옅은 검정배경--------------


g_pPicture10LV_PR_Bg_Black= g_pUIDialog:CreatePicture()
g_pStatic10LV_PR:AddPicture( g_pPicture10LV_PR_Bg_Black)

g_pPicture10LV_PR_Bg_Black:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK"  )

g_pPicture10LV_PR_Bg_Black:SetPoint
{

		  ADD_SIZE_X=1024+80 ,
		  ADD_SIZE_Y=768 ,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


-----------알림말 본판--------------
g_pPicture10LV_PR_1= g_pUIDialog:CreatePicture()
g_pStatic10LV_PR:AddPicture( g_pPicture10LV_PR_1)

g_pPicture10LV_PR_1:SetTex( "DLG_10LV_PR_01.tga", "10LV_PR01"  )

g_pPicture10LV_PR_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture10LV_PR_2_1= g_pUIDialog:CreatePicture()
g_pStatic10LV_PR:AddPicture( g_pPicture10LV_PR_2_1)

g_pPicture10LV_PR_2_1:SetTex( "DLG_10LV_PR_02.tga", "10LV_PR02"  )

g_pPicture10LV_PR_2_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212+509-56,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture10LV_PR_2_2= g_pUIDialog:CreatePicture()
g_pStatic10LV_PR:AddPicture( g_pPicture10LV_PR_2_2)

g_pPicture10LV_PR_2_2:SetTex( "DLG_10LV_PR_02.tga", "10LV_PR03"  )

g_pPicture10LV_PR_2_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(153,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture10LV_PR_2_3= g_pUIDialog:CreatePicture()
g_pStatic10LV_PR:AddPicture( g_pPicture10LV_PR_2_3)

g_pPicture10LV_PR_2_3:SetTex( "DLG_10LV_PR_02.tga", "10LV_PR04"  )

g_pPicture10LV_PR_2_3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212+450-19+1+21,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










g_pButton10LV_PR_Right_Enter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton10LV_PR_Right_Enter )
g_pButton10LV_PR_Right_Enter:SetName( "Button10LV_PR_Right_Enter" )
g_pButton10LV_PR_Right_Enter:SetNormalTex( "DLG_Common_New_Texture33.tga", "PVP_PopUp_Button_Normal" )

g_pButton10LV_PR_Right_Enter:SetOverTex( "DLG_Common_New_Texture33.tga", "PVP_PopUp_Button_Over" )

g_pButton10LV_PR_Right_Enter:SetDownTex( "DLG_Common_New_Texture33.tga", "PVP_PopUp_Button_Over" )

g_pButton10LV_PR_Right_Enter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(646+43,562+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton10LV_PR_Right_Enter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640+43,556+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton10LV_PR_Right_Enter:SetDownPoint
{
    ADD_SIZE_X = -4,
    ADD_SIZE_Y = -4,
 	"LEFT_TOP		= D3DXVECTOR2(642+43,558+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton10LV_PR_Right_Enter:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_10LV_PR"] )




