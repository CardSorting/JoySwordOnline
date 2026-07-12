-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticresult = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticresult )
g_pStaticresult:SetName( "result" )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_EL_CHANGER_RESULT_OK"] )

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )

--- SLOT Static
g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "Static_Slot_Pic" )

--- SLOT name Static
g_pStaticSlotName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlotName )
g_pStaticSlotName:SetName( "Static_SlotName" )

--- SLOT num Static
g_pStaticSlotNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlotNum )
g_pStaticSlotNum:SetName( "Static_SlotNum" )

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg1_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 423,
	"LEFT_TOP		= D3DXVECTOR2(11,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg1_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(435,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------  title

g_pPicturetitle= g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicturetitle)

g_pPicturetitle:SetTex( "DLG_UI_Title01.tga", "distinction"  )

g_pPicturetitle:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(13,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureresult= g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPictureresult)

g_pPictureresult:SetTex( "DLG_UI_Title01.tga", "result"  )

g_pPictureresult:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(57,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 426,
	"LEFT_TOP		= D3DXVECTOR2(9,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------------------------------------  FEEL

g_pPicture_feel = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_feel )

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
	MSG 			= STR_ID_1264,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36,51)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





---------BG2

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 403,
	"LEFT_TOP		= D3DXVECTOR2(21,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "result_bg2_right" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(425,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------SLOT1

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(25,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(214,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(24,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(76,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 128,
	"LEFT_TOP		= D3DXVECTOR2(81,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(210,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
--g_pStatic_item1 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item1 )
--g_pStatic_item1:SetName( "item1" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1265,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,88)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(82,110)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many1 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many1 )
--g_pStatic_many1:SetName( "many1" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(197,112)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------------------------------------------------SLOT2

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg5:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(231,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(421,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg6 )

g_pPicture_bg6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(230,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(282,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 127,
	"LEFT_TOP		= D3DXVECTOR2(287,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(415,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--g_pStatic_item2 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item2 )
--g_pStatic_item2:SetName( "item2" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1266,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(285,88)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(288,110)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many2 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many2 )
--g_pStatic_many2:SetName( "many2" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(401,112)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------------------------------------------------SLOT3

g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg7 )

g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg7 )

g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg7:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(25,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg7 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg7 )

g_pPicture_bg7:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(215,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--**
g_pPicture_bg8 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg8 )

g_pPicture_bg8:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(24,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(76,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box3:SetPoint
{
    ADD_SIZE_X = 128,
	"LEFT_TOP		= D3DXVECTOR2(81,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box3 )

g_pPicture_box3:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(210,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--g_pStatic_item3 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item3 )
--g_pStatic_item3:SetName( "item3" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1267,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,153)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(82,175)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many3 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many3 )
--g_pStatic_many3:SetName( "many3" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(197,177)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------------------------------------------------SLOT4

g_pPicture_bg9 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg9 )

g_pPicture_bg9:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg9 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg9 )

g_pPicture_bg9:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg9:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(231,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg9 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg9 )

g_pPicture_bg9:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(421,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
g_pPicture_bg10 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg10 )

g_pPicture_bg10:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg10:SetPoint 
{
    
	"LEFT_TOP		= D3DXVECTOR2(230,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(282,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box4:SetPoint
{
    ADD_SIZE_X = 127,
	"LEFT_TOP		= D3DXVECTOR2(287,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box4 )

g_pPicture_box4:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(415,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--g_pStatic_item4 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item4 )
--g_pStatic_item4:SetName( "item4" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1268,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(285,153 )",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(288,175)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many4 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many4 )
--g_pStatic_many4:SetName( "many4" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(401,177)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------------------------------------------------SLOT5

g_pPicture_bg11 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg11 )

g_pPicture_bg11:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg11 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg11 )

g_pPicture_bg11:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg11:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(25,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg11 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg11 )

g_pPicture_bg11:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(215,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
g_pPicture_bg12 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg12 )

g_pPicture_bg12:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(24,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box5:SetPoint 
{
    
	"LEFT_TOP		= D3DXVECTOR2(76,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box5:SetPoint
{
    ADD_SIZE_X = 128,
	"LEFT_TOP		= D3DXVECTOR2(81,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box5 )

g_pPicture_box5:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(210,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--g_pStatic_item5 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item5 )
--g_pStatic_item5:SetName( "item5" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1269,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,218)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(82,240)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many5 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many5 )
--g_pStatic_many5:SetName( "many5" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(197,242)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------------------------------------------------SLOT6

g_pPicture_bg13 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg13 )

g_pPicture_bg13:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_left" )

g_pPicture_bg13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg13 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg13 )

g_pPicture_bg13:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_middle" )

g_pPicture_bg13:SetPoint
{
    ADD_SIZE_X = 189,
	"LEFT_TOP		= D3DXVECTOR2(231,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg13 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_bg13 )

g_pPicture_bg13:SetTex( "DLG_UI_Common_Texture01.TGA", "result_bg3_right" )

g_pPicture_bg13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(421,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--**
g_pPicture_bg14 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPicture_bg14 )

g_pPicture_bg14:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPicture_bg14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(230,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------------   BOX

g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(282,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box6:SetPoint
{
    ADD_SIZE_X = 128,
	"LEFT_TOP		= D3DXVECTOR2(287,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicture_box6 )

g_pPicture_box6:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(416,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--g_pStatic_item6 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_item6 )
--g_pStatic_item6:SetName( "item6" )

g_pStaticSlotName:AddString
{
	MSG 			= STR_ID_1270,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(285,218)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_double = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_double )
g_pStatic_double:SetName( "double" )

g_pStatic_double:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(288,240)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--g_pStatic_many6 = g_pUIDialog:CreateStatic()
--g_pUIDialog:AddControl( g_pStatic_many6 )
--g_pStatic_many6:SetName( "many6" )

g_pStaticSlotNum:AddString
{
	MSG 			= STR_ID_1234,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
   
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],   
	"POS 			= D3DXVECTOR2(401,242)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------------


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(409,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(405+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_RESULT_OK"] )





--[[
--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(336,284)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,283)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(336+1,283+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_RESULT_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(413,284)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(412,283)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(412+1,283+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonR_arrow:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_RESULT_NEXT_PAGE"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticresult:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(353,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Static_Page_Number" )

g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(381,287)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--]]

----------------------확인

g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Button_OK" )
g_pButtoncheck:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_RESULT_OK"] )

g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(179,278)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(176,275)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(176+1,275+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
