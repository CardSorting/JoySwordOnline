-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 795, 69 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
g_pUIDialog:SetCloseOnFocusOut( true )



------------------------------  상의  ------------------------------------


g_pStaticEquip_Coat_Durability = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEquip_Coat_Durability )
g_pStaticEquip_Coat_Durability:SetName( "Equip_Coat_Durability" )




-----20%미만일때
g_pPicture_Coat = g_pUIDialog:CreatePicture()
g_pStaticEquip_Coat_Durability:AddPicture( g_pPicture_Coat )
g_pPicture_Coat:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_coat_yellow" )
g_pPicture_Coat:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----0%일때
g_pPicture_Coat = g_pUIDialog:CreatePicture()
g_pStaticEquip_Coat_Durability:AddPicture( g_pPicture_Coat )
g_pPicture_Coat:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_coat_red" )
g_pPicture_Coat:SetPoint
{
	
	--ADD_SIZE_X = -1,
	--ADD_SIZE_Y = -1,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--------------------------     하의    ----------------------------------

g_pStaticEquip_Pant_Durability = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEquip_Pant_Durability )
g_pStaticEquip_Pant_Durability:SetName( "Equip_Pant_Durability" )


	

-----20%미만일때
g_pPicture_Pant = g_pUIDialog:CreatePicture()
g_pStaticEquip_Pant_Durability:AddPicture( g_pPicture_Pant )
g_pPicture_Pant:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_pant_yellow" )
g_pPicture_Pant:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----0%일때
g_pPicture_Pant = g_pUIDialog:CreatePicture()
g_pStaticEquip_Pant_Durability:AddPicture( g_pPicture_Pant )
g_pPicture_Pant:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_pant_red" )
g_pPicture_Pant:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--------------------------------   신발   ---------------------------------

g_pStaticEquip_Shoes_Durability = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEquip_Shoes_Durability )
g_pStaticEquip_Shoes_Durability:SetName( "Equip_Shoes_Durability" )




-----20%미만일때
g_pPicture_Shoes = g_pUIDialog:CreatePicture()
g_pStaticEquip_Shoes_Durability:AddPicture( g_pPicture_Shoes )
g_pPicture_Shoes:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_shoes_yellow" )
g_pPicture_Shoes:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----0%일때
g_pPicture_Shoes = g_pUIDialog:CreatePicture()
g_pStaticEquip_Shoes_Durability:AddPicture( g_pPicture_Shoes )
g_pPicture_Shoes:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_shoes_red" )
g_pPicture_Shoes:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








 
-------------------------------    장갑   ------------------------------------

g_pStaticEquip_Glover_Durability = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEquip_Glover_Durability )
g_pStaticEquip_Glover_Durability:SetName( "Equip_Glover_Durability" )




-----20%미만일때
g_pPicture_Glover = g_pUIDialog:CreatePicture()
g_pStaticEquip_Glover_Durability:AddPicture( g_pPicture_Glover )
g_pPicture_Glover:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_glover_yellow" )
g_pPicture_Glover:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----0%일때
g_pPicture_Glover = g_pUIDialog:CreatePicture()
g_pStaticEquip_Glover_Durability:AddPicture( g_pPicture_Glover )
g_pPicture_Glover:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_glover_red" )
g_pPicture_Glover:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







------------------------------   무기    ----------------------------

g_pStaticEquip_Weapon_Durability = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEquip_Weapon_Durability )
g_pStaticEquip_Weapon_Durability:SetName( "Equip_Weapon_Durability" )





-----20%미만일때
g_pPicture_Weapon = g_pUIDialog:CreatePicture()
g_pStaticEquip_Weapon_Durability:AddPicture( g_pPicture_Weapon )
g_pPicture_Weapon:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_weapon_yellow" )
g_pPicture_Weapon:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----0%일때
g_pPicture_Weapon = g_pUIDialog:CreatePicture()
g_pStaticEquip_Weapon_Durability:AddPicture( g_pPicture_Weapon )
g_pPicture_Weapon:SetTex( "DLG_UI_Common_Texture09.tga", "Euqip_weapon_red" )
g_pPicture_Weapon:SetPoint
{
	
	
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
