-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )


--마우스 오버 가이드
g_pStaticOver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOver )
g_pStaticOver:SetName( "MouseOver" )

--필드 기념 주화(투명 버튼)
g_pButtonFeather = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFeather )
g_pButtonFeather:SetName( "FeatherButton" )
g_pButtonFeather:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonFeather:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonFeather:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonFeather:SetNormalPoint
{	
	ADD_SIZE_X		= 32,
	ADD_SIZE_Y		= 32,
	"LEFT_TOP		= D3DXVECTOR2(637,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFeather:SetOverPoint
{
	ADD_SIZE_X		= 32,
	ADD_SIZE_Y		= 32,
	"LEFT_TOP		= D3DXVECTOR2(637,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFeather:SetDownPoint
{
	ADD_SIZE_X		= 32,
	ADD_SIZE_Y		= 32,
	"LEFT_TOP		= D3DXVECTOR2(637,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFeather:SetOverStatic( g_pStaticOver )
g_pButtonFeather:SetDownStatic( g_pStaticOver )

g_pStaticWait = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWait )
g_pStaticWait:SetName( "Wait" )
g_pStaticWait:SetShow(true)

--필드 기념 주화(실제 이미지)
g_pPicture_FeatherIcon = g_pUIDialog:CreatePicture()
g_pStaticWait:AddPicture( g_pPicture_FeatherIcon )
g_pPicture_FeatherIcon:SetTex2( "HQ_Shop_Item_130599.DDS" )
g_pPicture_FeatherIcon:SetPoint
{
	ADD_SIZE_X		= -32,
	ADD_SIZE_Y		= -32,
	"LEFT_TOP		= D3DXVECTOR2(637,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--필드 기념 주화 스트링
g_pStaticWait:AddString -- 0
{
	MSG 			= "100",--개수
	FONT_INDEX		= XUF_DODUM_10_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(653,735)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	--[[
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	--]]
}
---------BG
--상단
g_pPicture_bg1 = g_pUIDialog:CreatePicture() --0
g_pStaticOver:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture37.TGA", "EVENT_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 12,
	"LEFT_TOP		= D3DXVECTOR2(609,410)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--중단
g_pPicture_bg1 = g_pUIDialog:CreatePicture()--1
g_pStaticOver:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture37.TGA", "EVENT_BG_middle" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 12,   
    ADD_SIZE_Y = 280,
	"LEFT_TOP		= D3DXVECTOR2(609,420)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--하단
g_pPicture_bg1 = g_pUIDialog:CreatePicture()--2
g_pStaticOver:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture37.TGA", "EVENT_BG_bottom" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 12,
	"LEFT_TOP		= D3DXVECTOR2(609,702)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--필드 기념 주화 아이콘
g_pPicture_Feather = g_pUIDialog:CreatePicture()--3
g_pStaticOver:AddPicture( g_pPicture_Feather )
g_pPicture_Feather:SetTex2( "HQ_Shop_Item_130599.DDS" )
g_pPicture_Feather:SetPoint
{
	ADD_SIZE_X		= -13,
	ADD_SIZE_Y		= -13,
	"LEFT_TOP		= D3DXVECTOR2(619,423)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

 --아리엘 아이콘
g_pPicture_NPCIcon = g_pUIDialog:CreatePicture()--4
g_pStaticOver:AddPicture( g_pPicture_NPCIcon )
g_pPicture_NPCIcon:SetTex( "DLG_UI_Npc_Face01.TGA", "ARIEL" )
g_pPicture_NPCIcon:SetPoint
{
	ADD_SIZE_X		= -12,
	ADD_SIZE_Y		= -20,
	--"LEFT_TOP		= D3DXVECTOR2(493,229)",
	"LEFT_TOP		= D3DXVECTOR2(621,599)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--전직 아이콘
--[[
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture69.TGA", "T_KNIGHT_SMALL" ) --시스나이트
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture69.TGA", "I_SWORD_SMALL" ) --인피니티
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture62.TGA", "B_MAGICIAN_SMALL" ) --배틀매지션
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture63.TGA", "T_RANGER_SMALL" ) --트래핑레인져
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture64.TGA", "W_TAKER_SMALL" )	--웨폰테이커
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture65.TGA", "ELECTRA_SMALL" ) 	--코드일렉트라
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture67.TGA", "SH_GUARDIAN_SMALL" ) --쉘링가디언
--]]
-- g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
-- g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --금주 1
-- g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture67.TGA", "SH_GUARDIAN_SMALL" ) --쉘링가디언
-- g_pPicture_ClassIcon:SetPoint
-- {
	-- ADD_SIZE_X		= -5,
	-- ADD_SIZE_Y		= -5,
	-- "LEFT_TOP		= D3DXVECTOR2(405,351)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
-- g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --금주 2
-- g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture45.tga", "T_TROOPER_SMALL" ) -- ? 아이콘
-- g_pPicture_ClassIcon:SetPoint
-- {
	-- ADD_SIZE_X		= -5,
	-- ADD_SIZE_Y		= -5,
	-- "LEFT_TOP		= D3DXVECTOR2(405,381)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
--[[
g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --금주 3
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture67.TGA", "SH_GUARDIAN_SMALL" ) --쉘링가디언
g_pPicture_ClassIcon:SetPoint
{
	ADD_SIZE_X		= -5,
	ADD_SIZE_Y		= -5,
	"LEFT_TOP		= D3DXVECTOR2(405,411)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --차주 1
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture67.TGA", "SH_GUARDIAN_SMALL" ) --쉘링가디언
g_pPicture_ClassIcon:SetPoint
{
	ADD_SIZE_X		= -5,
	ADD_SIZE_Y		= -5,
	"LEFT_TOP		= D3DXVECTOR2(405,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --?아이콘
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture60.TGA", "ICON_BLIND" ) -- ? 아이콘
g_pPicture_ClassIcon:SetPoint
{
	ADD_SIZE_X		= 6,
	ADD_SIZE_Y		= 6,
	"LEFT_TOP		= D3DXVECTOR2(406,502)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_ClassIcon = g_pUIDialog:CreatePicture()
g_pStaticOver:AddPicture( g_pPicture_ClassIcon ) --차주 2
g_pPicture_ClassIcon:SetTex( "DLG_UI_Common_Texture67.TGA", "SH_GUARDIAN_SMALL" ) --쉘링가디언
g_pPicture_ClassIcon:SetPoint
{
	ADD_SIZE_X		= -5,
	ADD_SIZE_Y		= -5,
	"LEFT_TOP		= D3DXVECTOR2(405,502)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
-----------------------STRING


g_pStaticOver:SetName( "MouseOver" )
--변동 스트링							줄 사이 거리 - 16
g_pStaticOver:AddString -- 0
{
	MSG 			= "100",--개수
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(651,456)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-- g_pStaticOver:AddString 
-- {
	-- MSG 			= STR_ID_15998,--쉘링 가디언
	-- FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(435,363)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
-- }
-- g_pStaticOver:AddString 
-- {
	-- MSG 			= STR_ID_17435,--택티컬 트루퍼
	-- FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	-- SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	-- "POS 			= D3DXVECTOR2(435,393)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- "OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
-- }
--[[
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_15998,--쉘링 가디언
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(435,423)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_15998,--쉘링 가디언
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(435,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_17435,--쉘링 가디언
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(435,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--]]
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_20382,--"[필드 기념 주화]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,845)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_20383,--"필드에 등장하는 황금 상자를 파괴하여 드랍되는 큐브에서 획득할 수 있습니다."
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_20384,--"(루벤 지역 필드 제외)"
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,523)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_20385,--"[필드 기념 주화와 보상 아이템 교환]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,555)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_19240,--엘더 마을(9Lv 이상) 이상, \n각 마을에 있는
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_17814,--아리엘 NPC의
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(647,603)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_17815,--[교환] 메뉴에서 보상 아이템으로
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_17816,--교환할 수 있습니다.
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,635)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pStaticOver:AddString 
{
	MSG 			= STR_ID_20386,--응모 아이템으로 교환 시 해당 상품에 자동 응모 됩니다.
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(619,651)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}