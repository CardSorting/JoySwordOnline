-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pStatic_Dungeon_Reward_Choice_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_Reward_Choice_Item )
g_pStatic_Dungeon_Reward_Choice_Item:SetName( "Dungeon_Reward_Choice_Item_Black" )
g_pStatic_Dungeon_Reward_Choice_Item:SetShow( false )



g_pPicture_Dungeon_Reward_Choice_Item_Black = g_pUIDialog:CreatePicture()
g_pStatic_Dungeon_Reward_Choice_Item:AddPicture( g_pPicture_Dungeon_Reward_Choice_Item_Black )

g_pPicture_Dungeon_Reward_Choice_Item_Black:SetTex( "DLG_First_Loading2.TGA", "Black_BG" )

g_pPicture_Dungeon_Reward_Choice_Item_Black:SetPoint
{

 USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Dungeon_Reward_Choice_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_Reward_Choice_Item )
g_pStatic_Dungeon_Reward_Choice_Item:SetName( "Dungeon_Reward_Choice_Item" )
g_pStatic_Dungeon_Reward_Choice_Item:SetShow( false )




g_pPicture_Dungeon_Reward_Choice_Item1 = g_pUIDialog:CreatePicture()
g_pStatic_Dungeon_Reward_Choice_Item:AddPicture( g_pPicture_Dungeon_Reward_Choice_Item1 )

g_pPicture_Dungeon_Reward_Choice_Item1:SetTex( "DLG_First_Loading2.TGA", "Choice_Item1" )

g_pPicture_Dungeon_Reward_Choice_Item1:SetPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(263,478)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Dungeon_Reward_Choice_Item2 = g_pUIDialog:CreatePicture()
g_pStatic_Dungeon_Reward_Choice_Item:AddPicture( g_pPicture_Dungeon_Reward_Choice_Item2 )

g_pPicture_Dungeon_Reward_Choice_Item2:SetTex( "DLG_First_Loading2.TGA", "Choice_Item2" )

g_pPicture_Dungeon_Reward_Choice_Item2:SetPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(472,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

