-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )




-- 캐릭터 생성 및 전직 추가시 아이콘 추가
--------------------------------------------  엘소드  ----------------------------------


g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "user" )



g_pPicture_elsword = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_elsword )
g_pPicture_elsword:SetIndex( UNIT_CLASS["UC_ELSWORD_SWORDMAN"] )
g_pPicture_elsword:SetTex( "DLG_UI_Common_Texture02.TGA", "elsword_base" )

g_pPicture_elsword:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(1,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







----------------------------------     캐릭터 레벨     -------------------------------





--------------- 10자리 수


g_pStaticten = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticten )
g_pStaticten:SetName( "ten" )




g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )

g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )

g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )

g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_four )

g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )

g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_five )

g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )

g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_six )

g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )

g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_seven )

g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )

g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_eight )

g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )

g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_nine )

g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )

g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------- 한자릿 수

g_pStaticone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticone )
g_pStaticone:SetName( "one" )



g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_zero )

g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )

g_pPicture_zero:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )

g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two= g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )

g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )

g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_four )

g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )

g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_five )

g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )

g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_six )

g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )

g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_seven )

g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )

g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_eight )

g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )

g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_nine )

g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )

g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




