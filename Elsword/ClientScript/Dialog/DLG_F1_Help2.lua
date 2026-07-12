-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_F1_Help2" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



g_pStaticF1_Help2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticF1_Help2 )
g_pStaticF1_Help2:SetName( "StaticF1_Help2" )








-------------옅은 검정배경-------------- 
g_pPictureF1_Help2_Bg_Black= g_pUIDialog:CreatePicture()
g_pStaticF1_Help2:AddPicture( g_pPictureF1_Help2_Bg_Black)

g_pPictureF1_Help2_Bg_Black:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK"  )

g_pPictureF1_Help2_Bg_Black:SetPoint
{

		  ADD_SIZE_X=1024 ,
		  ADD_SIZE_Y=768 ,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}




--------------도움말 배경-------------------


g_pPictureF1_Help2_Bg2= g_pUIDialog:CreatePicture()
g_pStaticF1_Help2:AddPicture( g_pPictureF1_Help2_Bg2)

g_pPictureF1_Help2_Bg2:SetTex( "DLG_UI_F1_Help02.tga", "F1_Key_Image2"  )

g_pPictureF1_Help2_Bg2:SetPoint
{
          
	"LEFT_TOP		= D3DXVECTOR2(590-14-10 ,111+53-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 스킬 차지 방식 도움말
g_pStatic_old = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_old )
g_pStatic_old:SetName( "g_pStatic_old" )

--[[
--(위치 수정 되었음)---------
g_pPictureF1_Help2_Bg1= g_pUIDialog:CreatePicture()
g_pStatic_old:AddPicture( g_pPictureF1_Help2_Bg1)

g_pPictureF1_Help2_Bg1:SetTex( "DLG_Common_New_Texture30.tga", "F1_Key_Image1"  )

g_pPictureF1_Help2_Bg1:SetPoint
{
   
 "LEFT_TOP  = D3DXVECTOR2(78,136+83+5)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
--]]









-- 스킬 단축키 방식 도움말
--------------- 새로운 키 셋팅
g_pStatic_new = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_new )
g_pStatic_new:SetName( "g_pStatic_new" )



g_pPicturekey = g_pUIDialog:CreatePicture()
g_pStatic_new:AddPicture( g_pPicturekey )

g_pPicturekey:SetTex( "DLG_UI_F1_Help01.tga", "new_key" )

g_pPicturekey:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(79+5-10,136+28)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
