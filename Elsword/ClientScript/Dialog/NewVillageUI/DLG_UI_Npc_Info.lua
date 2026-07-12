-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_NPC_INFO" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"]+1 )
--g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_FIELD_MAP"] )





g_pStaticNpc_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Info )
g_pStaticNpc_Info:SetName( "Npc_Info" )


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



----NPC IMAGE
--[[
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticNpc_Info:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_Common_Texture01.TGA", "color00" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 40,
	ADD_SIZE_Y = 40,
	"LEFT_TOP		= D3DXVECTOR2(15,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]




g_pStaticNpc_IMAGE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_IMAGE )
g_pStaticNpc_IMAGE:SetName( "Npc_Image" )



g_pPictureNpc_Image = g_pUIDialog:CreatePicture()
g_pStaticNpc_IMAGE:AddPicture( g_pPictureNpc_Image )

g_pPictureNpc_Image:SetTex( "DLG_UI_Npc_Face01.TGA", "stelra" )

g_pPictureNpc_Image:SetPoint
{
    ADD_SIZE_X = -21,
	ADD_SIZE_Y = -21,
	"LEFT_TOP		= D3DXVECTOR2(10,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------NPC_IMAGE_OUTLINE

g_pPictureNPC_IMAGE_OUTLINE = g_pUIDialog:CreatePicture()
g_pStaticNpc_IMAGE:AddPicture( g_pPictureNPC_IMAGE_OUTLINE )

g_pPictureNPC_IMAGE_OUTLINE:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureNPC_IMAGE_OUTLINE:SetPoint
{
    ADD_SIZE_X = 19,
	
	"LEFT_TOP		= D3DXVECTOR2(10,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNPC_IMAGE_OUTLINE = g_pUIDialog:CreatePicture()
g_pStaticNpc_IMAGE:AddPicture( g_pPictureNPC_IMAGE_OUTLINE )

g_pPictureNPC_IMAGE_OUTLINE:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureNPC_IMAGE_OUTLINE:SetPoint
{
    ADD_SIZE_X = 19,
	
	"LEFT_TOP		= D3DXVECTOR2(10,27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNPC_IMAGE_OUTLINE = g_pUIDialog:CreatePicture()
g_pStaticNpc_IMAGE:AddPicture( g_pPictureNPC_IMAGE_OUTLINE )

g_pPictureNPC_IMAGE_OUTLINE:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureNPC_IMAGE_OUTLINE:SetPoint
{
   
	ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(10,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureNPC_IMAGE_OUTLINE = g_pUIDialog:CreatePicture()
g_pStaticNpc_IMAGE:AddPicture( g_pPictureNPC_IMAGE_OUTLINE )

g_pPictureNPC_IMAGE_OUTLINE:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureNPC_IMAGE_OUTLINE:SetPoint
{
    
	ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(29,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






----NPC NAME

-------------
--[[
g_pStaticNpc_Job = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Job )
g_pStaticNpc_Job:SetName( "Npc_Job" )

g_pStaticNpc_Job:AddString
{
	MSG 			= STR_ID_1308,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]

g_pStaticNpc_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Name )
g_pStaticNpc_Name:SetName( "Npc_Name" )

g_pStaticNpc_Name:AddString
{
	MSG 			= STR_ID_1309,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--[[
	--------------bar
	g_pPictureBar = g_pUIDialog:CreatePicture()
	g_pStaticNpc_Info:AddPicture( g_pPictureBar )

	g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

	g_pPictureBar:SetPoint
	{
		ADD_SIZE_X = 145,
		"LEFT_TOP		= D3DXVECTOR2(5,55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

--]]



-----NPC Info

g_pStaticNpc_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNpc_Info )
g_pStaticNpc_Info:SetName( "Npc_Desc" )

g_pStaticNpc_Info:AddString
{
	MSG 			= STR_ID_1310,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






