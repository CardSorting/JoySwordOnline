-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticapart = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticapart )
g_pStaticapart:SetName( "apart" )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_CANCLE"] )

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "apart_bg1_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "apart_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 337 + 50,
	"LEFT_TOP		= D3DXVECTOR2(11,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "apart_bg1_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(349 + 50,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------  title

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "item_apart" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(12,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 315 + 50,
	"LEFT_TOP		= D3DXVECTOR2(22,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg2_right" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(338 + 50,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------BG3



g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg3_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 312 + 50,
	"LEFT_TOP		= D3DXVECTOR2(24,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "apart_bg3_right" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(336 + 50,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 340 + 50,
	"LEFT_TOP		= D3DXVECTOR2(9,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(79,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------  slot

g_pStatic_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Slot )
g_pStatic_Slot:SetName( "Static_Broken_Item_Slot" )

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_Slot:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(25,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------  FEEL

g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticapart:AddPicture( g_pPicture_feel )

g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_feel:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStatic_feel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_feel )
g_pStatic_feel:SetName( "feel" )

g_pStatic_feel:AddString
{
	MSG 			= STR_ID_1286,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36,51)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_one = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_one )
g_pStatic_one:SetName( "one" )

g_pStatic_one:AddString
{
	MSG 			= STR_ID_1287,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(96,86+3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_really = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_really )
g_pStatic_really:SetName( "really" )

g_pStatic_really:AddString
{
	MSG 			= STR_ID_1288,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(96,116-5)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----------------------확인


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_OK" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(140+25,151)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(137+25,148)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(137+1+25,148 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_OK"] )
g_pButtoncheck:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )



---------------------------------EXIT
 

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(323 + 50,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(319+50,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(319+1+50,10+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_CANCLE"] )


g_pButtoncheck:RequestFocus()
