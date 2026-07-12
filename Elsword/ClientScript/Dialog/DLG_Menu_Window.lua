-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Menu_Window" )
g_pUIDialog:SetPos( -6,13 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticMenu_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Window )
g_pStaticMenu_Window:SetName( "StaticMenu_Window" )
g_pStaticMenu_Window:SetEnable( true )




----제일 밑 바탕-------------------
g_pPictureMenu_Window_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg1 )

g_pPictureMenu_Window_Bg1:SetTex( "DLG_Common_New_Texture25.TGA", "Menu_Window_Bg1" )

g_pPictureMenu_Window_Bg1:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(4,408-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg2 )

g_pPictureMenu_Window_Bg2:SetTex( "DLG_Common_New_Texture25.TGA", "Menu_Window_Bg2" )

g_pPictureMenu_Window_Bg2:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(4+53,408-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg3 )

g_pPictureMenu_Window_Bg3:SetTex( "DLG_Common_New_Texture25.TGA", "Menu_Window_Bg3" )

g_pPictureMenu_Window_Bg3:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(4,408+155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Window_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg4 )

g_pPictureMenu_Window_Bg4:SetTex( "DLG_Common_New_Texture25.TGA", "Menu_Window_Bg4" )

g_pPictureMenu_Window_Bg4:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(4+33,408+156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Window_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg5 )

g_pPictureMenu_Window_Bg5:SetTex( "DLG_Common_New_Texture25.TGA", "window1" )

g_pPictureMenu_Window_Bg5:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(3,445)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg6 )

g_pPictureMenu_Window_Bg6:SetTex( "DLG_Common_New_Texture25.TGA", "window1" )

g_pPictureMenu_Window_Bg6:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(3,475)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg7 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg7 )

g_pPictureMenu_Window_Bg7:SetTex( "DLG_Common_New_Texture25.TGA", "Menu_Window_Bg_Right" )

g_pPictureMenu_Window_Bg7:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(104,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----(하얀색 바탕)------- 

g_pPictureMenu_Window_Bg_White1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White1 )

g_pPictureMenu_Window_Bg_White1:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White1" )

g_pPictureMenu_Window_Bg_White1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,456-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg_White2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White2 )

g_pPictureMenu_Window_Bg_White2:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White2" )

g_pPictureMenu_Window_Bg_White2:SetPoint
{
		 ADD_SIZE_X=158 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17,456-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg_White3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White3 )

g_pPictureMenu_Window_Bg_White3:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White3" )

g_pPictureMenu_Window_Bg_White3:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(19+176,456-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Window_Bg_White4 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White4 )

g_pPictureMenu_Window_Bg_White4:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White4" )

g_pPictureMenu_Window_Bg_White4:SetPoint
{
		  ADD_SIZE_Y=187+14+88+50 ,
	"LEFT_TOP		= D3DXVECTOR2(19,456+14-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureMenu_Window_Bg_White5 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White5 )

g_pPictureMenu_Window_Bg_White5:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White5" )

g_pPictureMenu_Window_Bg_White5:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(19,456+14+187+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureMenu_Window_Bg_White6 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White6 )

g_pPictureMenu_Window_Bg_White6:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White6" )

g_pPictureMenu_Window_Bg_White6:SetPoint
{
		   ADD_SIZE_X=158 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17,456+14+187+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Window_Bg_White7 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White7 )

g_pPictureMenu_Window_Bg_White7:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White7" )

g_pPictureMenu_Window_Bg_White7:SetPoint
{
		   
	"LEFT_TOP		= D3DXVECTOR2(19+176,456+14+187+14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Window_Bg_White8 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White8 )

g_pPictureMenu_Window_Bg_White8:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White8" )

g_pPictureMenu_Window_Bg_White8:SetPoint
{
		  ADD_SIZE_Y=187+14+88+50 ,
	"LEFT_TOP		= D3DXVECTOR2(19+176,456+14-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureMenu_Window_Bg_White9 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_White9 )

g_pPictureMenu_Window_Bg_White9:SetTex( "DLG_Common_New_Texture25.TGA", "Quest_Bg_White9" )

g_pPictureMenu_Window_Bg_White9:SetPoint
{
		  ADD_SIZE_X=158 ,
		  ADD_SIZE_Y=187+14+88+50 ,
	"LEFT_TOP		= D3DXVECTOR2(19+17,456+14-88-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------메뉴간판글자---------
g_pPictureMenu_Window_Bg_Title = g_pUIDialog:CreatePicture()
g_pStaticMenu_Window:AddPicture( g_pPictureMenu_Window_Bg_Title )

g_pPictureMenu_Window_Bg_Title:SetTex( "DLG_Common_New_Texture42.TGA", "Menu_Title" )

g_pPictureMenu_Window_Bg_Title:SetPoint
{
		 
	"LEFT_TOP		= D3DXVECTOR2(18,417-88-48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




































g_pButtonMenu_Window_Character_Select = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Character_Select )
g_pButtonMenu_Window_Character_Select:SetName( "ButtonMenu_Window_Character_Select" )
g_pButtonMenu_Window_Character_Select:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Character_Select_Normal" )

g_pButtonMenu_Window_Character_Select:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Character_Select_Over" )

g_pButtonMenu_Window_Character_Select:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Character_Select_Over" )

g_pButtonMenu_Window_Character_Select:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31,464-88-5-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Character_Select:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22-4,458-3-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Character_Select:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(23-4,458-3-88-4-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_Window_Character_Select:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_UNIT_SELECT"] )





















g_pButtonMenu_Window_Go_Village = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Go_Village )
g_pButtonMenu_Window_Go_Village:SetName( "ButtonMenu_Window_Go_Village" )
g_pButtonMenu_Window_Go_Village:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Village_Go_Normal" )

g_pButtonMenu_Window_Go_Village:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Village_Go_Over" )

g_pButtonMenu_Window_Go_Village:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Village_Go_Over" )

g_pButtonMenu_Window_Go_Village:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31-2,508-88-5-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_Village:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22-2-2,503-4-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_Village:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(23-2-2,503-4-88-5-44+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_Window_Go_Village:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_VILLAGE"] )
















g_pButtonMenu_Window_Go_PVP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Go_PVP )
g_pButtonMenu_Window_Go_PVP:SetName( "ButtonMenu_Window_Go_PVP" )
g_pButtonMenu_Window_Go_PVP:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_PVP_Go_Normal" )

g_pButtonMenu_Window_Go_PVP:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_PVP_Go_Over" )

g_pButtonMenu_Window_Go_PVP:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_PVP_Go_Over" )

g_pButtonMenu_Window_Go_PVP:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31,596-88-5-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_PVP:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,591-4-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_PVP:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19,592-4-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_PVP:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_PVP_LOBBY"] )










g_pButtonMenu_Window_Go_Dungeon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Go_Dungeon )
g_pButtonMenu_Window_Go_Dungeon:SetName( "ButtonMenu_Window_Go_Dungeon" )
g_pButtonMenu_Window_Go_Dungeon:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Dungeon_Go_Normal" )

g_pButtonMenu_Window_Go_Dungeon:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Dungeon_Go_Over" )

g_pButtonMenu_Window_Go_Dungeon:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Dungeon_Go_Over" )

g_pButtonMenu_Window_Go_Dungeon:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31-3,552-88-5-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_Dungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22-1-3,547-4-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_Dungeon:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(23-1-3,548-4-88-5-44)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonMenu_Window_Go_Dungeon:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_LOCAL_MAP"] )











g_pButtonMenu_Window_Go_ARCADE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Go_ARCADE )
g_pButtonMenu_Window_Go_ARCADE:SetName( "ButtonMenu_Window_Go_ARCADE" )
g_pButtonMenu_Window_Go_ARCADE:SetNormalTex( "DLG_Common_New_Texture62.tga", "Menu_ARCADE_Normal" )

g_pButtonMenu_Window_Go_ARCADE:SetOverTex( "DLG_Common_New_Texture62.tga", "Menu_ARCADE_Over" )

g_pButtonMenu_Window_Go_ARCADE:SetDownTex( "DLG_Common_New_Texture62.tga", "Menu_ARCADE_Over" )

g_pButtonMenu_Window_Go_ARCADE:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31,596-88-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_ARCADE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,591-4-88-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_ARCADE:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+1,592-4-88-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Go_ARCADE:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_ARCADE_LOBBY"] )












g_pButtonMenu_Window_Game_End = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Game_End )
g_pButtonMenu_Window_Game_End:SetName( "ButtonMenu_Window_Game_End" )
g_pButtonMenu_Window_Game_End:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Game_End_Normal" )

g_pButtonMenu_Window_Game_End:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Game_End_Over" )

g_pButtonMenu_Window_Game_End:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Game_End_Over" )

g_pButtonMenu_Window_Game_End:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(31,640)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Game_End:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,635-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Game_End:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19,635-4+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Game_End:SetCustomMsgMouseUp( STATE_UI_CUSTOM_MSG["SUCM_EXIT_WINDOW"] )






g_pButtonMenu_Window_Student = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Student )
g_pButtonMenu_Window_Student:SetName( "ButtonMenu_Window_Student" )
g_pButtonMenu_Window_Student:SetNormalTex( "DLG_Common_New_Texture49.tga", "Student_normal" )

g_pButtonMenu_Window_Student:SetOverTex( "DLG_Common_New_Texture49.tga", "Student_over" )

g_pButtonMenu_Window_Student:SetDownTex( "DLG_Common_New_Texture49.tga", "Student_over" )

g_pButtonMenu_Window_Student:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(22,640-88-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Student:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,635-4-84-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Student:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(23,635-4-83-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Student:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_VIEW_STUDENT_CANDIDATE_LIST"] )






g_pButtonMenu_Window_Option = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Window_Option )
g_pButtonMenu_Window_Option:SetName( "ButtonMenu_Window_Option" )
g_pButtonMenu_Window_Option:SetNormalTex( "DLG_Common_New_Texture49.tga", "option_normal" )

g_pButtonMenu_Window_Option:SetOverTex( "DLG_Common_New_Texture49.tga", "option_over" )

g_pButtonMenu_Window_Option:SetDownTex( "DLG_Common_New_Texture49.tga", "option_over" )

g_pButtonMenu_Window_Option:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(22,640-43-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Option:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,635-4-38-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Option:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(23,635-4-37-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Window_Option:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPTION"] )












