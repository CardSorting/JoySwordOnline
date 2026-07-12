-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Postbox_Notice" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
--g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_MANAGER_UI_MSG["PBMUM_CLOSE"]  )


dlgX = 600
dlgY = 140

---메인 버튼

------------------------------기본 배경

g_pStaticPostboxNotice = g_pUIDialog:CreateStatic( )
g_pUIDialog:AddControl( g_pStaticPostboxNotice )
g_pStaticPostboxNotice:SetName( "g_pStaticPostboxNotice" )


g_pPicturePostboxNotice_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPostboxNotice:AddPicture( g_pPicturePostboxNotice_BG1 )

g_pPicturePostboxNotice_BG1:SetTex( "DLG_UI_Common_Texture29.tga", "Notice_BG_Top" )

g_pPicturePostboxNotice_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(dlgX-112,dlgY+39-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePostboxNotice_BG2 = g_pUIDialog:CreatePicture()
g_pStaticPostboxNotice:AddPicture( g_pPicturePostboxNotice_BG2 )

g_pPicturePostboxNotice_BG2:SetTex( "DLG_UI_Common_Texture29.TGA", "Notice_BG_Middle" )

g_pPicturePostboxNotice_BG2:SetPoint
{
	ADD_SIZE_Y = 83,
	"LEFT_TOP		= D3DXVECTOR2(dlgX-112,dlgY+96-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePostboxNotice_BG3 = g_pUIDialog:CreatePicture()
g_pStaticPostboxNotice:AddPicture( g_pPicturePostboxNotice_BG3 )

g_pPicturePostboxNotice_BG3:SetTex( "DLG_UI_Common_Texture29.TGA", "Notice_BG_Bottom" )

g_pPicturePostboxNotice_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-112,dlgY+180-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePostboxNotice_BG4 = g_pUIDialog:CreatePicture()
g_pStaticPostboxNotice:AddPicture( g_pPicturePostboxNotice_BG4 )

g_pPicturePostboxNotice_BG4:SetTex( "DLG_UI_Common_Texture02.TGA", "Feel" )

g_pPicturePostboxNotice_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-96,dlgY+60-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------타이틀
g_pStaticPostboxNotice:AddString
{
	MSG 			= STR_ID_5011,
--	MSG 			= "안전한 게임 이용을 위한 유의사항",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(dlgX-74,dlgY+59-40)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

---------------내용
g_pStaticPostboxNotice:AddString
{
	MSG 			= STR_ID_5012,
--MSG 			= "운영자 및 회사 관계자는 회원님의\n개인정보(넥슨ID, 비번 등)와 U-OTP 인증번호 \n혹은 해지를 절대 요구하지 않습니다.\n\n가까운 친구, 지인에게도 넥슨ID와 비번을\n알려주지 마세요!",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(dlgX+65,dlgY+90-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


