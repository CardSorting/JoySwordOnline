-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticitem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticitem )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pStaticitem:SetName( "item" )
g_pUIDialog:SetPos( 400, 300 )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetCloseCustomUIEventID( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_CANCLE"] )

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "item_enroll_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "item_enroll_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 196,
	"LEFT_TOP		= D3DXVECTOR2(0,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "item_enroll_bottom" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,207)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------  FEEL

g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_feel )

g_pPicture_feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_feel:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_feel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_feel )
g_pStatic_feel:SetName( "feel" )

g_pStatic_feel:AddString
{
	MSG 			= STR_ID_1289,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,15)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 111,
	"LEFT_TOP		= D3DXVECTOR2(13,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "open_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,157)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------SLOT   BG 1


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "enroll_bg_left" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "enroll_bg_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_X = 262,
	"LEFT_TOP		= D3DXVECTOR2(25,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "enroll_bg_right" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(288,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------- ------------------------------- -------------SLOT1

g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "Static_Slot" )

g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg7 )

g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(26,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg8 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg8 )

g_pPicture_bg8:SetTex( "DLG_Icon_Sealed_Item.TGA", "Sealed_Item" )

g_pPicture_bg8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(26,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg8:SetShow( false )

-----------------------------    BOX

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(78,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 198,
	"LEFT_TOP		= D3DXVECTOR2(83,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(282,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 159,
	"LEFT_TOP		= D3DXVECTOR2(103,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(263,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(78,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 198,
	"LEFT_TOP		= D3DXVECTOR2(83,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(282,130)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------bar

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(26,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------  ED

g_pPicture_ed1 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_ed1 )

g_pPicture_ed1:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_ed1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(81,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_ed2 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_ed2 )

g_pPicture_ed2:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_ed2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(81,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_ed3 = g_pUIDialog:CreatePicture()
g_pStaticitem:AddPicture( g_pPicture_ed3 )

g_pPicture_ed3:SetTex( "DLG_UI_Title01.TGA", "total_ed" )

g_pPicture_ed3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(34,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------------------   아이템 명    --------------------------------


g_pStatic_item1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item1 )
g_pStatic_item1:SetName( "Static_Enroll_Item_Name" )

g_pStatic_item1:AddString
{
	-- MSG 			= "＋5엘리트 크샨베르크",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(80,55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
}





-----------------  수량


g_pStatic_many = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many )
g_pStatic_many:SetName( "many" )

g_pStatic_many:AddString
{
	MSG 			= STR_ID_1290,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(35,104)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_many1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_many1 )
g_pStatic_many1:SetName( "many1" )

g_pStatic_many1:AddString
{
	MSG 			= STR_ID_24,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(249,104)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




---------------------     가격 수치    ------------



g_pIME_Editprice1 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editprice1 )
g_pIME_Editprice1:SetName( "IME_Enroll_Item_Price" )
g_pIME_Editprice1:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(111,76)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(282,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editprice1:SetFont( XF_DODUM_13_SEMIBOLD )
g_pIME_Editprice1:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Editprice1:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editprice1:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editprice1:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editprice1:SetOutlineColor(0.0,0.0,0.0,1.0)
--g_pIME_Editname:SetByteLimit(100)
--g_pIME_Editprice1:SetMultiLineOption(0, 0)
--g_pIME_Editprice1:SetWidthLimit( 20 )
g_pIME_Editprice1:SetOnlyNumMode( true )
g_pIME_Editprice1:SetTabControlName( "IME_Enroll_Item_Num" );
g_pIME_Editprice1:SetCustomMsgChange( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_DLG_CHANGE"] )
g_pIME_Editprice1:SetCustomMsgEnter( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_REGISTER"] )



-----------------갯수

g_pIME_Editmany3 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editmany3 )
g_pIME_Editmany3:SetName( "IME_Enroll_Item_Num" )
g_pIME_Editmany3:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(107,100)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(246,122)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editmany3:SetFont( XF_DODUM_13_SEMIBOLD )
g_pIME_Editmany3:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Editmany3:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editmany3:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editmany3:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIME_Editmany3:SetByteLimit(13)
--g_pIME_Editmany3:SetMultiLineOption(0, 0)
--g_pIME_Editmany3:SetWidthLimit( 20 )
g_pIME_Editmany3:SetOnlyNumMode( true )
g_pIME_Editmany3:SetTabControlName( "IME_Enroll_Item_Price" );
g_pIME_Editmany3:SetCustomMsgChange( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_DLG_CHANGE"] )
g_pIME_Editmany3:SetCustomMsgEnter( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_REGISTER"] )



---------------총 ED   -----------------

g_pStatic_total = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_total )
g_pStatic_total:SetName( "Static_Enroll_Item_Total" )

g_pStatic_total:AddString
{
	-- MSG 			= "2,000,000,000",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(267,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(81,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,100)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(81+1,100+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_LEFTARROW"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(270,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(269,99)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(269+1,99+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_RIGHTARROW"] )



-----------------------------등록버튼


g_pButtonenroll = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonenroll )
g_pButtonenroll:SetName( "enroll" )
g_pButtonenroll:SetNormalTex( "DLG_UI_BUTTON01.tga", "enroll_normal" )

g_pButtonenroll:SetOverTex( "DLG_UI_BUTTON01.tga", "enroll_over" )

g_pButtonenroll:SetDownTex( "DLG_UI_BUTTON01.tga", "enroll_over" )

g_pButtonenroll:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(69,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenroll:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66,168)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenroll:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(66+1,168+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenroll:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_REGISTER"] )


------------------------------------취소 버튼


g_pButtoncancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncancle )
g_pButtoncancle:SetName( "cancle" )
g_pButtoncancle:SetNormalTex( "DLG_UI_BUTTON02.tga", "cancle_normal" )

g_pButtoncancle:SetOverTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtoncancle:SetDownTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtoncancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(159,171)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(156,168)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(156+1,168+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_CUSTOM_MSG["UPSCM_ENROLL_CANCLE"] )

--[[
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 100,	--바꿀려면 소스코드에 있는것도 바꿔야함

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 26+400 ,49+300 )",
	"SIZE		= D3DXVECTOR2( 55, 55 )",

}
pItemSlot:SetClickable( false )

--]]
