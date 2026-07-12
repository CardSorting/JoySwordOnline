-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--g_pUIDialog:SetName( "DLG_Messenger_Create_Group" )
g_pUIDialog:SetPos( 300,250 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CREATE_GROUP_CLOSE"] )


g_pStatic_Group_make = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Group_make)
g_pStatic_Group_make:SetName( "Group_make" )

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "community_sub_bg_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "community_sub_bg_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_X = 370,
	"LEFT_TOP		= D3DXVECTOR2(11,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "community_sub_bg_right" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(382,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "group" )

g_pPicture_title:SetPoint

{
         "LEFT_TOP         = D3DXVECTOR2(10,11)",
		 "COLOR            = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		 CHANGE_TIME    =0.0,
}

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "create" )

g_pPicture_title:SetPoint

{ 
         "LEFT_TOP         = D3DXVECTOR2(49 + 15,10+2)",
		 "COLOR            = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		 CHANGE_TIME    =0.0,
}

----------------BAR
g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_bar:SetPoint

{        
         ADD_SIZE_X = 374,
         "LEFT_TOP    = D3DXVECTOR2(8,43)",
		 "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		 CHANGE_TIME    =0.0,
}



----------------


g_pStaticGroup_name= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGroup_name)
g_pStaticGroup_name:SetName( "Group_name" )

g_pStaticGroup_name:AddString
	{
		MSG 			= STR_ID_1257,
		
 	    FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	    SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(28,64-5 - 3)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}	
		
-----------BG2		
		
g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture08.TGA", "coupon_bg2_left" )

g_pPicturebg2:SetPoint

{
     "LEFT_TOP     = D3DXVECTOR2(13,48)",
	 "COLOR        = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME   = 0.0,
}

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture08.TGA", "coupon_bg2_middle" )

g_pPicturebg2:SetPoint

{
     ADD_SIZE_X = 349,
    "LEFT_TOP    = D3DXVECTOR2 (21,48)",
	"COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
	
}
	
g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex ( "DLG_UI_Common_Texture08.TGA", "coupon_bg2_right" )

g_pPicturebg2:SetPoint

{
      "LEFT_TOP    = D3DXVECTOR2 (371,48)",
	  "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	  CHANGE_TIME  = 0.0,
	  
}



----------BG3

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture08.TGA", "coupon_bg3_left" )

g_pPicturebg3:SetPoint
{
     "LEFT_TOP    = D3DXVECTOR2 (16,52)",
	 "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME = 0.0,
	 
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture08.TGA", "coupon_bg3_middle" )

g_pPicturebg3:SetPoint

{
     ADD_SIZE_X = 347,
    "LEFT_TOP   = D3DXVECTOR2 (23,52)",
	"COLOR      = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME = 0.0,
	
}


g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture08.TGA", "coupon_bg3_right" )

g_pPicturebg3:SetPoint

{
    "LEFT_TOP   = D3DXVECTOR2 (370,52)",
	"COLOR      = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME = 0.0,
	
}







-------그룸이름 박스

g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )

g_pPicturebox:SetPoint
{
     "LEFT_TOP    = D3DXVECTOR2 (85,60)",
	 "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME = 0.0,
	 
}

g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )

g_pPicturebox:SetPoint
{ 
     ADD_SIZE_X = 272,
     "LEFT_TOP    = D3DXVECTOR2 (90,60)",
	 "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME = 0.0,
	 
}


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_Group_make:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )

g_pPicturebox:SetPoint
{
     "LEFT_TOP    = D3DXVECTOR2 (363,60)",
	 "COLOR       = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME = 0.0,
	 
}






----------------------------         그룹이름        ----------------------
g_pIME_EditName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditName )
g_pIME_EditName:SetName( "IMEEditBoxGroupName" )
g_pIME_EditName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(90,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(368,83)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditName:SetFont( XF_DODUM_11_NORMAL )
g_pIME_EditName:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_EditName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditName:SetByteLimit(33)
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


 	"LEFT_TOP		= D3DXVECTOR2(154,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(151,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(151+1,95+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ok:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CREATE_GROUP_REQ"] )







---EXIT 버튼
g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "exitButton" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(355,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(351,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(351+1,9+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CREATE_GROUP_CLOSE"] )


