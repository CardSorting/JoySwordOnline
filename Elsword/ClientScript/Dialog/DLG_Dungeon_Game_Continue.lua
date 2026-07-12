-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Game_Continue" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )





g_pStaticRestore_Continue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue )
g_pStaticRestore_Continue:SetName( "Restore_Continue_Count" )
g_pStaticRestore_Continue:SetOffsetPos( 15, -10 )





----------------------숫자------------------------ 

g_pPictureRestore_Continue_Num0= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num0)

g_pPictureRestore_Continue_Num0:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_0"  )
g_pPictureRestore_Continue_Num0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 467,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRestore_Continue_Num1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num1)

g_pPictureRestore_Continue_Num1:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_1"  )
g_pPictureRestore_Continue_Num1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 492,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Num2= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num2)

g_pPictureRestore_Continue_Num2:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_2"  )
g_pPictureRestore_Continue_Num2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 468,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Num3= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num3)

g_pPictureRestore_Continue_Num3:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_3"  )
g_pPictureRestore_Continue_Num3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 470,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRestore_Continue_Num4= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num4)

g_pPictureRestore_Continue_Num4:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_4"  )
g_pPictureRestore_Continue_Num4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 473,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRestore_Continue_Num5= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num5)

g_pPictureRestore_Continue_Num5:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_5"  )
g_pPictureRestore_Continue_Num5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 471,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRestore_Continue_Num6= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num6)

g_pPictureRestore_Continue_Num6:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_6"  )
g_pPictureRestore_Continue_Num6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 474,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRestore_Continue_Num7= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num7)

g_pPictureRestore_Continue_Num7:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_7"  )
g_pPictureRestore_Continue_Num7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 474,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Num8= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num8)

g_pPictureRestore_Continue_Num8:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_8"  )
g_pPictureRestore_Continue_Num8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 470,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRestore_Continue_Num9= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num9)

g_pPictureRestore_Continue_Num9:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_9"  )
g_pPictureRestore_Continue_Num9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 470,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Num10= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Num10)

g_pPictureRestore_Continue_Num10:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Num_10"  )
g_pPictureRestore_Continue_Num10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 458,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------컨티뉴-------------------
g_pPictureRestore_Continue= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue)

g_pPictureRestore_Continue:SetTex( "DLG_Common_New_Texture24.tga", "Continue"  )
g_pPictureRestore_Continue:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 310+55,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticRestore_Continue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue )
g_pStaticRestore_Continue:SetName( "Restore_Continue" )










-----부활 메세지와 캐시창--------- 
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_Common_New_Texture23.tga", "Continue_Message_1"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 333+65,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)

g_pPictureRestore_Continue_Bg1:SetTex( "DLG_Common_New_Texture24.tga", "Restore_Bg1"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 383-17,471)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------부활석갯수------------------- 


g_pStaticRestore_Continue:AddString
{
	-- MSG    			= "X9999",
	FONT_INDEX      = XUF_DODUM_20_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(648,502)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






---------------------------------------------
---------부활석,캐시구입창-----------
---------------------------------------------


g_pStaticRestore_Continue_Cash = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue_Cash )
g_pStaticRestore_Continue_Cash:SetName( "Restore_Continue_Cash" )



-----부활 메세지와 캐시창--------- 
g_pPictureRestore_Continue_Cash_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Cash:AddPicture( g_pPictureRestore_Continue_Cash_Message)

g_pPictureRestore_Continue_Cash_Message:SetTex( "DLG_Common_New_Texture24.tga", "CONTINUE_MESSAGE_2"  )
g_pPictureRestore_Continue_Cash_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 333+7,412-40+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Continue_Cash_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Cash:AddPicture( g_pPictureRestore_Continue_Cash_Bg1)

g_pPictureRestore_Continue_Cash_Bg1:SetTex( "DLG_Common_New_Texture24.tga", "Restore_Bg2"  )
g_pPictureRestore_Continue_Cash_Bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 383-17,471)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------부활석갯수------------------- 


g_pStaticRestore_Continue_Cash:AddString
{
	-- MSG    			= "X9999",
	FONT_INDEX      = XUF_DODUM_20_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(648,502)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------넥슨캐시---------------- 


g_pStaticRestore_Continue_Cash:AddString
{
	-- MSG    			= "9999",
	FONT_INDEX      = XUF_DODUM_20_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(648,502+44)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




 
 
 

g_pStaticRestore_Continue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue )
g_pStaticRestore_Continue:SetName( "Restore_Continue_End" )



----소환석 자기 메세지---------- 


g_pPictureRestore_Message_BlackBg_My= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Message_BlackBg_My)

g_pPictureRestore_Message_BlackBg_My:SetTex( "DLG_Common_New_Texture14.tga", "Black"  )
g_pPictureRestore_Message_BlackBg_My:SetPoint
{
       ADD_SIZE_X = 332,
    ADD_SIZE_Y = 60,
	"LEFT_TOP		= D3DXVECTOR2( 118,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Message_My= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Message_My)

g_pPictureRestore_Message_My:SetTex( "DLG_Common_New_Texture23.tga", "Restore_Message1"  )
g_pPictureRestore_Message_My:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 126,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureRestore_Message_My2= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Message_My2)

g_pPictureRestore_Message_My2:SetTex( "DLG_Common_New_Texture23.tga", "Restore_Message2"  )
g_pPictureRestore_Message_My2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 126,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pStaticRestore_Continue_Cash = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue_Cash )
g_pStaticRestore_Continue_Cash:SetName( "Restore_Continue_End_Cash" )



----소환석 자기 메세지-캐시---------- 


g_pPictureRestore_Message_BlackBg_My= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Cash:AddPicture( g_pPictureRestore_Message_BlackBg_My)

g_pPictureRestore_Message_BlackBg_My:SetTex( "DLG_Common_New_Texture14.tga", "Black"  )
g_pPictureRestore_Message_BlackBg_My:SetPoint
{
       ADD_SIZE_X = 332,
    ADD_SIZE_Y = 60,
	"LEFT_TOP		= D3DXVECTOR2( 118,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRestore_Message_My_Cash= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Cash:AddPicture( g_pPictureRestore_Message_My_Cash)

g_pPictureRestore_Message_My_Cash:SetTex( "DLG_Common_New_Texture23.tga", "Restore_Message3"  )
g_pPictureRestore_Message_My_Cash:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 126,40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureRestore_Message_My_Cash2= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Cash:AddPicture( g_pPictureRestore_Message_My_Cash2)

g_pPictureRestore_Message_My_Cash2:SetTex( "DLG_Common_New_Texture23.tga", "Restore_Message4"  )
g_pPictureRestore_Message_My_Cash2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 126,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






