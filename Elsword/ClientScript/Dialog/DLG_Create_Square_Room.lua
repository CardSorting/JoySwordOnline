-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Create_SquareRoom" )
g_pUIDialog:SetPos( 324,294 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )




g_pStaticCreate_SquareRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCreate_SquareRoom )
g_pStaticCreate_SquareRoom:SetName( "UserSearch" )




g_pPictureSquare_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureSquare_BG1 )

g_pPictureSquare_BG1:SetTex( "DLG_Userinfo.TGA", "Userinfo_BG1" )

g_pPictureSquare_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureSquare_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureSquare_BG2 )

g_pPictureSquare_BG2:SetTex( "DLG_Userinfo.TGA", "Userinfo_BG2" )

g_pPictureSquare_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSquare_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureSquare_BG3 )

g_pPictureSquare_BG3:SetTex( "DLG_Userinfo.TGA", "Userinfo_BG3" )

g_pPictureSquare_BG3:SetPoint
{

     ADD_SIZE_Y = 84,

	"LEFT_TOP		= D3DXVECTOR2(0,72)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- '광장개설'
g_pPictureCreate_Square = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureCreate_Square )
g_pPictureCreate_Square:SetTex( "DLG_Userinfo.TGA", "Create_Square" )
g_pPictureCreate_Square:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- '방제입력'
g_pPictureCreate_Square_Name = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureCreate_Square_Name )
g_pPictureCreate_Square_Name:SetTex( "DLG_Userinfo.TGA", "Enter_Roomname" )
g_pPictureCreate_Square_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- edit box 배경
g_pPictureSquare_Window = g_pUIDialog:CreatePicture()
g_pStaticCreate_SquareRoom:AddPicture( g_pPictureSquare_Window )
g_pPictureSquare_Window:SetTex( "DLG_Userinfo.TGA", "Window5" )
g_pPictureSquare_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(115,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "OK" )
g_pButtonOK:SetNormalTex( "DLG_Userinfo.TGA", "OK_Normal" )
g_pButtonOK:SetOverTex( "DLG_Userinfo.TGA", "OK_Over" )
g_pButtonOK:SetDownTex( "DLG_Userinfo.TGA", "OK_Over" )

g_pButtonOK:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115,176)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(109,174)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
 	"LEFT_TOP		= D3DXVECTOR2(111,176)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonOK:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_CREATE_OK"] )





g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Cancel" )
g_pButtonCancel:SetNormalTex( "DLG_Userinfo.TGA", "Cancel_Normal" )
g_pButtonCancel:SetOverTex( "DLG_Userinfo.TGA", "Cancel_Over" )
g_pButtonCancel:SetDownTex( "DLG_Userinfo.TGA", "Cancel_Over" )

g_pButtonCancel:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(222,176)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,174)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
 	"LEFT_TOP		= D3DXVECTOR2(218,176)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_CREATE_CANCEL"] )







-- 광장 제목 입력 editbox
g_pIMEEditBox = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBox )
g_pIMEEditBox:SetName( "Edit_SquareName" )
g_pIMEEditBox:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,80+5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(355,100+5)",
	"COLOR			= D3DXCOLOR(0,0,0,1)",
	CHANGE_TIME     = 0.0,
}
g_pIMEEditBox:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBox:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBox:SetCaretColor( 0, 0, 0, 1 )
g_pIMEEditBox:SetCustomMsgEnter( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_CREATE_OK"] )
g_pIMEEditBox:RequestFocus()


