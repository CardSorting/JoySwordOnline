-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "Qust" )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 436, 544, 0 ) ) -- Size
g_pUIDialog:SetCloseCustomUIEventID(UI_QUEST_NEW_CUSTOM_MSG["UQNCM_EXIT"] )
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
    ADD_SIZE_Y = 514,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,530)",
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




--------------목록 bg

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,73+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 433-7,
	"LEFT_TOP		= D3DXVECTOR2(15,83+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,517)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------서브 리스트

---------------- 34,117
--------------좌측상단좌표   -->  50,149
------ 버튼 간격  -->  33



LEFT_TOP_X = 19
LEFT_TOP_Y = 77+7

DISTANCE_Y = 34

ListID = 0
tempX = 0
tempY = 0

for i = 0, 12 do
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
	g_pButton_catalog1:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_CATEGORY_SELECT"] ) 

	
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
		"POS 			= D3DXVECTOR2(tempX + 21+12, tempY +8)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	-----수행가능한 퀘스트 수
	g_pStaticmain:AddString
	{
		-- MSG 			= "0/6",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(tempX + 21+12+315, tempY +8)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.27,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	-- PICTURE0, 완료
	g_pPicture_complete = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_complete )	
	g_pPicture_complete:SetTex( "DLG_Common_New_Texture25.TGA", "quest_complete" )	
	g_pPicture_complete:SetPoint
	{	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 334, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	-- PICTURE1, 진행중
	g_pPicture_progress = g_pUIDialog:CreatePicture()
	g_pStaticmain:AddPicture( g_pPicture_progress )	
	g_pPicture_progress:SetTex( "DLG_Common_New_Texture25.TGA", "quest_progress" )	
	g_pPicture_progress:SetPoint
	{			    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 325-15, tempY +6)",
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
	g_pRadioButtoncatalog:SetOverTex( "DLG_UI_BUTTON01.tga", "Sub_list_NORMAL" )
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
	g_pRadioButtoncatalog:SetEnableCheckToggle( true )
	g_pRadioButtoncatalog:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_SELECT"] )
	g_pRadioButtoncatalog:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_SELECT"] )
	g_pRadioButtoncatalog:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_SELECT_MOUSE_OVER"] )
	
	----서브 리스트명
	g_pStaticSub_catalog = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSub_catalog )
	StaticName = string.format( "Static_QuestList%d", ListID )
	g_pStaticSub_catalog:SetName( StaticName )
	
	
	------퀘스트 서브 제목
	g_pStaticSub_catalog:AddString
	{
		MSG 			= "퀘스트 제목",
		MSG 			= STR_ID_1360,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(tempX + 82 + 24, tempY +8)",
		--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		
		FONT_STYLE		= FONT_STYLE["FS_SHELL"],
		"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
	}

	------에픽 레벨 제한 표시
	g_pStaticSub_catalog:AddString
	{
		MSG 			= "LV.17",
		MSG 			= STR_ID_1360,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(tempX + 352, tempY +8)",
		--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		
		FONT_STYLE		= FONT_STYLE["FS_SHELL"],
		"COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
	}

	--퀘스트타입--
	-- PICTURE0, 일반
	g_pPicture_usual = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_usual )
	
	g_pPicture_usual:SetTex( "DLG_UI_Common_Texture02.TGA", "usual" )
	
	g_pPicture_usual:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

	-- PICTURE1, 스킬
	g_pPicture_Skill = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Skill )
	
	g_pPicture_Skill:SetTex( "DLG_UI_Common_Texture02.TGA", "SKILL" )
	
	g_pPicture_Skill:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE2, 전직
	g_pPicture_change_class = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_change_class )
	
	g_pPicture_change_class:SetTex( "DLG_UI_Common_Texture02.TGA", "change_class" )
	
	g_pPicture_change_class:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	-- PICTURE3, 피씨방
	g_pPicture_Skill = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Skill )
	
	g_pPicture_Skill:SetTex( "DLG_UI_Common_Texture05.tga", "PC_Room" )
	
	g_pPicture_Skill:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}	
	
	-- PICTURE4, 이벤트
	g_pPicture_event = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_event )
	
	g_pPicture_event:SetTex( "DLG_UI_Common_Texture02.TGA", "event" )
	
	g_pPicture_event:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE5, 경쟁
	g_pPicture_contest = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_contest )
	
	g_pPicture_contest:SetTex( "DLG_UI_Common_Texture13.tga", "Contest" )
	
	g_pPicture_contest:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE6, 에픽
	g_pPicture_epic = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_epic )
	
	g_pPicture_epic:SetTex( "DLG_UI_Common_Texture13.tga", "Epic" )
	
	g_pPicture_epic:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE7, 반복
	g_pPicture_again = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_again )
	
	g_pPicture_again:SetTex( "DLG_UI_Common_Texture02.TGA", "again" )
	
	g_pPicture_again:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE8, 일일
	g_pPicture_daily = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_daily )
	
	g_pPicture_daily:SetTex( "DLG_UI_Common_Texture09.tga", "Daily" )
	
	g_pPicture_daily:SetPoint
	{		
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20, tempY +3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0, 
	}

	--퀘스트상태--
	-- PICTURE9, 완료
	g_pPicture_complete = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_complete )
	
	g_pPicture_complete:SetTex( "DLG_Common_New_Texture25.TGA", "quest_complete" )
	
	g_pPicture_complete:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 334, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE10, 진행중
	g_pPicture_progress = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_progress )
	
	g_pPicture_progress:SetTex( "DLG_Common_New_Texture25.TGA", "quest_progress" )
	
	g_pPicture_progress:SetPoint
	{
			    
		"LEFT_TOP		= D3DXVECTOR2(tempX + 325, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE11, NEW
    	g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )
	
	g_pPicture_new:SetTex( "DLG_UI_Common_Texture02.TGA", "quest_list_new" )
	
	g_pPicture_new:SetPoint
	{
		ADD_SIZE_X = -22,
		ADD_SIZE_Y = -11,
		
       		"LEFT_TOP		= D3DXVECTOR2(tempX + 328, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
		CHANGE_TIME		= 0.0,
	}


	-- PICTURE12, 실패
    	g_pPicture_fail = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_fail )
	
	g_pPicture_fail:SetTex( "DLG_UI_Common_Texture02.TGA", "quest_list_new" )
	
	g_pPicture_fail:SetPoint
	{
		ADD_SIZE_X = -22,
		ADD_SIZE_Y = -11,
		
       		"LEFT_TOP		= D3DXVECTOR2(tempX + 328, tempY +6)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	-- PICTURE13
	g_pPicture_NPC = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_NPC )
	
	g_pPicture_NPC:SetTex( "DLG_UI_NPC_Face01.TGA", "ann" )
	g_pPicture_NPC:SetPoint
	{
		ADD_SIZE_X= -15,
		ADD_SIZE_Y= -15,
		"LEFT_TOP		= D3DXVECTOR2(tempX + 78 +1, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE14
	g_pPicture_NPC_Frame = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_NPC_Frame )
	g_pPicture_NPC_Frame:SetTex( "DLG_UI_Common_Texture30.TGA", "Frame" )
	g_pPicture_NPC_Frame:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(tempX + 78, tempY + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE15
	g_pPicture_EpicComplete = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_EpicComplete )
	
	g_pPicture_EpicComplete:SetTex( "DLG_Common_Texture01.TGA", "Black" )
	
	g_pPicture_EpicComplete:SetPoint
	{
     ADD_SIZE_X = 358,
     ADD_SIZE_Y = 31,
		"LEFT_TOP		= D3DXVECTOR2(tempX +16 , tempY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
		CHANGE_TIME		= 0.0,
	}
	
	--SHOW_DAILY_REPEAT_MARK_ON_EVENT_QUEST_FOR_DEVELOPER
	-- PICTURE16, 반복 마크
	g_pPicture_again = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_again )
	
	g_pPicture_again:SetTex( "DLG_Common_Texture01.TGA", "white" )
	
	g_pPicture_again:SetPoint
	{
		ADD_SIZE_X = 3,
		ADD_SIZE_Y = 3,
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20 + 8, tempY + 3 + 7)",
		"COLOR			= D3DXCOLOR(0.27,0.83,0.97,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE17, 일일 마크
	g_pPicture_daily = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_daily )
	
	g_pPicture_daily:SetTex( "DLG_Common_Texture01.TGA", "white" )
	
	g_pPicture_daily:SetPoint
	{
		ADD_SIZE_X = 3,
		ADD_SIZE_Y = 3,
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20 + 8, tempY + 3 + 14)",
		"COLOR			= D3DXCOLOR(0.0,0.65,0.21,1.0)",
		CHANGE_TIME		= 0.0,
	}
	--SHOW_DAILY_REPEAT_MARK_ON_EVENT_QUEST_FOR_DEVELOPER

	-- PICTURE18, New 마크(자동수락으로 받아진 이벤트 퀘스트)
	g_pPicture_new = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_new )		
	g_pPicture_new:SetTex( "DLG_Common_New_Texture49.tga", "new" )	
	g_pPicture_new:SetPoint
	{
		ADD_SIZE_X = 3,
		ADD_SIZE_Y = 3,
		"LEFT_TOP		= D3DXVECTOR2(tempX + 20 , tempY + 3 )",
		"COLOR			= D3DXCOLOR(0.0,0.65,0.21,1.0)",
		CHANGE_TIME		= 0.0,
	}

	ListID = ListID + 1

end




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



-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(231-40,21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------수행퀘스트 표시

g_pStaticQuest_Helper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Helper )
g_pStaticQuest_Helper:SetName( "Static_ClearCondition" )

g_pStaticQuest_Helper:AddString
{
	--MSG 			= "퀘스트 도우미 표시",
	MSG 			= STR_ID_5133,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(250-40,21)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-----체크 표시
g_pCheckBoxpost_window_Slot1 = g_pUIDialog:CreateCheckBox()
g_pCheckBoxpost_window_Slot1:SetName( "CheckBox_QuickQuest" )
g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot1 )

g_pCheckBoxpost_window_Slot1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot1:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(231-40,21)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(246,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(229-40,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxpost_window_Slot1:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_CHECK_QUICK_QUEST"] )
g_pCheckBoxpost_window_Slot1:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_CHECK_QUICK_QUEST"] )




------------------------------------------------------------------------------------------
--------------------------------스크롤 바 -----------------------------------------------
------------------------------------------------------------------------------------------

g_pPicture_bg31 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg31 )

g_pPicture_bg31:SetTex( "DLG_UI_Common_Texture01.TGA", "gray_bar" )

g_pPicture_bg31:SetPoint
{
     ADD_SIZE_X = 18,
	 ADD_SIZE_Y = 413,
	"LEFT_TOP		= D3DXVECTOR2(400,90+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------상하 버튼 --------------------------------------------------------


g_pButtonup1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonup1 )
g_pButtonup1:SetName( "Button_up1" )
g_pButtonup1:SetNormalTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pButtonup1:SetOverTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pButtonup1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,114-40+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,114-1-40+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(400,114-40+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonup1:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SCROOL_UP"] )

 

g_pButtondown1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondown1 )
g_pButtondown1:SetName( "Button_down1" )
g_pButtondown1:SetNormalTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Normal" )

g_pButtondown1:SetOverTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetDownTex( "DLG_Common_New_Texture61.tga", "down_Arrow_Over" )

g_pButtondown1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(400,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(400-1,505-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(400,505-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondown1:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SCROOL_DOWN"] )


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
	"LEFT_TOP		= D3DXVECTOR2(398,102)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,505)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,102)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(398+23,195+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_NAVI_LCLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_NAVI_DRAGGING"] ) 
 
 
----------------------------------------------------------------------------------------------------------------------------------------
 
 
---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(371,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(371-4,16-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(371-4+1,16-4+1)",
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
g_pButtonX:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_EXIT"] )

----------------------- 메인버튼


---의뢰
g_pRadioButtonRequest = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRequest )
g_pRadioButtonRequest:SetName( "RadioButton_Request" )
g_pRadioButtonRequest:SetGroupID( 2 )
g_pRadioButtonRequest:SetNormalTex( "DLG_UI_Button15.tga", "Request_Normal" )
g_pRadioButtonRequest:SetOverTex( "DLG_UI_Button15.tga", "Request_Over" )
g_pRadioButtonRequest:SetCheckedTex( "DLG_UI_Button15.tga", "Request_Over" )


g_pRadioButtonRequest:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRequest:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(15,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRequest:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(15,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+82-2,53+27-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,	
}

g_pRadioButtonRequest:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(15,53)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRequest:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SELECT_QUEST_NORMAL_TAB"] )




-------시나리오

g_pRadioButtonScenario = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonScenario )
g_pRadioButtonScenario:SetName( "RadioButton_Scenario" )
g_pRadioButtonScenario:SetGroupID( 2 )
g_pRadioButtonScenario:SetNormalTex( "DLG_UI_Button15.tga", "Scenario_Normal" )
g_pRadioButtonScenario:SetOverTex( "DLG_UI_Button15.tga", "Scenario_Over" )
g_pRadioButtonScenario:SetCheckedTex( "DLG_UI_Button15.tga", "Scenario_over" )


g_pRadioButtonScenario:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66+31,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonScenario:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(66+31,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonScenario:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(66+31,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(66+82+31-2,53+27-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonScenario:SetCheckPoint
{

  	"LEFT_TOP		= D3DXVECTOR2(66+31,53)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonScenario:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SELECT_QUEST_SCENARIO_TAB"] )

-------이벤트

g_pRadioButtonEvent = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonEvent )
g_pRadioButtonEvent:SetName( "RadioButton_Event" )
g_pRadioButtonEvent:SetGroupID( 2 )
g_pRadioButtonEvent:SetNormalTex( "DLG_UI_Button15.tga", "event_Normal" )
g_pRadioButtonEvent:SetOverTex( "DLG_UI_Button15.tga", "event_Over" )
g_pRadioButtonEvent:SetCheckedTex( "DLG_UI_Button15.tga", "event_over" )


g_pRadioButtonEvent:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66+113,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(66+113,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(66+113,53)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(66+82+113-2,53+27-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonEvent:SetCheckPoint
{

  	"LEFT_TOP		= D3DXVECTOR2(66+113,53)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonEvent:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_SELECT_QUEST_EVENT_TAB"] )

