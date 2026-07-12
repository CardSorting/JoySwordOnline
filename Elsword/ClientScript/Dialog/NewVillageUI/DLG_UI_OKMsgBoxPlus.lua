-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_OKMsgBox" )
g_pUIDialog:SetPos( 250,300 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



--------------밑판-------------------


g_pStaticGeneral_Popup_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGeneral_Popup_Window )
g_pStaticGeneral_Popup_Window:SetName( "General_Popup_Window" )
g_pStaticGeneral_Popup_Window:SetOffsetPos( -334+44, -227 )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg1_TOP" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(337,273)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 139-15+30,
	"LEFT_TOP		= D3DXVECTOR2(337,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(337,428-15+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-----BG2
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg2_left" )

g_pPicture_BG:SetPoint
{
	ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(350,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg2_middle" )

g_pPicture_BG:SetPoint
{
    ADD_SIZE_X = 349,
	ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(358,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg2_right" )

g_pPicture_BG:SetPoint
{
   ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(708,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------    내용

g_pStaticGeneral_Popup_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGeneral_Popup_Window )
g_pStaticGeneral_Popup_Window:SetName( "StaticOKMsgBoxBG" )
g_pStaticGeneral_Popup_Window:SetOffsetPos( -332+44, -227 )


g_pStaticGeneral_Popup_Window:AddString
{
	MSG 			= STR_ID_1307,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(536,298)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




----------------확인버튼




g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "ButtonMsgBoxOK" )

g_pButtonCheck:SetOffsetPos( -331+44, -229 )
--g_pButtonCheck:SetOffsetPos( 5, -2)

g_pButtonCheck:SetNormalTex( "DLG_UI_Button05.tga", "OK_Button_Normal" )

g_pButtonCheck:SetOverTex( "DLG_UI_Button05.tga", "OK_Button_Over" )

g_pButtonCheck:SetDownTex( "DLG_UI_Button05.tga", "OK_Button_Over" )

g_pButtonCheck:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(490,386-15+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(487,383-15+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{

     ADD_SIZE_X = -2,
	 ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(487+1,383+1-15+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCheck:RequestFocus()
g_pButtonCheck:SetEdge( false, 1, D3DXCOLOR(0.4,0.6,0.8,1 ) )
g_pButtonCheck:SetTabControlName( "ButtonMsgBoxOK" )
g_pButtonCheck:SetPrevTabControlName( "ButtonMsgBoxOK" )





