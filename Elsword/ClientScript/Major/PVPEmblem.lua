-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_RECRUIT"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_RECRUIT"], PVP_EMBLEM["PE_GUARDS"] - 1),
							"DLG_Common_Emblem00.tga", "PE_RECRUIT" )
							
g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_GUARDS"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_GUARDS"], PVP_EMBLEM["PE_MERCENARY"] - 1),
							"DLG_Common_Emblem00.tga", "PE_GUARDS" )

g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_MERCENARY"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_MERCENARY"], PVP_EMBLEM["PE_KNIGHTS"] - 1),
							"DLG_Common_Emblem00.tga", "PE_MERCENARY" )
							
g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_KNIGHTS"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_KNIGHTS"], PVP_EMBLEM["PE_COMMANDER"] - 1),
							"DLG_Common_Emblem00.tga", "PE_KNIGHTS" )
							
g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_COMMANDER"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_COMMANDER"], PVP_EMBLEM["PE_EMPEROR"] - 1),
							"DLG_Common_Emblem00.tga", "PE_COMMANDER" )
							
g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_EMPEROR"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_EMPEROR"], PVP_EMBLEM["PE_HERO"] - 1),
							"DLG_Common_Emblem00.tga", "PE_EMPEROR" )							

g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_HERO"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_HERO"], PVP_EMBLEM["PE_END"]),
							"DLG_Common_Emblem00.tga", "PE_HERO" )
							
g_pX2PVPEmblem:AddEmblemData_LUA( PVP_EMBLEM["PE_GOTOWAR"], "랭크", D3DXVECTOR2( PVP_EMBLEM["PE_GOTOWAR"], PVP_EMBLEM["PE_END"]),
							"DLG_Common_Emblem00.tga", "PE_GOTOWAR" )
