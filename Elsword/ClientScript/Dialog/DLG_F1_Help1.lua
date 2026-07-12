-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_F1_Help1" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pStaticF1_Help1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF1_Help1 )
g_pStaticF1_Help1:SetName( "StaticF1_Help1" )






-------------옅은 검정배경-------------- 
g_pPictureF1_Help1_Bg_Black= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Bg_Black)

g_pPictureF1_Help1_Bg_Black:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK"  )

g_pPictureF1_Help1_Bg_Black:SetPoint
{

		  ADD_SIZE_X=1024 ,
		  ADD_SIZE_Y=768 ,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


-------------각성구슬--------------------
g_pPictureF1_Help1_Shake_Up_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Shake_Up_Box)

g_pPictureF1_Help1_Shake_Up_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box1"  )

g_pPictureF1_Help1_Shake_Up_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(42+8,131+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Shake_Up_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Shake_Up_Text)

g_pPictureF1_Help1_Shake_Up_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Shake_Up"  )

g_pPictureF1_Help1_Shake_Up_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(61+12,179+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------스킬
g_pPictureF1_Help1_Skill_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Skill_Box)

g_pPictureF1_Help1_Skill_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box1"  )

g_pPictureF1_Help1_Skill_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(197+7+20,131+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Skill_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Skill_Text)

g_pPictureF1_Help1_Skill_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Skill"  )

g_pPictureF1_Help1_Skill_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(232+10+20,180+17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------아이템
g_pPictureF1_Help1_Item_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Item_Box)

g_pPictureF1_Help1_Item_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box3"  )

g_pPictureF1_Help1_Item_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(31,614+28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Item_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Item_Text)

g_pPictureF1_Help1_Item_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Item"  )

g_pPictureF1_Help1_Item_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(58,630+28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
----경험치
g_pPictureF1_Help1_Experience_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Experience_Box)

g_pPictureF1_Help1_Experience_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box3"  )

g_pPictureF1_Help1_Experience_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(168,671)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Experience_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Experience_Text)

g_pPictureF1_Help1_Experience_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Experience"  )

g_pPictureF1_Help1_Experience_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(195,686)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]


-----부활석/점수
g_pPictureF1_Help1_Restore_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Restore_Box)

g_pPictureF1_Help1_Restore_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box2_1"  )

g_pPictureF1_Help1_Restore_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(387+62,8-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureF1_Help1_Restore_Box2= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Restore_Box2)

g_pPictureF1_Help1_Restore_Box2:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box2_2"  )

g_pPictureF1_Help1_Restore_Box2:SetPoint
{
	    ADD_SIZE_X=25,
	"LEFT_TOP		= D3DXVECTOR2(387+80+62,8-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Restore_Box3= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Restore_Box3)

g_pPictureF1_Help1_Restore_Box3:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box2_3"  )

g_pPictureF1_Help1_Restore_Box3:SetPoint
{
	    ADD_SIZE_X=30,
	"LEFT_TOP		= D3DXVECTOR2(387+80+10+62,8-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureF1_Help1_Restore_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Restore_Text)

g_pPictureF1_Help1_Restore_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Restore"  )

g_pPictureF1_Help1_Restore_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(437+5+62,24-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------HP
g_pPictureF1_Help1_Hp_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Hp_Box)

g_pPictureF1_Help1_Hp_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box2"  )

g_pPictureF1_Help1_Hp_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(386+68,69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Hp_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Hp_Text)

g_pPictureF1_Help1_Hp_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Hp"  )

g_pPictureF1_Help1_Hp_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(441+68,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





------남은 몬스터
g_pPictureF1_Help1_Monster_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Monster_Box)

g_pPictureF1_Help1_Monster_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box4"  )

g_pPictureF1_Help1_Monster_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(710-10,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Monster_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Monster_Text)

g_pPictureF1_Help1_Monster_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Monster"  )

g_pPictureF1_Help1_Monster_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(730-10,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureF1_Help1_Mini_Map_Box= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Mini_Map_Box)

g_pPictureF1_Help1_Mini_Map_Box:SetTex( "DLG_Common_New_Texture28.tga", "F1_Talk_Box1"  )

g_pPictureF1_Help1_Mini_Map_Box:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(909,106)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureF1_Help1_Mini_Map_Text= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help1_Mini_Map_Text)

g_pPictureF1_Help1_Mini_Map_Text:SetTex( "DLG_Common_New_Texture28.tga", "F1_Mini_Map"  )

g_pPictureF1_Help1_Mini_Map_Text:SetPoint
{
	   
	"LEFT_TOP		= D3DXVECTOR2(938,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPictureF1_Help2_Text1= g_pUIDialog:CreatePicture()
g_pStaticF1_Help1:AddPicture( g_pPictureF1_Help2_Text1)

g_pPictureF1_Help2_Text1:SetTex( "DLG_Common_New_Texture29.tga", "F1_Guaide_Text"  )

g_pPictureF1_Help2_Text1:SetPoint
{
          
	"LEFT_TOP		= D3DXVECTOR2(313,505+83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










