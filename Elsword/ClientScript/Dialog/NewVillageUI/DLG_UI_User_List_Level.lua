-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticuser_list = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser_list )
g_pStaticuser_list:SetName( "user_list" )




---------------------------------     캐릭터 레벨     -------------------------------


--------------- 10자리 수

g_pStaticten = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticten )
g_pStaticten:SetName( "ten" )


g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_zero )

g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_four )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )

g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_five )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )

g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_six )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )

g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_seven )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )

g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_eight )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )

g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_nine )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )

g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------------- 한자릿 수

g_pStaticone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticone )
g_pStaticone:SetName( "one" )



g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_zero )

g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two= g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_four )

g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_five )

g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_six )

g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_seven )

g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_eight )

g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_nine )

g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


