-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Game_Start_Count" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )





g_pStaticRestore_Count = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Count )
g_pStaticRestore_Count:SetName( "Restore_Count" )
g_pStaticRestore_Count:SetOffsetPos( 15, -10 )


----------------------숫자------------------------ 

g_pPictureRestore_Count_Num1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Count:AddPicture( g_pPictureRestore_Count_Num1)

g_pPictureRestore_Count_Num1:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "CONTINUE_1"  )
g_pPictureRestore_Count_Num1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 468,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Count_Num1:SetShow( false )



g_pPictureRestore_Count_Num2= g_pUIDialog:CreatePicture()
g_pStaticRestore_Count:AddPicture( g_pPictureRestore_Count_Num2)

g_pPictureRestore_Count_Num2:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "CONTINUE_2"  )
g_pPictureRestore_Count_Num2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 468,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Count_Num2:SetShow( false )



g_pPictureRestore_Count_Num3= g_pUIDialog:CreatePicture()
g_pStaticRestore_Count:AddPicture( g_pPictureRestore_Count_Num3)

g_pPictureRestore_Count_Num3:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "CONTINUE_3"  )
g_pPictureRestore_Count_Num3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 466,271)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Count_Num2:SetShow( true )




g_pStaticRestore_CountTitle = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_CountTitle )
g_pStaticRestore_CountTitle:SetName( "Restore_CountTitle" )

-------------카운트 타이틀-------------------
g_pStatic_COUNT_TITLE= g_pUIDialog:CreatePicture()
g_pStaticRestore_CountTitle:AddPicture( g_pStatic_COUNT_TITLE)

g_pStatic_COUNT_TITLE:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "COUNT"  )
g_pStatic_COUNT_TITLE:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355-2,197-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------카운트 타이틀-------------------
g_pStatic_COUNT_TITLE= g_pUIDialog:CreatePicture()
g_pStaticRestore_CountTitle:AddPicture( g_pStatic_COUNT_TITLE)

g_pStatic_COUNT_TITLE:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "COUNT_PVP"  )
g_pStatic_COUNT_TITLE:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(355-2,197-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}