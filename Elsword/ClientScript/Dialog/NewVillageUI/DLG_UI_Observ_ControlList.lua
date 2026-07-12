-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--------------------------------------------------------1번째 플레이어 내용-----------------

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "st_check" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(41,156)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(41+17,156+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(41,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----닉네임 부분---
g_pStaticNick = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNick )
g_pStaticNick:SetName( "st_Nickname" )
g_pStaticNick:AddString
{
	 -- MSG 			= "오오미지리것소",
	FONT_INDEX		= XUF_DODUM_13_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(83,157)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----서버 부분---
g_pStaticServer = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticServer )
g_pStaticServer:SetName( "st_Server" )
g_pStaticServer:AddString
{
	 -- MSG 			= "솔레스",
	FONT_INDEX		= XUF_DODUM_13_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(189,157)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---로그인 버튼
g_pCheckButton1 = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckButton1 )
g_pCheckButton1:SetName( "st_login" )
g_pCheckButton1:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pCheckButton1:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pCheckButton1:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(262,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckButton1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(262,154)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---대회채널 접속여부 버튼
g_pCheckButton2 = g_pUIDialog:CreateCheckBox()
g_pUIDialog:AddControl( g_pCheckButton2 )
g_pCheckButton2:SetName( "st_channel" )
g_pCheckButton2:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pCheckButton2:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pCheckButton2:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckButton2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(336,154)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

