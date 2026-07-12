-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Free_Training_Combo_List" )
g_pUIDialog:SetPos( 754,60 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )




g_pStaticFree_Training_Popup = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFree_Training_Popup )
g_pStaticFree_Training_Popup:SetName( "Equip_Window" )


g_pPictureFree_Training_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG1 )

g_pPictureFree_Training_BG1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureFree_Training_BG1:SetPoint
{
    ADD_SIZE_X = 263,
    ADD_SIZE_Y = 325+300,
	"LEFT_TOP		= D3DXVECTOR2(2,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureFree_Training_BG2 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG2 )

g_pPictureFree_Training_BG2:SetTex( "DLG_Common_Texture01.TGA", "Gray_Box1" )

g_pPictureFree_Training_BG2:SetPoint
{
    ADD_SIZE_X = 258,
    ADD_SIZE_Y = 317+300,
	"LEFT_TOP		= D3DXVECTOR2(4,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureFree_Training_BG3 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG3 )

g_pPictureFree_Training_BG3:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureFree_Training_BG3:SetPoint
{
    ADD_SIZE_X = 254,
    ADD_SIZE_Y = 313+300,
	"LEFT_TOP		= D3DXVECTOR2(6,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureFree_Training_BG4 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG4 )

g_pPictureFree_Training_BG4:SetTex( "DLG_Common_Texture01.TGA", "Box" )

g_pPictureFree_Training_BG4:SetPoint
{
    ADD_SIZE_X = 250,
    ADD_SIZE_Y = 29+300,
	"LEFT_TOP		= D3DXVECTOR2(8,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFree_Training_BG5 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG5 )

g_pPictureFree_Training_BG5:SetTex( "DLG_Common_Texture01.TGA", "Box" )

g_pPictureFree_Training_BG5:SetPoint
{
    ADD_SIZE_X = 250,
    ADD_SIZE_Y = 277+300,
	"LEFT_TOP		= D3DXVECTOR2(8,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFree_Training_BG6 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG6 )

g_pPictureFree_Training_BG6:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureFree_Training_BG6:SetPoint
{
    ADD_SIZE_X = 247,
    ADD_SIZE_Y = 25,
	"LEFT_TOP		= D3DXVECTOR2(10,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}


g_pPictureFree_Training_BG7 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG7 )

g_pPictureFree_Training_BG7:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureFree_Training_BG7:SetPoint
{
    ADD_SIZE_X = 247,
    ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(10,38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFree_Training_BG8 = g_pUIDialog:CreatePicture()
g_pStaticFree_Training_Popup:AddPicture( g_pPictureFree_Training_BG8 )

g_pPictureFree_Training_BG8:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureFree_Training_BG8:SetPoint
{
    ADD_SIZE_X = 247,
    ADD_SIZE_Y = 274+300,
	"LEFT_TOP		= D3DXVECTOR2(10,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.1)",
	CHANGE_TIME		= 0.0,
}














----------------나가기 버튼----

g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )
g_pButtonExit:SetNormalTex( "DLG_Common_Button01.TGA", "X_Icon_Normal" )

g_pButtonExit:SetOverTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetDownTex( "DLG_Common_Button01.TGA", "X_Icon_Over" )

g_pButtonExit:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(231,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(231,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
    ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(232,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonExit:SetCustomMsgMouseUp( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_COMBO_LIST"] )




--------------------(폰트)-------------------




	g_pStaticTitle= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticTitle)
 	g_pStaticTitle:SetName("Title")

    g_pStaticTitle:AddString
    {
 	 MSG    		 = STR_ID_993,
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(90,15)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 









g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Combo_List" )
g_pStatic:SetOffsetPos( 15, 45 )
