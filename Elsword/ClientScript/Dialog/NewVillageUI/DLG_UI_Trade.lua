-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStatictrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictrade )
g_pStatictrade:SetName( "g_pStatictrade" )
g_pUIDialog:SetCloseCustomUIEventID( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_CANCEL"]  )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 3, 2, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 310, 491, 0 ) ) -- Size 
g_pUIDialog:SetFront( true )


------------------------------------------    내물품 창

 
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 224,
	"LEFT_TOP		= D3DXVECTOR2(3,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(3,239)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 140,
	"LEFT_TOP		= D3DXVECTOR2(17,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(17,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------BG3


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 129,
	"LEFT_TOP		= D3DXVECTOR2(23,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_bottom" )

g_pPicture_BG1:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(23,193)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------타이틀

-- 미국에서는 '내' 타이틀 안 씀.
--[[
g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "ne" )

g_pPicture_title:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(19,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01_A.TGA", "trade" )

g_pPicture_title:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(44-30,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "thing" )

g_pPicture_title:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(87+15,15+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------ED 박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )

g_pPicture_box:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(31,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 242,
	"LEFT_TOP		= D3DXVECTOR2(37,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(280,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------ED 아이콘

g_pPicture_icon = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_icon )

g_pPicture_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(36,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---- ed수치

g_pStatic_ed1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ed1 )
g_pStatic_ed1:SetName( "Static_MyED" )

g_pStatic_ed1:AddString
{
	-- MSG 			= "9,999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(63,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




g_pIME_Edit_ed1 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Edit_ed1 )
g_pIME_Edit_ed1:SetName( "IME_Edit_MyED" )
g_pIME_Edit_ed1:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(63,64)", 
	"RIGHT_BOTTOM	= D3DXVECTOR2(284,84)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Edit_ed1:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Edit_ed1:SetTextColor(0.9,1.0,0.1,1.0 )
g_pIME_Edit_ed1:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 ) 
g_pIME_Edit_ed1:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_ed1:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_ed1:SetByteLimit(16)
g_pIME_Edit_ed1:SetOutlineColor(0.0,0.0,0.0,1.0)
g_pIME_Edit_ed1:SetOnlyNumMode( true )
g_pIME_Edit_ed1:SetCustomMsgChange( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_ED_CHANGING"] )
g_pIME_Edit_ed1:SetCustomMsgEnter( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_ED_CHANGED"] )

g_pIME_Edit_ed1:SetCustomMsgFocusIn( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_ED_FOCUSIN"] )



-------------BAR

g_pPicture_line= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_line)

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 254,
	"LEFT_TOP		= D3DXVECTOR2(30,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------SLOT

g_pPicture_slot1= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot1)

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(32,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot2)

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(83,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_slot3= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot3)

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(134,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot4= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot4)

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(185,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot5= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot5)

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(236,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot6)

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(32,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot7= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot7)

g_pPicture_slot7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(83,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_slot8= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot8)

g_pPicture_slot8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(134,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot9= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot9)

g_pPicture_slot9:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(185,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot10= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot10)

g_pPicture_slot10:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(236,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------ 화살표


g_pStaticMyArrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMyArrow )
g_pStaticMyArrow:SetName( "Static_Trade_My_Arrow" )

g_pPicture_cursor1= g_pUIDialog:CreatePicture()
g_pStaticMyArrow:AddPicture( g_pPicture_cursor1)

g_pPicture_cursor1:SetTex( "DLG_UI_Common_Texture02.TGA", "cursor" )

g_pPicture_cursor1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,218)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_cursor2= g_pUIDialog:CreatePicture()
g_pStaticMyArrow:AddPicture( g_pPicture_cursor2)

g_pPicture_cursor2:SetTex( "DLG_UI_Common_Texture02.TGA", "cursor2" )

g_pPicture_cursor2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,214)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------------------- 물품등록, 최종확인 널렀을때.....

g_pStaticRegister = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRegister )
g_pStaticRegister:SetName( "Static_Trade_My_Register" )


g_pPicture_entry1= g_pUIDialog:CreatePicture()
g_pStaticRegister:AddPicture( g_pPicture_entry1)

g_pPicture_entry1:SetTex( "DLG_UI_BUTTON03_A.TGA", "entry_OVER" )

g_pPicture_entry1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(16,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticAccept = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAccept )
g_pStaticAccept:SetName( "Static_Trade_My_Accept" )


g_pPicture_final1= g_pUIDialog:CreatePicture()
g_pStaticAccept:AddPicture( g_pPicture_final1)

g_pPicture_final1:SetTex( "DLG_UI_BUTTON03_A.TGA", "final_check_OVER" )

g_pPicture_final1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(106,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------버튼

-----------------------------------물품 등록

g_pButtonentry = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonentry )
g_pButtonentry:SetName( "Button_Trade_Register" )
g_pButtonentry:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "entry_normal" )

g_pButtonentry:SetOverTex( "DLG_UI_BUTTON03_A.tga", "entry_OVER" )

g_pButtonentry:SetDownTex( "DLG_UI_BUTTON03_A.tga", "entry_OVER" )

g_pButtonentry:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(18,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonentry:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,210)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonentry:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+1,210+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonentry:SetCustomMsgMouseUp( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_REGISTER"] )



-----------------------------최종확인


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_Trade_Accept" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "final_check_normal" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON03_A.tga", "final_check_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON03_A.tga", "final_check_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(108,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(106,210)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(106+1,210+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetCustomMsgMouseUp( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_ACCEPT"] )
 


----------------------------거래취소


g_pButtoncancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncancle )
g_pButtoncancle:SetName( "Button_Trade_Cancle" )

g_pButtoncancle:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "trade_cancle_normal" )

g_pButtoncancle:SetOverTex( "DLG_UI_BUTTON03_A.tga", "trade_cancle_OVER" )

g_pButtoncancle:SetDownTex( "DLG_UI_BUTTON03_A.tga", "trade_cancle_OVER" )

g_pButtoncancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(236-10,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(234-10,210)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(234+1-10,210+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncancle:SetCustomMsgMouseUp( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_CANCEL"] )

---------------------EXIT


----------------EXIT 버튼


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(274,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(270,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(270+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_CANCEL"] )











----------------------------------    상대 물품 창



-----BG

g_pPicture_BG4 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG4 )

g_pPicture_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_TOP" )

g_pPicture_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(3,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG4 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG4 )

g_pPicture_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_middle" )

g_pPicture_BG4:SetPoint
{
     ADD_SIZE_Y = 223,
	"LEFT_TOP		= D3DXVECTOR2(3,257)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG4 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG4 )

g_pPicture_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG_bottom" )

g_pPicture_BG4:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(3,481)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------- 상대방 이름 박스


g_pPicture_other = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_other )

g_pPicture_other:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )

g_pPicture_other:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(17,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_other = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_other )

g_pPicture_other:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )

g_pPicture_other:SetPoint
{
     ADD_SIZE_X = 145,
	"LEFT_TOP		= D3DXVECTOR2(23,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_other = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_other )

g_pPicture_other:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )

g_pPicture_other:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(169,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------닉네임 BG


g_pPicture_BG5 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG5 )

g_pPicture_BG5:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_TOP" )

g_pPicture_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG5 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG5 )

g_pPicture_BG5:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_middle" )

g_pPicture_BG5:SetPoint
{
     ADD_SIZE_Y = 140,
	"LEFT_TOP		= D3DXVECTOR2(17,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG5 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG5 )

g_pPicture_BG5:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG2_bottom" )

g_pPicture_BG5:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(17,440)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------- 상대방 이름



g_pStatic_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name )
g_pStatic_name:SetName( "Static_Opponent_Name" )

g_pStatic_name:AddString
{
	-- MSG 			= "상대방닉네임",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(24,264)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--------------BG3


g_pPicture_BG6 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG6 )

g_pPicture_BG6:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_TOP" )

g_pPicture_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG6 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG6 )

g_pPicture_BG6:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_middle" )

g_pPicture_BG6:SetPoint
{
     ADD_SIZE_Y = 128,
	"LEFT_TOP		= D3DXVECTOR2(23,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG6 = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_BG6 )

g_pPicture_BG6:SetTex( "DLG_UI_Common_Texture01.TGA", "trade_BG3_bottom" )

g_pPicture_BG6:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(23,434)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------ED 박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_left" )

g_pPicture_box:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(31,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 242,
	"LEFT_TOP		= D3DXVECTOR2(37,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box_right" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(280,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------ED 아이콘

g_pPicture_icon = g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_icon )

g_pPicture_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPicture_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(36,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---- ed수치

g_pStatic_ed2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ed2 )
g_pStatic_ed2:SetName( "Static_OpponentED" )

g_pStatic_ed2:AddString
{
	-- MSG 			= "9,999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(63,310)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"COLOR			= D3DXCOLOR(0.9,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--[[
g_pIME_Edit_ed2 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Edit_ed2 )
g_pIME_Edit_ed2:SetName( "IME_Edit_ed2" )
g_pIME_Edit_ed2:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(63,307)", 
	"RIGHT_BOTTOM	= D3DXVECTOR2(284,326)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Edit_ed2:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Edit_ed2:SetTextColor(0.9,1.0,0.1,1.0 )
g_pIME_Edit_ed2:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 ) 
g_pIME_Edit_ed2:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_ed2:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_ed2:SetByteLimit(36)
g_pIME_Edit_ed2:SetOutlineColor(0.0,0.0,0.0,1.0)
--g_pIME_Edit_ed1:SetCustomMsgChange( POSTBOX_SEND_UI_MSG["PBSUM_TITLE_CHANGE"] )

--]]

-------------BAR

g_pPicture_line= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_line)

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 254,
	"LEFT_TOP		= D3DXVECTOR2(30,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------SLOT

g_pPicture_slot1= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot1)

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(32,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot2)

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(83,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_slot3= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot3)

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(134,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot4= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot4)

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(185,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot5= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot5)

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(236,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot6)

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(32,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot7= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot7)

g_pPicture_slot7:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(83,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_slot8= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot8)

g_pPicture_slot8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(134,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot9= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot9)

g_pPicture_slot9:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(185,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot10= g_pUIDialog:CreatePicture()
g_pStatictrade:AddPicture( g_pPicture_slot10)

g_pPicture_slot10:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_slot10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(236,386)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






------ 화살표

g_pStaticOpponentArrow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOpponentArrow )
g_pStaticOpponentArrow:SetName( "Static_Trade_Opponent_Arrow" )


g_pPicture_cursor3= g_pUIDialog:CreatePicture()
g_pStaticOpponentArrow:AddPicture( g_pPicture_cursor3)

g_pPicture_cursor3:SetTex( "DLG_UI_Common_Texture02.TGA", "cursor" )

g_pPicture_cursor3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,460)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_cursor4= g_pUIDialog:CreatePicture()
g_pStaticOpponentArrow:AddPicture( g_pPicture_cursor4)

g_pPicture_cursor4:SetTex( "DLG_UI_Common_Texture02.TGA", "cursor2" )

g_pPicture_cursor4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,456)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------------- 물품등록, 최종확인 널렀을때.....

g_pStaticOpponentRegister = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOpponentRegister )
g_pStaticOpponentRegister:SetName( "Static_Trade_Opponent_Register" )


g_pPicture_entry2= g_pUIDialog:CreatePicture()
g_pStaticOpponentRegister:AddPicture( g_pPicture_entry2)

g_pPicture_entry2:SetTex( "DLG_UI_BUTTON03_A.TGA", "entry_OVER" )

g_pPicture_entry2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(16,452)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticOpponentAccept = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOpponentAccept )
g_pStaticOpponentAccept:SetName( "Static_Trade_Opponent_Accept" )

g_pPicture_final2= g_pUIDialog:CreatePicture()
g_pStaticOpponentAccept:AddPicture( g_pPicture_final2)

g_pPicture_final2:SetTex( "DLG_UI_BUTTON03_A.TGA", "final_check_OVER" )

g_pPicture_final2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(106,452)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






--------------버튼

-------------------------------------------------------물품등록


g_pButtonentry = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonentry )
g_pButtonentry:SetName( "Button_Opponent_Trade_Register" )
g_pButtonentry:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "entry_normal" )

g_pButtonentry:SetOverTex( "DLG_UI_BUTTON03_A.tga", "entry_OVER" )

g_pButtonentry:SetDownTex( "DLG_UI_BUTTON03_A.tga", "entry_OVER" )

g_pButtonentry:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(18,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonentry:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,452)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonentry:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16+1,452+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------최종확인


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_Opponent_Trade_Accept" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "final_check_normal" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON03_A.tga", "final_check_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON03_A.tga", "final_check_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(108,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(106,452)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(106+1,452+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------------------거래취소

--[[
g_pButtoncancle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncancle )
g_pButtoncancle:SetName( "Button_Opponent_Trade_Cancle" )
g_pButtoncancle:SetNormalTex( "DLG_UI_BUTTON03.tga", "trade_cancle_normal" )

g_pButtoncancle:SetOverTex( "DLG_UI_BUTTON03.tga", "trade_cancle_OVER" )

g_pButtoncancle:SetDownTex( "DLG_UI_BUTTON03.tga", "trade_cancle_OVER" )

g_pButtoncancle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(236,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(234,210)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncancle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(234+1,210+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncancle:SetCustomMsgMouseUp( UI_PERSONAL_TRADE_CUSTOM_MSG["UPTCM_TRADE_ITEM_CANCEL"] )
--]]




----------------   내 물품 슬롯 좌측상단 좌표 : 32, 93
--------------------  ↑ 여기에 들어갈 이미지 좌표 : 33,94
--------------------      이미지 크기 : 47, 47


LEFT_TOP_X = 33
LEFT_TOP_Y = 94

DISTANCE_X = 51
DISTANCE_Y = 51

SlotID = PERSONAL_TRADE_SLOT_ID["PTSI_MY_SLOT_0"]
tempX = 0
tempY = 0

for i = 0, 1 do
	for j = 0, 4 do

		tempX = LEFT_TOP_X + (j * DISTANCE_X)
		tempY = LEFT_TOP_Y + (i * DISTANCE_Y)
   
		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )
		
		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,
			
			SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],
			
		--	SORT_TYPE	= 0,
			SLOT_ID		= SlotID,
			
			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],
			
			"POS		= D3DXVECTOR2( tempX, tempY )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		
		}
		
		SlotID = SlotID + 1
		
	end
end



----------------   상대방 물품 슬롯 좌측상단 좌표 : 32, 335
--------------------  ↑ 여기에 들어갈 이미지 좌표 : 33,336
--------------------      이미지 크기 : 47, 47

LEFT_TOP_X = 33
LEFT_TOP_Y = 336

DISTANCE_X = 51
DISTANCE_Y = 51

SlotID = PERSONAL_TRADE_SLOT_ID["PTSI_OPPONENT_SLOT_0"]
tempX = 0
tempY = 0

for i = 0, 1 do
	for j = 0, 4 do
	
		tempX = LEFT_TOP_X + (j * DISTANCE_X)
		tempY = LEFT_TOP_Y + (i * DISTANCE_Y)

		pItemSlot = g_pCX2SlotManager:CreateItemSlot()
		g_pCX2SlotManager:AddSlot( pItemSlot )
		
		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,
			
			SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],
			
		--	SORT_TYPE	= 0,
			SLOT_ID		= SlotID,
			
			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],
			
			"POS		= D3DXVECTOR2( tempX, tempY )",
			"SIZE		= D3DXVECTOR2( 47, 47 )",
		
		}

		SlotID = SlotID + 1
		
	end
end

