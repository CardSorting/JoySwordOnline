-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_InfoBox" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStatic_Common_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Common_Info )
g_pStatic_Common_Info:SetName( "InfoBox" )

--g_pUIDialog:AddDummyPos( D3DXVECTOR3( 3, 4, 0 ) ) -- 위치

---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Common_Info:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture30.TGA", "tip_bg" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------ !!!

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Common_Info:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPicture_bg1:SetIndex(1)
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(111-5,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------------------  메시지    --------------------------------

g_pStatic_Message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Message )
g_pStatic_Message:SetName( "Static_Item_Name1" )

g_pStatic_Message:AddString
{

	--MSG 			= "메모를 기록할 페이지를 선택해 주세요.",
	FONT_INDEX		= XUF_DODUM_20_BOLD,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(303,59+2)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_Message:AddString
{

	--MSG 			= "메모를 기록할 페이지를 선택해 주세요.",
	FONT_INDEX		= XUF_DODUM_20_BOLD,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(303,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

