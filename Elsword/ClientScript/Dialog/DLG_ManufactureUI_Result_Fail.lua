-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_ManufactureUI_Result_Fail" )
g_pUIDialog:SetPos( 0,0)
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_MANUFACTURE_CUSTOM_MSG["UMCM_RESULT_CLOSE"] )

g_pStaticAlchemy_Failuer_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAlchemy_Failuer_Window )
g_pStaticAlchemy_Failuer_Window:SetName( "StaticAlchemy_Failuer_Window" )




----제일 밑 바탕-------------------

g_pPictureAlchemy_Failuer_Window1 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window1 )

g_pPictureAlchemy_Failuer_Window1:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window1" )

g_pPictureAlchemy_Failuer_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(354,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAlchemy_Failuer_Window2 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window2 )

g_pPictureAlchemy_Failuer_Window2:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window3" )

g_pPictureAlchemy_Failuer_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244+195-22,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAlchemy_Failuer_Window3 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window3 )

g_pPictureAlchemy_Failuer_Window3:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window2" )

g_pPictureAlchemy_Failuer_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(354,261+83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlchemy_Failuer_Window3 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window3 )

g_pPictureAlchemy_Failuer_Window3:SetTex( "DLG_Common_New_Texture25.TGA", "Cube_Window4" )

g_pPictureAlchemy_Failuer_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(244+195-22,261+83-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----(하얀색 바탕)-------

g_pPictureAlchemy_Failuer_Window_Bg_White1 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White1 )

g_pPictureAlchemy_Failuer_Window_Bg_White1:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White1" )

g_pPictureAlchemy_Failuer_Window_Bg_White1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+387-150+115,299+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlchemy_Failuer_Window_Bg_White2 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White2 )

g_pPictureAlchemy_Failuer_Window_Bg_White2:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White2" )

g_pPictureAlchemy_Failuer_Window_Bg_White2:SetPoint
{
		 ADD_SIZE_X=158+54+180-137 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150+115,299+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlchemy_Failuer_Window_Bg_White3 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White3 )

g_pPictureAlchemy_Failuer_Window_Bg_White3:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White3" )

g_pPictureAlchemy_Failuer_Window_Bg_White3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180+115-137,299+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAlchemy_Failuer_Window_Bg_White4 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White4 )

g_pPictureAlchemy_Failuer_Window_Bg_White4:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White4" )

g_pPictureAlchemy_Failuer_Window_Bg_White4:SetPoint
{
		  ADD_SIZE_Y=187+14+5-151-2-9 ,
	"LEFT_TOP		= D3DXVECTOR2(19+387-150+115,299+14+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureAlchemy_Failuer_Window_Bg_White5 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White5 )

g_pPictureAlchemy_Failuer_Window_Bg_White5:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White5" )

g_pPictureAlchemy_Failuer_Window_Bg_White5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+387-150+115,299+14+187+14+5+36-151-2+4-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureAlchemy_Failuer_Window_Bg_White6 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White6 )

g_pPictureAlchemy_Failuer_Window_Bg_White6:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White6" )

g_pPictureAlchemy_Failuer_Window_Bg_White6:SetPoint
{
		   ADD_SIZE_X=158+54+180-137 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150+115,299+14+187+14+5+36-151-2+4-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlchemy_Failuer_Window_Bg_White7 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White7 )

g_pPictureAlchemy_Failuer_Window_Bg_White7:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White7" )

g_pPictureAlchemy_Failuer_Window_Bg_White7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180+115-137,299+14+187+14+5+36-151-2+4-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAlchemy_Failuer_Window_Bg_White8 = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Window_Bg_White8 )

g_pPictureAlchemy_Failuer_Window_Bg_White8:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White8" )

g_pPictureAlchemy_Failuer_Window_Bg_White8:SetPoint
{
		  ADD_SIZE_Y=187+14+5-151 -2-9,
	"LEFT_TOP		= D3DXVECTOR2(19+176+387+54-150+180+115-137,299+14+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pPictureCube_Image = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureCube_Image )

g_pPictureCube_Image:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White9" )

g_pPictureCube_Image:SetPoint
{
		  ADD_SIZE_X=158+54+180-137 ,
		  ADD_SIZE_Y=187+14+5-151-9 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17+387-150+115,299+14+36+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-------------타이틀 이미지--------------
g_pPictureAlchemy_Failuer = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer )

g_pPictureAlchemy_Failuer:SetTex( "DLG_Common_New_Texture47.TGA", "Alchemy_Failuer_Title" )

g_pPictureAlchemy_Failuer:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(369,257)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAlchemy_Failuer_Text = g_pUIDialog:CreatePicture()
g_pStaticAlchemy_Failuer_Window:AddPicture( g_pPictureAlchemy_Failuer_Text )

g_pPictureAlchemy_Failuer_Text:SetTex( "DLG_Common_New_Texture45.TGA", "Alchemy_Failure_Text" )

g_pPictureAlchemy_Failuer_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(382,346)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













    g_pStaticCube_Window_Text = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticCube_Window_Text )
 	g_pStaticCube_Window_Text:SetName( "StaticCube_Window_Text" )

	 g_pStaticCube_Window_Text:AddString
 	{
 	 MSG    		 = STR_ID_999,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(520,373)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	 }

	 



g_pButtonCube_Window_Complete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCube_Window_Complete )
g_pButtonCube_Window_Complete:SetName( "ButtonCube_Window_Complete" )
g_pButtonCube_Window_Complete:SetNormalTex( "DLG_Common_New_Texture43.tga", "Quest_Complete_Normal" )

g_pButtonCube_Window_Complete:SetOverTex( "DLG_Common_New_Texture43.tga", "Quest_Complete_Over" )

g_pButtonCube_Window_Complete:SetDownTex( "DLG_Common_New_Texture43.tga", "Quest_Complete_Over" )

g_pButtonCube_Window_Complete:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(467,417)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(467,417)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetDownPoint
{
   ADD_SIZE_X = -2,
 ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(468,418)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonCube_Window_Complete:SetCustomMsgMouseUp( UI_MANUFACTURE_CUSTOM_MSG["UMCM_RESULT_CLOSE"] )






