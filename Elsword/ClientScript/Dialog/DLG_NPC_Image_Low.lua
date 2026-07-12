-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_NPC_LOW" )
g_pUIDialog:SetPos( 66, 156 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStaticNPC_Image_Low = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNPC_Image_Low )
g_pStaticNPC_Image_Low:SetName( "StaticNPC_Image_Low" )



g_pPictureNPC_Image_Low = g_pUIDialog:CreatePicture()
g_pStaticNPC_Image_Low:AddPicture(g_pPictureNPC_Image_Low)

g_pPictureNPC_Image_Low:SetTex( "DLG_NPC_Image_Low.tga", "NUI_NPC_Image_Low" )

g_pPictureNPC_Image_Low:SetPoint
{
	   ADD_SIZE_Y= 110,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
