-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Map_Select_Window_Instance" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


for i = 0, 2 do
	for j = 0, 3 do
		g_pUIDialog:AddDummyPos( D3DXVECTOR3( 151 + 100-6 + (j*107), 31 + 200 + (100*i), 0 )  )
	end

end

for i = 0, 1 do
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 42+88+8, 71 + 260 + ( 100 * i ), 0 )  )
end

function MapButtonAniOver( button, FileName, Key )
	
--[[
	button:SetOverAnimTex
	{		
		FileName		= FileName,
		KeyName			= Key,
	
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1.05,0.95)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.1,
	}
	
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(0.95,1.05)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
	}
	
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 2,
		fShowTime		= 0.2,
		
		bEndTexChange	= TRUE,
	}

--]]

	button:SetOverAnimTex
	{		
		FileName		= FileName,
		KeyName			= Key,
	
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1.2,1.2)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.01,
	}
	
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
		
		bEndTexChange	= TRUE,
	}
	



end



function MapButtonAniDown( button, FileName, Key )
	
	--[[
	button:SetOverAnimTex
	{		
		FileName		= FileName,
		KeyName			= Key,
	
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1.05,0.95)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.1,
	}
	
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(0.95,1.05)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
	}
	
	button:SetOverAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 2,
		fShowTime		= 0.2,
		
		bEndTexChange	= TRUE,
	}
	--]]
	
	
	button:SetDownAnimTex
	{		
		FileName		= FileName,
		KeyName			= Key,
	
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1.3,1.3)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 0,
		fShowTime		= 0.01,
	}
	
	button:SetDownAnimTex
	{		
		ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
		"SCALE			= D3DXVECTOR2(1,1)",
		"POS			= D3DXVECTOR2(0,0)",
		SequenceID		= 1,
		fShowTime		= 0.1,
		
		bEndTexChange	= TRUE,
	}


end



g_pStaticMAP_SMALL_IMAGE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SMALL_IMAGE )
g_pStaticMAP_SMALL_IMAGE:SetName( "g_pStaticMAP_SMALL_IMAGE" )


g_pPicture_MAP_SMALL_IMAGE = g_pUIDialog:CreatePicture()
g_pStaticMAP_SMALL_IMAGE:AddPicture( g_pPicture_MAP_SMALL_IMAGE )

g_pPicture_MAP_SMALL_IMAGE:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPicture_MAP_SMALL_IMAGE:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(100,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_MAP_SMALL_IMAGE_MASK = g_pUIDialog:CreatePicture()
g_pStaticMAP_SMALL_IMAGE:AddPicture( g_pPicture_MAP_SMALL_IMAGE_MASK )

g_pPicture_MAP_SMALL_IMAGE_MASK:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SMALL_IMAGE_MASK" )

g_pPicture_MAP_SMALL_IMAGE_MASK:SetPoint
{
	

	"LEFT_TOP		= D3DXVECTOR2(-2,-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_MAP_SELECT_BUTTON = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_MAP_SELECT_BUTTON )
g_pButton_MAP_SELECT_BUTTON:SetName( "g_pButton_MAP_SELECT_BUTTON" )

g_pButton_MAP_SELECT_BUTTON:SetNormalTex( "DLG_Common_New_Texture03.tga", "Invisible" )

--g_pButton_MAP_SELECT_BUTTON:SetOverTex( "DLG_Common_New_Texture58.tga", "MAP_SMALL_IMAGE_SELECT" )
MapButtonAniOver(g_pButton_MAP_SELECT_BUTTON, "DLG_Common_New_Texture58.tga", "MAP_SMALL_IMAGE_SELECT" )
--MapButtonAniDown(g_pButton_MAP_SELECT_BUTTON, "DLG_Common_New_Texture58.tga", "MAP_SMALL_IMAGE_SELECT" )

g_pButton_MAP_SELECT_BUTTON:SetDownTex( "DLG_Common_New_Texture58.tga", "MAP_SMALL_IMAGE_SELECT" )

g_pButton_MAP_SELECT_BUTTON:SetNormalPoint
{

 	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(-6,-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(108,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON:SetOverPoint
{

	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(-6,-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(108,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON:SetDownPoint
{
   
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(-6,-6)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(108,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MAP_SELECT_BUTTON:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_SELECT"] )
g_pButton_MAP_SELECT_BUTTON:SetCustomMsgMouseOver( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_SELECT_OVER"] )
g_pButton_MAP_SELECT_BUTTON:SetCustomMsgMouseOut( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_SELECT_OUT"] )
g_pButton_MAP_SELECT_BUTTON:SetCustomMsgMouseDblClk( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_OK"] )


g_pStaticMAP_SMALL_IMAGE_MESSAGE_HOT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SMALL_IMAGE_MESSAGE_HOT )
g_pStaticMAP_SMALL_IMAGE_MESSAGE_HOT:SetName( "g_pStaticMAP_SMALL_IMAGE_MESSAGE_HOT" )


g_pPicture_MAP_SMALL_IMAGE_MESSAGE_HOT = g_pUIDialog:CreatePicture()
g_pStaticMAP_SMALL_IMAGE_MESSAGE_HOT:AddPicture( g_pPicture_MAP_SMALL_IMAGE_MESSAGE_HOT )

g_pPicture_MAP_SMALL_IMAGE_MESSAGE_HOT:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SMALL_MESSAGE_HOT" )

g_pPicture_MAP_SMALL_IMAGE_MESSAGE_HOT:SetPoint
{
	

	"LEFT_TOP		= D3DXVECTOR2(22,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMAP_SMALL_IMAGE_MESSAGE_NEW = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMAP_SMALL_IMAGE_MESSAGE_NEW )
g_pStaticMAP_SMALL_IMAGE_MESSAGE_NEW:SetName( "g_pStaticMAP_SMALL_IMAGE_MESSAGE_NEW" )


g_pPicture_MAP_SMALL_IMAGE_MESSAGE_NEW = g_pUIDialog:CreatePicture()
g_pStaticMAP_SMALL_IMAGE_MESSAGE_NEW:AddPicture( g_pPicture_MAP_SMALL_IMAGE_MESSAGE_NEW )

g_pPicture_MAP_SMALL_IMAGE_MESSAGE_NEW:SetTex( "DLG_Common_New_Texture56.TGA", "MAP_SMALL_MESSAGE_NEW" )

g_pPicture_MAP_SMALL_IMAGE_MESSAGE_NEW:SetPoint
{
	

	"LEFT_TOP		= D3DXVECTOR2(22,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

