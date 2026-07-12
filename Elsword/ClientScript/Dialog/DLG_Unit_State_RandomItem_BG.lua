-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "RandomItem_BG" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_ATTRACTION_ITEM_DUMMY"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, -100, 0 ) )

g_pStatic_Dungeon_Reward_Choice_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Dungeon_Reward_Choice_Item )
g_pStatic_Dungeon_Reward_Choice_Item:SetName( "Choice_Item_Black" )



g_pPicture_Dungeon_Reward_Choice_Item_Black = g_pUIDialog:CreatePicture()
g_pStatic_Dungeon_Reward_Choice_Item:AddPicture( g_pPicture_Dungeon_Reward_Choice_Item_Black )

g_pPicture_Dungeon_Reward_Choice_Item_Black:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPicture_Dungeon_Reward_Choice_Item_Black:SetPoint
{

 USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


