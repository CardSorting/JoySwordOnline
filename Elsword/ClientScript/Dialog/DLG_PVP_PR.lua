-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_PR" )
g_pUIDialog:SetPos( -41,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_PVP_PR"] )

g_pStaticPVP_PR = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_PR )
g_pStaticPVP_PR:SetName( "StaticPVP_PR" )






-------------옅은 검정배경--------------


g_pPicturePVP_PR_Bg_Black= g_pUIDialog:CreatePicture()
g_pStaticPVP_PR:AddPicture( g_pPicturePVP_PR_Bg_Black)

g_pPicturePVP_PR_Bg_Black:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK"  )

g_pPicturePVP_PR_Bg_Black:SetPoint
{

		  ADD_SIZE_X=1024+80 ,
		  ADD_SIZE_Y=768 ,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


-----------알림말 본판--------------
g_pPicturePVP_PR_1= g_pUIDialog:CreatePicture()
g_pStaticPVP_PR:AddPicture( g_pPicturePVP_PR_1)

g_pPicturePVP_PR_1:SetTex( "DLG_PVP_PR1.tga", "PVP_PR_1"  )

g_pPicturePVP_PR_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_PR_2_1= g_pUIDialog:CreatePicture()
g_pStaticPVP_PR:AddPicture( g_pPicturePVP_PR_2_1)

g_pPicturePVP_PR_2_1:SetTex( "DLG_PVP_PR2.tga", "PVP_PR2_1"  )

g_pPicturePVP_PR_2_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212+509+2,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_PR_2_2= g_pUIDialog:CreatePicture()
g_pStaticPVP_PR:AddPicture( g_pPicturePVP_PR_2_2)

g_pPicturePVP_PR_2_2:SetTex( "DLG_PVP_PR2.tga", "PVP_PR2_2"  )

g_pPicturePVP_PR_2_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(210,54+511-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_PR_2_3= g_pUIDialog:CreatePicture()
g_pStaticPVP_PR:AddPicture( g_pPicturePVP_PR_2_3)

g_pPicturePVP_PR_2_3:SetTex( "DLG_PVP_PR2.tga", "PVP_PR2_3"  )

g_pPicturePVP_PR_2_3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(212+450-19+78,54+511-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pButtonPVP_PR_Right_Enter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_PR_Right_Enter )
g_pButtonPVP_PR_Right_Enter:SetName( "ButtonPVP_PR_Right_Enter" )
g_pButtonPVP_PR_Right_Enter:SetNormalTex( "DLG_UI_BUTTON17.tga", "CLOSE_WINDOW" )

g_pButtonPVP_PR_Right_Enter:SetOverTex( "DLG_UI_BUTTON17.tga", "CLOSE_WINDOW_Over" )

g_pButtonPVP_PR_Right_Enter:SetDownTex( "DLG_UI_BUTTON17.tga", "CLOSE_WINDOW_Over" )

g_pButtonPVP_PR_Right_Enter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(784+2,610)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_PR_Right_Enter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(784+2,610)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_PR_Right_Enter:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(784+1+2,610+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_PR_Right_Enter:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_PVP_PR"] )




