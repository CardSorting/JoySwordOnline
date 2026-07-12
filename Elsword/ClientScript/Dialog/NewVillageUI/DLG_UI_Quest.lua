-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "Qust" )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 436, 544, 0 ) ) -- Size
g_pUIDialog:SetCloseCustomUIEventID(QUEST_UI_CUSTOM_MESSAGE["QUCM_EXIT"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:AddDummyInt(5)			-- 한 페이지에 퀘스트 몇 개 들어가남여 
g_pUIDialog:AddDummyInt(3)			-- 보상 슬롯은 몇개인가요

g_pUIDialog:AddDummyInt( 350 ) -- 퀘스트 설명이 나오는 영역의 width (글자영역만)
g_pUIDialog:AddDummyInt( 93 ) -- 퀘스트 설명이 나오는 영역의 height (글자영역만) 


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 515,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,531)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------퀘스트 타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "Qust" )

g_pPicture_title:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31-15,55-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------목록


g_pPicture_catalog = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_catalog )

g_pPicture_catalog:SetTex( "DLG_UI_Title01.TGA", "catalog" )

g_pPicture_catalog:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(37-15,92-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------목록 bg

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,113-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 150,
	"LEFT_TOP		= D3DXVECTOR2(30-15,123-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,274-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------내용

g_pPicture_Contens= g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_Contens)

g_pPicture_Contens:SetTex( "DLG_UI_Title01.TGA", "Contens" )

g_pPicture_Contens:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(37-15,289-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------------내용bg

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,311-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 90,
	"LEFT_TOP		= D3DXVECTOR2(30-15,321-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,412-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------보상

g_pPicture_salary= g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary)

g_pPicture_salary:SetTex( "DLG_UI_Title01.TGA", "salary" )

g_pPicture_salary:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(37-15,428-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------보상 bg


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,450-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg5:SetPoint
{
    ADD_SIZE_Y = 61,
	"LEFT_TOP		= D3DXVECTOR2(30-15,460-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(30-15,522-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------서브 리스트

---------------- 34,117
--------------좌측상단좌표   -->  50,149
------ 버튼 간격  -->  33



LEFT_TOP_X = 19
LEFT_TOP_Y = 77

DISTANCE_Y = 33

ListID = 0
tempX = 0
tempY = 0

for i = 0, 4 do
	tempX = LEFT_TOP_X
	tempY = LEFT_TOP_Y + (i * DISTANCE_Y)
	
	-------목록 리스트 버튼
	
	g_pButton_catalog1 = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_catalog1 )
	
	CategoryButtonName = string.format( "Button_Category%d", ListID )
	g_pButton_catalog1:SetName( CategoryButtonName )
	g_pButton_catalog1:SetNormalTex( "DLG_UI_BUTTON01.tga", "list_NORMAL" )
	
	g_pButton_catalog1:SetOverTex( "DLG_UI_BUTTON01.tga", "list_OVER" )
	
	g_pButton_catalog1:SetDownTex( "DLG_UI_BUTTON01.tga", "list_down" )
	
	g_pButton_catalog1:SetNormalPoint
	{
		
	    "LEFT_TOP		= D3DXVECTOR2(tempX,tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_catalog1:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(tempX,tempY)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_catalog1:SetDownPoint
	{
	        ADD_SIZE_X = -2,
	     ADD_SIZE_Y = -2,
	 	"LEFT_TOP		= D3DXVECTOR2(tempX+1,tempY+1)",
	
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_catalog1:AddDummyInt(ListID)
	g_pButton_catalog1:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_CATEGORY_BUTTON"] ) 

	
	-------메인 퀘스트 목록
    
	g_pStaticmain = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticmain )
	
	CategoryStaticName = string.format( "Static_Category%d", ListID )
	g_pStaticmain:SetName( CategoryStaticName )
	
	-- 스트링 0 
	g_pStaticmain:AddString			
	{
		MSG 			= STR_ID_1359,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(tempX + 71+12, tempY +8)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	
	
	--------목록아이콘

	-- 픽쳐 0		
	g_pPicture_icon1 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon1 )
	
	g_pPicture_icon1:SetTex( "DLG_UI_Common_Texture07.TGA", "ruben_out" )
	g_pPicture_icon1:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- 픽쳐 1
	g_pPicture_icon2 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon2 )
	
	g_pPicture_icon2:SetTex( "DLG_UI_Common_Texture07.TGA", "eldu_out" )
	
	g_pPicture_icon2:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- 픽쳐 2
	g_pPicture_icon3 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon3 )
	
	g_pPicture_icon3:SetTex( "DLG_UI_Common_Texture07.TGA", "besma_out" )
	
	g_pPicture_icon3:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
	-- 픽쳐 3
	g_pPicture_icon4 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon4 )
	
	g_pPicture_icon4:SetTex( "DLG_UI_Common_Texture07.TGA", "altera_out" )
	
	g_pPicture_icon4:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- 픽쳐 4
	g_pPicture_icon5 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon5 )
	
	g_pPicture_icon5:SetTex( "DLG_UI_Common_Texture07.TGA", "peita_out" )
	
	g_pPicture_icon5:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

	
		-- 픽쳐 5
	g_pPicture_icon6 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon6 )
	
	g_pPicture_icon6:SetTex( "DLG_UI_Common_Texture07.TGA", "usual_quest" )
	
	g_pPicture_icon6:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
		-- 픽쳐 6
	g_pPicture_icon7 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon7 )
	
	g_pPicture_icon7:SetTex( "DLG_UI_Common_Texture07.TGA", "special_quest" )
	
	g_pPicture_icon7:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
			-- 픽쳐 7
	g_pPicture_icon8 = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_icon8 )
	
	g_pPicture_icon8:SetTex( "DLG_UI_Common_Texture07.TGA", "velder_capital" )
	
	g_pPicture_icon8:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 26,tempY+ 7)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

	-- 퀘스트버튼 
	g_pRadioButtoncatalog = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButtoncatalog )
	
	g_pRadioButtoncatalog:SetFixOverByCheck( true )
	g_pRadioButtoncatalog:SetShowOffBGByCheck( true )
	
	ButtonName = string.format( "RadioButton_List%d", ListID )
	g_pRadioButtoncatalog:SetName( ButtonName )
	
	g_pRadioButtoncatalog:SetNormalTex( "DLG_UI_BUTTON01.tga", "Sub_list_NORMAL" )
	g_pRadioButtoncatalog:SetOverTex( "DLG_UI_BUTTON01.tga", "Sub_list_OVER" )
	g_pRadioButtoncatalog:SetCheckedTex( "DLG_UI_BUTTON01.tga", "Sub_list_OVER" )
	
	g_pRadioButtoncatalog:SetBGPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(tempX +16 , tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	g_pRadioButtoncatalog:SetBGMouseOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(tempX +16, tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	g_pRadioButtoncatalog:SetRBPoint
	{
	 
	 	USE_TEXTURE_SIZE	= FALSE,
	
	 	"LEFT_TOP		= D3DXVECTOR2(tempX +16, tempY)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(tempX + 384, tempY + 31)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	g_pRadioButtoncatalog:SetCheckPoint
	{
	 
	 	"LEFT_TOP		= D3DXVECTOR2(tempX+16, tempY)",
	 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
	g_pRadioButtoncatalog:SetGroupID( 1 )
	g_pRadioButtoncatalog:AddDummyInt(ListID)
 	g_pRadioButtoncatalog:SetCustomMsgChecked( QUEST_UI_CUSTOM_MESSAGE["QUCM_SELECT_QUEST"] )
	
	
	----서브 리스트명
	g_pStaticSub_catalog = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSub_catalog )
	StaticName = string.format( "Static_QuestList%d", ListID )
	g_pStaticSub_catalog:SetName( StaticName )
	
		
	------퀘스트 서브 제목
	g_pStaticSub_catalog:AddString
	{
		MSG 			= STR_ID_1360,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(tempX + 82, tempY +8)",
		--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		
		FONT_STYLE		= FONT_STYLE["FS_SHELL"],
		"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
	}

	
	--------------일반
	
	
	-- pic0
	g_pPicture_usual = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_usual )
	
	g_pPicture_usual:SetTex( "DLG_UI_Common_Texture02.TGA", "usual" )
	
	g_pPicture_usual:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- pic1
	g_pPicture_change_class = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_change_class )
	
	g_pPicture_change_class:SetTex( "DLG_UI_Common_Texture02.TGA", "change_class" )
	
	g_pPicture_change_class:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
	-- pic2
	g_pPicture_event = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_event )
	
	g_pPicture_event:SetTex( "DLG_UI_Common_Texture02.TGA", "event" )
	
	g_pPicture_event:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
	-- pic3
	g_pPicture_again = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_again )
	
	g_pPicture_again:SetTex( "DLG_UI_Common_Texture02.TGA", "again" )
	
	g_pPicture_again:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- pic4
	g_pPicture_complete = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_complete )
	
	g_pPicture_complete:SetTex( "DLG_Common_New_Texture25.TGA", "quest_complete" )
	
	g_pPicture_complete:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 334, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- pic5, Skill( 임시 )
	g_pPicture_Skill = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Skill )
	
	g_pPicture_Skill:SetTex( "DLG_UI_Common_Texture02.TGA", "SKILL" )
	
	g_pPicture_Skill:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- Pic 6, PC방 //kimhc // 2010-02-01 
	g_pPicture_PcRoom = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_PcRoom )
	
	g_pPicture_PcRoom:SetTex( "DLG_UI_Common_Texture05.tga", "PC_Room" )
	
	g_pPicture_PcRoom:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
	-- Pic 7, DAY 퀘스트 //kimhc // 2010-04-27
	g_pPicture_Daily = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Daily )
	
	g_pPicture_Daily:SetTex( "DLG_UI_Common_Texture09.tga", "Daily" )
	
	g_pPicture_Daily:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	
--[[
			g_pPicture_progress = g_pUIDialog:CreatePicture()
			g_pStaticSub_catalogInfo:AddPicture( g_pPicture_progress )
			
			g_pPicture_progress:SetTex( "DLG_Common_New_Texture25.TGA", "quest_progress" )
			
			g_pPicture_progress:SetPoint
			{
			    
				"LEFT_TOP		= D3DXVECTOR2(tempX + 325, tempY +6)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--]]
	
	

	ListID = ListID + 1

end



------------퀘스트 내용

g_pStaticreport = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticreport )
g_pStaticreport:SetName( "Static_ClearCondition" )

g_pStaticreport:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	--FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(45-15,323-40)",
	--"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------퀘스트 내용 설명
--[[
			g_pStaticexplain = g_pUIDialog:CreateStatic()
			g_pUIDialog:AddControl( g_pStaticexplain )
			g_pStaticexplain:SetName( "Static_Explain" )

			g_pStaticexplain:AddString
			{
				-- MSG 			= "정신나간 사야가 엑시온을 탈취해서 지구에 꼴아박으려고 열심히 전진 \n중이라네.. 역시 일년전쟁 전에 죽여버려야햇어 썅노무 자슥~!!",
				FONT_INDEX		= XUF_DODUM_11_NORMAL,
				
				SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
				"POS 			= D3DXVECTOR2(45-15,379-40)",
				"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",

			}
--]]

----------------ed


g_pPicture_bg16 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg16 )

g_pPicture_bg16:SetTex( "DLG_UI_Title01.TGA", "ed_1" )

g_pPicture_bg16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(39-15,460-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----exp
g_pPicture_bg17 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg17 )

g_pPicture_bg17:SetTex( "DLG_UI_Title01.TGA", "exp" )

g_pPicture_bg17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(39-15,483-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------sp
g_pPicture_bg18 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg18 )

g_pPicture_bg18:SetTex( "DLG_UI_Title01.TGA", "sp" )

g_pPicture_bg18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(39-15,506-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------일반보상

g_pPicture_salary1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary1 )

g_pPicture_salary1:SetTex( "DLG_UI_Title01.TGA", "USUAL_SALARY" )

g_pPicture_salary1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(201-15,460-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----선택보상

g_pPicture_salary2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary2 )

g_pPicture_salary2:SetTex( "DLG_UI_Title01.TGA", "CHOIS_SALARY" )

g_pPicture_salary2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(338-15,460-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 보상 슬롯


g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(161-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(204-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(247-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 161-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 204-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 247-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}
 

------------------------------------------- 선택보상 

g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(299-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(299+43-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot6 )

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(299+43+43-15,482-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 299-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 299+43-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 5,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 299+43+43-15,482-40 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}




------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 413,
	"LEFT_TOP		= D3DXVECTOR2(25-15,87-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_Y = 73,
	"LEFT_TOP		= D3DXVECTOR2(149-15,454-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(289-26-15,61-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------수행퀘스트 표시


g_pPicture_show = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_show )

g_pPicture_show:SetTex( "DLG_UI_Title01.TGA", "qust_check" )

g_pPicture_show:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(309-26-15,62-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----체크 표시
g_pCheckBoxpost_window_Slot1 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxpost_window_Slot1:SetName( "CheckBox_ShowQuickQuest" )
g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot1 )

g_pCheckBoxpost_window_Slot1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot1:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(289-26-15,61-40)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(304-26-15,76-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(287-26-15,59-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxpost_window_Slot1:SetCustomMsgChecked( QUEST_UI_CUSTOM_MESSAGE["QUCM_QUICK_QUEST_CHECKBOX"] )
g_pCheckBoxpost_window_Slot1:SetCustomMsgUnChecked( QUEST_UI_CUSTOM_MESSAGE["QUCM_QUICK_QUEST_CHECKBOX"] )




g_pPicture_bg31 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg31 )

g_pPicture_bg31:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPicture_bg31:SetPoint
{
     ADD_SIZE_X = 18,
	 ADD_SIZE_Y = 128,
	"LEFT_TOP		= D3DXVECTOR2(415-15,133-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg32 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg32 )

g_pPicture_bg32:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPicture_bg32:SetPoint
{
     ADD_SIZE_X = 18,
	 ADD_SIZE_Y = 67,
	"LEFT_TOP		= D3DXVECTOR2(415-15,332-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------목록 리스트버튼 --------------------------------------------------------


g_pButtonup1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup1 )
g_pButtonup1:SetName( "Button_up1" )
g_pButtonup1:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup1:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(415-15,114-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(415-1-15,114-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(415-15,114-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_LIST_UP"] ) 

 

g_pButtondown1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown1 )
g_pButtondown1:SetName( "Button_down1" )
g_pButtondown1:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown1:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(415-15,261-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(415-1-15,261-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(415-15,261-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_LIST_DOWN"] ) 

-- 리스트 네비게이션 바

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "Navi_QuestList" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

-- 스크롤 범위
g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,221)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(398+23,95+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( QUEST_UI_CUSTOM_MESSAGE["QUCM_LIST_NAVI_LCLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( QUEST_UI_CUSTOM_MESSAGE["QUCM_LIST_NAVI_DRAGGING"] ) 
 
 
 
 
 
 
 
 
------------------------------------------------코멘트 
g_pButtonup2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup2 )
g_pButtonup2:SetName( "Button_up2" )
g_pButtonup2:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup2:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup2:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(415-15,312-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup2:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(415-1-15,312-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup2:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(415-15,312-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup2:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_COMMENT_UP"] ) 
 

 

g_pButtondown2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown2 )
g_pButtondown2:SetName( "Button_down2" )
g_pButtondown2:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown2:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown2:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(415-15,399-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown2:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(415-1-15,399-1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown2:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(415-15,399-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown2:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_COMMENT_DOWN"] ) 
 

 
-- 코멘트 네비게이션 바

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "Navi_QuestComment" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

-- 스크롤 범위
g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(398,293)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,359)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,293)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(398+23,293+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( QUEST_UI_CUSTOM_MESSAGE["QUCM_COMMENT_NAVI_LCLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( QUEST_UI_CUSTOM_MESSAGE["QUCM_COMMENT_NAVI_DRAGGING"] ) 
 
 

 
---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(371,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(371-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(371-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(50)
 
 
 
 

--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(412-15,56-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408-15,52-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(408+1-15,52+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_EXIT"] ) 



----------퀘스트 포기 비활성

g_pPicture_giveup = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_giveup )

g_pPicture_giveup:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_giveup_noactive" )

g_pPicture_giveup:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(166-15,538-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------퀘스트 포기버튼

g_pButtongiveup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtongiveup )
g_pButtongiveup:SetName( "Button_Giveup" )
g_pButtongiveup:SetNormalTex( "DLG_UI_BUTTON01.tga", "giveup_normal" )

g_pButtongiveup:SetOverTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetDownTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(166-15,538-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162-15,534-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162+1-15,534+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetCustomMsgMouseUp( QUEST_UI_CUSTOM_MESSAGE["QUCM_QUEST_GIVEUP"] ) 


-----수행가능한 퀘스트 수

g_pStaticnum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnum )
g_pStaticnum:SetName( "Static_QuestNum" )

g_pStaticnum:AddString
{
	-- MSG 			= "0/6",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(418-15,95-40)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------ed수치

g_pStaticed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticed )
g_pStaticed:SetName( "Static_ED" )

g_pStaticed:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(132-15,461-40)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




---------------exp 수치

g_pStaticexp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticexp )
g_pStaticexp:SetName( "Static_Exp" )

g_pStaticexp:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(132-15,483-40)",                             
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------sp 수치

g_pStaticsp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticsp )
g_pStaticsp:SetName( "Static_SP" )

g_pStaticsp:AddString
{
	-- MSG 			= "99999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(132-15,507-40)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
