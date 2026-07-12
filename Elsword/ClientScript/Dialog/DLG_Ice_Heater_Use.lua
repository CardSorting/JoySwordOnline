-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticheater_use = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticheater_use )
g_pStaticheater_use:SetName( "g_pStaticheater_use" )

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_CANCLE"] )

g_pUIDialog:SetPos( 286,80 )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, -120, 200 ) ) -- 화면 중앙으로부터의 가열기 메쉬 위치

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg_top" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 540 ,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg_bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,556)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------TITLE

g_pStaticMiniHeater_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMiniHeater_Title )
g_pStaticMiniHeater_Title:SetName( "g_pStaticMiniHeater_Title" )

g_pPicture_title_mini = g_pUIDialog:CreatePicture()
g_pStaticMiniHeater_Title:AddPicture( g_pPicture_title_mini)

g_pPicture_title_mini:SetTex( "DLG_UI_Title03.tga", "MINI" )

g_pPicture_title_mini:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(6,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMiniHeater_Title:SetShow(false)


g_pStaticHeater_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHeater_Title )
g_pStaticHeater_Title:SetName( "g_pStaticHeater_Title" )

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticHeater_Title:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title02_B.tga", "heater_title" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBar = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPictureBar)

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.tga", "bar1" )

g_pPictureBar:SetPoint
{
    ADD_SIZE_X = 422,
	"LEFT_TOP		= D3DXVECTOR2(11,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----BG2
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg2_top" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg2_middle" )

g_pPicture_BG2:SetPoint
{
     ADD_SIZE_Y = 417  ,
	"LEFT_TOP		= D3DXVECTOR2(15,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2)

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "ice_heater_bg2_bottom" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,479)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticFeel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFeel )
g_pStaticFeel:SetName( "g_pStaticFeel" )

g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticFeel:AddPicture( g_pPicture_feel)

g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_feel:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(96,495)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_helper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_helper )
g_pStatic_helper:SetName( "helper" )

g_pStatic_helper:AddString
{
	MSG 			= STR_ID_998,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(116,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





----------------확인 버튼

g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "OK_button" )
g_pButtonOK:SetNormalTex( "DLG_UI_Button05.tga", "ok_button_NORMAL" )

g_pButtonOK:SetOverTex( "DLG_UI_Button05.tga", "ok_button_OVER" )

g_pButtonOK:SetDownTex( "DLG_UI_Button05.tga", "ok_button_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(138,520)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(135,517)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(135+1,517+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_OK"] )


------------------ 취소 버튼




g_pButtoncancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncancle )
g_pButtoncancle:SetName( "cancle_button" )
g_pButtoncancle:SetNormalTex( "DLG_UI_Button02.tga", "cancle_NORMAL" )

g_pButtoncancle:SetOverTex( "DLG_UI_Button02.tga", "cancle_OVER" )

g_pButtoncancle:SetDownTex( "DLG_UI_Button02.tga", "cancle_OVER" )

g_pButtoncancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(228,520)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(225,517)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(225+1,517+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_CANCLE"] )





-----------------  EXIT


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(405+1,12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_CANCLE"] )
