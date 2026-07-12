-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cube_Result_Window" )
g_pUIDialog:SetPos( 0,0)
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_CLOSE_RANDOM_ITEM_RESULT"] )


g_pStaticCube_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCube_Window )
g_pStaticCube_Window:SetName( "StaticCube_Window" )




----제일 밑 바탕-------------------

g_pPictureCube_Window1 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window1 )

g_pPictureCube_Window1:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window1" )

g_pPictureCube_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244,261)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCube_Window2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window2 )

g_pPictureCube_Window2:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window3" )

g_pPictureCube_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244+195,261)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCube_Window3 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window3 )

g_pPictureCube_Window3:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window2" )

g_pPictureCube_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244,261+83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCube_Window3 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window3 )

g_pPictureCube_Window3:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window4" )

g_pPictureCube_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244+195,261+83-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----(하얀색 바탕)-------

g_pPictureCube_Window_Bg_White1 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White1 )

g_pPictureCube_Window_Bg_White1:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White1" )

g_pPictureCube_Window_Bg_White1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+387-150,299+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCube_Window_Bg_White2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White2 )

g_pPictureCube_Window_Bg_White2:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White2" )

g_pPictureCube_Window_Bg_White2:SetPoint
{
		 ADD_SIZE_X=158+54+180 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150,299+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCube_Window_Bg_White3 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White3 )

g_pPictureCube_Window_Bg_White3:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White3" )

g_pPictureCube_Window_Bg_White3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180,299+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCube_Window_Bg_White4 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White4 )

g_pPictureCube_Window_Bg_White4:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White4" )

g_pPictureCube_Window_Bg_White4:SetPoint
{
		  ADD_SIZE_Y=187+14+5-151-2 ,
	"LEFT_TOP		= D3DXVECTOR2(19+387-150,299+14+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCube_Window_Bg_White5 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White5 )

g_pPictureCube_Window_Bg_White5:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White5" )

g_pPictureCube_Window_Bg_White5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+387-150,299+14+187+14+5+36-151-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCube_Window_Bg_White6 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White6 )

g_pPictureCube_Window_Bg_White6:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White6" )

g_pPictureCube_Window_Bg_White6:SetPoint
{
		   ADD_SIZE_X=158+54+180 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150,299+14+187+14+5+36-151-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCube_Window_Bg_White7 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White7 )

g_pPictureCube_Window_Bg_White7:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White7" )

g_pPictureCube_Window_Bg_White7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180,299+14+187+14+5+36-151-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCube_Window_Bg_White8 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Window_Bg_White8 )

g_pPictureCube_Window_Bg_White8:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White8" )

g_pPictureCube_Window_Bg_White8:SetPoint
{
		  ADD_SIZE_Y=187+14+5-151 -2,
	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180,299+14+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pPictureCube_Image = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Image )

g_pPictureCube_Image:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White9" )

g_pPictureCube_Image:SetPoint
{
		  ADD_SIZE_X=158+54+180 ,
		  ADD_SIZE_Y=187+14+5-151 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150,299+14+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-------------타이틀 이미지--------------
g_pPictureCube_Confirm = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureCube_Confirm )

g_pPictureCube_Confirm:SetTex( "DLG_Common_New_Texture47.TGA", "Cube_Confirm" )

g_pPictureCube_Confirm:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(346,269)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticCube_Image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCube_Image )
g_pStaticCube_Image:SetName( "g_pStaticCube_Image" )



 ----------큐브 이미지---------------
g_pPictureQuest_Complete_Window_Bg_White9 = g_pUIDialog:CreatePicture()
g_pStaticCube_Image:AddPicture( g_pPictureQuest_Complete_Window_Bg_White9 )

g_pPictureQuest_Complete_Window_Bg_White9:SetTex( "DLG_Common_New_Texture47.TGA", "Cube" )

g_pPictureQuest_Complete_Window_Bg_White9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(626,259-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





    g_pStaticCube_Window_Text = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticCube_Window_Text )
 	g_pStaticCube_Window_Text:SetName( "StaticCube_Window_Text" )

	 g_pStaticCube_Window_Text:AddString
 	{
 	 MSG    		 = STR_ID_977,
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(472,346)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	 }
	 
	 



g_pButtonCube_Window_Complete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCube_Window_Complete )
g_pButtonCube_Window_Complete:SetName( "ButtonCube_Window_Complete" )
g_pButtonCube_Window_Complete:SetNormalTex( "DLG_Common_New_Texture34.tga", "Ok_Normal" )

g_pButtonCube_Window_Complete:SetOverTex( "DLG_Common_New_Texture34.tga", "Ok_Over" )

g_pButtonCube_Window_Complete:SetDownTex( "DLG_Common_New_Texture34.tga", "Ok_Over" )

g_pButtonCube_Window_Complete:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(427,419)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(427,419)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetDownPoint
{
   ADD_SIZE_X = -2,
 ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(428,420)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_CLOSE_RANDOM_ITEM_RESULT"] )
g_pButtonCube_Window_Complete:RequestFocus()
--g_pButtonCube_Window_Complete:SetTabControlName( "MsgBoxOkAndCancelCancelButton" )
--g_pButtonCube_Window_Complete:SetPrevTabControlName( "MsgBoxOkAndCancelCancelButton" )
g_pButtonCube_Window_Complete:SetEdge( false, 1, D3DXCOLOR( 1,0,0,1 ) )











--[[
------버튼들--------------------
g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureMenu_Button_Bg2:SetPoint
{
		ADD_SIZE_Y=2000,
	"LEFT_TOP		= D3DXVECTOR2(244,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureMenu_Button_Bg2:SetPoint
{
		ADD_SIZE_Y=2000,
	"LEFT_TOP		= D3DXVECTOR2(700,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureMenu_Button_Bg2:SetPoint
{
		ADD_SIZE_X=2000,
	"LEFT_TOP		= D3DXVECTOR2(0,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticCube_Window:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureMenu_Button_Bg2:SetPoint
{
		ADD_SIZE_X=2000,
	"LEFT_TOP		= D3DXVECTOR2(0,414)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 --]]



























