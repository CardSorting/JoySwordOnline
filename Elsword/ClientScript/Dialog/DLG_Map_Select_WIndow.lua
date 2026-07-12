-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Map_Select_Window" )
g_pUIDialog:SetPos( 100,200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_CANCEL"] )





--Background

g_pStaticMAP_SELECT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_BG )
g_pStaticMAP_SELECT_BG:SetName( "g_pStaticMAP_SELECT_BG" )


g_pPicture_MAP_SELECT_BG_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_LEFT )

g_pPicture_MAP_SELECT_BG_LEFT:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_LEFT" )

g_pPicture_MAP_SELECT_BG_LEFT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_BG_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_MIDDLE )

g_pPicture_MAP_SELECT_BG_MIDDLE:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_MIDDLE" )

g_pPicture_MAP_SELECT_BG_MIDDLE:SetPoint
{
	   ADD_SIZE_X= 789+0,
	"LEFT_TOP		= D3DXVECTOR2(20-1,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_BG_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_RIGHT )

g_pPicture_MAP_SELECT_BG_RIGHT:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_RIGHT" )

g_pPicture_MAP_SELECT_BG_RIGHT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(809,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--Foreground1


g_pStaticMAP_SELECT_FG1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_FG1 )
g_pStaticMAP_SELECT_FG1:SetName( "g_pStaticMAP_SELECT_FG1" )


g_pPicture_MAP_SELECT_FG1_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG1:AddPicture( g_pPicture_MAP_SELECT_FG1_LEFT )

g_pPicture_MAP_SELECT_FG1_LEFT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_LEFT" )

g_pPicture_MAP_SELECT_FG1_LEFT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(22,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_FG1_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG1:AddPicture( g_pPicture_MAP_SELECT_FG1_MIDDLE )

g_pPicture_MAP_SELECT_FG1_MIDDLE:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_MIDDLE" )

g_pPicture_MAP_SELECT_FG1_MIDDLE:SetPoint
{
	   ADD_SIZE_X= 101,
	"LEFT_TOP		= D3DXVECTOR2(29-1,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_FG1_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG1:AddPicture( g_pPicture_MAP_SELECT_FG1_RIGHT )

g_pPicture_MAP_SELECT_FG1_RIGHT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_RIGHT" )

g_pPicture_MAP_SELECT_FG1_RIGHT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(130,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--Foreground2


g_pStaticMAP_SELECT_FG2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_FG2 )
g_pStaticMAP_SELECT_FG2:SetName( "g_pStaticMAP_SELECT_FG2" )


g_pPicture_MAP_SELECT_FG2_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG2:AddPicture( g_pPicture_MAP_SELECT_FG2_LEFT )

g_pPicture_MAP_SELECT_FG2_LEFT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_LEFT" )

g_pPicture_MAP_SELECT_FG2_LEFT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(144,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_FG2_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG2:AddPicture( g_pPicture_MAP_SELECT_FG2_MIDDLE )

g_pPicture_MAP_SELECT_FG2_MIDDLE:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_MIDDLE" )

g_pPicture_MAP_SELECT_FG2_MIDDLE:SetPoint
{
	   ADD_SIZE_X= 420,
	"LEFT_TOP		= D3DXVECTOR2(151,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_FG2_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG2:AddPicture( g_pPicture_MAP_SELECT_FG2_RIGHT )

g_pPicture_MAP_SELECT_FG2_RIGHT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_RIGHT" )

g_pPicture_MAP_SELECT_FG2_RIGHT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(571,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--Foreground3


g_pStaticMAP_SELECT_FG3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_FG3 )
g_pStaticMAP_SELECT_FG3:SetName( "g_pStaticMAP_SELECT_FG3" )


g_pPicture_MAP_SELECT_FG3_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG3:AddPicture( g_pPicture_MAP_SELECT_FG3_LEFT )

g_pPicture_MAP_SELECT_FG3_LEFT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_LEFT" )

g_pPicture_MAP_SELECT_FG3_LEFT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(585,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_MAP_SELECT_FG3_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG3:AddPicture( g_pPicture_MAP_SELECT_FG3_MIDDLE )

g_pPicture_MAP_SELECT_FG3_MIDDLE:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_MIDDLE" )

g_pPicture_MAP_SELECT_FG3_MIDDLE:SetPoint
{
	   ADD_SIZE_X= 208,
	"LEFT_TOP		= D3DXVECTOR2(592,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_MAP_SELECT_FG3_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_FG3:AddPicture( g_pPicture_MAP_SELECT_FG3_RIGHT )

g_pPicture_MAP_SELECT_FG3_RIGHT:SetTex( "DLG_Common_New_Texture57.TGA", "MAP_SELECT_FG_RIGHT" )

g_pPicture_MAP_SELECT_FG3_RIGHT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(800,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--  모드선택 배경

g_pStaticMAP_SELECT_MODE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_MODE )
g_pStaticMAP_SELECT_MODE:SetName( "g_pStaticMAP_SELECT_MODE" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_MAP_SELECT_EMPTY = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_EMPTY )

g_pPicture_MAP_SELECT_EMPTY:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_EMPTY" )

g_pPicture_MAP_SELECT_EMPTY:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(42,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_EMPTY = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_EMPTY )

g_pPicture_MAP_SELECT_EMPTY:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_EMPTY" )

g_pPicture_MAP_SELECT_EMPTY:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(42,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_EMPTY = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_MODE:AddPicture( g_pPicture_MAP_SELECT_EMPTY )

g_pPicture_MAP_SELECT_EMPTY:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_EMPTY" )

g_pPicture_MAP_SELECT_EMPTY:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(42,267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 맵슬롯

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(151,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(151,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(151,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(258,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(258,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(258,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(472,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(472,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMAP_SELECT_SLOT_BG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_SLOT_BG )
g_pStaticMAP_SELECT_SLOT_BG:SetName( "g_pStaticMAP_SELECT_SLOT_BG" )


g_pPicture_MAP_SELECT_BG_BOX = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_BG_BOX )

g_pPicture_MAP_SELECT_BG_BOX:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_BG_BOX" )

g_pPicture_MAP_SELECT_BG_BOX:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(472,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- VS

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(171,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(171,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(171,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(278,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(278,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(278,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(385,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(385,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(385,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(492,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(492,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_VS = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_SLOT_BG:AddPicture( g_pPicture_MAP_SELECT_VS )

g_pPicture_MAP_SELECT_VS:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_VS" )

g_pPicture_MAP_SELECT_VS:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(492,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 맵 이미지


g_pStaticMAP_SELECT_IMAGE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_IMAGE )
g_pStaticMAP_SELECT_IMAGE:SetName( "g_pStaticMAP_SELECT_IMAGE" )


g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE:AddPicture( g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM )

g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM:SetTex( "DLG_New_PVP_Image03.dds", "MAP_SELECT_IMAGE_ALL_RANDOM" )

g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicture_MAP_SELECT_IMAGE_HOT_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE:AddPicture( g_pPicture_MAP_SELECT_IMAGE_HOT_RANDOM )

g_pPicture_MAP_SELECT_IMAGE_HOT_RANDOM:SetTex( "DLG_New_PVP_Image03.dds", "MAP_SELECT_IMAGE_HOT_RANDOM" )

g_pPicture_MAP_SELECT_IMAGE_HOT_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--]]


g_pStaticMAP_SELECT_IMAGE_ALL_RANDOM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_IMAGE_ALL_RANDOM )
g_pStaticMAP_SELECT_IMAGE_ALL_RANDOM:SetName( "g_pStaticMAP_SELECT_IMAGE_ALL_RANDOM" )


g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE_ALL_RANDOM:AddPicture( g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM )

g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM:SetTex( "DLG_New_PVP_Image03.dds", "MAP_SELECT_IMAGE_ALL_RANDOM" )

g_pPicture_MAP_SELECT_IMAGE_ALL_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--맵 이미지 마스킹

g_pStaticMAP_SELECT_IMAGE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SELECT_IMAGE )
g_pStaticMAP_SELECT_IMAGE:SetName( "g_pStaticMAP_SELECT_IMAGE" )


g_pPicture_MAP_SELECT_IMAGE_MASK_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE:AddPicture( g_pPicture_MAP_SELECT_IMAGE_MASK_LEFT )

g_pPicture_MAP_SELECT_IMAGE_MASK_LEFT:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_IMAGE_MASK_LEFT" )

g_pPicture_MAP_SELECT_IMAGE_MASK_LEFT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(592,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_MAP_SELECT_IMAGE_MASK_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE:AddPicture( g_pPicture_MAP_SELECT_IMAGE_MASK_MIDDLE )

g_pPicture_MAP_SELECT_IMAGE_MASK_MIDDLE:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_IMAGE_MASK_MIDDLE" )

g_pPicture_MAP_SELECT_IMAGE_MASK_MIDDLE:SetPoint
{
	   ADD_SIZE_X= 184,
	"LEFT_TOP		= D3DXVECTOR2(604,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SELECT_IMAGE_MASK_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SELECT_IMAGE:AddPicture( g_pPicture_MAP_SELECT_IMAGE_MASK_RIGHT )

g_pPicture_MAP_SELECT_IMAGE_MASK_RIGHT:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SELECT_IMAGE_MASK_RIGHT" )

g_pPicture_MAP_SELECT_IMAGE_MASK_RIGHT:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(789,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 맵 이름

g_pStaticMAP_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_TITLE )
g_pStaticMAP_TITLE:SetName( "g_pStaticMAP_TITLE" )


g_pPicture_MAP_TITLE_ALL_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_TITLE:AddPicture( g_pPicture_MAP_TITLE_ALL_RANDOM )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetTex( "DLG_New_PVP_Image_TITLE.dds", "MAP_TITLE_ALL_RANDOM" )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticMAP_TITLE_ALL_RANDOM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_TITLE_ALL_RANDOM )
g_pStaticMAP_TITLE_ALL_RANDOM:SetName( "g_pStaticMAP_TITLE_ALL_RANDOM" )


g_pPicture_MAP_TITLE_ALL_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_TITLE_ALL_RANDOM:AddPicture( g_pPicture_MAP_TITLE_ALL_RANDOM )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetTex( "DLG_New_PVP_Image_TITLE.dds", "MAP_TITLE_ALL_RANDOM" )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(593,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--[[
g_pPicture_MAP_TITLE_HOT_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticMAP_TITLE:AddPicture( g_pPicture_MAP_TITLE_HOT_RANDOM )

g_pPicture_MAP_TITLE_HOT_RANDOM:SetTex( "DLG_New_PVP_Image_TITLE.TGA", "MAP_TITLE_HOT_RANDOM" )

g_pPicture_MAP_TITLE_HOT_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(649,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]






--랜덤모드 선택버튼

g_pButton_ALL_RANDOM_BUTTON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_ALL_RANDOM_BUTTON )
g_pButton_ALL_RANDOM_BUTTON:SetName( "g_pButton_ALL_RANDOM_BUTTON" )
g_pButton_ALL_RANDOM_BUTTON:AddDummyInt( -1 )

g_pButton_ALL_RANDOM_BUTTON:SetNormalTex( "DLG_Common_New_Texture56.tga", "ALL_RANDOM_NORMAL" )

g_pButton_ALL_RANDOM_BUTTON:SetOverTex( "DLG_Common_New_Texture56.tga", "ALL_RANDOM_OVER" )

g_pButton_ALL_RANDOM_BUTTON:SetDownTex( "DLG_Common_New_Texture56.tga", "ALL_RANDOM_OVER" )

g_pButton_ALL_RANDOM_BUTTON:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(30,31)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ALL_RANDOM_BUTTON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,27)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ALL_RANDOM_BUTTON:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28,28)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_ALL_RANDOM_BUTTON:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_SELECT"] )
g_pButton_ALL_RANDOM_BUTTON:SetCustomMsgMouseDblClk( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_OK"] )

--[[
g_pButton_HOT_RANDOM_BUTTON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_HOT_RANDOM_BUTTON )
g_pButton_HOT_RANDOM_BUTTON:SetName( "g_pButton_HOT_RANDOM_BUTTON" )

g_pButton_HOT_RANDOM_BUTTON:SetNormalTex( "DLG_Common_New_Texture56.tga", "HOT_RANDOM_NORMAL" )

g_pButton_HOT_RANDOM_BUTTON:SetOverTex( "DLG_Common_New_Texture56.tga", "HOT_RANDOM_OVER" )

g_pButton_HOT_RANDOM_BUTTON:SetDownTex( "DLG_Common_New_Texture56.tga", "HOT_RANDOM_OVER" )

g_pButton_HOT_RANDOM_BUTTON:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(30,131)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HOT_RANDOM_BUTTON:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,127)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_HOT_RANDOM_BUTTON:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


-- 맵선택 버튼

g_pButton_MAP_SELECT_BUTTON_ACCEPT = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_MAP_SELECT_BUTTON_ACCEPT )
g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetName( "g_pButton_MAP_SELECT_BUTTON_ACCEPT" )

g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetNormalTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_ACCEPT_NORMAL" )

g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetOverTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_ACCEPT_OVER" )

g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetDownTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_ACCEPT_OVER" )

g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(593,215)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,215)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(595,216)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_ACCEPT:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_OK"] )




-- 취소버튼

g_pButton_MAP_SELECT_BUTTON_CANCEL = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_MAP_SELECT_BUTTON_CANCEL )
g_pButton_MAP_SELECT_BUTTON_CANCEL:SetName( "g_pButton_MAP_SELECT_BUTTON_CANCEL" )

g_pButton_MAP_SELECT_BUTTON_CANCEL:SetNormalTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_CANCEL_NORMAL" )

g_pButton_MAP_SELECT_BUTTON_CANCEL:SetOverTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_CANCEL_OVER" )

g_pButton_MAP_SELECT_BUTTON_CANCEL:SetDownTex( "DLG_Common_New_Texture59.tga", "MAP_SELECT_CANCEL_OVER" )

g_pButton_MAP_SELECT_BUTTON_CANCEL:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(593,272)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_CANCEL:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,272)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_CANCEL:SetDownPoint
{
    ADD_SIZE_X = -4,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(595,273)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON_CANCEL:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_CANCEL"] )


























