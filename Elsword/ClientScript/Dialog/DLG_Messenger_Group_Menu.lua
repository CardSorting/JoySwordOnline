-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Messenger_Group_Menu" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )


g_pStaticQuest_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Window )
g_pStaticQuest_Window:SetName( "Option_Window" )




g_pPictureQuest_Window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG1 )

g_pPictureQuest_Window_BG1:SetTex( "DLG_Quest_Window.TGA", "TalkBox1" )

g_pPictureQuest_Window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureQuest_Window_BG2 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG2 )

g_pPictureQuest_Window_BG2:SetTex( "DLG_Quest_Window.TGA", "TalkBox2" )

g_pPictureQuest_Window_BG2:SetPoint
{
    ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2(14,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureQuest_Window_BG3 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG3 )

g_pPictureQuest_Window_BG3:SetTex( "DLG_Quest_Window.TGA", "TalkBox3" )

g_pPictureQuest_Window_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(151,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- middle left
g_pPictureQuest_Window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG4 )

g_pPictureQuest_Window_BG4:SetTex( "DLG_Quest_Window.TGA", "TalkBox4" )

g_pPictureQuest_Window_BG4:SetPoint
{
 	ADD_SIZE_Y = 167 +27,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- middle right
g_pPictureQuest_Window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG5 )

g_pPictureQuest_Window_BG5:SetTex( "DLG_Quest_Window.TGA", "TalkBox8" )

g_pPictureQuest_Window_BG5:SetPoint
{

	ADD_SIZE_Y = 169 +27,
	"LEFT_TOP		= D3DXVECTOR2(150,14)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- middle middle
g_pPictureQuest_Window_BG9 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG9 )

g_pPictureQuest_Window_BG9:SetTex( "DLG_Quest_Window.TGA", "TalkBox5" )

g_pPictureQuest_Window_BG9:SetPoint
{
 	ADD_SIZE_X = 139,
    ADD_SIZE_Y = 170 +27,
	"LEFT_TOP		= D3DXVECTOR2(14,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--left bottom
g_pPictureQuest_Window_BG6 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG6 )

g_pPictureQuest_Window_BG6:SetTex( "DLG_Quest_Window.TGA", "TalkBox6" )

g_pPictureQuest_Window_BG6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,180 +27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- middle bottom
g_pPictureQuest_Window_BG7 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG7 )

g_pPictureQuest_Window_BG7:SetTex( "DLG_Quest_Window.TGA", "TalkBox9" )

g_pPictureQuest_Window_BG7:SetPoint
{
    ADD_SIZE_X = 134,
	"LEFT_TOP		= D3DXVECTOR2(15,179 +27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- right bottom
g_pPictureQuest_Window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticQuest_Window:AddPicture( g_pPictureQuest_Window_BG8 )

g_pPictureQuest_Window_BG8:SetTex( "DLG_Quest_Window.TGA", "TalkBox7" )

g_pPictureQuest_Window_BG8:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(151,180 +27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButton_UserButton1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_UserButton1 )
g_pButton_UserButton1:SetName( "NameChange" )
g_pButton_UserButton1:SetNormalTex( "DLG_Unit_State.TGA", "User_Button_Normal" )

g_pButton_UserButton1:SetOverTex( "DLG_Unit_State.TGA", "User_Button_Over" )

g_pButton_UserButton1:SetDownTex( "DLG_Unit_State.TGA", "User_Button_Over" )

g_pButton_UserButton1:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11,15+40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton1:SetOverPoint
{


	"LEFT_TOP		= D3DXVECTOR2(10,14+40)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton1:SetDownPoint
{
    ADD_SIZE_X = -5,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(13,15+40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton1:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_GROUP_MENU_COMMAND_CLICK"] )



g_pButton_UserButton2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_UserButton2 )
g_pButton_UserButton2:SetName( "Delete" )
g_pButton_UserButton2:SetNormalTex( "DLG_Unit_State.TGA", "User_Button_Normal" )

g_pButton_UserButton2:SetOverTex( "DLG_Unit_State.TGA", "User_Button_Over" )

g_pButton_UserButton2:SetDownTex( "DLG_Unit_State.TGA", "User_Button_Over" )

g_pButton_UserButton2:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11,42+40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton2:SetOverPoint
{


	"LEFT_TOP		= D3DXVECTOR2(10,40+40)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton2:SetDownPoint
{
    ADD_SIZE_X = -5,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(13,42+40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserButton2:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_GROUP_MENU_COMMAND_CLICK"] )











g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Button_Command" )


for i = 0, 1 do

	posX = 11+72
	posY = 40+15+2 + i * 27
	
	g_pStatic:AddString
	{
		MSG 			= STR_ID_1126,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(posX, posY)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
end
