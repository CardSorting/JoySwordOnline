-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_Change_Pet_Name" )
g_pUIDialog:SetPos( 400, 250 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( PET_CUSTOM_UI_MSG["PCUM_CHANGE_NAME_CLOSE"] )









g_pStatic_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BG )
g_pStatic_BG:SetName( "g_pStatic_BG" )


------ 기본뒷판
g_pPictureBG1_Top = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureBG1_Top )

g_pPictureBG1_Top:SetTex( "DLG_UI_Common_Texture04.tga", "BG1_TOP" )

g_pPictureBG1_Top:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureBG1_middle = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureBG1_middle )

g_pPictureBG1_middle:SetTex( "DLG_UI_Common_Texture04.tga", "BG1_MIDDLE" )

g_pPictureBG1_middle:SetPoint
{

ADD_SIZE_Y = 213,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureBG1_bottom = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureBG1_bottom )

g_pPictureBG1_bottom:SetTex( "DLG_UI_Common_Texture04.tga", "BG1_BOTTOM" )

g_pPictureBG1_bottom:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,234)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



------ 회색뒷판
g_pPictureGray_Top = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureGray_Top )

g_pPictureGray_Top:SetTex( "DLG_UI_Common_Texture04.tga", "BG_Gray_TOP" )

g_pPictureGray_Top:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureGray_middle = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureGray_middle )

g_pPictureGray_middle:SetTex( "DLG_UI_Common_Texture04.tga", "BG_Gray_MIDDLE" )

g_pPictureGray_middle:SetPoint
{

ADD_SIZE_Y = 127,
	"LEFT_TOP		= D3DXVECTOR2(17,56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureGray_bottom = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureGray_bottom )

g_pPictureGray_bottom:SetTex( "DLG_UI_Common_Texture04.tga", "BG_Gray_BOTTOM" )

g_pPictureGray_bottom:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,185)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




------ 안쪽뒷판
g_pPictureBg2 = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureBg2 )

g_pPictureBg2:SetTex( "DLG_UI_Common_Texture04.tga", "BG2_top" )

g_pPictureBg2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(18,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureGray_middle = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureGray_middle )

g_pPictureGray_middle:SetTex( "DLG_UI_Common_Texture04.tga", "BG2_MIDDLE" )

g_pPictureGray_middle:SetPoint
{

ADD_SIZE_Y = 120,
	"LEFT_TOP		= D3DXVECTOR2(18,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureGray_bottom = g_pUIDialog:CreatePicture()
g_pStatic_BG:AddPicture( g_pPictureGray_bottom )

g_pPictureGray_bottom:SetTex( "DLG_UI_Common_Texture04.tga", "BG2_BOTTOM" )

g_pPictureGray_bottom:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(18,183)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStatic_Contents" )


----- 닉네임 박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Contents:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+83,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Contents:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 139,
	"LEFT_TOP		= D3DXVECTOR2(32+83,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Contents:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172+83,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------- bar


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_Contents:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 236,
	"LEFT_TOP		= D3DXVECTOR2(24,138)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






---타이틀

g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStatic_Contents" )

g_pStatic_Contents:AddString
{
	MSG 			= STR_ID_16190,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,22)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



---- 주의사항
g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStatic_Contents:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(26,57)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStaticTitle" )

g_pStatic_Contents:AddString
{
	MSG 			= STR_ID_1226,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(46,59)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStatic_Contents" )

g_pStatic_Contents:AddString
{
	MSG 			= STR_ID_1227,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(27,76)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStatic_Contents" )

g_pStatic_Contents:AddString
{
	MSG 			= STR_ID_1228,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(27,120)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




---변경 할 펫이름

g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "g_pStatic_Contents" )

g_pStatic_Contents:AddString
{
	MSG 			= STR_ID_16191,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,148)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pIME_NewNick = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_NewNick )
g_pIME_NewNick:SetName( "IME_NewNick" )
g_pIME_NewNick:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(116,147)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(250,147+18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_NewNick:SetFont( XF_DODUM_15_NORMAL )
g_pIME_NewNick:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_NewNick:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_NewNick:SetSelectedBackColor( 0.7, 0.0, 0.0, 1.0 )
g_pIME_NewNick:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_NewNick:SetCustomMsgEnter( PET_CUSTOM_UI_MSG["PCUM_CHANGE_NAME_OK"] )
g_pIME_NewNick:SetByteLimit( 12 )








g_pStatic_Contents = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Contents )
g_pStatic_Contents:SetName( "NickNameErrorMessage" )

g_pStatic_Contents:AddString
{
	-- MSG 			= "",									--STR_ID_362, 등의 에러문자열
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(109,169)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






-----EXIT  버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(242+4,13+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(242,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(242+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_CHANGE_NAME_CLOSE"] )


----버튼


g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Change" )
g_pButton:SetNormalTex( "DLG_UI_BUTTON12.tga", "Change_Normal" )

g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(53+4,195+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_UI_BUTTON12.tga", "Change_Over" )

g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(53,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_UI_BUTTON12.tga", "Change_Over" )

g_pButton:SetDownPoint
{

ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,

	"LEFT_TOP		= D3DXVECTOR2(53+1,195+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_CHANGE_NAME_OK"] )







g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Cancel" )
g_pButton:SetNormalTex( "DLG_UI_BUTTON02.tga", "Cancle_Normal" )

g_pButton:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(143+3,196+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetOverTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )

g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(143,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetDownTex( "DLG_UI_BUTTON02.tga", "Cancle_Over" )

g_pButton:SetDownPoint
{

ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,

	"LEFT_TOP		= D3DXVECTOR2(143+1,196+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton:SetCustomMsgMouseUp( PET_CUSTOM_UI_MSG["PCUM_CHANGE_NAME_CLOSE"] )


