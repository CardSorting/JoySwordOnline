-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Fever" )
g_pUIDialog:SetPos( 730, 24 )
-- g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




g_pStaticFever = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFever )
g_pStaticFever:SetName( "g_pStaticFeverBG" )


---BG
g_pPictureBg= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureBg )

g_pPictureBg:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "Fever_Bg"  )

g_pPictureBg:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(30,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticFever = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFever )
g_pStaticFever:SetName( "g_pStaticFever" )



---게이지
g_pPictureGauge_Green= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureGauge_Green )

g_pPictureGauge_Green:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "FEVER_GAGE_GREEN"  )

g_pPictureGauge_Green:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(32,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGauge_Red= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureGauge_Red )

g_pPictureGauge_Red:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "FEVER_GAGE_RED"  )

g_pPictureGauge_Red:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(32,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----사기구슬
g_pPictureFever_Orb_Inactive= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureFever_Orb_Inactive )

g_pPictureFever_Orb_Inactive:SetTex( "DLG_UI_Common_Texture11.tga", "Fever_Orb_Inactive"  )

g_pPictureFever_Orb_Inactive:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(262,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureFever_Orb_Active= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureFever_Orb_Active )

g_pPictureFever_Orb_Active:SetTex( "DLG_UI_Common_Texture11.tga", "Fever_Orb_Active"  )

g_pPictureFever_Orb_Active:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(262,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----FEVER!! 
g_pPictureFever_Text= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureFever_Text )

g_pPictureFever_Text:SetTex( "DLG_UI_Common_Texture11.tga", "Fever"  )

g_pPictureFever_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(96,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureFever_Orb_Active= g_pUIDialog:CreatePicture()
g_pStaticFever:AddPicture( g_pPictureFever_Orb_Active )

g_pPictureFever_Orb_Active:SetTex( "DLG_UI_Common_Texture11.tga", "Fever_Orb_Active"  )

g_pPictureFever_Orb_Active:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(262,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----수치
g_pStatic_Fever_Gauge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever_Gauge )
g_pStatic_Fever_Gauge:SetName( "Static_Fever_Gauge" )

g_pStatic_Fever_Gauge:AddString
{
	MSG 			= "66/66",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(250,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
