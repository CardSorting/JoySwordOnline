-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_MISC_INFO" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"]+1 )




g_pStaticNpc_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Info )
g_pStaticNpc_Info:SetName( "Misc_Info" )


----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 130,
	ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

-----------------bg 테두리

g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 130,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 130,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(0,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 1,
	ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(0,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 1,
	ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(129,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----NAME

-------------
g_pStaticNpc_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Name )
g_pStaticNpc_Name:SetName( "Misc_Name" )

g_pStaticNpc_Name:AddString
{
	MSG 			= STR_ID_1305,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





-----Info

g_pStaticNpc_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Info )
g_pStaticNpc_Info:SetName( "Misc_Desc" )

g_pStaticNpc_Info:AddString
{
	MSG 			= STR_ID_1306,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






