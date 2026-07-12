-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetName( "Eliose_Guide_DefaultCover" )
g_pUIDialog:SetCloseCustomUIEventID( BOOK_UI_CUSTOM_MESSAGE["BUCM_EXIT"] )
g_pUIDialog:SetPos( 5,5 )

g_pStaticGuide = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide )
g_pStaticGuide:SetName( "Eliose_Guide" )

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticGuide:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Guide01.TGA", "guide1" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_Y = 182,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticGuide:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Guide02.TGA", "guide2" )

g_pPicture_BG2:SetPoint
{
    ADD_SIZE_Y = 182,
	"LEFT_TOP		= D3DXVECTOR2(506,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








------------페이지 넘기기


----------------------   왼쪽페이지




g_pButtonLeft_Page= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Page)
g_pButtonLeft_Page:SetName( "Btn_Left_Page" )
g_pButtonLeft_Page:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible")

g_pButtonLeft_Page:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonLeft_Page:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonLeft_Page:SetNormalPoint
{
	ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,
    "LEFT_TOP		= D3DXVECTOR2(50,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Page:SetOverPoint
{
     ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,
	"LEFT_TOP		= D3DXVECTOR2(50,19)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonLeft_Page:SetDownPoint
{
     ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,  
 	"LEFT_TOP		= D3DXVECTOR2(50,19)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Page:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_PREV_PAGE"] )








g_pButtonRight_Page= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Page)
g_pButtonRight_Page:SetName( "Btn_Right_Page" )
g_pButtonRight_Page:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible")

g_pButtonRight_Page:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonRight_Page:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonRight_Page:SetNormalPoint
{
	ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,
    "LEFT_TOP		= D3DXVECTOR2(512,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Page:SetOverPoint
{
     ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,
	"LEFT_TOP		= D3DXVECTOR2(512,19)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonRight_Page:SetDownPoint
{
     ADD_SIZE_X = 462,
	ADD_SIZE_Y = 651,  
 	"LEFT_TOP		= D3DXVECTOR2(512,19)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Page:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_NEXT_PAGE"] )

--------목차 



g_pButtonList= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonList)
g_pButtonList:SetName( "Btn_List" )
g_pButtonList:SetNormalTex( "DLG_UI_Button13.TGA", "List_normal")

g_pButtonList:SetOverTex( "DLG_UI_Button13.tga", "List_over"  )

g_pButtonList:SetDownTex( "DLG_UI_Button13.tga", "List_over"  )

g_pButtonList:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(0,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonList:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-9,58)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonList:SetDownPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	
 	"LEFT_TOP		= D3DXVECTOR2(-9+2,58+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonList:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonList:AddDummyInt(0)




-----EXIT



g_pButtonEXIT= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEXIT)
g_pButtonEXIT:SetName( "Btn_EXIT" )
g_pButtonEXIT:SetNormalTex( "DLG_UI_Button13.TGA", "Dungeon_exit_normal")

g_pButtonEXIT:SetOverTex( "DLG_UI_Button13.tga", "Dungeon_exit_over"  )

g_pButtonEXIT:SetDownTex( "DLG_UI_Button13.tga", "Dungeon_exit_over"  )

g_pButtonEXIT:SetNormalPoint
{
	ADD_SIZE_X = -10,
	ADD_SIZE_Y = -10,
    "LEFT_TOP		= D3DXVECTOR2(902,29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEXIT:SetOverPoint
{
    ADD_SIZE_X = -10,
	ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(902,29)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonEXIT:SetDownPoint
{
     ADD_SIZE_X = -12,
	ADD_SIZE_Y = -12,
 	"LEFT_TOP		= D3DXVECTOR2(902+1,29+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonEXIT:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_EXIT"] )

