-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_OkAndCancelEditBox" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetPos( 310, 245 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pStatic_EditBox = g_pUIDialog:CreateStatic() 
g_pUIDialog:AddControl( g_pStatic_EditBox ) 
g_pStatic_EditBox:SetName( "OkAndCancelEditBox" ) 

-- 미국 : 미국은 글이 길어서 기본 4줄 넣어도 괜찮도록 수정(기본3줄)
FIX_POS_Y = 10

--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_UI_Common_Texture08.tga", "Popup_BG1_top"  )

g_pPictureBG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_UI_Common_Texture08.tga", "Popup_BG1_middle"  )

g_pPictureBG2:SetPoint
{
ADD_SIZE_Y = 170,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_UI_Common_Texture08.tga", "Popup_BG1_bottom"  )

g_pPictureBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInput_BG1= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureInput_BG1)

g_pPictureInput_BG1:SetTex( "DLG_UI_Common_Texture11.tga", "BG2_Left"  )

g_pPictureInput_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,90+FIX_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInput_BG2= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureInput_BG2)

g_pPictureInput_BG2:SetTex( "DLG_UI_Common_Texture11.tga", "BG2_Center"  )

g_pPictureInput_BG2:SetPoint
{
    ADD_SIZE_X = 330 ,
	"LEFT_TOP		= D3DXVECTOR2(30,90+FIX_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInput_BG3= g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPictureInput_BG3)

g_pPictureInput_BG3:SetTex( "DLG_UI_Common_Texture11.tga", "BG2_Right"  )

g_pPictureInput_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(362,90+FIX_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 373,
	"LEFT_TOP		= D3DXVECTOR2(8,73+FIX_POS_Y+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------Notice

g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_EditBox:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(12,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pStatic_Notice:AddString
{
	MSG 			= "",
	
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(31,18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--------------------- 확인


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_Check" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )


g_pButtoncheck:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(109,144+(FIX_POS_Y/2))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(109-3,144-3+(FIX_POS_Y/2))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(109-3+1,144-3+1+(FIX_POS_Y/2))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------취소

g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Cancel" )
g_pButton:SetNormalTex( "DLG_UI_BUTTON02.tga", "Cancle_Normal" )

g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(194+3,144+(FIX_POS_Y/2))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )

g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(194,144-3+(FIX_POS_Y/2))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )

g_pButton:SetDownPoint
{

ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,

	"LEFT_TOP		= D3DXVECTOR2(194+1,144-3+1+(FIX_POS_Y/2))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--에디트박스 메세지 입력

g_pIME_Message= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Message )
g_pIME_Message:SetName( "IMEEditBoxMessage" )
g_pIME_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(27,103+1+FIX_POS_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(362,103+18-1+FIX_POS_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Message:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Message:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Message:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_pIME_Message:RequestFocus()
