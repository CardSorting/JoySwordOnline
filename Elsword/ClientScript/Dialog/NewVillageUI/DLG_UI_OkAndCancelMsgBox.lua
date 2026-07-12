-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "OkAndCancelMsgBox" )
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
    ADD_SIZE_Y = 139-15,
	"LEFT_TOP		= D3DXVECTOR2(337,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(337,428-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-----BG2
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg2_left" )

g_pPicture_BG:SetPoint
{

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
	"LEFT_TOP		= D3DXVECTOR2(358,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGeneral_Popup_Window:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture08.TGA", "popup_bg2_right" )

g_pPicture_BG:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(708,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------    내용

g_pStaticGeneral_Popup_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGeneral_Popup_Window )
g_pStaticGeneral_Popup_Window:SetName( "StaticMsgBoxBG" )

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
g_pButtonCheck:SetName( "MsgBoxOkAndCancelOkButton" )

g_pButtonCheck:SetOffsetPos( -333+44, -225 )
--g_pButtonCheck:SetOffsetPos( 0, -2 )

g_pButtonCheck:SetNormalTex( "DLG_UI_Button05.tga", "OK_Button_Normal" )

g_pButtonCheck:SetOverTex( "DLG_UI_Button05.tga", "OK_Button_Over" )

g_pButtonCheck:SetDownTex( "DLG_UI_Button05.tga", "OK_Button_Over" )

g_pButtonCheck:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(447,386-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(444,383-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{

     ADD_SIZE_X = -2,
	 ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(444+1,383+1-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonCheck:SetTabControlName( "MsgBoxOkAndCancelCancelButton" )
g_pButtonCheck:SetPrevTabControlName( "MsgBoxOkAndCancelCancelButton" )
g_pButtonCheck:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )






------------취소버튼




g_pButtonCencle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCencle )
g_pButtonCencle:SetName( "MsgBoxOkAndCancelCancelButton" )

g_pButtonCencle:SetOffsetPos( -327+44, -225 )
--g_pButtonCencle:SetOffsetPos( 2, -2 )

g_pButtonCencle:SetNormalTex( "DLG_UI_BUTTON02.tga", "cancle_normal" )

g_pButtonCencle:SetOverTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtonCencle:SetDownTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtonCencle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(536,386-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(533,383-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(533+1,383+1-15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCencle:SetTabControlName( "MsgBoxOkAndCancelOkButton" )
g_pButtonCencle:SetPrevTabControlName( "MsgBoxOkAndCancelOkButton" )
g_pButtonCencle:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

g_pButtonCheck:RequestFocus()