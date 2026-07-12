-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Search_Window" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 355, 240 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_CLOSE"] )


g_pStatic_Search = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Search )
g_pStatic_Search:SetName( "Search" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 139,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 51,
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title02_B.tga", "Search_Friend" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(14,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,82-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 41,
	"LEFT_TOP		= D3DXVECTOR2(19,91-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(277,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(273,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(273+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_CLOSE"] )



--------------------------------------내용-------------------------------------------------



g_pStatic_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Name)
g_pStatic_Name:SetName( "Name" )

g_pStatic_Name:AddString
	{
		MSG 			= STR_ID_2603,
		
 	    FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	    SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(28,58)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}	

----- 닉네임 입력박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 251,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(283,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------------         닉네임 입력하기        ----------------------
g_pIME_EditName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditName )
g_pIME_EditName:SetName( "IMEEditBoxName" )
g_pIME_EditName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(33,78)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(33+255,78+18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditName:SetFont( XF_DODUM_15_NORMAL )
g_pIME_EditName:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_EditName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetByteLimit(33)
g_pIME_EditName:SetCustomMsgEnter( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OK"] )
g_pIME_EditName:RequestFocus()




----------- OK 버튼
g_pButton_ok = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ok )
g_pButton_ok:SetName( "GroupOk" )
g_pButton_ok:SetNormalTex( "DLG_UI_Button05.tga", "ok_button_normal" )

g_pButton_ok:SetOverTex( "DLG_UI_Button05.tga", "ok_button_over" )

g_pButton_ok:SetDownTex( "DLG_UI_Button05.tga", "ok_button_over" )

g_pButton_ok:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(113+3,115+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(113,115)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(113+1,115+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OK"] )


