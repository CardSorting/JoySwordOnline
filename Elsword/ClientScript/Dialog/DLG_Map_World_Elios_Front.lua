-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-----(벨더 동쪽 Normal) 
g_pStaticWorld_Info_Velder_East_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_East_Normal )
g_pStaticWorld_Info_Velder_East_Normal:SetName( "World" )


g_pPictureWorld_Info_Velder_East_Normal_Opacity80_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Normal:AddPicture( g_pPictureWorld_Info_Velder_East_Normal_Opacity80_1 )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Normal:AddPicture( g_pPictureWorld_Info_Velder_East_Normal_Opacity80_2 )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Normal:AddPicture( g_pPictureWorld_Info_Velder_East_Normal_Opacity80_3 )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_East_Normal_Opacity80_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}


g_pPictureWorld_Info_Velder_East_Normal_Font_Normal = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Normal:AddPicture( g_pPictureWorld_Info_Velder_East_Normal_Font_Normal )

g_pPictureWorld_Info_Velder_East_Normal_Font_Normal:SetTex( "DLG_Common_Texture00.TGA", "Velder_East" )

g_pPictureWorld_Info_Velder_East_Normal_Font_Normal:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386,250)",
	"COLOR			= D3DXCOLOR(0.9,0.7,0.5,1.0)",
	
}


g_pPictureWorld_Info_Velder_East_Normal_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Normal:AddPicture( g_pPictureWorld_Info_Velder_East_Normal_Point )

g_pPictureWorld_Info_Velder_East_Normal_Point:SetTex( "DLG_Common_Button00.TGA", "Point1" )

g_pPictureWorld_Info_Velder_East_Normal_Point:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(346,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}




 -----(벨더 동쪽 Over) 
 
g_pStaticWorld_Info_Velder_East_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_East_Over )
g_pStaticWorld_Info_Velder_East_Over:SetName( "World" )


g_pPictureWorld_Info_Velder_East_Over_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Over:AddPicture( g_pPictureWorld_Info_Velder_East_Over_Opacity100_1 )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_East_Over_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Over:AddPicture( g_pPictureWorld_Info_Velder_East_Over_Opacity100_2 )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_East_Over_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Over:AddPicture( g_pPictureWorld_Info_Velder_East_Over_Opacity100_3 )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_East_Over_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pPictureWorld_Info_Velder_East_Over_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Over:AddPicture( g_pPictureWorld_Info_Velder_East_Over_Font_Over )

g_pPictureWorld_Info_Velder_East_Over_Font_Over:SetTex( "DLG_Common_Texture00.TGA", "Velder_East" )

g_pPictureWorld_Info_Velder_East_Over_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_East_Over_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Over:AddPicture( g_pPictureWorld_Info_Velder_East_Over_Point )

g_pPictureWorld_Info_Velder_East_Over_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_East_Over_Point:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(340,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}




 -----(벨더 동쪽 Down) 
 
g_pStaticWorld_Info_Velder_East_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_East_Down )
g_pStaticWorld_Info_Velder_East_Down:SetName( "World" )


g_pPictureWorld_Info_Velder_East_Down_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Down:AddPicture( g_pPictureWorld_Info_Velder_East_Down_Opacity100_1 )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_East_Down_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Down:AddPicture( g_pPictureWorld_Info_Velder_East_Down_Opacity100_2 )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_East_Down_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Down:AddPicture( g_pPictureWorld_Info_Velder_East_Down_Opacity100_3 )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_East_Down_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pPictureWorld_Info_Velder_East_Down_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Down:AddPicture( g_pPictureWorld_Info_Velder_East_Down_Font_Over )

g_pPictureWorld_Info_Velder_East_Down_Font_Over:SetTex( "DLG_Common_Texture00.TGA", "Velder_East" )

g_pPictureWorld_Info_Velder_East_Down_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_East_Down_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Down:AddPicture( g_pPictureWorld_Info_Velder_East_Down_Point )

g_pPictureWorld_Info_Velder_East_Down_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_East_Down_Point:SetPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(341,267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



--[[

 -----(벨더 동쪽 UnSelect)
g_pStaticWorld_Info_Velder_East_Unselect = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_East_Unselect )
g_pStaticWorld_Info_Velder_East_Unselect:SetName( "World" )


g_pPictureWorld_Info_Velder_East_Opacity60_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Unselect:AddPicture( g_pPictureWorld_Info_Velder_East_Opacity60_1 )

g_pPictureWorld_Info_Velder_East_Opacity60_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_East_Opacity60_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(374,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",

}

g_pPictureWorld_Info_Velder_East_Opacity60_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Unselect:AddPicture( g_pPictureWorld_Info_Velder_East_Opacity60_2 )

g_pPictureWorld_Info_Velder_East_Opacity60_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_East_Opacity60_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",

}

g_pPictureWorld_Info_Velder_East_Opacity60_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Unselect:AddPicture( g_pPictureWorld_Info_Velder_East_Opacity60_3 )

g_pPictureWorld_Info_Velder_East_Opacity60_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_East_Opacity60_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(454,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",

}



g_pPictureWorld_Info_Velder_East_Font_Unselect = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Unselect:AddPicture( g_pPictureWorld_Info_Velder_East_Font_Unselect )

g_pPictureWorld_Info_Velder_East_Font_Unselect:SetTex( "DLG_Common_Texture00.TGA", "Velder_East" )

g_pPictureWorld_Info_Velder_East_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,250)",
	"COLOR			= D3DXCOLOR(0.6, 0.6, 0.6, 1.0)",

}


g_pPictureWorld_Info_Velder_East_Point_Unselect = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_East_Unselect:AddPicture( g_pPictureWorld_Info_Velder_East_Point_Unselect )

g_pPictureWorld_Info_Velder_East_Point_Unselect:SetTex( "DLG_Common_Button00.TGA", "Point3" )

g_pPictureWorld_Info_Velder_East_Point_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(346,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}


--]]



g_pButtonVelder_East = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_East )
g_pButtonVelder_East:SetName( "ButtonVelder_East" )
g_pButtonVelder_East:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_EAST"] )
--g_pButtonVelder_East:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

--g_pButtonVelder_East:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonVelder_East:SetNormalStatic( g_pStaticWorld_Info_Velder_East_Normal )
g_pButtonVelder_East:SetOverStatic( g_pStaticWorld_Info_Velder_East_Over )
g_pButtonVelder_East:SetDownStatic( g_pStaticWorld_Info_Velder_East_Down )

--g_pButtonVelder_East:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonVelder_East:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(341,266)",
	"RIGHT_TOP		= D3DXVECTOR2(374,266)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341,299)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374,299)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_East:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(341,266)",
	"RIGHT_TOP		= D3DXVECTOR2(374,266)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341,299)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_East:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(341,266)",
	"RIGHT_TOP		= D3DXVECTOR2(374,266)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341,299)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374,299)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_East:SetCustomMsgMouseUp( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_UP"] )




-------(벨더 북쪽 Normal) 



g_pStaticWorld_Info_Velder_North_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_North_Normal )
g_pStaticWorld_Info_Velder_North_Normal:SetName( "World" )


g_pPictureWorld_Info_Velder_North_Normal_Opacity80_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Normal:AddPicture( g_pPictureWorld_Info_Velder_North_Normal_Opacity80_1 )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(242,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Normal:AddPicture( g_pPictureWorld_Info_Velder_North_Normal_Opacity80_2 )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(253,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Normal:AddPicture( g_pPictureWorld_Info_Velder_North_Normal_Opacity80_3 )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_North_Normal_Opacity80_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(322,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}


g_pPictureWorld_Info_Velder_North_Normal_Font_Normal = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Normal:AddPicture( g_pPictureWorld_Info_Velder_North_Normal_Font_Normal )

g_pPictureWorld_Info_Velder_North_Normal_Font_Normal:SetTex( "DLG_Common_Texture00.TGA", "Velder_North" )

g_pPictureWorld_Info_Velder_North_Normal_Font_Normal:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(253,178)",
	"COLOR			= D3DXCOLOR(0.9,0.7,0.5,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Normal_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Normal:AddPicture( g_pPictureWorld_Info_Velder_North_Normal_Point )

g_pPictureWorld_Info_Velder_North_Normal_Point:SetTex( "DLG_Common_Button00.TGA", "Point1" )

g_pPictureWorld_Info_Velder_North_Normal_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(217,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}


------(벨더 북쪽 Over) 



g_pStaticWorld_Info_Velder_North_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_North_Over )
g_pStaticWorld_Info_Velder_North_Over:SetName( "World" )



g_pPictureWorld_Info_Velder_North_Over_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Over:AddPicture( g_pPictureWorld_Info_Velder_North_Over_Opacity100_1 )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(242,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_North_Over_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Over:AddPicture( g_pPictureWorld_Info_Velder_North_Over_Opacity100_2 )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(253,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_North_Over_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Over:AddPicture( g_pPictureWorld_Info_Velder_North_Over_Opacity100_3 )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_North_Over_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(322,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Over_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Over:AddPicture( g_pPictureWorld_Info_Velder_North_Over_Font_Over )

g_pPictureWorld_Info_Velder_North_Over_Font_Over:SetTex( "DLG_Common_Texture00.TGA", "Velder_North" )

g_pPictureWorld_Info_Velder_North_Over_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(253,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Over_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Over:AddPicture( g_pPictureWorld_Info_Velder_North_Over_Point )

g_pPictureWorld_Info_Velder_North_Over_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_North_Over_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211,197)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}



------(벨더 북쪽 Down) 



g_pStaticWorld_Info_Velder_North_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_North_Down )
g_pStaticWorld_Info_Velder_North_Down:SetName( "World" )



g_pPictureWorld_Info_Velder_North_Down_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Down:AddPicture( g_pPictureWorld_Info_Velder_North_Down_Opacity100_1 )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(242,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_North_Down_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Down:AddPicture( g_pPictureWorld_Info_Velder_North_Down_Opacity100_2 )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(253,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_North_Down_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Down:AddPicture( g_pPictureWorld_Info_Velder_North_Down_Opacity100_3 )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_North_Down_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(322,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Down_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Down:AddPicture( g_pPictureWorld_Info_Velder_North_Down_Font_Over )

g_pPictureWorld_Info_Velder_North_Down_Font_Over:SetTex( "DLG_Common_Texture00.TGA", "Velder_North" )

g_pPictureWorld_Info_Velder_North_Down_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(253,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Down_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Down:AddPicture( g_pPictureWorld_Info_Velder_North_Down_Point )

g_pPictureWorld_Info_Velder_North_Down_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_North_Down_Point:SetPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(212,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}


--[[

------(벨더 북쪽 UnSelect) 



g_pStaticWorld_Info_Velder_North_Unselect = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_North_Unselect )
g_pStaticWorld_Info_Velder_North_Unselect:SetName( "World" )





g_pPictureWorld_Info_Velder_North_Opacity60_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Unselect:AddPicture( g_pPictureWorld_Info_Velder_North_Opacity60_1 )

g_pPictureWorld_Info_Velder_North_Opacity60_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_North_Opacity60_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(242,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	
}

g_pPictureWorld_Info_Velder_North_Opacity60_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Unselect:AddPicture( g_pPictureWorld_Info_Velder_North_Opacity60_2 )

g_pPictureWorld_Info_Velder_North_Opacity60_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_North_Opacity60_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(253,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	
}

g_pPictureWorld_Info_Velder_North_Opacity60_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Unselect:AddPicture( g_pPictureWorld_Info_Velder_North_Opacity60_3 )

g_pPictureWorld_Info_Velder_North_Opacity60_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_North_Opacity60_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(322,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	
}

g_pPictureWorld_Info_Velder_North_Font_UnSelect = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Unselect:AddPicture( g_pPictureWorld_Info_Velder_North_Font_UnSelect )

g_pPictureWorld_Info_Velder_North_Font_UnSelect:SetTex( "DLG_Common_Texture00.TGA", "Velder_North" )

g_pPictureWorld_Info_Velder_North_Font_UnSelect:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(253,178)",
	"COLOR			= D3DXCOLOR(0.6,0.6,0.6,1.0)",
	
}


g_pPictureWorld_Info_Velder_North_Point_Unselect = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_North_Unselect:AddPicture( g_pPictureWorld_Info_Velder_North_Point_Unselect )

g_pPictureWorld_Info_Velder_North_Point_Unselect:SetTex( "DLG_Common_Button00.TGA", "Point3" )

g_pPictureWorld_Info_Velder_North_Point_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(217,201)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}




--]]








g_pButtonVelder_North = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_North )
g_pButtonVelder_North:SetName( "ButtonVelder_North" )

g_pButtonVelder_North:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_NORTH"] )
--g_pButtonVelder_North:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

--g_pButtonVelder_North:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonVelder_North:SetNormalStatic( g_pStaticWorld_Info_Velder_North_Normal )
g_pButtonVelder_North:SetOverStatic( g_pStaticWorld_Info_Velder_North_Over )
g_pButtonVelder_North:SetDownStatic( g_pStaticWorld_Info_Velder_North_Down )

--g_pButtonVelder_North:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonVelder_North:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(211,197)",
	"RIGHT_TOP		= D3DXVECTOR2(244,197)",
	"LEFT_BOTTOM		= D3DXVECTOR2(211,229)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(244,229)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_North:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(211,197)",
	"RIGHT_TOP		= D3DXVECTOR2(244,197)",
	"LEFT_BOTTOM		= D3DXVECTOR2(211,229)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(244,229)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_North:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(211,197)",
	"RIGHT_TOP		= D3DXVECTOR2(244,197)",
	"LEFT_BOTTOM		= D3DXVECTOR2(211,229)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(244,229)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_North:SetCustomMsgMouseUp( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_UP"] )




-------(벨더 남쪽Normal)



g_pStaticWorld_Info_Velder_South_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_South_Normal )
g_pStaticWorld_Info_Velder_South_Normal:SetName( "StaticWorld_Info_Velder_South_Normal" )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Normal:AddPicture( g_pPictureWorld_Info_Velder_South_Normal_Opacity80_1 )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(218,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Normal:AddPicture( g_pPictureWorld_Info_Velder_South_Normal_Opacity80_2 )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(229,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Normal:AddPicture( g_pPictureWorld_Info_Velder_South_Normal_Opacity80_3 )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_South_Normal_Opacity80_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(298,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}


g_pPictureWorld_Info_Velder_South_Normal_Font = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Normal:AddPicture( g_pPictureWorld_Info_Velder_South_Normal_Font )

g_pPictureWorld_Info_Velder_South_Normal_Font:SetTex( "DLG_Common_Texture00.TGA", "Velder_South" )

g_pPictureWorld_Info_Velder_South_Normal_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,266)",
	"COLOR			= D3DXCOLOR(0.9,0.7,0.5,1.0)",

}


g_pPictureWorld_Info_Velder_South_Normal_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Normal:AddPicture( g_pPictureWorld_Info_Velder_South_Normal_Point )

g_pPictureWorld_Info_Velder_South_Normal_Point:SetTex( "DLG_Common_Button00.TGA", "Point1" )

g_pPictureWorld_Info_Velder_South_Normal_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(197,290)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}



-------(벨더 남쪽Over)

g_pStaticWorld_Info_Velder_South_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_South_Over )
g_pStaticWorld_Info_Velder_South_Over:SetName( "StaticWorld_Info_Velder_South_Over" )


g_pPictureWorld_Info_Velder_South_Over_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Over:AddPicture( g_pPictureWorld_Info_Velder_South_Over_Opacity100_1 )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(218,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Over_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Over:AddPicture( g_pPictureWorld_Info_Velder_South_Over_Opacity100_2 )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(229,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Over_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Over:AddPicture( g_pPictureWorld_Info_Velder_South_Over_Opacity100_3 )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_South_Over_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(298,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Over_Font = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Over:AddPicture( g_pPictureWorld_Info_Velder_South_Over_Font )

g_pPictureWorld_Info_Velder_South_Over_Font:SetTex( "DLG_Common_Texture00.TGA", "Velder_South" )

g_pPictureWorld_Info_Velder_South_Over_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",

}


g_pPictureWorld_Info_Velder_South_Over_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Over:AddPicture( g_pPictureWorld_Info_Velder_South_Over_Point )

g_pPictureWorld_Info_Velder_South_Over_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_South_Over_Point:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(191,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}








-------(벨더 남쪽Down)

g_pStaticWorld_Info_Velder_South_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Velder_South_Down )
g_pStaticWorld_Info_Velder_South_Down:SetName( "StaticWorld_Info_Velder_South_Down" )


g_pPictureWorld_Info_Velder_South_Down_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Down:AddPicture( g_pPictureWorld_Info_Velder_South_Down_Opacity100_1 )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(218,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Down_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Down:AddPicture( g_pPictureWorld_Info_Velder_South_Down_Opacity100_2 )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(229,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Down_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Down:AddPicture( g_pPictureWorld_Info_Velder_South_Down_Opacity100_3 )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Velder_South_Down_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(298,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Velder_South_Down_Font = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Down:AddPicture( g_pPictureWorld_Info_Velder_South_Down_Font )

g_pPictureWorld_Info_Velder_South_Down_Font:SetTex( "DLG_Common_Texture00.TGA", "Velder_South" )

g_pPictureWorld_Info_Velder_South_Down_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",

}


g_pPictureWorld_Info_Velder_South_Down_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Velder_South_Down:AddPicture( g_pPictureWorld_Info_Velder_South_Down_Point )

g_pPictureWorld_Info_Velder_South_Down_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Velder_South_Down_Point:SetPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(192,287)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}








g_pButtonVelder_South = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonVelder_South )
g_pButtonVelder_South:SetName( "ButtonVelder_South" )
g_pButtonVelder_South:AddDummyInt( LOCAL_MAP_ID["LMI_VELDER_SOUTH"] )
--g_pButtonVelder_South:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

--g_pButtonVelder_South:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonVelder_South:SetNormalStatic( g_pStaticWorld_Info_Velder_South_Normal )
g_pButtonVelder_South:SetOverStatic( g_pStaticWorld_Info_Velder_South_Over )
g_pButtonVelder_South:SetDownStatic( g_pStaticWorld_Info_Velder_South_Down )

--g_pButtonVelder_South:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonVelder_South:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(192,286)",
	"RIGHT_TOP		= D3DXVECTOR2(229,286)",
	"LEFT_BOTTOM		= D3DXVECTOR2(192,318)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(229,318)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_South:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(192,286)",
	"RIGHT_TOP		= D3DXVECTOR2(229,286)",
	"LEFT_BOTTOM		= D3DXVECTOR2(192,318)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(229,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_South:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(192,286)",
	"RIGHT_TOP		= D3DXVECTOR2(229,286)",
	"LEFT_BOTTOM		= D3DXVECTOR2(192,318)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(229,318)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonVelder_South:SetCustomMsgMouseUp( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_UP"] )











-----(알테라섬 Normal) 


g_pStaticWorld_Info_Altera_Island_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Altera_Island_Normal )
g_pStaticWorld_Info_Altera_Island_Normal:SetName( "Altera_Island_Normal" )


g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Normal:AddPicture( g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_1 )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Normal:AddPicture( g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_2 )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Normal:AddPicture( g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_3 )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Altera_Island_Normal_Opacity80_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	
}


g_pPictureWorld_Info_Altera_Island_Normal_Font_Normal = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Normal:AddPicture( g_pPictureWorld_Info_Altera_Island_Normal_Font_Normal )

g_pPictureWorld_Info_Altera_Island_Normal_Font_Normal:SetTex( "DLG_Common_New_Texture49.TGA", "Altera" )

g_pPictureWorld_Info_Altera_Island_Normal_Font_Normal:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386+55,250+52)",
	"COLOR			= D3DXCOLOR(0.9,0.7,0.5,1.0)",
	
}


g_pPictureWorld_Info_Altera_Island_Normal_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Normal:AddPicture( g_pPictureWorld_Info_Altera_Island_Normal_Point )

g_pPictureWorld_Info_Altera_Island_Normal_Point:SetTex( "DLG_Common_Button00.TGA", "Point1" )

g_pPictureWorld_Info_Altera_Island_Normal_Point:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(346+60,271+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}




 -----(알테라섬 Over) 
 
g_pStaticWorld_Info_Altera_Island_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Altera_Island_Over )
g_pStaticWorld_Info_Altera_Island_Over:SetName( "Altera_Island_Over" )


g_pPictureWorld_Info_Altera_Island_Over_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Over:AddPicture( g_pPictureWorld_Info_Altera_Island_Over_Opacity100_1 )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Over:AddPicture( g_pPictureWorld_Info_Altera_Island_Over_Opacity100_2 )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Over:AddPicture( g_pPictureWorld_Info_Altera_Island_Over_Opacity100_3 )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Altera_Island_Over_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pPictureWorld_Info_Altera_Island_Over_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Over:AddPicture( g_pPictureWorld_Info_Altera_Island_Over_Font_Over )

g_pPictureWorld_Info_Altera_Island_Over_Font_Over:SetTex( "DLG_Common_New_Texture49.TGA", "Altera" )

g_pPictureWorld_Info_Altera_Island_Over_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386+55,250+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Altera_Island_Over_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Over:AddPicture( g_pPictureWorld_Info_Altera_Island_Over_Point )

g_pPictureWorld_Info_Altera_Island_Over_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Altera_Island_Over_Point:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(340+60,266+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}




 -----(알테라섬 Down) 
 
g_pStaticWorld_Info_Altera_Island_Down = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info_Altera_Island_Down )
g_pStaticWorld_Info_Altera_Island_Down:SetName( "Altera_Island_Down" )


g_pPictureWorld_Info_Altera_Island_Down_Opacity100_1 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Down:AddPicture( g_pPictureWorld_Info_Altera_Island_Down_Opacity100_1 )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_1:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox1" )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(374+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_2 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Down:AddPicture( g_pPictureWorld_Info_Altera_Island_Down_Opacity100_2 )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_2:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox2" )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_2:SetPoint
{
    ADD_SIZE_X = 68,
	"LEFT_TOP		= D3DXVECTOR2(385+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_3 = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Down:AddPicture( g_pPictureWorld_Info_Altera_Island_Down_Opacity100_3 )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_3:SetTex( "DLG_Common_Texture01.TGA", "World_InfoBox3" )

g_pPictureWorld_Info_Altera_Island_Down_Opacity100_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(454+60,244+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pPictureWorld_Info_Altera_Island_Down_Font_Over = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Down:AddPicture( g_pPictureWorld_Info_Altera_Island_Down_Font_Over )

g_pPictureWorld_Info_Altera_Island_Down_Font_Over:SetTex( "DLG_Common_New_Texture49.TGA", "Altera" )

g_pPictureWorld_Info_Altera_Island_Down_Font_Over:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(386+55,250+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	
}


g_pPictureWorld_Info_Altera_Island_Down_Point = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info_Altera_Island_Down:AddPicture( g_pPictureWorld_Info_Altera_Island_Down_Point )

g_pPictureWorld_Info_Altera_Island_Down_Point:SetTex( "DLG_Common_Button00.TGA", "Point0" )

g_pPictureWorld_Info_Altera_Island_Down_Point:SetPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(341+60,267+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}









g_pButtonAltera_Island = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAltera_Island )
g_pButtonAltera_Island:SetName( "ButtonAltera_Island" )
g_pButtonAltera_Island:AddDummyInt( LOCAL_MAP_ID["LMI_ALTERA_ISLAND"] )
--g_pButtonAltera_Island:SetNormalTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Normal" )

--g_pButtonAltera_Island:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

g_pButtonAltera_Island:SetNormalStatic( g_pStaticWorld_Info_Altera_Island_Normal )
g_pButtonAltera_Island:SetOverStatic( g_pStaticWorld_Info_Altera_Island_Over )
g_pButtonAltera_Island:SetDownStatic( g_pStaticWorld_Info_Altera_Island_Down )

--g_pButtonAltera_Island:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonAltera_Island:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(341+60,266+55)",
	"RIGHT_TOP		= D3DXVECTOR2(374+60,266+55)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341+60,299+55)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374+60,299+55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(341+60,266+55)",
	"RIGHT_TOP		= D3DXVECTOR2(374+60,266+55)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341+60,299+55)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374+60,299+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(341+60,266+55)",
	"RIGHT_TOP		= D3DXVECTOR2(374+60,266+55)",
	"LEFT_BOTTOM		= D3DXVECTOR2(341+60,299+55)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(374+60,299+55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAltera_Island:SetCustomMsgMouseUp( STATE_WORLD_MAP_UI_CUSTOM_MSG["SWMUCM_LOCAL_BUTTON_UP"] )



