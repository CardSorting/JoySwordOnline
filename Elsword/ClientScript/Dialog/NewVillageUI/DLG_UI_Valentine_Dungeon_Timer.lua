-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetPos(365,27) 

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Valentine_Dungeon_Timer" )

--배경 UI
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 0
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture78_NEW.TGA", "valentine_stage" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--스테이지
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 1
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "valen_stage_number_0" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(144,29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 2
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "valen_stage_number_4" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(157,29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--남은 시간 10 자리 
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 3
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "valen_time_no_0" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(133,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--남은 시간 1 자리
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 4
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "valen_time_no_3" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(157,136)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------------------------------------------------------------------------------------------------------------

