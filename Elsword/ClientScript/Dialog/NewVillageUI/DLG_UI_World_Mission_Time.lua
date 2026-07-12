-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetPos(775+48-8,436+33) 

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "WORLD_MISSION_NEW" )

--GARE BACKGROUND
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 0
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "GAGE_BAR" )
g_pPicture_Timer:SetPoint
{  
	ADD_SIZE_X = -48+8,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- SIMBOL ANGEL 
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 1
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "SIMBOL_ANGEL" )
g_pPicture_Timer:SetPoint
{  
	ADD_SIZE_X = -3,
	ADD_SIZE_Y = -3,

	"LEFT_TOP		= D3DXVECTOR2(2,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- SIMBOL DEMON 
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 2
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "SIMBOL_DEMON" )
g_pPicture_Timer:SetPoint
{  
	ADD_SIZE_X = -5,
	ADD_SIZE_Y = -2,

	"LEFT_TOP		= D3DXVECTOR2(2+40+167-48+4+4+1,4-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- GAGE_CENTER_BAR
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 3
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "GAGE_CENTER_BAR" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(2+38+167-84-24+4,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

-- TIME_BACK_BAR
g_pPicture_Timer = g_pUIDialog:CreatePicture() -- 4
g_pStatic:AddPicture( g_pPicture_Timer )
g_pPicture_Timer:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "TIME_BACK_BAR" )
g_pPicture_Timer:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(71-24+4,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- GAGE_ANGEL
g_pStaticGageAngel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGageAngel )
g_pStaticGageAngel:SetName( "GAGE_ANGEL" )

g_pPictureGageAngel = g_pUIDialog:CreatePicture() -- 0
g_pStaticGageAngel:AddPicture( g_pPictureGageAngel )
g_pPictureGageAngel:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "GAGE_ANGEL" )
g_pPictureGageAngel:SetPoint
{  
	ADD_SIZE_X = -24+4,

	"LEFT_TOP		= D3DXVECTOR2(27+2+1,2+14+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

-- GAGE_DEMON
g_pStaticGageDemon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGageDemon )
g_pStaticGageDemon:SetName( "GAGE_DEMON" )

g_pPictureGageDemon = g_pUIDialog:CreatePicture() -- 0
g_pStaticGageDemon:AddPicture( g_pPictureGageDemon )
g_pPictureGageDemon:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "GAGE_DEMON" )
g_pPictureGageDemon:SetPoint
{  
	ADD_SIZE_X = -18,

	"LEFT_TOP		= D3DXVECTOR2(27+93-24+6+2,2+14+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- GAGE_PARTICLE
g_pStaticGagePartcle = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGagePartcle )
g_pStaticGagePartcle:SetName( "GAGE_PARTICLE" )

g_pPictureGageParticle = g_pUIDialog:CreatePicture() -- 0
g_pStaticGagePartcle:AddPicture( g_pPictureGageParticle )
g_pPictureGageParticle:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "GAGE_PARTICLE" )
g_pPictureGageParticle:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(2+38+167-84-18-48+24+4,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


-- DANGER -------------- 깜빡이는 이펙트 필요함
g_pStaticDanger = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDanger )
g_pStaticDanger:SetName( "DANGER" )
g_pStaticDanger:SetShow( false )

g_pPictureDanger = g_pUIDialog:CreatePicture() -- 0
g_pStaticDanger:AddPicture( g_pPictureDanger )
g_pPictureDanger:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "DANGER" )
g_pPictureDanger:SetPoint
{  
	ADD_SIZE_X = -6,
	ADD_SIZE_Y = -2,

	"LEFT_TOP		= D3DXVECTOR2(2+38+167-84+21-30+4,2+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}


g_pStaticTime = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTime )
g_pStaticTime:SetName( "TIME" )

-- 분 - 십의 자리
g_pPictureTime = g_pUIDialog:CreatePicture() -- 0
g_pStaticTime:AddPicture( g_pPictureTime )
g_pPictureTime:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_NUM_0" )
g_pPictureTime:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+19,23+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

-- 분 - 일의 자리
g_pPictureTime = g_pUIDialog:CreatePicture() -- 1
g_pStaticTime:AddPicture( g_pPictureTime )
g_pPictureTime:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_NUM_0" )
g_pPictureTime:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+11+19,23+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- :
g_pPictureTime = g_pUIDialog:CreatePicture() -- 2
g_pStaticTime:AddPicture( g_pPictureTime )
g_pPictureTime:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_TIME_CENTER" )
g_pPictureTime:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+23+19,24+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 초 - 십의 자리
g_pPictureTime = g_pUIDialog:CreatePicture() -- 3
g_pStaticTime:AddPicture( g_pPictureTime )
g_pPictureTime:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_NUM_0" )
g_pPictureTime:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+29+19,23+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 초 - 일의 자리
g_pPictureTime = g_pUIDialog:CreatePicture() -- 4
g_pStaticTime:AddPicture( g_pPictureTime )
g_pPictureTime:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_NUM_0" )
g_pPictureTime:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+29+11+19,23+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 툴팁을 위한 버튼
g_pButton_Info = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Info )
g_pButton_Info:SetName( "WorldMissionUIGuideDesc" )
g_pButton_Info:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButton_Info:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButton_Info:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButton_Info:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(247,46)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Info:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(247,46)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Info:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(247,46)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Info:SetGuideDesc( STR_ID_24083 )
g_pButton_Info:SetGuideDescOffsetPos( D3DXVECTOR2(0,28) )