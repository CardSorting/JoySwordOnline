-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )

g_pStaticpotion = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpotion )
g_pStaticpotion:SetName( "g_pStaticpotion" )



-----BG


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpotion:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpotion:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 64,
	"LEFT_TOP		= D3DXVECTOR2(0,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpotion:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "how_much_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------------------------     -      +    커서      ---------------------


g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "Button_Minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(11,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}  
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(10+1,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "Button_Plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(138,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(137,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(137+1,12+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------------------------------------------------------



g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticpotion:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture02.TGA", "ed_vp_box" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_EDMark = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EDMark )
g_pStatic_EDMark:SetName( "Static_EDMark" )

g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_EDMark:AddPicture( g_pPicture_BG3 )

g_pPicture_BG3:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(32,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------확인 취소 버튼   --------------------



g_pButton_check = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_check )
g_pButton_check:SetName( "Button_OK" )
g_pButton_check:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "check_NORMAL" )

g_pButton_check:SetOverTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetDownTex( "DLG_UI_BUTTON03_A.tga", "check_OVER" )

g_pButton_check:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(32,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,52)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_check:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(30+1,52+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButton_cancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_cancle )
g_pButton_cancle:SetName( "Button_Cancle" )
g_pButton_cancle:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "cancle_NORMAL" )

g_pButton_cancle:SetOverTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetDownTex( "DLG_UI_BUTTON03_A.tga", "cancle_OVER" )

g_pButton_cancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(83,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,52)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_cancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(81+1,52+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------- 수량성 갯수& 가격

g_pStatic_many = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many )
g_pStatic_many:SetName( "Static_Num" )

g_pStatic_many:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36,15)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pIME_Editmany = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editmany )
g_pIME_Editmany:SetName( "IME_Edit_Quantity" )
g_pIME_Editmany:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(54,15)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(127,31)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editmany:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Editmany:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Editmany:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editmany:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editmany:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editmany:SetByteLimit(13)
g_pIME_Editmany:SetOnlyNumMode( true )



g_pStatic_price10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_price10 )
g_pStatic_price10:SetName( "Static_Price" )

g_pStatic_price10:AddString
{
	-- MSG 			= "9,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(119,33)",
	"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
