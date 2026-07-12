-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 상단에 월드맵 도움말 

g_pUIDialog:SetName( "DLG_UI_WORLD_MAP_FRONT" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )


g_pStaticinfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticinfo )
g_pStaticinfo:SetName( "g_pStaticWorld_Map_Front" )




g_pPictureback1 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureback1 )

g_pPictureback1:SetTex( "DLG_UI_Common_Texture01.tga", "black_bar" )

g_pPictureback1:SetPoint
{
    ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 30,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}


g_pPictureback2 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureback2 )

g_pPictureback2:SetTex( "DLG_UI_Common_Texture01.tga", "black_bar" )

g_pPictureback2:SetPoint
{
    ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 30,
	"LEFT_TOP		= D3DXVECTOR2(0,738)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}


g_pPicturetitle = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPicturetitle )

g_pPicturetitle:SetTex( "DLG_UI_Title01.tga", "world_map" )

g_pPicturetitle:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(4,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStatic_helper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_helper )
g_pStatic_helper:SetName( "helper" )

g_pStatic_helper:AddString
{
	MSG 			= STR_ID_1383,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



------내 캐릭터

g_pPictureNPC1 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureNPC1 )

g_pPictureNPC1:SetTex( "MiniMap_Char_My.dds", "MiniMap_Char_My" )

g_pPictureNPC1:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -6,
	"LEFT_TOP		= D3DXVECTOR2(95-10,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_me = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_me )
g_pStatic_me:SetName( "me" )

g_pStatic_me:AddString
{
	MSG 			= STR_ID_1384,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(116-10,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------파티원

g_pPictureNPC2 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureNPC2 )

g_pPictureNPC2:SetTex( "MiniMap_Char_Party.dds", "MiniMap_Char_Party" )

g_pPictureNPC2:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -6,
	"LEFT_TOP		= D3DXVECTOR2(181-20+12,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_party = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_party )
g_pStatic_party:SetName( "party" )

g_pStatic_party:AddString
{
	MSG 			= STR_ID_1385,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(201-20+12,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----NPC
g_pPictureNPC3 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureNPC3 )

g_pPictureNPC3:SetTex( "MiniMap_Char_NPC.dds", "MiniMap_Char_NPC" )

g_pPictureNPC3:SetPoint
{
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -20,
	"LEFT_TOP		= D3DXVECTOR2(401-80-80,-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_npc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_npc )
g_pStatic_npc:SetName( "npc" )

g_pStatic_npc:AddString
{
	MSG 			= STR_ID_2611,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(429-80-80,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----은행
g_pPictureNPC3 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureNPC3 )

g_pPictureNPC3:SetTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pPictureNPC3:SetPoint
{
    ADD_SIZE_X = -15,
	ADD_SIZE_Y = -15,
	"LEFT_TOP		= D3DXVECTOR2(401-95,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_npc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_npc )
g_pStatic_npc:SetName( "npc" )

g_pStatic_npc:AddString
{
	MSG 			= STR_ID_1392,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(429-95,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-----게시판
g_pPictureNPC3 = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureNPC3 )

g_pPictureNPC3:SetTex( "MiniMap_Board.dds", "MiniMap_Board" )

g_pPictureNPC3:SetPoint
{
    ADD_SIZE_X = -20,
	ADD_SIZE_Y = -20,
	"LEFT_TOP		= D3DXVECTOR2(401-30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_npc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_npc )
g_pStatic_npc:SetName( "npc" )

g_pStatic_npc:AddString
{
	MSG 			= STR_ID_4355,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(429-20,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






------연금술

g_pPictureAlche = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureAlche )

g_pPictureAlche:SetTex( "DLG_UI_Common_Texture13.tga", "Alche" )

g_pPictureAlche:SetPoint
{ 
     ADD_SIZE_X = -6,
	ADD_SIZE_Y = -6,
	"LEFT_TOP		= D3DXVECTOR2(470,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Alche = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Alche )
g_pStatic_Alche:SetName( "Alche" )

g_pStatic_Alche:AddString
{
	MSG 			= STR_ID_1386,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(493,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






---우편함


g_pPicturePost = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPicturePost )

g_pPicturePost:SetTex( "DLG_UI_Common_Texture13.tga", "Post" )

g_pPicturePost:SetPoint
{
    ADD_SIZE_X = -1,
	ADD_SIZE_Y = -1,
	"LEFT_TOP		= D3DXVECTOR2(557,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Post = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Post )
g_pStatic_Post:SetName( "Post" )

g_pStatic_Post:AddString
{
	MSG 			= STR_ID_1387,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(589,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




-----무기 상점

g_pPictureWeapon = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureWeapon )

g_pPictureWeapon:SetTex( "DLG_UI_Common_Texture13.tga", "Weapon" )

g_pPictureWeapon:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(641,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Weapon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Weapon )
g_pStatic_Weapon:SetName( "Weapon" )

g_pStatic_Weapon:AddString
{
	MSG 			= STR_ID_1388,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(661,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



 ----악세서리

g_pPictureAcc = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureAcc )

g_pPictureAcc:SetTex( "DLG_UI_Common_Texture13.tga", "Acc" )

g_pPictureAcc:SetPoint
{
    ADD_SIZE_X = -5,
	ADD_SIZE_Y = -8,
	"LEFT_TOP		= D3DXVECTOR2(725,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Acc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Acc )
g_pStatic_Acc:SetName( "Acc" )

g_pStatic_Acc:AddString
{
	MSG 			= STR_ID_1389,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(754,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----마켓

g_pPictureMarket = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureMarket )

g_pPictureMarket:SetTex( "DLG_UI_Common_Texture13.tga", "Market" )

g_pPictureMarket:SetPoint
{
     ADD_SIZE_X = -4,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(818,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Market = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Market )
g_pStatic_Market:SetName( "Market" )

g_pStatic_Market:AddString
{
	MSG 			= STR_ID_1390,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(842,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-----대련장

g_pPicturPvp = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPicturPvp )

g_pPicturPvp:SetTex( "DLG_UI_Common_Texture13.tga", "Arena" )

g_pPicturPvp:SetPoint
{
     ADD_SIZE_X = -9,
	ADD_SIZE_Y = -4,
	"LEFT_TOP		= D3DXVECTOR2(877,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPvp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPvp )
g_pStaticPvp:SetName( "Pvp" )

g_pStaticPvp:AddString
{
	MSG 			= STR_ID_1391,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(912,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
-----뱅크
    

g_pPictureBank = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureBank )

g_pPictureBank:SetTex( "MiniMap_Bank.dds", "MiniMap_Bank" )

g_pPictureBank:SetPoint
{
     ADD_SIZE_X = -6,
	ADD_SIZE_Y = -6,
	"LEFT_TOP		= D3DXVECTOR2(894,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Bank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Bank )
g_pStatic_Bank:SetName( "Bank" )

g_pStatic_Bank:AddString
{
	MSG 			= STR_ID_1392,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(922,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]

------  입구

g_pPictureGate = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureGate )

g_pPictureGate:SetTex( "DLG_UI_Button04.tga", "l_gate" )

g_pPictureGate:SetPoint
{
     ADD_SIZE_X = -7,
	ADD_SIZE_Y = -7,
	"LEFT_TOP		= D3DXVECTOR2(960,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Gate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gate )
g_pStatic_Gate:SetName( "Gate" )

g_pStatic_Gate:AddString
{
	MSG 			= STR_ID_1393,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(987,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_esc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_esc )
g_pStatic_esc:SetName( "esc" )

g_pStatic_esc:AddString
{
	MSG 			= STR_ID_2612,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_close = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_close )
g_pStatic_close:SetName( "close" )

g_pStatic_close:AddString
{
	MSG 			= STR_ID_1394,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(40,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_dreg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dreg )
g_pStatic_dreg:SetName( "dreg" )

g_pStatic_dreg:AddString
{
	MSG 			= STR_ID_1395,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(120,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStatic_move = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_move )
g_pStatic_move:SetName( "move" )

g_pStatic_move:AddString
{
	MSG 			= STR_ID_1396,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(212,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------------------- 네비게이션

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "WorldMap_Navi" )
g_pNavi:SetBGTex_LUA( "DLG_UI_Common_Texture13.TGA", "WorldMap_Navigation" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture23.tga", "Skill_Tree_Navigation_Box" )


g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(753, 524)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1019, 732)",
	CHANGE_TIME		= 0.0,
}

g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(758, 529)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(911,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNavi:SetCustomMsgLButtonDown( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_LEFT_CLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_NAVI_LEFT_DRAGGING"] )

--------------- 퀘스트 종류별 info
--[[
----------------환료한 퀘스트 A
g_pPictureQuest_Complete_A = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureQuest_Complete_A )

g_pPictureQuest_Complete_A:SetTex2( "Quset_Complete_A.dds" )

g_pPictureQuest_Complete_A:SetPoint
{
     ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(261,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticQuest_Complete_A  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Complete_A )
g_pStaticQuest_Complete_A:SetName( "Quest_Complete_A" )

g_pStaticQuest_Complete_A:AddString
{
	MSG 			= STR_ID_1397,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(288,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------완료한 퀘스트 B
g_pPictureQuest_Complete_B = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureQuest_Complete_B )

g_pPictureQuest_Complete_B:SetTex2( "Quest_Complete_B.dds" )

g_pPictureQuest_Complete_B:SetPoint
{
     ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(377,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticQuest_Complete_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Complete_B )
g_pStaticQuest_Complete_B:SetName( "Quest_Complete_B" )

g_pStaticQuest_Complete_B:AddString
{
	MSG 			= STR_ID_1398,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(402,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





----------------수행중인 퀘스트 
g_pPictureQuest_Not = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureQuest_Not )

g_pPictureQuest_Not:SetTex2( "Quest_Not_Complete.dds" )

g_pPictureQuest_Not:SetPoint
{
     ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(515,741)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticQuest_Not = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_Not )
g_pStaticQuest_Not:SetName( "Quest_Not " )

g_pStaticQuest_Not:AddString
{
	MSG 			= STR_ID_1399,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(540,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]
---------------받지않은

g_pPictureQuest_A = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureQuest_A )

g_pPictureQuest_A:SetTex2( "Quest_A.dds" )

g_pPictureQuest_A:SetPoint
{
     ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(261,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticQuest_A = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_A )
g_pStaticQuest_A:SetName( "Quest_A " )

g_pStaticQuest_A:AddString
{
	MSG 			= STR_ID_1400,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(288,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




---------------받지않은반복퀘스트

g_pPictureQuest_B = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureQuest_B )

g_pPictureQuest_B:SetTex2( "Quest_B.dds" )

g_pPictureQuest_B:SetPoint
{
     ADD_SIZE_X = -5,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(377+20,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticQuest_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuest_B )
g_pStaticQuest_B:SetName( "Quest_B " )

g_pStaticQuest_B:AddString
{
	MSG 			= STR_ID_1401,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(402+20,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------이벤트퀘스트

g_pPictureEvent_Notice = g_pUIDialog:CreatePicture()
g_pStaticinfo:AddPicture( g_pPictureEvent_Notice )

g_pPictureEvent_Notice:SetTex2( "Event_Notice.dds" )

g_pPictureEvent_Notice:SetPoint
{
     ADD_SIZE_X = -6,
	ADD_SIZE_Y = -6,
	"LEFT_TOP		= D3DXVECTOR2(515+40,741)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticEvent_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEvent_Notice )
g_pStaticEvent_Notice:SetName( "Event_Notice " )

g_pStaticEvent_Notice:AddString
{
	MSG 			= STR_ID_1402,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(540+40,747)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-------------EXIT


g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Exit" )

g_pButtonExit:SetNormalTex( "DLG_Common_New_Texture67.tga", "Exit_normal" )

g_pButtonExit:SetOverTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetDownTex( "DLG_Common_New_Texture67.tga", "Exit_over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(987,38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(987,38)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
     ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(987+1,38+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( WORLD_MAP_UI_CUSTOM_MSG["WMUCM_CLOSE_WORLD_MAP"] )
