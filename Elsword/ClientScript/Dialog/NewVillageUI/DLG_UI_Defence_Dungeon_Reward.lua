-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetPos( 310, 265 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( WORLD_MISSION_UI_MSG["WMUM_REWARD_CLOSE"] )

g_pStatic_reward = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_reward )
g_pStatic_reward:SetName( "reward" )

---------BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_top" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = -30,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = -30,
	ADD_SIZE_Y = 189,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_bottom" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = -30,
	"LEFT_TOP		= D3DXVECTOR2(0,294-40-51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------TITLE
g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicture_title )
g_pPicture_title:SetTex( "DLG_UI_Title03.tga", "title_clear" )
g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(15,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-----------bg2
g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg2 )
g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )
g_pPicturebg2:SetPoint
{

	ADD_SIZE_X = -30,
	"LEFT_TOP		= D3DXVECTOR2(13,69-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg2 )
g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )
g_pPicturebg2:SetPoint
{
     ADD_SIZE_X = -30,
     ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(13,78-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg2 )
g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )
g_pPicturebg2:SetPoint
{

    ADD_SIZE_X = -30,
	"LEFT_TOP		= D3DXVECTOR2(13,136-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


------bg3
g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg3 )
g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_left" )
g_pPicturebg3:SetPoint
{

     
	"LEFT_TOP		= D3DXVECTOR2(17,73-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg3 )
g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_middle")
g_pPicturebg3:SetPoint
{
    
	ADD_SIZE_X = 279,
	"LEFT_TOP		= D3DXVECTOR2(25,73-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebg3 )
g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_right" )
g_pPicturebg3:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(335-30,73-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


	
-----아이템 슬롯
g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_Slot_Image" )
g_pPictureWindow_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_slot1 )
g_pPictureWindow_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )
g_pPictureWindow_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25,82-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-----아이템이름
	Static_Item_Name = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_Item_Name )
	Static_Item_Name:SetName( "Static_Item_Name" )

	Static_Item_Name:AddString
	{
		MSG 			= "아이템 이름과 설명",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(85+5,89-5-20)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

-------안내문
	Static_Notice = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_Notice )
	Static_Notice:SetName( "Static_Notice" )

	Static_Item_Name:AddString
	{
		MSG 			= "마족으로부터 엘의 수정을 지켜낸 것을 인정함",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(165,48+85)",
		"COLOR			= D3DXCOLOR(1.0,0.5,0.0,1.0)",
		"OUTLINE_COLOR	= D3DXCOLOR(1.0,0.5,0.0,1.0)",
	}
	

	----------------- bar
g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebar )
g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 310,
	"LEFT_TOP		= D3DXVECTOR2(10,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebar )
g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )
g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(80,78-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_reward:AddPicture( g_pPicturebar )
g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 310,
	"LEFT_TOP		= D3DXVECTOR2(10,237-25-55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------확인 버튼 
g_pButton_selec = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_selec )
g_pButton_selec:SetName( "Click" )
g_pButton_selec:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_NORMAL" )

g_pButton_selec:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButton_selec:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButton_selec:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(122,218-52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_selec:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(122-3,218-3-52)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_selec:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(122-2,218-2-52)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_selec:SetCustomMsgMouseUp( WORLD_MISSION_UI_MSG["WMUM_REWARD_CLOSE"] )
