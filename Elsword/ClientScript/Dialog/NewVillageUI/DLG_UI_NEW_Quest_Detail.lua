-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "Qust" )

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID(UI_QUEST_NEW_CUSTOM_MSG["UQNCM_EXIT"] )
g_pUIDialog:AddDummyInt( 390-34 ) -- 퀘스트 클리어 조건 영역의 width (글자영역만)
g_pUIDialog:AddDummyInt( 390-34 ) -- 퀘스트 NPC 설명 영역의 width (글자영역만)

-------------bg 1

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
    ADD_SIZE_Y = 460+54,
	"LEFT_TOP		= D3DXVECTOR2(0,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,476+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------퀘스트의뢰 타이틀

g_pPicture_title1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_title1 )

g_pPicture_title1:SetTex( "DLG_UI_Title01.TGA", "Qust" )

g_pPicture_title1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(477-461,55-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------bg TITLE

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_BUTTON01.TGA", "BG_L" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_BUTTON01.TGA", "BG_C" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 388,
	"LEFT_TOP		= D3DXVECTOR2(23,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_BUTTON01.TGA", "BG_R" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(414,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------- bg 2

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,109)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 51+60,
	"LEFT_TOP		= D3DXVECTOR2(476-461,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,171+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------- BG 4

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,185+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_Y = 199-60,
	"LEFT_TOP		= D3DXVECTOR2(15,195+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(15,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------보상 bg


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,311-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 59,
	"LEFT_TOP		= D3DXVECTOR2(476-461,321-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "Qust_bg2_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(476-461,381-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------퀘스트 제목

g_pStaticSub_catalog = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSub_catalog )
g_pStaticSub_catalog:SetName( "StaticQuestTitle" )

g_pStaticSub_catalog:AddString
{
	--MSG 			= "TEST",
	MSG 			= STR_ID_1364,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,84)",
	--"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	
}


	--퀘스트타입--
	-- PICTURE0, 일반
	g_pPicture_usual = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_usual )
	
	g_pPicture_usual:SetTex( "DLG_UI_Common_Texture02.TGA", "usual" )
	
	g_pPicture_usual:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

	-- PICTURE1, 스킬
	g_pPicture_Skill = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Skill )
	
	g_pPicture_Skill:SetTex( "DLG_UI_Common_Texture02.TGA", "SKILL" )
	
	g_pPicture_Skill:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE2, 전직
	g_pPicture_change_class = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_change_class )
	
	g_pPicture_change_class:SetTex( "DLG_UI_Common_Texture02.TGA", "change_class" )
	
	g_pPicture_change_class:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	-- PICTURE3, 피씨방
	g_pPicture_Skill = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_Skill )
	
	g_pPicture_Skill:SetTex( "DLG_UI_Common_Texture05.tga", "PC_Room" )
	
	g_pPicture_Skill:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}	
	
	-- PICTURE4, 이벤트
	g_pPicture_event = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_event )
	
	g_pPicture_event:SetTex( "DLG_UI_Common_Texture02.TGA", "event" )
	
	g_pPicture_event:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE5, 경쟁
	g_pPicture_contest = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_contest )
	
	g_pPicture_contest:SetTex( "DLG_UI_Common_Texture13.tga", "Contest" )
	
	g_pPicture_contest:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE6, 에픽
	g_pPicture_epic = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_epic )
	
	g_pPicture_epic:SetTex( "DLG_UI_Common_Texture13.tga", "Epic" )
	
	g_pPicture_epic:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE7, 반복
	g_pPicture_again = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_again )
	
	g_pPicture_again:SetTex( "DLG_UI_Common_Texture02.TGA", "again" )
	
	g_pPicture_again:SetPoint
	{
	    
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE8, 일일
	g_pPicture_daily = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_daily )
	
	g_pPicture_daily:SetTex( "DLG_UI_Common_Texture09.tga", "Daily" )
	
	g_pPicture_daily:SetPoint
	{		
		"LEFT_TOP		= D3DXVECTOR2(20,78)",
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
	    
		"LEFT_TOP		= D3DXVECTOR2(20 + 334, 78 + 3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	-- PICTURE10, 진행중
	g_pPicture_progress = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_progress )
	
	g_pPicture_progress:SetTex( "DLG_Common_New_Texture25.TGA", "quest_progress" )
	
	g_pPicture_progress:SetPoint
	{
			    
		"LEFT_TOP		= D3DXVECTOR2(20 + 334, 78 + 3)",
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
		
       		"LEFT_TOP		= D3DXVECTOR2(20 + 334, 78 + 3)",
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
		
       		"LEFT_TOP		= D3DXVECTOR2(20 + 334, 78 + 3)",
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
		"LEFT_TOP		= D3DXVECTOR2(78+1,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	-- PICTURE14
	g_pPicture_NPC_Frame = g_pUIDialog:CreatePicture()
	g_pStaticSub_catalog:AddPicture( g_pPicture_NPC_Frame )
	g_pPicture_NPC_Frame:SetTex( "DLG_UI_Common_Texture30.TGA", "Frame" )
	g_pPicture_NPC_Frame:SetPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(78,78)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}



----------------ed

g_pPicture_ed = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_ed )

g_pPicture_ed:SetTex( "DLG_UI_Title01.TGA", "ed_1" )

g_pPicture_ed:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,320-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----exp

g_pPicture_exp = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_exp )

g_pPicture_exp:SetTex( "DLG_UI_Title01.TGA", "exp" )

g_pPicture_exp:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,344-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------sp

g_pPicture_sp = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_sp )

g_pPicture_sp:SetTex( "DLG_UI_Title01.TGA", "Q_AP" )

g_pPicture_sp:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(485-461,367-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------일반보상

g_pPicture_salary1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary1 )

g_pPicture_salary1:SetTex( "DLG_UI_Title01.TGA", "USUAL_SALARY" )

g_pPicture_salary1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(647-461,321-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----선택보상

g_pPicture_salary2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_salary2 )

g_pPicture_salary2:SetTex( "DLG_UI_Title01.TGA", "CHOIS_SALARY" )

g_pPicture_salary2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784-461,321-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------- 보상 슬롯
                         
g_pPicture_slot1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot1 )

g_pPicture_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607-461,343-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(650-461,343-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(693-461,343-40+84+54)",
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

	"POS		= D3DXVECTOR2( 607-461,343-40+84+54 )",
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

	"POS		= D3DXVECTOR2( 650-461,343-40+84+54)",
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

	"POS		= D3DXVECTOR2( 693-461,343-40+84+54 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}
 




--------- 선택보상 슬롯 

g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(745-461,343-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(788-461,343-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_slot6 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_slot6 )

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture02.TGA", "slot2" )

g_pPicture_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(788+43-461,343-40+84+54)",
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

	"POS		= D3DXVECTOR2( 745-461,343-40+84+54 )",
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

	"POS		= D3DXVECTOR2( 788-461,343-40+84+54 )",
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

	"POS		= D3DXVECTOR2( 788+43-461,343-40+84+54 )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}



------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPicture_line1:SetPoint
{
    ADD_SIZE_X = 412,
	"LEFT_TOP		= D3DXVECTOR2(471-461,87-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPicture_line2:SetPoint
{
    ADD_SIZE_Y = 70,
	"LEFT_TOP		= D3DXVECTOR2(134,275+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------- 목록으로 

g_pButton_List = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_List )
g_pButton_List:SetName( "Button_List" )
g_pButton_List:SetNormalTex( "DLG_UI_BUTTON15.tga", "BTN_LIST_NORMAL" )

g_pButton_List:SetOverTex( "DLG_UI_BUTTON15.tga", "BTN_LIST_OVER" )

g_pButton_List:SetDownTex( "DLG_UI_BUTTON15.tga", "BTN_LIST_OVER" )

g_pButton_List:SetNormalPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(14,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(14+1,49+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_BACK_TO_QUEST_LIST"] )


-------- 도움말 버튼 

g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON14.tga", "Help_Normal" )

g_pButton_Help:SetOverTex( "DLG_UI_BUTTON14.tga", "Help_Over" )

g_pButton_Help:SetDownTex( "DLG_UI_BUTTON14.tga", "Help_Over" )

g_pButton_Help:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(371,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(367+1,12+1)",

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
	
    "LEFT_TOP		= D3DXVECTOR2(858-461,56-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(854-461,52-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(854+1-461,52+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_EXIT"] )


----------------ed 수치

g_pStaticed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticed )
g_pStaticed:SetName( "Static_ED" )

g_pStaticed:AddString
{
	 MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,321-40+84+54)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------EXP  수치

g_pStaticexp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticexp )
g_pStaticexp:SetName( "Static_Exp" )

g_pStaticexp:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,344-40+84+54)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------SP 수치

g_pStaticsp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticsp )
g_pStaticsp:SetName( "Static_SP" )

g_pStaticsp:AddString
{
	 MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(576-461,368-40+84+54)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
----------퀘스트 포기 비활성

g_pPicture_giveup = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_giveup )

g_pPicture_giveup:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_giveup_noactive" )

g_pPicture_giveup:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607,398+104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------퀘스트 완료비활성

g_pPicture_complete = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_complete )

g_pPicture_complete:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_complete_noactive" )

g_pPicture_complete:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(607,398+104)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------퀘스트 수락비활성

g_pPicture_accept = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_accept )

g_pPicture_accept:SetTex( "DLG_UI_Common_Texture09.TGA", "quest_accept_noactive" )

g_pPicture_accept:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]




----------퀘스트 포기버튼

g_pButtongiveup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtongiveup )
g_pButtongiveup:SetName( "Button_Giveup" )
g_pButtongiveup:SetNormalTex( "DLG_UI_BUTTON01.tga", "giveup_normal" )

g_pButtongiveup:SetOverTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetDownTex( "DLG_UI_BUTTON01.tga", "giveup_OVER" )

g_pButtongiveup:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(603-461,394-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(603+1-461,394+1-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongiveup:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_GIVE_UP"] ) 
g_pButtongiveup:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )



----------퀘스트 수락버튼

g_pButtonaccept = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonaccept )
g_pButtonaccept:SetName( "Button_Accept" )
g_pButtonaccept:SetNormalTex( "DLG_UI_BUTTON09.tga", "quest_accept_normal" )

g_pButtonaccept:SetOverTex( "DLG_UI_BUTTON09.tga", "quest_accept_OVER" )

g_pButtonaccept:SetDownTex( "DLG_UI_BUTTON09.tga", "quest_accept_OVER" )

g_pButtonaccept:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461,395-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461,395+1-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonaccept:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_ACCEPT"] ) 
g_pButtonaccept:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

----------퀘스트 완료버튼

g_pButtoncomplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomplete )
g_pButtoncomplete:SetName( "Button_Complete" )
g_pButtoncomplete:SetNormalTex( "DLG_UI_BUTTON09.tga", "quest_complete_normal" )

g_pButtoncomplete:SetOverTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncomplete:SetDownTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncomplete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461,395-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461,395+1-40+84+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_COMPLETE"] ) 
g_pButtoncomplete:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

----------게임중 퀘스트 완료 툴팁용 버튼 (투명)

g_pButtoncompleteToolTip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncompleteToolTip )
g_pButtoncompleteToolTip:SetName( "Button_CompleteToolTip" )
g_pButtoncompleteToolTip:SetNormalTex( "DLG_UI_BUTTON09.tga", "quest_complete_normal" )

g_pButtoncompleteToolTip:SetOverTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncompleteToolTip:SetDownTex( "DLG_UI_BUTTON09.tga", "quest_complete_OVER" )

g_pButtoncompleteToolTip:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncompleteToolTip:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461-1,395-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncompleteToolTip:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461-1,395+1-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncompleteToolTip:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_COMPLETE_MOUSE_OVER"] ) 
g_pButtoncompleteToolTip:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_TOOLTIP_MOUSE_OUT"] ) 

----------회상 버튼

g_pButtonRemind = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRemind )
g_pButtonRemind:SetName( "Button_Remind" )
g_pButtonRemind:SetNormalTex( "DLG_UI_Button15.TGA", "Remind_Normal" )

g_pButtonRemind:SetOverTex( "DLG_UI_Button15.TGA", "Remind_Over" )

g_pButtonRemind:SetDownTex( "DLG_UI_Button15.TGA", "Remind_Over" )

g_pButtonRemind:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemind:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461-1,395-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemind:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461-1,395+1-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemind:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_REMIND"] ) 
g_pButtonRemind:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

----------수행중 버튼 (에픽)

g_pButtonOngoing = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOngoing )
g_pButtonOngoing:SetName( "Button_Ongoing" )
g_pButtonOngoing:SetNormalTex( "DLG_UI_Button15.TGA", "Play_Normal" )

g_pButtonOngoing:SetOverTex( "DLG_UI_Button15.TGA", "Play_Over" )

g_pButtonOngoing:SetDownTex( "DLG_UI_Button15.TGA", "Play_Over" )

g_pButtonOngoing:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOngoing:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461-1,395-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOngoing:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461-1,395+1-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------수행 대기 중 버튼 (에픽)

g_pButtonWaitOngoing = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWaitOngoing )
g_pButtonWaitOngoing:SetName( "Button_WaitOngoing" )
g_pButtonWaitOngoing:SetNormalTex( "DLG_UI_Button15.TGA", "Pause_Normal" )

g_pButtonWaitOngoing:SetOverTex( "DLG_UI_Button15.TGA", "Pause_Over" )

g_pButtonWaitOngoing:SetDownTex( "DLG_UI_Button15.TGA", "Pause_Over" )

g_pButtonWaitOngoing:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(607-461,398-40+84+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWaitOngoing:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(604-461-1,395-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWaitOngoing:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(604+1-461-1,395+1-40+84-1+54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-- 개발자용 완료 버튼
g_pButtonAdminComplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAdminComplete )
g_pButtonAdminComplete:SetName( "Button_Admin_Complete" )
g_pButtonAdminComplete:SetNormalTex( "DLG_UI_BUTTON12.TGA", "accept_normal" )
g_pButtonAdminComplete:SetOverTex( "DLG_UI_BUTTON12.TGA", "accept_over" )
g_pButtonAdminComplete:SetDownTex( "DLG_UI_BUTTON12.TGA", "accept_over" )
g_pButtonAdminComplete:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(311,435+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAdminComplete:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(309,433+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAdminComplete:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1,433+1+54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAdminComplete:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_ADMIN_COMPLETE"] ) 


----------------------퀘스트 도우미

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(231-40,21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxHelper = g_pUIDialog:CreateCheckBox()
g_pCheckBoxHelper:SetName( "CheckBox_QuickQuest" )
g_pUIDialog:AddControl( g_pCheckBoxHelper )

g_pCheckBoxHelper:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxHelper:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxHelper:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(231-40,21)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(246,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxHelper:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(229-40,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxHelper:SetCustomMsgChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_CHECK_QUICK_QUEST"] )
g_pCheckBoxHelper:SetCustomMsgUnChecked( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_CHECK_QUICK_QUEST"] )


g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Static_Guild" )

g_pStaticCharacter:AddString
{
	--MSG 			= "퀘스트 도우미 표시",
	MSG 			= STR_ID_5133,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(250-40,21)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



------스크롤바

g_pPictureScroll_BG1 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPictureScroll_BG1 )

g_pPictureScroll_BG1:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG1:SetPoint
{
ADD_SIZE_Y = 31+60,
	"LEFT_TOP		= D3DXVECTOR2(401,129)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureScroll_BG2 = g_pUIDialog:CreatePicture()
g_pStaticQust:AddPicture( g_pPictureScroll_BG2 )

g_pPictureScroll_BG2:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG2:SetPoint
{
ADD_SIZE_Y = 179-60,
	"LEFT_TOP		= D3DXVECTOR2(401,205+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	
----리스트 박스 1

g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListboxClearCondition" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 19, 112 )
--g_pListBox:SetSize( 403, 66 )

g_pListBox:SetSize( 381, 126 )


g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )


---------------리스트 박스 2

g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListboxNPCDescription" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 19, 247 ) 
--g_pListBox:SetSize( 403, 215 )
g_pListBox:SetSize( 381, 155 )


-- 20120327 김석근, 퀘스트 창 툴팁
-----------------------------------           캐릭터 뷰  1                  ---------------------------------------
g_pButton_QuestTitleSystem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_QuestTitleSystem )
g_pButton_QuestTitleSystem:SetName( "QuestTitleSystem" )
g_pButton_QuestTitleSystem:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_QuestTitleSystem:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_QuestTitleSystem:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_QuestTitleSystem:SetNormalPoint
{
	ADD_SIZE_X = 300,
	ADD_SIZE_Y = 30,
	
 	"LEFT_TOP		= D3DXVECTOR2(26+70,45+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_QuestTitleSystem:SetOverPoint
{
	ADD_SIZE_X = 300,
	ADD_SIZE_Y = 30,
	
 	"LEFT_TOP		= D3DXVECTOR2(26+70,45+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_QuestTitleSystem:SetDownPoint
{
    ADD_SIZE_X = 300,
	ADD_SIZE_Y = 30,
	 
 	"LEFT_TOP		= D3DXVECTOR2(26+70,45+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_QuestTitleSystem:SetGuideDesc( STR_ID_27 )
g_pButton_QuestTitleSystem:SetGuideDescOffsetPos( D3DXVECTOR2(10,50) )
g_pButton_QuestTitleSystem:SetShow(false)
