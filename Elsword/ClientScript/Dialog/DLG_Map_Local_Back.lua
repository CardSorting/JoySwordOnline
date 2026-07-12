-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "Map_Local_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 150, 100, 0 ) )



function IconAni( button, FileName, Key )
	
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

end





