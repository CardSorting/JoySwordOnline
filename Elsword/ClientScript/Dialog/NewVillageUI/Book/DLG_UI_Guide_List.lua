-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_List = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_List )
g_pStaticGuide_List:SetName( "Guide_List" )


-------------------------------------(배경)----------------------------------------
g_pPictureTitle_Bg = g_pUIDialog:CreatePicture()
g_pStaticGuide_List:AddPicture( g_pPictureTitle_Bg )

g_pPictureTitle_Bg:SetTex( "PAGE_L.TGA", "test_l" )

g_pPictureTitle_Bg:SetPoint
{
    ADD_SIZE_Y = 256,  
	"LEFT_TOP		= D3DXVECTOR2(0 ,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTitle_Bg = g_pUIDialog:CreatePicture()
g_pStaticGuide_List:AddPicture( g_pPictureTitle_Bg )

g_pPictureTitle_Bg:SetTex( "PAGE_R.TGA", "test_r" )

g_pPictureTitle_Bg:SetPoint
{
    ADD_SIZE_Y = 256,  
	"LEFT_TOP		= D3DXVECTOR2(512 ,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------------------------------------------------------------
g_pPictureTitle_Bg = g_pUIDialog:CreatePicture()
g_pStaticGuide_List:AddPicture( g_pPictureTitle_Bg )

g_pPictureTitle_Bg:SetTex( "DLG_UI_Common_Texture11.TGA", "guide_title_bg" )
-- g_pPictureTitle_Bg:SetTex( "PAGE_L.TGA", "page_l" )

g_pPictureTitle_Bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(60 ,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStaticGuide_List:AddPicture( g_pPictureTitle )

g_pPictureTitle:SetTex( "DLG_UI_Title02.TGA", "eliose_guide" )

g_pPictureTitle:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(132 + 30,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-------------------------------------------          목차      ------------------------------------------ 
------------------------------------------------------------------- -----------------------------------


-------------------------       던전    

g_pButtonDungeon= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDungeon)
g_pButtonDungeon:SetName( "Btn_Dungeon" )
g_pButtonDungeon:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_dungeon_normal" )

g_pButtonDungeon:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_dungeon_over" )

g_pButtonDungeon:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_dungeon_over" )

g_pButtonDungeon:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDungeon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,146)", 

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDungeon:SetDownPoint
{ 
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,146+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDungeon:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonDungeon:AddDummyInt(10)



g_pStaticDungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon )
g_pStaticDungeon:SetName( "Dungeon_Play" ) 

g_pStaticDungeon:AddString 
{
	MSG 			= STR_ID_1404,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,162)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}










-------------------------       파티

g_pButtonParty= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonParty)
g_pButtonParty:SetName( "Btn_Party" )
g_pButtonParty:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Party_normal" )

g_pButtonParty:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Party_over" )

g_pButtonParty:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Party_over" )

g_pButtonParty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,202)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,202)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,202+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonParty:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonParty:AddDummyInt(20)


g_pStaticParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty )
g_pStaticParty:SetName( "Party" )

g_pStaticParty:AddString
{ 
	MSG 			= STR_ID_13630,	
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,162+56)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}













-------------------------       대전 

g_pButtonMatch= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMatch)
g_pButtonMatch:SetName( "Btn_Match" )
g_pButtonMatch:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Match_normal" )

g_pButtonMatch:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Match_over" )

g_pButtonMatch:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Match_over" )

g_pButtonMatch:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,258)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMatch:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,258)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMatch:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,258+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMatch:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonMatch:AddDummyInt(30)



g_pStaticMatch = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMatch )
g_pStaticMatch:SetName( "Match" )

g_pStaticMatch:AddString
{ 
	MSG 			= STR_ID_1406,	
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*2-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





-------------------------       헤니르의시공

g_pButtonHenir= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHenir)
g_pButtonHenir:SetName( "Btn_Henir" )
g_pButtonHenir:SetNormalTex( "DLG_UI_BUTTON14.tga", "BTN_HENIR_NORMAL" )

g_pButtonHenir:SetOverTex( "DLG_UI_BUTTON14.tga", "BTN_HENIR_OVER" )

g_pButtonHenir:SetDownTex( "DLG_UI_BUTTON14.tga", "BTN_HENIR_OVER" )

g_pButtonHenir:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,314)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHenir:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHenir:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,314+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHenir:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonHenir:AddDummyInt(40)




g_pStaticHenir = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHenir )
g_pStaticHenir:SetName( "Henir" )

g_pStaticHenir:AddString
{ 
	MSG 			= STR_ID_4772,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*3-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






--[[
-------------------------       아케이드   

g_pButtonArcade= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArcade)
g_pButtonArcade:SetName( "Btn_Arcade" )
g_pButtonArcade:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Arcade_normal" )

g_pButtonArcade:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Arcade_over" )

g_pButtonArcade:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Arcade_over" )

g_pButtonArcade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,382-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,382-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,382-30+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArcade:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonArcade:AddDummyInt(40)




g_pStaticArcade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade )
g_pStaticArcade:SetName( "Arcade" )

g_pStaticArcade:AddString
{ 
	MSG 			= STR_ID_1407,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,432-30-37)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--]]








-------------------------       퀘스트

g_pButtonQuest= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest)
g_pButtonQuest:SetName( "Btn_Quest" )
g_pButtonQuest:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Quest_normal" )

g_pButtonQuest:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Quest_over" )

g_pButtonQuest:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Quest_over" )

g_pButtonQuest:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,370)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,370+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonQuest:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonQuest:AddDummyInt(50)




g_pStaticQuest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest )
g_pStaticQuest:SetName( "Quest" )

g_pStaticQuest:AddString 
{ 
	MSG 			= STR_ID_1408,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*4-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}












-------------------------       개인거래

g_pButtonTrade= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTrade)
g_pButtonTrade:SetName( "Btn_Trade" )
g_pButtonTrade:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Trade_normal" )

g_pButtonTrade:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Trade_over" )

g_pButtonTrade:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Trade_over" )

g_pButtonTrade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,426)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,426)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,426+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonTrade:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonTrade:AddDummyInt(70)



g_pStaticTrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTrade )
g_pStaticTrade:SetName( "Trade" )

g_pStaticTrade:AddString 
{ 
	MSG 			= STR_ID_1409,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*5-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






-------------------------       개인상점

g_pButtonMarket= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMarket)
g_pButtonMarket:SetName( "Btn_Market" )
g_pButtonMarket:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Market_normal" )

g_pButtonMarket:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )

g_pButtonMarket:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )

g_pButtonMarket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,482)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,482)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonMarket:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,482+1 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarket:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonMarket:AddDummyInt(80)

g_pStaticMarket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMarket )
g_pStaticMarket:SetName( "Market" )

g_pStaticMarket:AddString 
{ 
	MSG 			= STR_ID_1410,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*6-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-------------------------       물품검색

g_pButtonSearch_Item= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSearch_Item)
g_pButtonSearch_Item:SetName( "Btn_Search_Item" )

g_pButtonSearch_Item:SetNormalTex( "DLG_UI_BUTTON16.tga", "btn_Search_Item_normal" )

g_pButtonSearch_Item:SetOverTex( "DLG_UI_BUTTON16.tga", "btn_Search_Item_over" )

g_pButtonSearch_Item:SetDownTex( "DLG_UI_BUTTON16.tga", "btn_Search_Item_over" )

--[[
g_pButtonSearch_Item:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Market_normal" )

g_pButtonSearch_Item:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )

g_pButtonSearch_Item:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )
--]]
g_pButtonSearch_Item:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,538)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSearch_Item:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,538)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonSearch_Item:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,538+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSearch_Item:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonSearch_Item:AddDummyInt(100)



g_pStaticSearch_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSearch_Item )
g_pStaticSearch_Item:SetName( "Search_Item" )

g_pStaticSearch_Item:AddString 
{ 
	MSG 			= STR_ID_5134,
	--MSG 			= "다른 유저가 파는 아이템을 사고 싶어요.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*7-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-------------------------       스킬

g_pButtonSkill= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill)
g_pButtonSkill:SetName( "Btn_Skill" )
g_pButtonSkill:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Skill_normal" )

g_pButtonSkill:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Skill_over" )

g_pButtonSkill:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Skill_over" )

g_pButtonSkill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(103,594)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(103,594)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)", 
	CHANGE_TIME		= 0.0, 
}
g_pButtonSkill:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(103+1,594+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonSkill:AddDummyInt(110)


g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "Skill" )

g_pStaticSkill:AddString 
{ 
	MSG 			= STR_ID_1411,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110+95,165+56*8-3)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--[[-----------------------       이벤트

		g_pButtonEvent= g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButtonEvent)
		g_pButtonEvent:SetName( "Btn_Event" )

		g_pButtonEvent:SetNormalTex( "DLG_UI_BUTTON20.tga", "GUIDE_EVENT_N" )

		g_pButtonEvent:SetOverTex( "DLG_UI_BUTTON20.tga", "GUIDE_EVENT_O" )

		g_pButtonEvent:SetDownTex( "DLG_UI_BUTTON20.tga", "GUIDE_EVENT_O" )

		g_pButtonEvent:SetNormalPoint
		{
	
		    "LEFT_TOP		= D3DXVECTOR2(103,543-50+70-60+60+60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonEvent:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(103,543-50+70-60+60+60)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0, 
		}
		g_pButtonEvent:SetDownPoint
		{
		      ADD_SIZE_X = -2,
		     ADD_SIZE_Y = -2,
		 	"LEFT_TOP		= D3DXVECTOR2(103+1,543-50+1+70-60+60+60)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonEvent:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
		g_pButtonEvent:AddDummyInt(110)



		g_pStaticEvent = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticEvent )
		g_pStaticEvent:SetName( "Event" )

		g_pStaticEvent:AddString 
		{ 
			MSG 			= STR_ID_16276,
			--MSG 			= "아리엘의 복귀 용사님을 위한 선물!",
			FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
			--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
			SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
			"POS 			= D3DXVECTOR2(110+95,596-50-37+70-60+60+60)",
			"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
			"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		}
--]]
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------       PAGE 2      -------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------









-------------------------       기술의노트

g_pButtonSkill_Note= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill_Note)
g_pButtonSkill_Note:SetName( "Btn_Skill_Note" )


g_pButtonSkill_Note:SetNormalTex( "DLG_UI_BUTTON16.tga", "btn_Skill_Note_normal" )

g_pButtonSkill_Note:SetOverTex( "DLG_UI_BUTTON16.tga", "btn_Skill_Note_over" )

g_pButtonSkill_Note:SetDownTex( "DLG_UI_BUTTON16.tga", "btn_Skill_Note_over" )
--[[
g_pButtonSkill_Note:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Market_normal" )

g_pButtonSkill_Note:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )

g_pButtonSkill_Note:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Market_over" )
--]]
g_pButtonSkill_Note:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Note:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,57)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonSkill_Note:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,57+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill_Note:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonSkill_Note:AddDummyInt(120)


g_pStaticSkill_Note = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Note )
g_pStaticSkill_Note:SetName( "Skill_Note" )

g_pStaticSkill_Note:AddString 
{ 
	MSG 			= STR_ID_5135,
	--MSG 			= "메모를 주웠어요!",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"], 
	"POS 			= D3DXVECTOR2(590+95,73)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}









-------------------------       수리

g_pButtonRepair= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRepair)
g_pButtonRepair:SetName( "Btn_Repair" )
g_pButtonRepair:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Repair_normal" )

g_pButtonRepair:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Repair_over" )

g_pButtonRepair:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Repair_over" )

g_pButtonRepair:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,116-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRepair:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,116-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonRepair:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,116+1-6 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRepair:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonRepair:AddDummyInt(140)


g_pStaticRepair = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRepair )
g_pStaticRepair:SetName( "Repair" )

g_pStaticRepair:AddString 
{ 
	MSG 			= STR_ID_1412,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+59-6)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}










-------------------------       제조

g_pButtonProduct= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonProduct)
g_pButtonProduct:SetName( "Btn_Product" )
g_pButtonProduct:SetNormalTex( "DLG_UI_BUTTON13_A.tga", "btn_Product_normal" )

g_pButtonProduct:SetOverTex( "DLG_UI_BUTTON13_A.tga", "btn_Product_over" )

g_pButtonProduct:SetDownTex( "DLG_UI_BUTTON13_A.tga", "btn_Product_over" )

g_pButtonProduct:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,169-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonProduct:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,169-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonProduct:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,169+1-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonProduct:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonProduct:AddDummyInt(150)

 
g_pStaticProduct = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticProduct )
g_pStaticProduct:SetName( "Product" )

g_pStaticProduct:AddString 
{ 
	MSG 			= STR_ID_1413,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+51*2-3-7 + 10)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}











-------------------------       강화

g_pButtonEnchant= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEnchant)
g_pButtonEnchant:SetName( "Btn_Enchant" )
g_pButtonEnchant:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Enchant_normal" )

g_pButtonEnchant:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Enchant_over" )

g_pButtonEnchant:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Enchant_over" )

g_pButtonEnchant:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,221-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEnchant:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,221-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonEnchant:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,221+1-6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEnchant:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonEnchant:AddDummyInt(160)

 
g_pStaticEnchant = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEnchant )
g_pStaticEnchant:SetName( "Enchant" )

g_pStaticEnchant:AddString 
{ 
	MSG 			= STR_ID_1414,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+45*3-3-6 + 30)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}















-------------------------       소켓

g_pButtonSocket= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSocket)
g_pButtonSocket:SetName( "Btn_Socket" )
g_pButtonSocket:SetNormalTex( "DLG_UI_BUTTON13_A.tga", "btn_Socket_normal" )

g_pButtonSocket:SetOverTex( "DLG_UI_BUTTON13_A.tga", "btn_Socket_over" )

g_pButtonSocket:SetDownTex( "DLG_UI_BUTTON13_A.tga", "btn_Socket_over" )

g_pButtonSocket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,295-7-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSocket:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,295-7-21)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonSocket:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,295+1-7-21)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSocket:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonSocket:AddDummyInt(170)


 
g_pStaticSocket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSocket )
g_pStaticSocket:SetName( "Socket" )

g_pStaticSocket:AddString 
{ 
	MSG 			= STR_ID_1415,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+60*4-3-7-21)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}











-------------------------       속성인첸트

g_pButtonAttribute= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAttribute)
g_pButtonAttribute:SetName( "Btn_Attribute" )
g_pButtonAttribute:SetNormalTex( "DLG_UI_BUTTON13_A.tga", "btn_Attribute_normal" )

g_pButtonAttribute:SetOverTex( "DLG_UI_BUTTON13_A.tga", "btn_Attribute_over" )

g_pButtonAttribute:SetDownTex( "DLG_UI_BUTTON13_A.tga", "btn_Attribute_over" )

g_pButtonAttribute:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,355-6-29)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAttribute:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,355-6-29)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonAttribute:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,355+1-6-29)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAttribute:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonAttribute:AddDummyInt(180)

 
g_pStaticAttribute = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAttribute )
g_pStaticAttribute:SetName( "Attribute" )

g_pStaticAttribute:AddString 
{ 
	MSG 			= STR_ID_1416,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+60*5-3-6-29)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-------------------------       은행

g_pButtonBank= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBank)
g_pButtonBank:SetName( "Btn_Bank" )
g_pButtonBank:SetNormalTex( "DLG_UI_BUTTON13.tga", "btn_Bank_normal" )

g_pButtonBank:SetOverTex( "DLG_UI_BUTTON13.tga", "btn_Bank_over" )

g_pButtonBank:SetDownTex( "DLG_UI_BUTTON13.tga", "btn_Bank_over" )

g_pButtonBank:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,414-7-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,414-7-35)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonBank:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,414+1-7-35)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBank:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonBank:AddDummyInt(200)

 
g_pStaticBank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank )
g_pStaticBank:SetName( "Bank" )

g_pStaticBank:AddString 
{ 
	MSG 			= STR_ID_4352,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+60*6-3-7-35)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-------------------------       길드

g_pButtonGuild= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild)
g_pButtonGuild:SetName( "Btn_Guild" )
g_pButtonGuild:SetNormalTex( "DLG_UI_BUTTON14.tga", "BTN_GUILD_NORMAL" )

g_pButtonGuild:SetOverTex( "DLG_UI_BUTTON14.tga", "BTN_GUILD_OVER" )

g_pButtonGuild:SetDownTex( "DLG_UI_BUTTON14.tga", "BTN_GUILD_OVER" )
 
g_pButtonGuild:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,474-6-43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,474-6-43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonGuild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,474+1-6-43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonGuild:AddDummyInt(210)

 
g_pStaticGuild = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild )
g_pStaticGuild:SetName( "Guild" )

g_pStaticGuild:AddString 
{ 
	MSG 			= STR_ID_4750,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+60*7-3-6-43)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------------펫

g_pButtonPet= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPet )
g_pButtonPet:SetName( "Btn_Pet" )
g_pButtonPet:SetNormalTex( "DLG_UI_BUTTON14_A.tga", "BTN_Pet_NORMAL" )

g_pButtonPet:SetOverTex( "DLG_UI_BUTTON14_A.tga", "BTN_Pet_OVER" )

g_pButtonPet:SetDownTex( "DLG_UI_BUTTON14_A.tga", "BTN_Pet_OVER" )

g_pButtonPet:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,533-7-49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,533-7-49)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonPet:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,533+1-7-49)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonPet:AddDummyInt(240)

 
g_pStaticPet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPet )
g_pStaticPet:SetName( "Pet" )

g_pStaticPet:AddString 
{ 
	MSG 			= STR_ID_5614,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(590+95,73+60*8-3-7-49)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------결혼 시스템
--[[
g_pButtonMarriage= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMarriage )
g_pButtonMarriage:SetName( "Btn_Marriage" )
g_pButtonMarriage:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Normal" )

g_pButtonMarriage:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Over" )

g_pButtonMarriage:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Over" )

g_pButtonMarriage:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(582,592-6-56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarriage:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(582,592-6-56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonMarriage:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(582+1,592+1-6-56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMarriage:SetCustomMsgMouseUp( BOOK_UI_CUSTOM_MESSAGE["BUCM_GOTO_PAGE"] )
g_pButtonMarriage:AddDummyInt(290)

 
g_pStaticFriendSearch = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFriendSearch )
g_pStaticFriendSearch:SetName( "Btn_Marriage" )

g_pStaticFriendSearch:AddString 
{ 
	MSG 			= STR_ID_24678,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(582+103,592+6-6-56)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]


------페이지


g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "Page1" )

g_pStaticNum:AddString 
{ 
	-- MSG 			= "1",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(86,642)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "Page2" )

g_pStaticNum:AddString 
{ 
	-- MSG 			= "2",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(935,642)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
