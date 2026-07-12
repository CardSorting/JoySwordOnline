-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Game_Continue" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_2"] )



----------------------숫자------------------------ 

g_pStaticRestore_Continue_NUM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue_NUM )
g_pStaticRestore_Continue_NUM:SetName( "Restore_Continue_NUM" )

g_pPictureRestore_Continue_Num0= g_pUIDialog:CreatePicture() -- 0 
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num0)
g_pPictureRestore_Continue_Num0:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_0"  )
g_pPictureRestore_Continue_Num0:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num1= g_pUIDialog:CreatePicture() -- 1 
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num1)
g_pPictureRestore_Continue_Num1:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_1"  )
g_pPictureRestore_Continue_Num1:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2( 479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num2= g_pUIDialog:CreatePicture() -- 2 
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num2)
g_pPictureRestore_Continue_Num2:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_2"  )
g_pPictureRestore_Continue_Num2:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num3= g_pUIDialog:CreatePicture() -- 3
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num3)
g_pPictureRestore_Continue_Num3:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_3"  )
g_pPictureRestore_Continue_Num3:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num4= g_pUIDialog:CreatePicture() -- 4 
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num4)
g_pPictureRestore_Continue_Num4:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_4"  )
g_pPictureRestore_Continue_Num4:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num5= g_pUIDialog:CreatePicture() -- 5
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num5)
g_pPictureRestore_Continue_Num5:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_5"  )
g_pPictureRestore_Continue_Num5:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num6= g_pUIDialog:CreatePicture() -- 6
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num6)
g_pPictureRestore_Continue_Num6:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_6"  )
g_pPictureRestore_Continue_Num6:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num7= g_pUIDialog:CreatePicture() -- 7
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num7)
g_pPictureRestore_Continue_Num7:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_7"  )
g_pPictureRestore_Continue_Num7:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRestore_Continue_Num8= g_pUIDialog:CreatePicture() -- 8
g_pStaticRestore_Continue_NUM:AddPicture( g_pPictureRestore_Continue_Num8)
g_pPictureRestore_Continue_Num8:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "Continue_8"  )
g_pPictureRestore_Continue_Num8:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2( 479,245)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------컨티뉴(부활석 있을 때)-------------------
g_pStaticRestore_Continue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue )
g_pStaticRestore_Continue:SetName( "Restore_Continue" )

g_pPictureRestore_Continue= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue)
g_pPictureRestore_Continue:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CONTINUE"  )
g_pPictureRestore_Continue:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(310,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----컨티뉴 배경 
---상단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(381,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	"LEFT_TOP		= D3DXVECTOR2(400,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(402+234,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---중단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
     ADD_SIZE_Y=10,
	"LEFT_TOP		= D3DXVECTOR2(380,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	ADD_SIZE_Y=10,
	"LEFT_TOP		= D3DXVECTOR2(400,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
   ADD_SIZE_Y=10,
	"LEFT_TOP		= D3DXVECTOR2(402+234,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---하단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(381,441+13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	
	"LEFT_TOP		= D3DXVECTOR2(400,441+13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(402+238-4,441+13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---부활하려면 z키를 눌러주세요
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN1"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(396,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---부활석 소모
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN3"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(396,351+28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------부활석 하얀 배경
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)
g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "WHITE_BG"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(396+14,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--카운트를 끝내시려면 X키를 눌러주세요
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN4"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(415,433)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------부활석 텍스트
g_pPicture_Stone= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone)
g_pPicture_Stone:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "STONE"  )
g_pPicture_Stone:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(423,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------부활석 아이콘
g_pPicture_Stone_ICON= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone_ICON)
g_pPicture_Stone_ICON:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "STONE_ICON"  )
g_pPicture_Stone_ICON:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(423+46+40,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------부활석 갯수
g_pStaticRestore_Continue:AddString
{
	--MSG    			= "x9999",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(396+188,409)",
	"COLOR          = D3DXCOLOR(1.0,0.3,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--//========================================================================
-------------컨티뉴(부활석 없을 때)-------------------
g_pStaticRestore_Continue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue )
g_pStaticRestore_Continue:SetName( "Restore_Continue_Cash" )

g_pPictureRestore_Continue= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue)

g_pPictureRestore_Continue:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CONTINUE"  )
g_pPictureRestore_Continue:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(310,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----컨티뉴 배경 
---상단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(381,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	"LEFT_TOP		= D3DXVECTOR2(400,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(402+234,342)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---중단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
     ADD_SIZE_Y=49,
	"LEFT_TOP		= D3DXVECTOR2(380,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	ADD_SIZE_Y=49,
	"LEFT_TOP		= D3DXVECTOR2(400,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)

g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_MIDDLE"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
   ADD_SIZE_Y=49,
	"LEFT_TOP		= D3DXVECTOR2(402+234,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---하단
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(381,441+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=234,
	
	"LEFT_TOP		= D3DXVECTOR2(400,441+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_BOTTOM"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(402+238-4,441+52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---부활하려면 z키를 눌러주세요
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN1"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(396,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--캐쉬 소모
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN2"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(396+27,351+28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------부활석 하얀 배경
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)
g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "WHITE_BG"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(396+14,351+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------넥슨캐시 하얀 배경
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)
g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "WHITE_BG"  )
g_pPictureRestore_Continue_Message:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(396+14,351+56+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--카운트를 끝내시려면 X키를 눌러주세요
g_pPictureRestore_Continue_Message= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPictureRestore_Continue_Message)

g_pPictureRestore_Continue_Message:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EXPLAIN4"  )
g_pPictureRestore_Continue_Message:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(395+20,351+28+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------부활석 텍스트
g_pPicture_Stone= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone)
g_pPicture_Stone:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "STONE"  )
g_pPicture_Stone:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(423,413)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------부활석 아이콘
g_pPicture_Stone_ICON= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone_ICON)
g_pPicture_Stone_ICON:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "STONE_ICON"  )
g_pPicture_Stone_ICON:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(423+46+40,410)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------부활석 갯수
g_pStaticRestore_Continue:AddString
{
	--MSG    			= "x9999",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(396+188,351+63)",
	"COLOR          = D3DXCOLOR(1.0,0.3,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------넥슨 캐시 텍스트
g_pPicture_Stone= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone)
g_pPicture_Stone:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "NEXON"  )
g_pPicture_Stone:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(423,413+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------------넥슨 캐시 아이콘
g_pPicture_Stone_ICON= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue:AddPicture( g_pPicture_Stone_ICON)
g_pPicture_Stone_ICON:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CASH"  )
g_pPicture_Stone_ICON:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(421+54,410+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----넥슨캐시 갯수
g_pStaticRestore_Continue:AddString
{
	--MSG    			= "99999",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS            = D3DXVECTOR2(396+188,351+63+32)",
	"COLOR          = D3DXCOLOR(1.0,0.3,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-------------------------------------------



--======================================================================
---------카운트 종료 후 부활석 사용 가이드(부활석 있을때)
---배경
g_pStaticRestore_Continue_Guide = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRestore_Continue_Guide )
g_pStaticRestore_Continue_Guide:SetName( "Restore_Continue_End" )

g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Guide:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_LEFT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(406-50,652)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Guide:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_CENTER_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{
    ADD_SIZE_X=174+100,
	"LEFT_TOP		= D3DXVECTOR2(426-50,652)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureRestore_Continue_Bg1= g_pUIDialog:CreatePicture()
g_pStaticRestore_Continue_Guide:AddPicture( g_pPictureRestore_Continue_Bg1)
g_pPictureRestore_Continue_Bg1:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "BG_RIGHT_TOP"  )
g_pPictureRestore_Continue_Bg1:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(426+176+50,652)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------부활하려면 Z를 눌러주세요
g_pStaticRestore_Continue_Guide:AddString -- getstring(0)
{
	MSG    			= STR_ID_17325, --부활하려면 #CFFFF00'@1'#CX키를 눌러주세요.
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(508,667)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--[[
------Z
g_pStaticRestore_Continue_Guide:AddString
{
	MSG    			= "Z",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(503,667)",
	"COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]
------부활석 1개를 소모됩니다.
g_pStaticRestore_Continue_Guide:AddString -- getstring(1)
{
	MSG    			= STR_ID_17326, -- (부활석 1개가 소모됩니다)
	--MSG    			= STR_ID_17327 -- (150캐시가 소모됩니다)
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(508,667+20)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----필드
------05:00
g_pStaticRestore_Continue_Guide:AddString -- getstring(2)
{
	MSG    			= STR_ID_17328, -- #CFFFF00@1:@2후 또는 X키로 마을에서 재시작
	--MSG    			= STR_ID_17329 -- #CFFFF00'@1'키로 마을에서 재시작
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(508,661+49)",
	"COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--[[
------후 또는 X키로 마을에서 재시작
g_pStaticRestore_Continue_Guide:AddString
{
	MSG    			= "              후 또는\nX키로 마을에서 재시작",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(413+30,661+50)",
	"COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-----
----던전
---X키로 마을에서 재시작
g_pStaticRestore_Continue_Guide:AddString
{
	MSG    			= "X키로 마을에서 재시작",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(413+30,661+50+7)",
	"COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
---
--]]