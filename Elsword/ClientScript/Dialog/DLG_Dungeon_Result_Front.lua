-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Result_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )






IncludeLua( "DLG_Dungeon_Result_Reward_Box.lua" )



g_pStaticReward_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReward_Title )
g_pStaticReward_Title:SetName( "Reward_Title" )
g_pStaticReward_Title:SetShow( false )


----Reward타이틀---------------- 
g_pPictureResult_Title = g_pUIDialog:CreatePicture()
g_pStaticReward_Title:AddPicture( g_pPictureResult_Title )

g_pPictureResult_Title:SetTex( "DLG_Common_New_Texture16.tga", "Reward_Title" )

g_pPictureResult_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(8,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pStaticResult_Title= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Title)
g_pStaticResult_Title:SetName( "Result_Title" )




g_pPictureDungeon_Result_Title = g_pUIDialog:CreatePicture()
g_pStaticResult_Title:AddPicture( g_pPictureDungeon_Result_Title )

g_pPictureDungeon_Result_Title:SetTex( "DLG_Common_New_Texture16.tga", "Result_Title" )

g_pPictureDungeon_Result_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(8,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
