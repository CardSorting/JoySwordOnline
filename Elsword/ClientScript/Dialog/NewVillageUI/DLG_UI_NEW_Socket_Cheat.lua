-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


dlgX = 120
dlgY = 302
g_pUIDialog:SetPos( dlgX, dlgY )


g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_EXIT"]  )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1190, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1150, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1070, 0 ) )

g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )








g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW1" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-70,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW2" )

g_pPicture_bg2:SetPoint
{
    	ADD_SIZE_X = 23,
	"LEFT_TOP		= D3DXVECTOR2(56,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW3" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BG

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW1" )

g_pPicture_bg4:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(0,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW2" )

g_pPicture_bg5:SetPoint
{
    	ADD_SIZE_X = 80,
	"LEFT_TOP		= D3DXVECTOR2(17,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg6 )

g_pPicture_bg6:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW3" )

g_pPicture_bg6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--[[

g_pStatic_info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_info )
g_pStatic_info:SetName( "Static_info" )




------------- 말풍선
g_pPicture_info1 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info1 )

g_pPicture_info1:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_TOP" )

g_pPicture_info1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info2 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info2 )

g_pPicture_info2:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_CENTER" )

g_pPicture_info2:SetPoint
{
    	ADD_SIZE_Y = 50,
	"LEFT_TOP		= D3DXVECTOR2(0,-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info3 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info3 )

g_pPicture_info3:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_BOTTOM" )
g
g_pPicture_info3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--]]



-------------------------------------------------------------------------------------

g_pPicture_bg1_1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1_1 )

g_pPicture_bg1_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg1_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1_2 )

g_pPicture_bg1_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg1_2:SetPoint
{
    	ADD_SIZE_X = 80,
	"LEFT_TOP		= D3DXVECTOR2(17,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1_3 )

g_pPicture_bg1_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg1_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2_1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2_1 )

g_pPicture_bg2_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg2_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2_2 )

g_pPicture_bg2_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg2_2:SetPoint
{
    	ADD_SIZE_X = 80,
	"LEFT_TOP		= D3DXVECTOR2(17,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2_3 )

g_pPicture_bg2_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg2_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,240)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3_1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3_1 )

g_pPicture_bg3_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg3_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3_2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3_2 )

g_pPicture_bg3_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg3_2:SetPoint
{
    	ADD_SIZE_X = 80,
	"LEFT_TOP		= D3DXVECTOR2(17,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3_3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3_3 )

g_pPicture_bg3_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg3_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4_1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg4_1 )

g_pPicture_bg4_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg4_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4_2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg4_2 )

g_pPicture_bg4_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg4_2:SetPoint
{
    	ADD_SIZE_X = 80,
	"LEFT_TOP		= D3DXVECTOR2(17,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4_3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg4_3 )

g_pPicture_bg4_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg4_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------- 소켓 옵션 코드1  

g_pIMEEditCode1 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode1 )
g_pIMEEditCode1:SetName( "IMEEditCode1" )
g_pIMEEditCode1:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2,200+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+80,200+20)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode1:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode1:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditCode1:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode1:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode1:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode1:SetByteLimit(26)
--g_pIMEEditCode1:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode1:SetLengthLimit(8)
g_pIMEEditCode1:SetCustomMsgEnter( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode1:SetCustomMsgFocusOut( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode1:AddDummyInt(0)
g_pIMEEditCode1:SetOnlyNumMode( true )


-------- 소켓 옵션 코드2  

g_pIMEEditCode2 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode2 )
g_pIMEEditCode2:SetName( "IMEEditCode2" )
g_pIMEEditCode2:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2,200+40+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+80,200+40+20)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode2:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode2:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditCode2:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode2:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode2:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode2:SetByteLimit(26)
--g_pIMEEditCode2:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode2:SetLengthLimit(8)
g_pIMEEditCode2:SetCustomMsgEnter( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode2:SetCustomMsgFocusOut( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode2:AddDummyInt(1)
g_pIMEEditCode2:SetOnlyNumMode( true )


-------- 소켓 옵션 코드3  

g_pIMEEditCode3 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode3 )
g_pIMEEditCode3:SetName( "IMEEditCode3" )
g_pIMEEditCode3:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2,200+40+40+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+80,200+40+40+20)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode3:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode3:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditCode3:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode3:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode3:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode3:SetByteLimit(26)
--g_pIMEEditCode3:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode3:SetLengthLimit(8)
g_pIMEEditCode3:SetCustomMsgEnter( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode3:SetCustomMsgFocusOut( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode3:AddDummyInt(2)
g_pIMEEditCode3:SetOnlyNumMode( true )

-------- 소켓 옵션 코드4  

g_pIMEEditCode4 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode4 )
g_pIMEEditCode4:SetName( "IMEEditCode4" )
g_pIMEEditCode4:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2,200+40+40+40+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+80,200+40+40+40+20)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode4:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode4:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditCode4:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode4:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode4:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode4:SetByteLimit(26)
--g_pIMEEditCode4:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode4:SetLengthLimit(8)
g_pIMEEditCode4:SetCustomMsgEnter( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode4:SetCustomMsgFocusOut( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_ENTER_CODE"] )
g_pIMEEditCode4:AddDummyInt(3)
g_pIMEEditCode4:SetOnlyNumMode( true )









-------------------------  장착 하기 버튼

g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )

g_pButton_SocketCheat:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "MAGIC_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_BUTTON03_A.tga", "MAGIC_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_BUTTON03_A.tga", "MAGIC_OVER" )

g_pButton_SocketCheat:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(36+4,90+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(36-1,90-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(36+1-1,90+1-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_SOCKET_EQUIP_DEV"] )



 
