-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 아이템 그룹 지정 ( 그룹 지정이 더 위에 있어야합니다. )
g_pItemManager:AddItemConvertGroup( 1, 180886 )
g_pItemManager:AddItemConvertGroup( 1, 180887 )
g_pItemManager:AddItemConvertGroup( 1, 180888 )
g_pItemManager:AddItemConvertGroup( 2, 180882 )
g_pItemManager:AddItemConvertGroup( 2, 180883 )

--[[
g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110050 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113532 },
}
--]]



-- Item Convert Info ( TargetItemID, ConvertType, ResultItemID, commission )

g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110000 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113530 },	--레드자이언트 대검
}					

g_pItemManager:AddItemConvertInfo					
{					
		m_TargetItemID		= {	110025 },					
		m_ConvertType		= 0,		
		m_Commission		= 0,		
		m_ResultItemID		= {	113531	},	--레드자이언트 지팡이
}					

g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110050 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113532 },	--레드자이언트 활
}

g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110075 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113533 },	--레드자이언트 장검
}

g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110621 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113534 },	--레드자이언트 기어
}

g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 111119 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113535 },	--레드자이언트 철포
}

g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 112331 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 113536 },	--레드자이언트 창
}

g_pItemManager:AddItemConvertInfo											
{											
	m_TargetItemID		= {	110005,	110030,	110055,	110080,	110622,	111120,	112332 },											
	m_ConvertType		= 0,								
	m_Commission		= 0,								
	m_ResultItemID		= {	113540	},	--레드자이언트 상의
}											

g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110010,	110035,	110060,	110085,	110623,	111121,	112333 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113550	},	--레드자이언트 하의
}										

g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110015,	110040,	110065,	110090,	110624,	111122,	112334 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113560	},	--레드자이언트 장갑
}										

g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110020,	110045,	110070,	110095,	110625,	111123,	112335 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113570	},	--레드자이언트 신발				
}										

--상급 레드자이언트 대검
g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110651 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 114230 },
}

--상급 레드자이언트 지팡이
g_pItemManager:AddItemConvertInfo
{
	m_TargetItemID		= { 110656 },
	--m_TargetItemGroup	= 0,
	m_ConvertType		= 0,
	m_Commission		= 0,
	m_ResultItemID		= { 114231 },
}

--상급 레드자이언트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110661 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114232	},
}					

--상급 레드자이언트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110666 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114233	},
}					

--상급 레드자이언트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110671 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114234	},
}					

--상급 레드자이언트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111164 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114235	},
}					

--상급 레드자이언트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112336 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114236	},
}					

--상급 레드자이언트 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110652,	110657,	110662,	110667,	110672,	111165,	112337 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114240	},					
}	
									
--상급 레드자이언트 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110653,	110658,	110663,	110668,	110673,	111166,	112338 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114250	},					
}				

--상급 레드자이언트 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110654,	110659,	110664,	110669,	110674,	111167,	112339 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114260	},					
}										

--상급 레드자이언트 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110655,	110660,	110665,	110670,	110675,	111168,	112340 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114270	},					
}										

--밴디트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110100 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113630	},
}		
			
--밴디트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110125 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113631	},
}			
		
--밴디트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110150 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113632	},
}					

--밴디트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110175 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113633	},
}					

--밴디트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110626 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113634	},
}					

--밴디트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111124 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113635	},
}					

--밴디트 창				
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112341 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113636	},
}					

--밴디트 상의									
g_pItemManager:AddItemConvertInfo									
{									
	m_TargetItemID		= {	110105,	110130,	110155,	110180,	110627,	111125, 112342 },									
	m_ConvertType		= 0,						
	m_Commission		= 0,						
	m_ResultItemID		= {	113640	},				
}									

--밴디트 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	112343,	110110,	110135,	110160,	110185,	110628,	111126 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113650	},					
}										

--밴디트 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110115,	110140,	110165,	110190,	110629,	111127,	112344 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113660	},					
}										

--밴디트 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110120,	110145,	110170,	110195,	110630,	111128,	112345 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113670	},					
}									

--상급 밴디트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110676 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114330	},
}					

--상급 밴디트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110681 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114331	},
}					

--상급 밴디트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110686 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114332	},
}					

--상급 밴디트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110691 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114333	},
}					

--상급 밴디트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110696 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114334	},
}					

--상급 밴디트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111169 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114335	},
}					

--상급 밴디트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112346 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114336	},
}					

--상급 밴디트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110677 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114340	},
}					

--상급 밴디트 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110677,	110682,	110687,	110692,	110697,	111170,	112347 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114340	},					
}										

--상급 밴디트 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110678,	110683,	110688,	110693,	110698,	111171,	112348 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114350	},					
}										

--상급 밴디트 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110679,	110684,	110689,	110694,	110699,	111172,	112349 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114360	},					
}		
								
--상급 밴디트 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110680,	110685,	110690,	110695,	110700,	111173,	112350 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114370	},					
}										

--엘더 용병 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110200 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113730	},
}					
--엘더 용병 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110225 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113731	},
}					
--엘더 용병 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110250 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113732	},
}					
--엘더 용병 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110275 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113733	},
}					
--엘더 용병 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110631 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113734	},
}					
--엘더 용병 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111129 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113735	},
}					
--엘더 용병 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112351 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113736	},
}					
--엘더 용병 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110205,	110230,	110255,	110280,	110632,	111130,	112352 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113740	},					
}										

--엘더 용병 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110210,	110235,	110260,	110285,	110633,	111131,	112353 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113750	},					
}										
--엘더 용병 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110215,	110240,	110265,	110290,	110634,	111132,	112354 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113760	},					
}										
--엘더 용병 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110220,	110245,	110270,	110295,	110635,	111133,	112355 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113770	},					
}										
--상급 엘더 용병 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110701 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114430	},
}					
--상급 엘더 용병 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110706 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114431	},
}					
--상급 엘더 용병 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110711 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114432	},
}					
--상급 엘더 용병 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110716 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114433	},
}					
--상급 엘더 용병 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110721 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114434	},
}					
--상급 엘더 용병 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111174 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114435	},
}					
--상급 엘더 용병 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112356 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114436	},
}					
--상급 엘더 용병 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110702,	110707,	110712,	110717,	110722,	111175,	112357 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114440	},					
}										
--상급 엘더 용병 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110703,	110708,	110713,	110718,	110723,	111176,	112358 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114450	},					
}										
--상급 엘더 용병 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110704,	110709,	110714,	110719,	110724,	111177,	112359 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114460	},					
}										
--상급 엘더 용병 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110705,	110710,	110715,	110720,	110725,	111178,	112360 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114470	},					
}										
--레드락 치프 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110300 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113830	},
}					
--레드락 치프 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110325 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113831	},
}					
--레드락 치프 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110350 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113832	},
}					
--레드락 치프 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110375 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113833	},
}					
--레드락 치프 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110636 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113834	},
}					
--레드락 치프 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111134 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113835	},
}					
--레드락 치프 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112361 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113836	},
}					
--레드락 치프 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110305,	110330,	110355,	110380,	110637,	111135,	112362 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113840	},					
}										
--레드락 치프 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110310,	110335,	110360,	110385,	110638,	111136,	112363 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113850	},					
}										
--레드락 치프 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110315,	110340,	110365,	110390,	110639,	111137,	112364 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113860	},					
}										
--레드락 치프 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110320,	110345,	110370,	110395,	110640,	111138,	112365 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113870	},					
}										
--상급 레드락 치프 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110726 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114530	},
}					
--상급 레드락 치프 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110731 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114531	},
}					
--상급 레드락 치프 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110736 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114532	},
}					
--상급 레드락 치프 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110741 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114533	},
}					
--상급 레드락 치프 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110746 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114534	},
}					
--상급 레드락 치프 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111179 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114535	},
}					
--상급 레드락 치프 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112366 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114536	},
}					
--상급 레드락 치프 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110727,	110732,	110737,	110742,	110747,	111180,	112367 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114540	},					
}										
--상급 레드락 치프 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110728,	110733,	110738,	110743,	110748,	111181,	112368 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114550	},					
}										
--상급 레드락 치프 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110729,	110734,	110739,	110744,	110749,	111182,	112369 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114560	},					
}										
--상급 레드락 치프 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110730,	110735,	110740,	110745,	110750,	111183,	112370 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114570	},					
}										
--알테라 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110400 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114130	},
}					
--알테라 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110425 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114131	},
}					
--알테라 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110450 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114132	},
}					
--알테라 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110475 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114133	},
}					
--알테라 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110641 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114134	},
}					
--알테라 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111149 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114135	},
}					
--알테라 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112391 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114136	},
}					
--알테라 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110405,	110430,	110455,	110480,	110642,	111150,	112392 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114140	},					
}										
--알테라 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110410,	110435,	110460,	110485,	110643,	111151,	112393 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114150	},					
}										
--알테라 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110415,	110440,	110465,	110490,	110644,	111152,	112394 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114160	},					
}										
--알테라 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110420,	110445,	110470,	110495,	110645,	111153,	112395 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114170	},					
}										
--상급 알테라 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110801 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114830	},
}					
--상급 알테라 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110806 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114831	},
}					
--상급 알테라 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110811 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114832	},
}					
--상급 알테라 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110816 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114833	},
}					
--상급 알테라 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110821 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114834	},
}					
--상급 알테라 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111194 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114835	},
}					
--상급 알테라 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112396 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114836	},
}					
--상급 알테라 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110802,	110807,	110812,	110817,	110822,	111195,	112397 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114840	},					
}										
--상급 알테라 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110803,	110808,	110813,	110818,	110823,	111196,	112398 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114850	},					
}										
--상급 알테라 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110804,	110809,	110814,	110819,	110824,	111197,	112399 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114860	},					
}										
--상급 알테라 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110805,	110810,	110815,	110820,	110825,	111198,	112400 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114870	},					
}										
	
--블랙크로우 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110500 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114030	},
}					
--블랙크로우 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110525 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114031	},
}					
--블랙크로우 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110550 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114032	},
}					
--블랙크로우 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110575 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114033	},
}					
--블랙크로우 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110646 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114034	},
}					
--블랙크로우 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111144 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114035	},
}					
--블랙크로우 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112381},					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114036	},
}					
--블랙크로우 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110505,	110530,	110555,	110580,	110647,	111145,	112382 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114040	},					
}										
--블랙크로우 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110510,	110535,	110560,	110585,	110648,	111146,	112383 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114050	},					
}										
--블랙크로우 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110515,	110540,	110565,	110590,	110649,	111147,	112384 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114060	},					
}										
--블랙크로우 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110520,	110545,	110570,	110595,	110650,	111148,	112385 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114070	},					
}										
--상급 블랙크로우 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110776 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114730	},
}					
--상급 블랙크로우 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110781 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114731	},
}					
--상급 블랙크로우 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110786 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114732	},
}					
--상급 블랙크로우 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110791 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114733	},
}					
--상급 블랙크로우 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110796 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114734	},
}					
--상급 블랙크로우 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111189 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114735	},
}					
--상급 블랙크로우 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112386 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114736	},
}					
--상급 블랙크로우 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110777,	110782,	110787,	110792,	110797,	111190,	112387 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114740	},					
}										
--상급 블랙크로우 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110778,	110783,	110788,	110793,	110798,	111191,	112388 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114750	},					
}										
--상급 블랙크로우 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110779,	110784,	110789,	110794,	110799,	111192,	112389 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114760	},					
}										
--상급 블랙크로우 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110780,	110785,	110790,	110795,	110800,	111193,	112390 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114770	},					
}										
--나소드 광부 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110596 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113930	},
}					
--나소드 광부 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110601 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113931	},
}					
--나소드 광부 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110606 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113932	},
}					
--나소드 광부 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110611 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113933	},
}					
--나소드 광부 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110616 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113934	},
}					
--나소드 광부 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111139 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113935	},
}					
--나소드 광부 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112371 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	113936	},
}					
--나소드 광부 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110597,	110602,	110607,	110612,	110617,	111140,	112372 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113940	},					
}										
--나소드 광부 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110598,	110603,	110608,	110613,	110618,	111141,	112373 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113950	},					
}										
--나소드 광부 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110599,	110604,	110609,	110614,	110619,	111142,	112374 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113960	},					
}										
--나소드 광부 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110600,	110605,	110610,	110615,	110620,	111143,	112375 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	113970	},					
}										

--상급 나소드 광부 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110751 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114630	},
}					
--상급 나소드 광부 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110756 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114631	},
}					
--상급 나소드 광부 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110761 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114632	},
}					
--상급 나소드 광부 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110766 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114633	},
}					
--상급 나소드 광부 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110771 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114634	},
}					
--상급 나소드 광부 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111184 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114635	},
}					
--상급 나소드 광부 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112376 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114636	},
}					
--상급 나소드 광부 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110752,	110757,	110762,	110767,	110772,	111185,	112377 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114640	},					
}										
--상급 나소드 광부 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110753,	110758,	110763,	110768,	110773,	111186,	112378 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114650	},					
}										
--상급 나소드 광부 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110754,	110759,	110764,	110769,	110774,	111187,	112379 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114660	},					
}										
--상급 나소드 광부 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110755,	110760,	110765,	110770,	110775,	111188,	112380 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	114670	},					
}										
--벨더 민병대 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110884 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115130	},
}					
--벨더 민병대 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110889 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115131	},
}					
--벨더 민병대 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110894 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115132	},
}					
--벨더 민병대 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110899 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115133	},
}					
--벨더 민병대 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110904 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115134	},
}					
--벨더 민병대 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111154 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115135	},
}					
--벨더 민병대 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112023 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115130	},
}					
--벨더 민병대 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112028 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115131	},
}					
--벨더 민병대 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112033 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115132	},
}					
--벨더 민병대 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112038 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115133	},
}					
--벨더 민병대 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112043 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115134	},
}					
--벨더 민병대 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112048 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115135	},
}					
--벨더 민병대 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112421 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115136	},
}					

--벨더 민병대 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110885, 110890, 110895, 110900, 110905, 111155, 112024, 112029, 112034, 112039, 112044, 112049, 112422 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115140	},
}					

--벨더 민병대 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110886, 110891, 110896, 110901, 110906, 111156, 112025, 112030, 112035, 112040, 112045, 112050, 112423 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115150	},
}					

--벨더 민병대 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110887, 110892, 110897, 110902, 110907, 111157, 112026, 112031, 112036, 112041, 112046, 112051, 112424 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115160	},
}					

--벨더 민병대 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110888, 110893, 110898, 110903, 110908, 111158, 112027, 112032, 112037, 112042, 112047, 112052, 112425 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115170	},
}					


--상급 벨더 민병대 대검								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	110934,	112053,	110984,	112078,	112143 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115230	},			
}								
--상급 벨더 민병대 지팡이								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	110939,	110989,	112058,	112083,	112148 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115231	},			
}								
--상급 벨더 민병대 활								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	110944,	110994,	112063,	112088,	112153 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115232	},			
}								
--상급 벨더 민병대 장검								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	110949,	110999,	112068,	112093,	112158 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115233	},			
}								
--상급 벨더 민병대 기어								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	110954,	111004,	112073,	112098,	112163 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115234	},			
}								
--상급 벨더 민병대 철포								
g_pItemManager:AddItemConvertInfo								
{								
	m_TargetItemID		= {	111570,	111575,	112103,	112108,	112168 },								
	m_ConvertType		= 0,					
	m_Commission		= 0,					
	m_ResultItemID		= {	115235	},			
}								
--상급 벨더 민병대 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112426 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115236	},
}					
--상급 벨더 민병대 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110935, 110940, 110945, 110950, 110955, 110985, 110990, 110995, 111000, 111005, 111571, 111576, 112054, 112059, 112064, 112069, 112074, 112079, 112084, 112089, 112094, 112099, 112105, 112109, 112144, 112149, 112154, 112159, 112164, 112169, 112427 },
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115240	},
}					
--상급 벨더 민병대 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110936, 110941, 110946, 110951, 110956, 110986, 110991, 110996, 111001, 111006, 111572, 111577, 112055, 112060, 112065, 112070, 112075, 112080, 112085, 112090, 112095, 112100, 112104, 112110, 112145, 112150, 112155, 112160, 112165, 112170, 112428 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115250	},
}					

--상급 벨더 민병대 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110937, 110942, 110947, 110952, 110957, 110987, 110992, 110997, 111002, 111007, 111573, 111578, 112056, 112061, 112066, 112071, 112076, 112081, 112086, 112091, 112096, 112101, 112106, 112111, 112146, 112151, 112156, 112161, 112166, 112171, 112429 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115260	},
}					

--상급 벨더 민병대 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110938, 110943, 110948, 110953, 110958, 110988, 110993, 110998, 111003, 111008, 111574, 111579, 112057, 112062, 112067, 112072, 112077, 112082, 112087, 112092, 112097, 112102, 112107, 112112, 112147, 112152, 112157, 112162, 112167, 112172, 112430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115270	},
}					

				
--글리터 헌터 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110909 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115330	},
}					
--글리터 헌터 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110914 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115331	},
}					
--글리터 헌터 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110919 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115332	},
}					
--글리터 헌터 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110924 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115333	},
}					
--글리터 헌터 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110929 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115334	},
}					
--글리터 헌터 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111159 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115335	},
}					
--글리터 헌터 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112441 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115336	},
}					
--글리터 헌터 상의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110910,	110915,	110920,	110925,	110930,	111160,	112442 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	115340	},					
}										
--글리터 헌터 하의										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110911,	110916,	110921,	110926,	110931,	111161,	112443 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	115350	},					
}										
--글리터 헌터 장갑										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110912,	110917,	110922,	110927,	110932,	111162,	112444 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	115360	},					
}										
--글리터 헌터 신발										
g_pItemManager:AddItemConvertInfo										
{										
	m_TargetItemID		= {	110913,	110918,	110923,	110928,	110933,	111163,	112445 },										
	m_ConvertType		= 0,							
	m_Commission		= 0,							
	m_ResultItemID		= {	115370	},					
}										
--상급 글리터 헌터 대검						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	110959,	111009,	112173 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115430	},	
}						
--상급 글리터 헌터 지팡이						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	110964,	111014,	112178 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115431	},	
}						
--상급 글리터 헌터 활						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	110969,	111019,	112183 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115432	},	
}						
--상급 글리터 헌터 장검						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	110974,	111024,	112188 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115433	},	
}						
--상급 글리터 헌터 기어						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	110979,	111029,	112193 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115434	},	
}						
--상급 글리터 헌터 철포						
g_pItemManager:AddItemConvertInfo						
{						
	m_TargetItemID		= {	111580,	111585,	112198 },						
	m_ConvertType		= 0,			
	m_Commission		= 0,			
	m_ResultItemID		= {	115435	},	
}						
--상급 글리터 헌터 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112446 },					
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115436	},
}					
--상급 글리터 헌터 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110960, 110965, 110970, 110975, 110980, 111010, 111015, 111020, 111025, 111030, 111581, 111586, 112174, 112179, 112184, 112189, 112194, 112199, 112447 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115440	},
}					

--상급 글리터 헌터 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110961, 110966, 110971, 110976, 110981, 111011, 111016, 111021, 111026, 111031, 111582, 111587, 112175, 112180, 112185, 112190, 112195, 112200, 112448 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115450	},
}					
--상급 글리터 헌터 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110962, 110967, 110972, 110977, 110982, 111012, 111017, 111022, 111027, 111032, 111583, 111588, 112176, 112181, 112186, 112191, 112196, 112201, 112449 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115460	},
}					
--상급 글리터 헌터 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	110963, 110968, 110973, 110978, 110983, 111013, 111018, 111023, 111028, 111033, 111584, 111589, 112177, 112182, 112187, 112192, 112197, 112202, 112450 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115470	},
}					
--대폭설의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111210 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115530	},
}					

--대폭설의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115531	},
}					
--대폭설의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111220 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115532	},
}					
--대폭설의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115533	},
}					
--대폭설의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111230 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115534	},
}					
--대폭설의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115535	},
}					
--대폭설의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112461 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115536	},
}					
--대폭설의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111211, 111216, 111221, 111226, 111231, 111236, 112462 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115540	},
}					
--대폭설의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111212, 111217, 111222, 111227, 111232, 111237, 112463 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115550	},
}					
--대폭설의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111213, 111218, 111223, 111228, 111233, 111238, 112464 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115560	},
}					
--대폭설의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111214, 111219, 111224, 111229, 111234, 111239, 112465 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115570	},
}					

--상급 대폭설의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111240, 111265, 112203 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115630	},
}					
--상급 대폭설의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111245, 111270, 112208 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115631	},
}					
--상급 대폭설의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111250, 111275, 112213 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115632	},
}					
--상급 대폭설의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111255, 111280, 112218 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115633	},
}					
--상급 대폭설의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111260, 111285, 112223 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115634	},
}					
--상급 대폭설의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111590, 111595, 112228 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115635	},
}					
--상급 대폭설의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112466 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115636	},
}					
--상급 대폭설의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111241, 111246, 111251, 111256, 111261, 111266, 111271, 111276, 111281, 111286, 111591, 111596, 112204, 112209, 112214, 112219, 112224, 112229, 112467 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115640	},
}					
--상급 대폭설의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111242, 111247, 111252, 111257, 111262, 111267, 111272, 111277, 111282, 111287, 111592, 111597, 112205, 112210, 112215, 112220, 112225, 112230, 112468 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115650	},
}					
--상급 대폭설의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111243, 111248, 111253, 111258, 111263, 111268, 111273, 111278, 111283, 111288, 111593, 111598, 112206, 112211, 112216, 112221, 112226, 112231, 112469 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115660	},
}					
--상급 대폭설의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111244, 111249, 111254, 111259, 111264, 111269, 111274, 111279, 111284, 111289, 111594, 111599, 112207, 112212, 112217, 112222, 112227, 112232, 112470 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115670	},
}					
--큰불꽃의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111290 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115730	},
}					
--큰불꽃의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111295 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115731	},
}					
--큰불꽃의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111300 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115732	},
}					
--큰불꽃의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115733	},
}					
--큰불꽃의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111310 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115734	},
}					
--큰불꽃의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115735	},
}					
--큰불꽃의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112481 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115736	},
}					
--큰불꽃의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111291, 111296, 111301, 111306, 111311, 111316, 112482 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115740	},
}					
--큰불꽃의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111292, 111297, 111302, 111307, 111312, 111317, 112483 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115750	},
}					
--큰불꽃의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111293, 111298, 111303, 111308, 111313, 111318, 112484 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115760	},
}					
--큰불꽃의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111294, 111299, 111304, 111309, 111314, 111319, 112485 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115770	},
}					
--상급 큰불꽃의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111320, 111345, 112233 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115830	},
}					
--상급 큰불꽃의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111325, 111350, 112238 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115831	},
}					
--상급 큰불꽃의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111330, 111355, 112243 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115832	},
}					
--상급 큰불꽃의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111335, 111360, 112248 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115833	},
}					
--상급 큰불꽃의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111340, 111365, 112253 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115834	},
}					
--상급 큰불꽃의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111600, 111605, 112258 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115835	},
}					
--상급 큰불꽃의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112486 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115836	},
}					
--상급 큰불꽃의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111321, 111326, 111331, 111336, 111341, 111346, 111351, 111356, 111361, 111366, 111601, 111606, 112234, 112239, 112244, 112249, 112254, 112259, 112487 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115840	},
}					
--상급 큰불꽃의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111322, 111327, 111332, 111337, 111342, 111347, 111352, 111357, 111362, 111367, 111602, 111607, 112235, 112240, 112245, 112250, 112255, 112260, 112488 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115850	},
}					
--상급 큰불꽃의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111323, 111328, 111333, 111338, 111343, 111348, 111353, 111358, 111363, 111368, 111603, 111608, 112236, 112241, 112246, 112251, 112256, 112261, 112489 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115860	},
}					
--상급 큰불꽃의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111324, 111329, 111334, 111339, 111344, 111349, 111354, 111359, 111364, 111369, 111604, 111609, 112237, 112242, 112247, 112252, 112257, 112262, 112490 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115870	},
}					
--갈라진 혼돈의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111390 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115930	},
}					
--갈라진 혼돈의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111395 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115931	},
}					
--갈라진 혼돈의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115932	},
}					
--갈라진 혼돈의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111405 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115933	},
}					
--갈라진 혼돈의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115934	},
}					
--갈라진 혼돈의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111415 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115935	},
}					
--갈라진 혼돈의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112501 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115936	},
}					
--갈라진 혼돈의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111391, 111396, 111401, 111406, 111411, 111416, 112502 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115940	},
}					
--갈라진 혼돈의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111392, 111397, 111402, 111407, 111412, 111417, 112503 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115950	},
}					
--갈라진 혼돈의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111393, 111398, 111403, 111408, 111413, 111418, 112504 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115960	},
}					
--갈라진 혼돈의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111394, 111399, 111404, 111409, 111414, 111419, 112505 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115970	},
}					
--상급 갈라진 혼돈의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111450, 111480, 112263 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116030	},
}					
--상급 갈라진 혼돈의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111455, 111485, 112268 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116031	},
}					
--상급 갈라진 혼돈의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111460, 111490, 112273 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116032	},
}					
--상급 갈라진 혼돈의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111465, 111495, 112278 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116033	},
}					
--상급 갈라진 혼돈의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111470, 111500, 112283 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116034	},
}					
--상급 갈라진 혼돈의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111475, 111505, 112288 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116035	},
}					
--상급 갈라진 혼돈의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112506 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116036	},
}					
--상급 갈라진 혼돈의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111451, 111456, 111461, 111466, 111471, 111476, 111481, 111486, 111491, 111496, 111501, 111506, 112264, 112269, 112274, 112279, 112284, 112289, 112507 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116040	},
}					
--상급 갈라진 혼돈의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111452, 111457, 111462, 111467, 111472, 111477, 111482, 111487, 111492, 111497, 111502, 111507, 112265, 112270, 112275, 112280, 112285, 112290, 112508 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116050	},
}					
--상급 갈라진 혼돈의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111453, 111458, 111463, 111468, 111473, 111478, 111483, 111488, 111493, 111498, 111503, 111508, 112266, 112271, 112276, 112281, 112286, 112291, 112509 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116060	},
}					
--상급 갈라진 혼돈의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111454, 111459, 111464, 111469, 111474, 111479, 111484, 111489, 111494, 111499, 111504, 111509, 112267, 112272, 112277, 112282, 112287, 112292, 112510 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116070	},
}					
--뒤틀린 바람의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116130	},
}					
--뒤틀린 바람의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111425 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116131	},
}					
--뒤틀린 바람의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116132	},
}					
--뒤틀린 바람의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116133	},
}					
--뒤틀린 바람의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111440 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116134	},
}					
--뒤틀린 바람의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111445 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116135	},
}					
--뒤틀린 바람의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112521 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116136	},
}					
--뒤틀린 바람의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111421, 111426, 111431, 111436, 111441, 111446, 112522 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116140	},
}					
--뒤틀린 바람의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111422, 111427, 111432, 111437, 111442, 111447, 112523 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116150	},
}					
--뒤틀린 바람의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111423, 111428, 111433, 111438, 111443, 111448, 112524 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116160	},
}					
--뒤틀린 바람의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111424, 111429, 111434, 111439, 111444, 111449, 112525 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116170	},
}					
--상급 뒤틀린 바람의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111510, 111540, 112293 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116230	},
}					
--상급 뒤틀린 바람의 지팡의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111515, 111545, 112298 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116231	},
}					
--상급 뒤틀린 바람의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111520, 111550, 112303 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116232	},
}					
--상급 뒤틀린 바람의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111525, 111555, 112308 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116233	},
}					
--상급 뒤틀린 바람의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111530, 111560, 112313 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116234	},
}					
--상급 뒤틀린 바람의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111535, 111565, 112318 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116235	},
}					
--상급 뒤틀린 바람의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112526 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116236	},
}					
--상급 뒤틀린 바람의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111511, 111516, 111521, 111526, 111531, 111536, 111541, 111546, 111551, 111556, 111561, 111566, 112294, 112299, 112304, 112309, 112314, 112319, 112527 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116240	},
}					
--상급 뒤틀린 바람의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111512, 111517, 111522, 111527, 111532, 111537, 111542, 111547, 111552, 111557, 111562, 111567, 112295, 112300, 112305, 112310, 112315, 112320, 112528 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116250	},
}					
--상급 뒤틀린 바람의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111513, 111518, 111523, 111528, 111533, 111538, 111543, 111548, 111553, 111558, 111563, 111568, 112296, 112301, 112306, 112311, 112316, 112321, 112529 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116260	},
}					
--상급 뒤틀린 바람의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111514, 111519, 111524, 111529, 111534, 111539, 111544, 111549, 111554, 111559, 111564, 111569, 112297, 112302, 112307, 112312, 112317, 112322, 112530 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116270	},
}					
--페이타 근위기사의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111932 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114930	},
}					
--페이타 근위기사의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111937 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114931	},
}					
--페이타 근위기사의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111942 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114932	},
}					
--페이타 근위기사의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111947 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114933	},
}					
--페이타 근위기사의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111952 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114934	},
}					
--페이타 근위기사의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111957 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114935	},
}					
--페이타 근위기사의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112401 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114936	},
}					
--페이타 근위기사의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111933, 111938, 111943, 111948, 111953, 111958, 112402 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114940	},
}					
--페이타 근위기사의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111934, 111939, 111944, 111949, 111954, 111959, 112403 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114950	},
}					
--페이타 근위기사의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111935, 111940, 111945, 111950, 111955, 111960, 112404 },	
	m_ConvertType		= 0,	
	m_Commission		= 0,		
	m_ResultItemID		= {	114960	},
}					
--페이타 근위기사의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111936, 111941, 111946, 111951, 111956, 111961, 112405 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	114970	},
}					
--상급 페이타 근위기사의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111962, 111992, 112113 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115030	},
}					
--상급 페이타 근위기사의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111967, 111997, 112118 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115031	},
}					
--상급 페이타 근위기사의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111972, 112002, 112123 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115032	},
}					
--상급 페이타 근위기사의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111977, 112007, 112128 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115033	},
}					
--상급 페이타 근위기사의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111982, 112012, 112133 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115034	},
}					
--상급 페이타 근위기사의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111987, 112017, 112138 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115035	},
}					
--상급 페이타 근위기사의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112406 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115036	},
}					
--상급 페이타 근위기사의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111963, 111968, 111973, 111978, 111983, 111988, 111993, 111998, 112003, 112008, 112013, 112018, 112114, 112119, 112124, 112129, 112134, 112139, 112407 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115040	},
}					
--상급 페이타 근위기사의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111964, 111969, 111974, 111979, 111984, 111989, 111994, 111999, 112004, 112009, 112014, 112019, 112115, 112120, 112125, 112130, 112135, 112140, 112408 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115050	},
}					
--상급 페이타 근위기사의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111965, 111970, 111975, 111980, 111985, 111990, 111995, 112000, 112005, 112010, 112015, 112020, 112116, 112121, 112126, 112131, 112136, 112141, 112409 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115060	},
}					
--상급 페이타 근위기사의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111966, 111971, 111976, 111981, 111986, 111991, 111996, 112001, 112006, 112011, 112016, 112021, 112117, 112122, 112127, 112132, 112137, 112142, 112410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	115070	},
}					
--검은 바위의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112705 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116330	},
}					
--검은 바위의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112710 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116331	},
}					
--검은 바위의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112715 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116332	},
}					
--검은 바위의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112720 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116333	},
}					
--검은 바위의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112725 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116334	},
}					
--검은 바위의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112730 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116335	},
}					
--검은 바위의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112735 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116336	},
}					
--검은 바위의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112706, 112711, 112716, 112721, 112726, 112731, 112736 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116340	},
}					
--검은 바위의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112707, 112712, 112717, 112722, 112727, 112732, 112737 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116350	},
}					
--검은 바위의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112708, 112713, 112718, 112723, 112728, 112733, 112738 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116360	},
}					
--검은 바위의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112709, 112714, 112719, 112724, 112729, 112734, 112739 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116370	},
}					
--상급 검은 바위의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112740, 112765, 112800 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116430	},
}					
--상급 검은 바위의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112745, 112770, 112805 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116431	},
}					
--상급 검은 바위의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112750, 112775, 112810 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116432	},
}					
--상급 검은 바위의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112755, 112780, 112815 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116433	},
}					
--상급 검은 바위의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112760, 112785, 112820 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116434	},
}					
--상급 검은 바위의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112790, 112795, 112825 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116435	},
}					
--상급 검은 바위의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112830 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116436	},
}					
--상급 검은 바위의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112741, 112746, 112751, 112756, 112761, 112766, 112771, 112776, 112781, 112786, 112791, 112796, 112801, 112806, 112811, 112816, 112821, 112826, 112831 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116440	},
}					
--상급 검은 바위의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112742, 112747, 112752, 112757, 112762, 112767, 112772, 112777, 112782, 112787, 112792, 112797, 112802, 112807, 112812, 112817, 112822, 112827, 112832 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116450	},
}					
--상급 검은 바위의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112743, 112748, 112753, 112758, 112763, 112768, 112773, 112778, 112783, 112788, 112793, 112798, 112803, 112808, 112813, 112818, 112823, 112828, 112833 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116460	},
}					
--상급 검은 바위의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112744, 112749, 112754, 112759, 112764, 112769, 112774, 112779, 112784, 112789, 112794, 112799, 112804, 112809, 112814, 112819, 112824, 112829, 112834 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116470	},
}					
--모래 폭풍의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112845 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116530	},
}					
--모래 폭풍의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112850 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116531	},
}					
--모래 폭풍의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112855 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116532	},
}					
--모래 폭풍의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112860 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116533	},
}					
--모래 폭풍의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112865 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116534	},
}					
--모래 폭풍의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112870 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116535	},
}					
--모래 폭풍의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112875 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116536	},
}					
--모래 폭풍의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112846, 112851, 112856, 112861, 112866, 112871, 112876 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116540	},
}					
--모래 폭풍의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112847, 112852, 112857, 112862, 112867, 112872, 112877 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116550	},
}					
--모래 폭풍의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112848, 112853, 112858, 112863, 112868, 112873, 112878 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116560	},
}					
--모래 폭풍의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112849, 112854, 112859, 112864, 112869, 112874, 112879 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116570	},
}					
--상급 모래 폭풍의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112880, 112905, 112940 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116630	},
}					
--상급 모래 폭풍의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112885, 112910, 112945 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116631	},
}					
--상급 모래 폭풍의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112890, 112915, 112950 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116632	},
}					
--상급 모래 폭풍의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112895, 112920, 112955 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116633	},
}					
--상급 모래 폭풍의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112900, 112925, 112960 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116634	},
}					
--상급 모래 폭풍의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112930, 112935, 112965 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116635	},
}					
--상급 모래 폭풍의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112970 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116636	},
}					
--상급 모래 폭풍의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112881, 112886, 112891, 112896, 112901, 112906, 112911, 112916, 112921, 112926, 112931, 112936, 112941, 112946, 112951, 112956, 112961, 112966, 112971 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116640	},
}					
--상급 모래 폭풍의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112882, 112887, 112892, 112897, 112902, 112907, 112912, 112917, 112922, 112927, 112932, 112937, 112942, 112947, 112952, 112957, 112962, 112967, 112972 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116650	},
}					
--상급 모래 폭풍의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112883, 112888, 112893, 112898, 112903, 112908, 112913, 112918, 112923, 112928, 112933, 112938, 112943, 112948, 112953, 112958, 112963, 112968, 112973 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116660	},
}					
--상급 모래 폭풍의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112884, 112889, 112894, 112899, 112904, 112909, 112914, 112919, 112924, 112929, 112934, 112939, 112944, 112949, 112954, 112959, 112964, 112969, 112974 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116670	},
}					
--솟구치는 용기의 양손검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132227 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116730	},
}					
--솟구치는 용기의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132232 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116731	},
}					
--솟구치는 용기의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132237 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116732	},
}					
--솟구치는 용기의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132242 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116733	},
}					
--솟구치는 용기의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132247 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116734	},
}					
--솟구치는 용기의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133162 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116735	},
}					
--솟구치는 용기의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112648 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116736	},
}					
--솟구치는 용기의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132228, 132233, 132238, 132243, 132248, 133163, 112649 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116740	},
}					
--솟구치는 용기의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132229, 132234, 132239, 132244, 132249, 133164, 112650 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116750	},
}					
--솟구치는 용기의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132230, 132235, 132240, 132245, 132250, 133165, 112651 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116760	},
}					
--솟구치는 용기의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132231, 132236, 132241, 132246, 132251, 133166, 112652 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116770	},
}					
--사나운 급습의 양손검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132252 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116830	},
}					
--사나운 급습의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132257 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116831	},
}					
--사나운 급습의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132262 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116832	},
}					
--사나운 급습의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132267 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116833	},
}					
--사나운 급습의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132272 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116834	},
}					
--사나운 급습의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133167 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116835	},
}					
--사나운 급습의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112653 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116836	},
}					
--사나운 급습의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132253, 132258, 132263, 132268, 132273, 133168, 112654 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116840	},
}					
--사나운 급습의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132254, 132259, 132264, 132269, 132274, 133169, 112655 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116850	},
}					
--사나운 급습의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132255, 132260, 132265, 132270, 132275, 133170, 112656 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116860	},
}					
--사나운 급습의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132256, 132261, 132266, 132271, 132276, 133171, 112657 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116870	},
}					
--야생의 추적자 양손검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132277 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116930	},
}					
--야생의 추적자 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132282 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116931	},
}					
--야생의 추적자 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132287 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116932	},
}					
--야생의 추적자 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132292 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116933	},
}					
--야생의 추적자 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132297 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116934	},
}					
--야생의 추적자 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133172 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116935	},
}					
--야생의 추적자 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112658 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116936	},
}					
--야생의 추적자 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132278, 132283, 132288, 132293, 132298, 133173, 112659 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116940	},
}					
--야생의 추적자 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132279, 132284, 132289, 132294, 132299, 133174, 112660 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116950	},
}					
--야생의 추적자 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132280, 132285, 132290, 132295, 132300, 133175, 112661 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116960	},
}					
--야생의 추적자 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132281, 132286, 132291, 132296, 132301, 133176, 112662 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	116970	},
}					
--신비한 영혼의 양손검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132302 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117030	},
}					
--신비한 영혼의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132307 },	
	m_ConvertType		= 0,	
	m_Commission		= 0,		
	m_ResultItemID		= {	117031	},
}					
--신비한 영혼의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132312 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117032	},
}					
--신비한 영혼의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132317 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117033	},
}					
--신비한 영혼의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132322 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117034	},
}					
--신비한 영혼의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133177 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117035	},
}					
--신비한 영혼의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112663 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117036	},
}					
--신비한 영혼의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132303, 132308, 132313, 132318, 132323, 133178, 112664 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117040	},
}					
--신비한 영혼의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132304, 132309, 132314, 132319, 132324, 133179, 112665 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117050	},
}					
--신비한 영혼의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132305, 132310, 132315, 132320, 132325, 133180, 112666 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117060	},
}					
--신비한 영혼의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	132306, 132311, 132316, 132321, 132326, 133181, 112667 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117070	},
}					
--작렬하는 원소의 양손검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133132 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117130	},
}					
--작렬하는 원소의 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133137 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117131	},
}					
--작렬하는 원소의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133142 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117132	},
}					
--작렬하는 원소의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133147 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117133	},
}					
--작렬하는 원소의 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133152 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117134	},
}					
--작렬하는 원소의 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133157 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117135	},
}					
--작렬하는 원소의 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	112668 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117136	},
}					
--작렬하는 원소의 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133133, 133138, 133143, 133148, 133153, 133158, 112669 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117140	},
}					
--작렬하는 원소의 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133134, 133139, 133144, 133149, 133154, 133159, 112670 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117150	},
}					
--작렬하는 원소의 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133135, 133140, 133145, 133150, 133155, 133160, 112671 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117160	},
}					
--작렬하는 원소의 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	133136, 133141, 133146, 133151, 133156, 133161, 112672 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117170	},
}					

--윌리엄 가죽 멜빵					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30000, 30109 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30224	},
}					
--윌리엄 로리카					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30010, 30085 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30200	},
}					
--벤더스의 목걸이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30001 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30163	},
}					
--벤더스의 마력 목걸이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30009 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30167	},
}					
--벤더스의 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30008, 30084 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30154	},
}					
--몽키킹의 꼬리					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30002 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30164	},
}					
--키라키라 완드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30003, 30110 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30225	},
}					
--에인션트 소드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30004, 30082 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30197	},
}					
					
--강철의 송곳니					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30165	},
}					
--철그락 강철 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30245	},
}					
--켈라이노의 오른쪽 강철날개					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30139 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30254	},
}					
--엔트의 나뭇가지					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30006, 30083 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30198	},
}					
--박쥐 머플러					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30007 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30166	},
}					
--월리8호의 핵					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30011 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30168	},
}					
--워리어 블레이드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30012, 30086 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30201	},
}					
--스콜피온 가드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30013 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30169	},
}					
--리자드 스컬 완드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30014, 30087 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30202	},
}					
--어둠이 깃든 머리장식					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30015 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30170	},
}					
--베라우크의 수염					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30016 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30171	},
}					
--베라우크의 보물					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30029, 30121 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30236	},
}					
--거대 드릴					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30018, 30111 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30158	},
}					
--월리8호Mk2의 동력 축					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30019, 30089 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30204	},
}					
--블레이드 핸드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30020, 30112 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30227	},
}					
--스카 타투					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30021 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30172	},
}					
--정화된 나소드 드릴					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30022, 30113 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30159	},
}					
--킹나소드의 마력 코어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30027 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30175	},
}					
--미완성 나소드 합금 포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30052, 30098 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30213	},
}					
--변형 나소드 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30061, 30100 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30215	},
}					
			
--변형 나소드 철궁					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30065, 30103 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30218	},
}					
--미완성 나소드 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30123 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30238	},
}					
--알테라시아의 눈					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30023, 30090 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30205	},
}					
--불의 팬던트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30024 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30173	},
}					
--물의 팬던트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30025 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30174	},
}					
--왈도의 레이지 팬던트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30133 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30248	},
}					
--크로우 라이더 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30026, 30091 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30206	},
}					
--자이언트 뽀루 장난감					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30028 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30176	},
}					
--듀라한 헤드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30030 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30177	},
}					
--아이언 헤드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30038, 30081, 30108 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30223	},
}					
--부유석 견장					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30031 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30178	},
}					
--모노 아이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30032, 30092 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30207	},
}					
--듀터의 강령술 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30033, 30093 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30208	},
}					
--속박의 쇠사슬 -약지-					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30034 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30179	},
}					
--주인의 화관					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30180	},
}					
--프록시의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30036, 30094 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30209	},
}					
--맥거드의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30045, 30095 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30210	},
}					
--야성의 문장					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30037 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30181	},
}					
--테스타먼트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30039, 30079, 30106 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30157	},
}					
--베르드의 블레이드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30040, 30080, 30107 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30222	},
}					
--베르드의 꼬리					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30041 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30182	},
}					
--다크스틸 브레슬릿					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30042 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30183	},
}					
--다크엘프의 눈물					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30043 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30184	},
}					
--다크 스케일					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30051 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30189	},
}					
--다크스틸 캐논					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30055, 30099 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30214	},
}					
--백 나이프					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30044 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30185	},
}					
--맥거드의 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30045, 30095 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30210	},
}					
--바르돈의 플레일					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30047, 30097 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30155	},
}					
--글리터 배틀 암가드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30048 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30186	},
}					
--퍼핏 밤					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30049 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30187	},
}					
--알케미 커맨더					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30046, 30096 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30211	},
}					
--스프리건 페더 스컬					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30188	},
}					
--그림자 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30053, 30122 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30237	},
}					
--원소 증폭 가열로					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30054, 30114 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30229	},
}					
--침식된 어비스 블레이드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30060, 30120 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30235	},
}					
--침식된 어비스 스태프					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30064, 30117 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30232	},
}					
--다크스틸 캐논					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30055, 30099 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30214	},
}					
--쉐도우 캐논					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30062, 30101 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30216	},
}					
--푸른 바람의 캐논					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30143 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30258	},
}					
--쉐도우 세이버					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30063, 30102 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30156	},
}					
--높은 어둠의 증표					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30066 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30190	},
}					
--다크 스케일					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30051 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30189	},
}					
--블루 스케일					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30067 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30191	},
}					
--빛의 꼬리					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30068 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30192	},
}					
--챔피언 링					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30069 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30193	},
}					
--보보스 쯔바이핸더					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30070, 30118 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30160	},
}					
--보보스 데빌퍼니셔					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30071, 30119 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30234	},
}					
--아발란쉬 페트레이샤					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30072, 30104 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30219	},
}					
--아발란쉬 커즈샤벨					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30073, 30105 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30220	},
}					
--마그만타 아라크네					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30074, 30116 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30231	},
}					
--마그만타 스파이더 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30075, 30115 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30230	},
}					
--헨델바이츠					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30076 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30194	},
}					
--데모니악 혼					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30077 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30195	},
}					
--스파이더 스컬					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30078 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30196	},
}					
--자가회전식 드릴 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30124 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30239	},
}					
--크러스트 웨지					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30240	},
}					
--뱅가드 아머드 스피어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30126 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30241	},
}					
--리젠트먼트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30127 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30242	},
}					
--광기의 사육사 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30128 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30243	},
}					
--부트루 가시 투척검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30129 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30244	},
}					
--부트루 가시 투척창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30131 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30246	},
}					
--왈도의 스톤 마스크					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30132 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30247	},
}					
--왈도의 레이지 팬던트					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30133 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30248	},
}					
--왈도의 스톤 갑옷					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30134 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30249	},
}					
--금빛 날개의 환희					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30250	},
}					
--금빛 날개의 추락					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30136 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30251	},
}					
--어둠 날개 흑포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30137 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30252	},
}					
--켈라이노의 마법투구					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30138 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30253	},
}					
--켈라이노의 칼날견갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30255	},
}					
--캐베로스의 이빨					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30141 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30162	},
}					
--검은 석궁					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30142 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30257	},
}					
--폭발의 스태프					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30144 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30259	},
}					
--베이가의 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30260	},
}					
--미니 포그와타 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30146 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30261	},
}					
--투아딘의 바람 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30147 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30262	},
}					
--트락타의 부두 가면					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30148 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30263	},
}					
--트락타의 부두 견갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30149 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30264	},
}					
--트락타의 부두 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30150 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30265	},
}					
--대 추장의 윈드 블레이드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30151 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30266	},
}					
--대 추장의 암 가드					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30152 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30267	},
}					
--대 추장의 윈드 스톤 건틀렛					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30153 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30268	},
}					
--드래곤 본 보우					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	30017, 30088 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	30203	},
}					
--청동 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	105, 110, 135, 1002000, 1002005, 1004000, 1004005, 100 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040100	},
}					
--중급 청동 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	120, 1002010, 1002015, 1002020, 1002025, 1002030, 1002035, 1004010, 1004015, 1004020, 1004025, 1004030, 1004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040101	},
}					
--상급 청동 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	130, 1002040, 1002045, 1004040, 1004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040102	},
}					
--스카우트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	140, 145, 150, 175, 820, 1006000, 1006005, 1008000, 1008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080100	},
}					
--중급 스카우트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	160, 1006010, 1006015, 1006020, 1006025, 1006030, 1006035, 1008010, 1008015, 1008020, 1008025, 1008030, 1008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080101	},
}					
--상급 스카우트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	170, 1006040, 1006045, 1008040, 1008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080102	},
}					
--최상급 스카우트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080103	},
}					
--합금 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	180, 185, 190, 830, 1010000, 1010005, 1012000, 1012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120100	},
}					
--중급 합금 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	200, 1010010, 1010015, 1010020, 1010025, 1010030, 1010035, 1012010, 1012015, 1012020, 1012025, 1012030, 1012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120101	},
}					
--상급 합금 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	210, 1010040, 1010045, 1012040, 1012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120102	},
}					
--최상급 합금 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120103	},
}					
--호버크 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016000, 1016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160100	},
}					
--중급 호버크 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016010, 1016015, 1016020, 1016025, 1016030, 1016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160101	},
}					
--상급 호버크 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016040, 1016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160102	},
}					
--최상급 호버크 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160103	},
}					
--레더 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020000, 1020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200100	},
}					
--샤이닝 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024000, 1024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240100	},
}					
--중급 레더 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020010, 1020015, 1020020, 1020025, 1020030, 1020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200101	},
}					
--중급 샤이닝 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024010, 1024015, 1024020, 1024025, 1024030, 1024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240101	},
}					
--상급 레더 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020040, 1020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200102	},
}					
--상급 샤이닝 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024040, 1024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240102	},
}					
--최상급 레더 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200103	},
}					
--최상급 샤이닝 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240103	},
}					
--컴뱃 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028000, 1028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280100	},
}					
--하이드 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032000, 1032005, 380, 385, 390, 880, 1030000, 1030005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320100	},
}					

--자이언트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036000, 1036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360100	},
}					
--중급 컴뱃 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028010, 1028015, 1028020, 1028025, 1028030, 1028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280101	},
}					
--중급 하이드 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032010, 1032015, 1032020, 1032025, 1032030, 1032035, 400, 1030010, 1030015, 1030020, 1030025, 1030030, 1030035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320101	},
}					
--중급 자이언트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036010, 1036015, 1036020, 1036025, 1036030, 1036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360101	},
}					
--상급 컴뱃 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028040, 1028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280102	},
}					
--상급 하이드 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032040, 1032045, 410, 1030040, 1030045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320102	},
}					
--상급 자이언트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036040, 1036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360102	},
}					
--최상급 컴뱃 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280103	},
}					
--최상급 하이드 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320103	},
}					
--최상급 자이언트 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360103	},
}					
--견습 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040000, 1040005, 1140000, 1140005, 1340000, 1340005, 1540000, 1540005, 1940000, 1940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400100	},
}					
--중급 견습 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040010, 1040015, 1040020, 1040025, 1040030, 1040035, 1140010, 1140015, 1140020, 1140025, 1140030, 1140035, 1340010, 1340015, 1340020, 1340025, 1340030, 1340035, 1540010, 1540015, 1540020, 1540025, 1540030, 1540035, 1940010, 1940015, 1940020, 1940025, 1940030, 1940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400101	},
}					
--상급 견습 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040040, 1040045, 1140040, 1140045, 1340040, 1340045, 1540040, 1540045, 1940040, 1940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400102	},
}					
--최상급 견습 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040050, 1140050, 1340050, 1540050, 1940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400103	},
}					
--강화 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044000, 1044005, 1144000, 1144005, 1344000, 1344005, 1544000, 1544005, 1944000, 1944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440100	},
}					
--중급 강화 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044010, 1044015, 1044020, 1044025, 1044030, 1044035, 1144010, 1144015, 1144020, 1144025, 1144030, 1144035, 1344010, 1344015, 1344020, 1344025, 1344030, 1344035, 1544010, 1544015, 1544020, 1544025, 1544030, 1544035, 1944010, 1944015, 1944020, 1944025, 1944030, 1944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440101	},
}					
--상급 강화 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044040, 1044045, 1144040, 1144045, 1344040, 1344045, 1544040, 1544045, 1944040, 1944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440102	},
}					
--최상급 강화 전투 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044050, 1144050, 1344050, 1544050, 1944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440103	},
}					
--최상급 벨더 투사 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148050, 1348050, 1548050, 1948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480103	},
}					
--상급 벨더 투사 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148040, 1148045, 1348040, 1348045, 1548040, 1548045, 1948040, 1948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480102	},
}					
--중급 벨더 투사 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046010, 1046015, 1046020, 1046025, 1046030, 1046035, 1146010, 1146015, 1146020, 1146025, 1146030, 1146035, 1148010, 1148015, 1148020, 1148025, 1148030, 1148035, 1346010, 1346015, 1346020, 1346025, 1346030, 1346035, 1348010, 1348015, 1348020, 1348025, 1348030, 1348035, 1548010, 1548015, 1548020, 1548025, 1548030, 1548035, 1948010, 1948015, 1948020, 1948025, 1948030, 1948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480101	},
}					
--벨더 투사 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148000, 1148005, 1348000, 1348005, 1548000, 1548005, 1948000, 1948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480100	},
}					
--티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150000, 1150005, 1350000, 1152000, 1152005, 1352000, 1352005, 1552000, 1552005, 1952000, 1952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520100	},
}					
--중급 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150010, 1150015, 1150020, 1150025, 1150030, 1150035, 1152010, 1152015, 1152020, 1152025, 1152030, 1152035, 1350010, 1350015, 1350020, 1350025, 1350030, 1350035, 1352010, 1352015, 1352020, 1352025, 1352030, 1352035, 1552010, 1552015, 1552020, 1552025, 1552030, 1552035, 1952010, 1952015, 1952020, 1952025, 1952030, 1952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520101	},
}					
--상급 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1350040, 1350045, 1352040, 1352045, 1552040, 1552045, 1952040, 1952045, 1152040, 1152045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520102	},
}									
--최상급 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1352050, 1552050, 1952050, 1152050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520103	},
}					
--최상급 강화 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560103	},
}					
--상급 강화 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156040, 1156045, 1356040, 1356045, 1556040, 1556045, 1956040, 1956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560102	},
}					
--중급 강화 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156010, 1156015, 1156020, 1156025, 1156030, 1156035, 1356010, 1356015, 1356020, 1356025, 1356030, 1356035, 1556010, 1556015, 1556020, 1556025, 1556030, 1556035, 1956010, 1956015, 1956020, 1956025, 1956030, 1956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560101	},
}					
--강화 티타늄 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156000, 1156005, 1356000, 1356005, 1556000, 1556005, 1956000, 1956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560100	},
}					
--하멜 탐사단 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160000, 1160005, 1360000, 1360005, 1560000, 1560005, 1960000, 1960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600100	},
}					
--중급 하멜 탐사단 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160010, 1160015, 1160020, 1160025, 1160030, 1160035, 1360010, 1360015, 1360020, 1360025, 1360030, 1360035, 1560010, 1560015, 1560020, 1560025, 1560030, 1560035, 1960010, 1960015, 1960020, 1960025, 1960030, 1960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600101	},
}					
--상급 하멜 탐사단 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160040, 1160045, 1360040, 1360045, 1560040, 1560045, 1960040, 1960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600102	},
}					
--최상급 하멜 탐사단 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160050, 1360050, 1560050, 1960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600103	},
}					
--청동 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14000, 14005, 14010, 14035, 2002000, 2002005, 2004000, 2004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040200	},
}					
--중급 청동 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14020, 2002010, 2002015, 2002020, 2002025, 2002030, 2002035, 2004010, 2004015, 2004020, 2004025, 2004030, 2004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040201	},
}					
--상급 청동 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14030, 2002040, 2002045, 2004040, 2004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040202	},
}					
--최상급 청동 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040203	},
}					
--최상급 스카우트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080203	},
}					
--상급 스카우트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2008040, 2008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080202	},
}					
--중급 스카우트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2008010, 2008015, 2008020, 2008025, 2008030, 2008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080201	},
}					
--스카우트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14075, 2008000, 2008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080200	},
}					
--합금 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14085, 14090, 14730, 2010000, 2010005, 2012000, 2012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120200	},
}					
--중급 합금 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14100, 2010010, 2010015, 2010020, 2010025, 2010030, 2010035, 2012010, 2012015, 2012020, 2012025, 2012030, 2012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120201	},
}					
--상급 합금 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14110, 2010040, 2010045, 2012040, 2012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120202	},
}					
--최상급 합금 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120203	},
}					
--최상급 호버크 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160203	},
}					
--상급 호버크 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2016040, 2016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160202	},
}					
--중급 호버크 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2016010, 2016015, 2016020, 2016025, 2016030, 2016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160201	},
}					
--호버크 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2016000, 2016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160200	},
}					
--레더 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14160, 14165, 14170, 14750, 2018000, 2018005, 2020000, 2020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200200	},
}					
--상급 레더 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14190, 2018040, 2018045, 2020040, 2020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200202	},
}					
--최상급 레더 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200203	},
}					
--샤이닝 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14200, 14205, 14210, 14760, 2022000, 2022005, 2024000, 2024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240200	},
}					
--중급 샤이닝 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14220, 2022010, 2022015, 2022020, 2022025, 2022030, 2022035, 2024010, 2024015, 2024020, 2024025, 2024030, 2024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240201	},
}					
--상급 샤이닝 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14230, 2022040, 2022045, 2024040, 2024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240202	},
}					
--최상급 샤이닝 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240203	},
}					
--컴뱃 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14240, 14245, 14250, 2026000, 2026005, 2028000, 2028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280200	},
}					
--중급 컴뱃 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14260, 14770, 2026010, 2026015, 2026020, 2026025, 2026030, 2026035, 2028010, 2028015, 2028020, 2028025, 2028030, 2028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280201	},
}					
--상급 컴뱃 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14270, 2026040, 2026045, 2028040, 2028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280202	},
}					
--최상급 컴뱃 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280203	},
}					
--하이드 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14280, 14285, 14290, 14780, 2030000, 2030005, 2032000, 2032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320200	},
}					
--중급 하이드 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14300, 2030010, 2030015, 2030020, 2030025, 2030030, 2030035, 2032010, 2032015, 2032020, 2032025, 2032030, 2032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320201	},
}					
--상급 하이드 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14310, 2030040, 2030045, 2032040, 2032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320202	},
}					
--최상급 하이드 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320203	},
}					
--자이언트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14320, 14325, 14330, 14790, 2034000, 2034005, 2036000, 2036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360200	},
}					
--중급 자이언트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14340, 2034010, 2034015, 2034020, 2034025, 2034030, 2034035, 2036010, 2036015, 2036020, 2036025, 2036030, 2036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360201	},
}					
--상급 자이언트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14350, 2034040, 2034045, 2036040, 2036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360202	},
}					
--최상급 자이언트 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360203	},
}					
--견습 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2138000, 2138005, 2140000, 2140005, 2338000, 2338005, 2340000, 2340005, 2540000, 2540005, 2940000, 2940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400200	},
}					
--중급 견습 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14370, 14800, 2038010, 2038015, 2038020, 2038025, 2038030, 2038035, 2040010, 2040015, 2040020, 2040025, 2040030, 2040035, 2138010, 2138015, 2138020, 2138025, 2138030, 2138035, 2140010, 2140015, 2140020, 2140025, 2140030, 2140035, 2338010, 2338015, 2338020, 2338025, 2338030, 2338035, 2340010, 2340015, 2340020, 2340025, 2340030, 2340035, 2540010, 2540015, 2540020, 2540025, 2540030, 2540035, 2940010, 2940015, 2940020, 2940025, 2940030, 2940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400201	},
}					
--상급 견습 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14375, 2038040, 2038045, 2040040, 2040045, 2138040, 2138045, 2140040, 2140045, 2338040, 2338045, 2340040, 2340045, 2540040, 2540045, 2940040, 2940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400202	},
}					
--최상급 견습 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2040050, 2140050, 2340050, 2540050, 2940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400203	},
}					
--강화 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14385, 14390, 14395, 2042000, 2042005, 2044000, 2044005, 2142000, 2142005, 2144000, 2144005, 2342000, 2342005, 2344000, 2344005, 2544000, 2544005, 2944000, 2944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440200	},
}					
--중급 강화 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14400, 2042010, 2042015, 2042020, 2042025, 2042030, 2042035, 2044010, 2044015, 2044020, 2044025, 2044030, 2044035, 2142010, 2142015, 2142020, 2142025, 2142030, 2142035, 2144010, 2144015, 2144020, 2144025, 2144030, 2144035, 2342010, 2342015, 2342020, 2342025, 2342030, 2342035, 2344010, 2344015, 2344020, 2344025, 2344030, 2344035, 2544010, 2544015, 2544020, 2544025, 2544030, 2544035, 2944010, 2944015, 2944020, 2944025, 2944030, 2944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440201	},
}					
--상급 강화 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	14405, 2042040, 2042045, 2044040, 2044045, 2142040, 2142045, 2144040, 2144045, 2342040, 2342045, 2344040, 2344045, 2544040, 2544045, 2944040, 2944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440202	},
}					
--최상급 강화 전투 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2044050, 2144050, 2344050, 2544050, 2944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440203	},
}					
--벨더 투사 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2046000, 2046005, 2146000, 2146005, 2148000, 2148005, 2346000, 2346005, 2348000, 2348005, 2548000, 2548005, 2948000, 2948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480200	},
}					
--중급 벨더 투사 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2046010, 2046015, 2046020, 2046025, 2046030, 2046035, 2146010, 2146015, 2146020, 2146025, 2146030, 2146035, 2148010, 2148015, 2148020, 2148025, 2148030, 2148035, 2346010, 2346015, 2346020, 2346025, 2346030, 2346035, 2348010, 2348015, 2348020, 2348025, 2348030, 2348035, 2548010, 2548015, 2548020, 2548025, 2548030, 2548035, 2948010, 2948015, 2948020, 2948025, 2948030, 2948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480201	},
}					
--상급 벨더 투사 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2046040, 2046045, 2146040, 2146045, 2148040, 2148045, 2346040, 2346045, 2348040, 2348045, 2548040, 2548045, 2948040, 2948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480202	},
}					
--최상급 벨더 투사 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2148050, 2348050, 2548050, 2948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480203	},
}					
--티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2150000, 2150005, 2152000, 2152005, 2350000, 2350005, 2352000, 2352005, 2552000, 2552005, 2952000, 2952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520200	},
}					
--중급 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2150010, 2150015, 2150020, 2150025, 2150030, 2150035, 2152010, 2152015, 2152020, 2152025, 2152030, 2152035, 2350010, 2350015, 2350020, 2350025, 2350030, 2350035, 2352010, 2352015, 2352020, 2352025, 2352030, 2352035, 2552010, 2552015, 2552020, 2552025, 2552030, 2552035, 2952010, 2952015, 2952020, 2952025, 2952030, 2952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520201	},
}					
--상급 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2150040, 2150045, 2152040, 2152045, 2350040, 2350045, 2352040, 2352045, 2552040, 2552045, 2952040, 2952045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520202	},
}					
--최상급 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2152050, 2352050, 2552050, 2952050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520203	},
}					
--강화 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2156000, 2156005, 2356000, 2356005, 2556000, 2556005, 2956000, 2956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560200	},
}					
--중급 강화 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2156010, 2156015, 2156020, 2156025, 2156030, 2156035, 2356010, 2356015, 2356020, 2356025, 2356030, 2356035, 2556010, 2556015, 2556020, 2556025, 2556030, 2556035, 2956010, 2956015, 2956020, 2956025, 2956030, 2956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560201	},
}					
--상급 강화 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2156040, 2156045, 2356040, 2356045, 2556040, 2556045, 2956040, 2956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560202	},
}					
--최상급 강화 티타늄 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2556050, 2956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560203	},
}					
--하멜 탐사단 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2160000, 2160005, 2360000, 2360005, 2560000, 2560005, 2960000, 2960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600200	},
}					
--중급 하멜 탐사단 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2160010, 2160015, 2160020, 2160025, 2160030, 2160035, 2360010, 2360015, 2360020, 2360025, 2360030, 2360035, 2560010, 2560015, 2560020, 2560025, 2560030, 2560035, 2960010, 2960015, 2960020, 2960025, 2960030, 2960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600201	},
}					
--상급 하멜 탐사단 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2160040, 2160045, 2360040, 2360045, 2560040, 2560045, 2960040, 2960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600202	},
}					
--최상급 하멜 탐사단 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2160050, 2360050, 2560050, 2960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600203	},
}					
--청동 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7000, 7005, 7010, 7035, 3002000, 3002005, 3004000, 3004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040300	},
}					
--청동 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7004000, 7004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040700	},
}					
--청동 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21000, 21005, 21010, 21035, 4002000, 4002005, 4004000, 4004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040400	},
}					
--청동 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	28000, 5002000, 5002005, 5004000, 5004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040500	},
}					
--청동 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6002000, 6002005, 6004000, 6004005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040600	},
}					
--중급 청동 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7020, 3002010, 3002015, 3002020, 3002025, 3002030, 3002035, 3004010, 3004015, 3004020, 3004025, 3004030, 3004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040301	},
}					
--중급 청동 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21020, 4002010, 4002015, 4002020, 4002025, 4002030, 4002035, 4004010, 4004015, 4004020, 4004025, 4004030, 4004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040401	},
}					
--중급 청동 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5002010, 5002015, 5002020, 5002025, 5002030, 5002035, 5004010, 5004015, 5004020, 5004025, 5004030, 5004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040501	},
}					
--중급 청동 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6002010, 6002015, 6002020, 6002025, 6002030, 6002035, 6004010, 6004015, 6004020, 6004025, 6004030, 6004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040601	},
}					
--중급 청동 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7004010, 7004015, 7004020, 7004025, 7004030, 7004035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040701	},
}					
--상급 청동 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7030, 3002040, 3002045, 3004040, 3004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040302	},
}					
--상급 청동 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21030, 4002040, 4002045, 4004040, 4004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040402	},
}					
--상급 청동 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5002040, 5002045, 5004040, 5004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040502	},
}					
--상급 청동 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6002040, 6002045, 6004040, 6004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040602	},
}					
--상급 청동 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7004040, 7004045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040702	},
}					
--최상급 청동 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040303	},
}					
--최상급 청동 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040403	},
}					
--최상급 청동 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040503	},
}					
--최상급 청동 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040603	},
}					
--최상급 청동 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7004050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040703	},
}					
--스카우트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7040, 7045, 7050, 7075, 7720, 3006000, 3006005, 3008000, 3008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080300	},
}					
--스카우트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21040, 21045, 21050, 21075, 21720, 4006000, 4006005, 4008000, 4008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080400	},
}					
--스카우트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5006000, 5006005, 5008000, 5008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080500	},
}					
--스카우트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6006000, 6006005, 6008000, 6008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080600	},
}					
--스카우트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7008000, 7008005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080700	},
}					
--중급 스카우트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7060, 3006010, 3006015, 3006020, 3006025, 3006030, 3006035, 3008010, 3008015, 3008020, 3008025, 3008030, 3008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080301	},
}					
--중급 스카우트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21060, 4006010, 4006015, 4006020, 4006025, 4006030, 4006035, 4008010, 4008015, 4008020, 4008025, 4008030, 4008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080401	},
}					
--중급 스카우트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5006010, 5006015, 5006020, 5006025, 5006030, 5006035, 5008010, 5008015, 5008020, 5008025, 5008030, 5008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080501	},
}					
--중급 스카우트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6006010, 6006015, 6006020, 6006025, 6006030, 6006035, 6008010, 6008015, 6008020, 6008025, 6008030, 6008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080601	},
}					
--중급 스카우트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7008010, 7008015, 7008020, 7008025, 7008030, 7008035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080701	},
}					
--상급 스카우트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7070, 3006040, 3006045, 3008040, 3008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080302	},
}					
--상급 스카우트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21070, 4006040, 4006045, 4008040, 4008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080402	},
}					
--상급 스카우트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5006040, 5006045, 5008040, 5008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080502	},
}					
--상급 스카우트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7008040, 7008045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080702	},
}					
--최상급 스카우트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080303	},
}					
--최상급 스카우트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080403	},
}					
--최상급 스카우트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080503	},
}					
--최상급 스카우트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6008050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080603	},
}					
--합금 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7080, 7085, 7090, 7730, 3010000, 3010005, 3012000, 3012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120300	},
}					
--합금 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21080, 21085, 21090, 21730, 4010000, 4010005, 4012000, 4012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120400	},
}					
--합금 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5010000, 5010005, 5012000, 5012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120500	},
}					
--합금 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6010000, 6010005, 6012000, 6012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120600	},
}					
--합금 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7012000, 7012005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120700	},
}					
--중급 합금 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7100, 3010010, 3010015, 3010020, 3010025, 3010030, 3010035, 3012010, 3012015, 3012020, 3012025, 3012030, 3012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120301	},
}					
--중급 합금 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21100, 4010010, 4010015, 4010020, 4010025, 4010030, 4010035, 4012010, 4012015, 4012020, 4012025, 4012030, 4012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120401	},
}					
--중급 합금 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5010010, 5010015, 5010020, 5010025, 5010030, 5010035, 5012010, 5012015, 5012020, 5012025, 5012030, 5012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120501	},
}					
--중급 합금 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6010010, 6010015, 6010020, 6010025, 6010030, 6010035, 6012010, 6012015, 6012020, 6012025, 6012030, 6012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120601	},
}					
--중급 합금 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7012010, 7012015, 7012020, 7012025, 7012030, 7012035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120701	},
}					
--상급 합금 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7110, 3010040, 3010045, 3012040, 3012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120302	},
}					
--상급 합금 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21110, 4010040, 4010045, 4012040, 4012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120402	},
}					
--상급 합금 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5010040, 5010045, 5012040, 5012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120502	},
}					
--상급 합금 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6010040, 6010045, 6012040, 6012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120602	},
}					
--상급 합금 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7012040, 7012045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120702	},
}					
--최상급 합금 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120303	},
}					
--최상급 합금 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120403	},
}					
--최상급 합금 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120503	},
}					
--최상급 합금 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120603	},
}					
--최상급 합금 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7012050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120703	},
}					
--호버크 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7120, 7125, 7130, 3014000, 3014005, 3016000, 3016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160300	},
}					
--호버크 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21120, 21125, 21130, 4014000, 4014005, 4016000, 4016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160400	},
}					
--호버크 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5014000, 5014005, 5016000, 5016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160500	},
}					
--호버크 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6014000, 6014005, 6016000, 6016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160600	},
}					
--호버크 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7016000, 7016005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160700	},
}					
--중급 호버크 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7140, 7740, 3014010, 3014015, 3014020, 3014025, 3014030, 3014035, 3016010, 3016015, 3016020, 3016025, 3016030, 3016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160301	},
}					
--중급 호버크 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21140, 21740, 4014010, 4014015, 4014020, 4014025, 4014030, 4014035, 4016010, 4016015, 4016020, 4016025, 4016030, 4016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160401	},
}					
--중급 호버크 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5014010, 5014015, 5014020, 5014025, 5014030, 5014035, 5016010, 5016015, 5016020, 5016025, 5016030, 5016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160501	},
}					
--중급 호버크 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6014010, 6014015, 6014020, 6014025, 6014030, 6014035, 6016010, 6016015, 6016020, 6016025, 6016030, 6016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160601	},
}					
--중급 호버크 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7016010, 7016015, 7016020, 7016025, 7016030, 7016035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160701	},
}					
--상급 호버크 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7150, 3014040, 3014045, 3016040, 3016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160302	},
}					
--상급 호버크 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21150, 4014040, 4014045, 4016040, 4016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160402	},
}					
--상급 호버크 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5014040, 5014045, 5016040, 5016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160502	},
}					
--상급 호버크 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6014040, 6014045, 6016040, 6016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160602	},
}					
--상급 호버크 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7016040, 7016045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160702	},
}					
--최상급 호버크 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160303	},
}					
--최상급 호버크 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160403	},
}					
--최상급 호버크 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160503	},
}					
--최상급 호버크 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6016050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160603	},
}					
--레더 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7160, 7165, 7170, 7750, 3018000, 3018005, 3020000, 3020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200300	},
}					
--레더 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21160, 21165, 21170, 21750, 4018000, 4018005, 4020000, 4020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200400	},
}					
--레더 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5018000, 5018005, 5020000, 5020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200500	},
}					
--레더 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6018000, 6018005, 6020000, 6020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200600	},
}					
--레더 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7020000, 7020005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200700	},
}					
--중급 레더 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7180, 3018010, 3018015, 3018020, 3018025, 3018030, 3018035, 3020010, 3020015, 3020020, 3020025, 3020030, 3020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200301	},
}					
--중급 레더 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21180, 4018010, 4018015, 4018020, 4018025, 4018030, 4018035, 4020010, 4020015, 4020020, 4020025, 4020030, 4020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200401	},
}					

--중급 레더 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5018010, 5018015, 5018020, 5018025, 5018030, 5018035, 5020010, 5020015, 5020020, 5020025, 5020030, 5020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200501	},
}					
--중급 레더 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6018010, 6018015, 6018020, 6018025, 6018030, 6018035, 6020010, 6020015, 6020020, 6020025, 6020030, 6020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200601	},
}					
--중급 레더 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7020010, 7020015, 7020020, 7020025, 7020030, 7020035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200701	},
}					
					
--상급 레더 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7190, 3018040, 3018045, 3020040, 3020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200302	},
}					
--상급 레더 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21190, 4018040, 4018045, 4020040, 4020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200402	},
}					
--상급 레더 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5018040, 5018045, 5020040, 5020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200502	},
}					
--상급 레더 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6018040, 6018045, 6020040, 6020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200602	},
}					
--상급 레더 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7020040, 7020045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200702	},
}					
--최상급 레더 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200303	},
}					
--최상급 레더 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200403	},
}					
--최상급 레더 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200503	},
}					
--최상급 레더 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200603	},
}					
--최상급 레더 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7020050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200703	},
}					
--샤이닝 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7200, 7205, 7210, 7760, 3022000, 3022005, 3024000, 3024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240300	},
}					
--샤이닝 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21200, 21205, 21210, 21760, 4022000, 4022005, 4024000, 4024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240400	},
}					
--샤이닝 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5022000, 5022005, 5024000, 5024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240500	},
}					
--샤이닝 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6022000, 6022005, 6024000, 6024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240600	},
}					
--샤이닝 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7024000, 7024005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240700	},
}					
--중급 샤이닝 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7220, 3022010, 3022015, 3022020, 3022025, 3022030, 3022035, 3024010, 3024015, 3024020, 3024025, 3024030, 3024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240301	},
}					
--중급 샤이닝 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21220, 4022010, 4022015, 4022020, 4022025, 4022030, 4022035, 4024010, 4024015, 4024020, 4024025, 4024030, 4024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240401	},
}					
--중급 샤이닝 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5022010, 5022015, 5022020, 5022025, 5022030, 5022035, 5024010, 5024015, 5024020, 5024025, 5024030, 5024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240501	},
}					
--중급 샤이닝 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6022010, 6022015, 6022020, 6022025, 6022030, 6022035, 6024010, 6024015, 6024020, 6024025, 6024030, 6024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240601	},
}					
--중급 샤이닝 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7024010, 7024015, 7024020, 7024025, 7024030, 7024035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240701	},
}					
--상급 샤이닝 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7230, 3022040, 3022045, 3024040, 3024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240302	},
}					
--상급 샤이닝 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21230, 4022040, 4022045, 4024040, 4024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240402	},
}					
--상급 샤이닝 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5022040, 5022045, 5024040, 5024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240502	},
}					
--상급 샤이닝 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6022040, 6022045, 6024040, 6024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240602	},
}					
--상급 샤이닝 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7024040, 7024045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240702	},
}					
--최상급 샤이닝 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240303	},
}					
--최상급 샤이닝 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240403	},
}					
--최상급 샤이닝 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240503	},
}					
--최상급 샤이닝 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6024050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240603	},
}					
--컴뱃 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7240, 7245, 7250, 3026000, 3026005, 3028000, 3028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280300	},
}					
--컴뱃 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21240, 21245, 21250, 4026000, 4026005, 4028000, 4028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280400	},
}					
--컴뱃 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5026000, 5026005, 5028000, 5028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280500	},
}					
--컴뱃 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6026000, 6026005, 6028000, 6028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280600	},
}					
--컴뱃 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7028000, 7028005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280700	},
}					
--중급 컴뱃 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7260, 7770, 3026010, 3026015, 3026020, 3026025, 3026030, 3026035, 3028010, 3028015, 3028020, 3028025, 3028030, 3028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280301	},
}					
--중급 컴뱃 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21260, 21770, 4026010, 4026015, 4026020, 4026025, 4026030, 4026035, 4028010, 4028015, 4028020, 4028025, 4028030, 4028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280401	},
}					
--중급 컴뱃 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5026010, 5026015, 5026020, 5026025, 5026030, 5026035, 5028010, 5028015, 5028020, 5028025, 5028030, 5028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280501	},
}					
--중급 컴뱃 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6026010, 6026015, 6026020, 6026025, 6026030, 6026035, 6028010, 6028015, 6028020, 6028025, 6028030, 6028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280601	},
}					
--중급 컴뱃 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7028010, 7028015, 7028020, 7028025, 7028030, 7028035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280701	},
}					
--상급 컴뱃 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7270, 3026040, 3026045, 3028040, 3028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280302	},
}					
--상급 컴뱃 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21270, 4026040, 4026045, 4028040, 4028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280402	},
}					
--상급 컴뱃 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5026040, 5026045, 5028040, 5028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280502	},
}					
--상급 컴뱃 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6026040, 6026045, 6028040, 6028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280602	},
}					
--상급 컴뱃 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7028040, 7028045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280702	},
}					
--최상급 컴뱃 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280303	},
}					
--최상급 컴뱃 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280403	},
}					
--최상급 컴뱃 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280503	},
}					
--최상급 컴뱃 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280603	},
}					
--최상급 컴뱃 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7028050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280703	},
}					
--하이드 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7280, 7285, 7290, 7780, 3030000, 3030005, 3032000, 3032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320300	},
}					
--하이드 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21280, 21285, 21290, 21780, 4030000, 4030005, 4032000, 4032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320400	},
}					
--하이드 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5030000, 5030005, 5032000, 5032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320500	},
}					
--하이드 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6030000, 6030005, 6032000, 6032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320600	},
}					
--하이드 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7032000, 7032005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320700	},
}					
--중급 하이드 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7300, 3030010, 3030015, 3030020, 3030025, 3030030, 3030035, 3032010, 3032015, 3032020, 3032025, 3032030, 3032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320301	},
}					
--중급 하이드 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21300, 4030010, 4030015, 4030020, 4030025, 4030030, 4030035, 4032010, 4032015, 4032020, 4032025, 4032030, 4032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320401	},
}					
--중급 하이드 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5030010, 5030015, 5030020, 5030025, 5030030, 5030035, 5032010, 5032015, 5032020, 5032025, 5032030, 5032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320501	},
}					
--중급 하이드 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6030010, 6030015, 6030020, 6030025, 6030030, 6030035, 6032010, 6032015, 6032020, 6032025, 6032030, 6032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320601	},
}					
--중급 하이드 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7032010, 7032015, 7032020, 7032025, 7032030, 7032035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320701	},
}					
--상급 하이드 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7310, 3030040, 3030045, 3032040, 3032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320302	},
}					
--상급 하이드 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21310, 4030040, 4030045, 4032040, 4032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320402	},
}					
--상급 하이드 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5030040, 5030045, 5032040, 5032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320502	},
}					
--상급 하이드 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6030040, 6030045, 6032040, 6032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320602	},
}					
--상급 하이드 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7030040, 7032040, 7032045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320702	},
}					
--최상급 하이드 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320303	},
}					
--최상급 하이드 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320403	},
}					
--최상급 하이드 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320503	},
}					
--최상급 하이드 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6032050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320603	},
}					
--자이언트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7320, 7325, 7330, 7790, 3034000, 3034005, 3036000, 3036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360300	},
}					
--자이언트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21320, 21325, 21330, 21790, 4034000, 4034005, 4036000, 4036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360400	},
}					
--자이언트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5034000, 5034005, 5036000, 5036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360500	},
}					
--자이언트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6034000, 6034005, 6036000, 6036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360600	},
}					
--자이언트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7036000, 7036005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360700	},
}					
--중급 자이언트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7340, 3034010, 3034015, 3034020, 3034025, 3034030, 3034035, 3036010, 3036015, 3036020, 3036025, 3036030, 3036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360301	},
}					
--중급 자이언트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21340, 4034010, 4034015, 4034020, 4034025, 4034030, 4034035, 4036010, 4036015, 4036020, 4036025, 4036030, 4036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360401	},
}					
--중급 자이언트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5034010, 5034015, 5034020, 5034025, 5034030, 5034035, 5036010, 5036015, 5036020, 5036025, 5036030, 5036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360501	},
}					
--중급 자이언트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6034010, 6034015, 6034020, 6034025, 6034030, 6034035, 6036010, 6036015, 6036020, 6036025, 6036030, 6036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360601	},
}					
--중급 자이언트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7036010, 7036015, 7036020, 7036025, 7036030, 7036035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360701	},
}					
--상급 자이언트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7350, 3034040, 3034045, 3036040, 3036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360302	},
}					
--상급 자이언트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21350, 4034040, 4034045, 4036040, 4036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360402	},
}					
--상급 자이언트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5034040, 5034045, 5036040, 5036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360502	},
}					
--상급 자이언트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6034040, 6034045, 6036040, 6036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360602	},
}					
--상급 자이언트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7036040, 7036045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360702	},
}					
--최상급 자이언트 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360303	},
}					
--최상급 자이언트 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360403	},
}					
--최상급 자이언트 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360503	},
}					
--최상급 자이언트 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360603	},
}					
--최상급 자이언트 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7036050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360703	},
}					
--견습 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7355, 7360, 7365, 3038000, 3038005, 3040000, 3040005, 3138000, 3138005, 3140000, 3140005, 3338000, 3338005, 3340000, 3340005, 3540000, 3540005, 3940000, 3940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400300	},
}					
--견습 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21355, 21360, 21365, 4038000, 4038005, 4040000, 4040005, 4138000, 4138005, 4140000, 4140005, 4338000, 4338005, 4340000, 4340005, 4540000, 4540005, 4940000, 4940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400400	},
}					
--견습 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5038000, 5038005, 5040000, 5040005, 5138000, 5138005, 5140000, 5140005, 5338000, 5338005, 5340000, 5340005, 5540000, 5540005, 5940000, 5940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400500	},
}					
--견습 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6038000, 6038005, 6040000, 6040005, 6140000, 6140005, 6340000, 6340005, 6540000, 6540005, 6940000, 6940005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400600	},
}					
--견습 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7040000, 7040005, 7140000, 7140005, 7340000, 7340005, 7540000, 7540005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400700	},
}					
--중급 견습 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7370, 7800, 3038010, 3038015, 3038020, 3038025, 3038030, 3038035, 3040010, 3040015, 3040020, 3040025, 3040030, 3040035, 3138010, 3138015, 3138020, 3138025, 3138030, 3138035, 3140010, 3140015, 3140020, 3140025, 3140030, 3140035, 3338010, 3338015, 3338020, 3338025, 3338030, 3338035, 3340010, 3340015, 3340020, 3340025, 3340030, 3340035, 3540010, 3540015, 3540020, 3540025, 3540030, 3540035, 3940010, 3940015, 3940020, 3940025, 3940030, 3940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400301	},
}					
--중급 견습 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21370, 21800, 4038010, 4038015, 4038020, 4038025, 4038030, 4038035, 4040010, 4040015, 4040020, 4040025, 4040030, 4040035, 4138010, 4138015, 4138020, 4138025, 4138030, 4138035, 4140010, 4140015, 4140020, 4140025, 4140030, 4140035, 4338010, 4338015, 4338020, 4338025, 4338030, 4338035, 4340010, 4340015, 4340020, 4340025, 4340030, 4340035, 4540010, 4540015, 4540020, 4540025, 4540030, 4540035, 4940010, 4940015, 4940020, 4940025, 4940030, 4940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400401	},
}					
--중급 견습 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5038010, 5038015, 5038020, 5038025, 5038030, 5038035, 5040010, 5040015, 5040020, 5040025, 5040030, 5040035, 5138010, 5138015, 5138020, 5138025, 5138030, 5138035, 5140010, 5140015, 5140020, 5140025, 5140030, 5140035, 5338010, 5338015, 5338020, 5338025, 5338030, 5338035, 5340010, 5340015, 5340020, 5340025, 5340030, 5340035, 5540010, 5540015, 5540020, 5540025, 5540030, 5540035, 5940010, 5940015, 5940020, 5940025, 5940030, 5940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400501	},
}					
--중급 견습 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6038010, 6038015, 6038020, 6038025, 6038030, 6038035, 6040010, 6040015, 6040020, 6040025, 6040030, 6040035, 6140010, 6140015, 6140020, 6140025, 6140030, 6140035, 6340010, 6340015, 6340020, 6340025, 6340030, 6340035, 6540010, 6540015, 6540020, 6540025, 6540030, 6540035, 6940010, 6940015, 6940020, 6940025, 6940030, 6940035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400601	},
}					
--중급 견습 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7040010, 7040015, 7040020, 7040025, 7040030, 7040035, 7140010, 7140015, 7140020, 7140025, 7140030, 7140035, 7340010, 7340015, 7340020, 7340025, 7340030, 7340035, 7540010, 7540015, 7540020, 7540025, 7540030, 7540035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400701	},
}					
--상급 견습 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7375, 3038040, 3038045, 3040040, 3040045, 3138040, 3138045, 3140040, 3140045, 3338040, 3338045, 3340040, 3340045, 3540040, 3540045, 3940040, 3940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400302	},
}					
--상급 견습 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21375, 4038040, 4038045, 4040040, 4040045, 4138040, 4138045, 4140040, 4140045, 4338040, 4338045, 4340040, 4340045, 4540040, 4540045, 4940040, 4940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400402	},
}					
--상급 견습 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5038040, 5038045, 5040040, 5040045, 5138040, 5138045, 5140040, 5140045, 5338040, 5338045, 5340040, 5340045, 5540040, 5540045, 5940040, 5940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400502	},
}					
--상급 견습 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6038040, 6038045, 6040040, 6040045, 6140040, 6140045, 6340040, 6340045, 6540040, 6540045, 6940040, 6940045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400602	},
}					
--상급 견습 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7040040, 7040045, 7140040, 7140045, 7340040, 7340045, 7540040, 7540045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400702	},
}					
--최상급 견습 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3040050, 3140050, 3340050, 3540050, 3940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400303	},
}					
--최상급 견습 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4040050, 4140050, 4340050, 4540050, 4940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400403	},
}					
--최상급 견습 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5040050, 5140050, 5340050, 5540050, 5940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400503	},
}					
--최상급 견습 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6040050, 6540050, 6940050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400603	},
}					
--강화 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7385, 7390, 7395, 3042000, 3042005, 3044000, 3044005, 3142000, 3142005, 3144000, 3144005, 3342000, 3342005, 3344000, 3344005, 3544000, 3544005, 3944000, 3944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440300	},
}					
--강화 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21385, 21390, 21395, 4042000, 4042005, 4044000, 4044005, 4142000, 4142005, 4144000, 4144005, 4342000, 4342005, 4344000, 4344005, 4544000, 4544005, 4944000, 4944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440400	},
}					
--강화 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5042000, 5042005, 5044000, 5044005, 5142000, 5142005, 5144000, 5144005, 5342000, 5342005, 5344000, 5344005, 5544000, 5544005, 5944000, 5944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440500	},
}					
--강화 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6042000, 6042005, 6044000, 6044005, 6144000, 6144005, 6344000, 6344005, 6544000, 6544005, 6944000, 6944005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440600	},
}					
--강화 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7044000, 7044005, 7144000, 7144005, 7344000, 7344005, 7544000, 7544005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440700	},
}					
--중급 강화 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7400, 3042010, 3042015, 3042020, 3042025, 3042030, 3042035, 3044010, 3044015, 3044020, 3044025, 3044030, 3044035, 3142010, 3142015, 3142020, 3142025, 3142030, 3142035, 3144010, 3144015, 3144020, 3144025, 3144030, 3144035, 3342010, 3342015, 3342020, 3342025, 3342030, 3342035, 3344010, 3344015, 3344020, 3344025, 3344030, 3344035, 3544010, 3544015, 3544020, 3544025, 3544030, 3544035, 3944010, 3944015, 3944020, 3944025, 3944030, 3944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440301	},
}					
--중급 강화 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21400, 4042010, 4042015, 4042020, 4042025, 4042030, 4042035, 4044010, 4044015, 4044020, 4044025, 4044030, 4044035, 4142010, 4142015, 4142020, 4142025, 4142030, 4142035, 4144010, 4144015, 4144020, 4144025, 4144030, 4144035, 4342010, 4342015, 4342020, 4342025, 4342030, 4342035, 4344010, 4344015, 4344020, 4344025, 4344030, 4344035, 4544010, 4544015, 4544020, 4544025, 4544030, 4544035, 4944010, 4944015, 4944020, 4944025, 4944030, 4944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440401	},
}					
--중급 강화 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5042010, 5042015, 5042020, 5042025, 5042030, 5042035, 5044010, 5044015, 5044020, 5044025, 5044030, 5044035, 5142010, 5142015, 5142020, 5142025, 5142030, 5142035, 5144010, 5144015, 5144020, 5144025, 5144030, 5144035, 5342010, 5342015, 5342020, 5342025, 5342030, 5342035, 5344010, 5344015, 5344020, 5344025, 5344030, 5344035, 5544010, 5544015, 5544020, 5544025, 5544030, 5544035, 5944010, 5944015, 5944020, 5944025, 5944030, 5944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440501	},
}					
--중급 강화 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6042010, 6042015, 6042020, 6042025, 6042030, 6042035, 6044010, 6044015, 6044020, 6044025, 6044030, 6044035, 6144010, 6144015, 6144020, 6144025, 6144030, 6144035, 6344010, 6344015, 6344020, 6344025, 6344030, 6344035, 6544010, 6544015, 6544020, 6544025, 6544030, 6544035, 6944010, 6944015, 6944020, 6944025, 6944030, 6944035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440601	},
}					
--중급 강화 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7044010, 7044015, 7044020, 7044025, 7044030, 7044035, 7144010, 7144015, 7144020, 7144025, 7144030, 7144035, 7344010, 7344015, 7344020, 7344025, 7344030, 7344035, 7544010, 7544015, 7544020, 7544025, 7544030, 7544035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440701	},
}					
--상급 강화 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7405, 3042040, 3042045, 3044040, 3044045, 3142040, 3142045, 3144040, 3144045, 3342040, 3342045, 3344040, 3344045, 3544040, 3544045, 3944040, 3944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440302	},
}					
--상급 강화 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	21405, 4042040, 4042045, 4044040, 4044045, 4142040, 4142045, 4144040, 4144045, 4342040, 4342045, 4344040, 4344045, 4544040, 4544045, 4944040, 4944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440402	},
}					
--상급 강화 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5042040, 5042045, 5044040, 5044045, 5142040, 5142045, 5144040, 5144045, 5342040, 5342045, 5344040, 5344045, 5544040, 5544045, 5944040, 5944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440502	},
}					
--상급 강화 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6042040, 6042045, 6044040, 6044045, 6144040, 6144045, 6344040, 6344045, 6544040, 6544045, 6944040, 6944045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440602	},
}					
--상급 강화 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7044040, 7044045, 7144040, 7144045, 7344040, 7344045, 7544040, 7544045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440702	},
}					
--최상급 강화 전투 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3044050, 3144050, 3344050, 3544050, 3944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440303	},
}					
--최상급 강화 전투 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4044050, 4144050, 4344050, 4544050, 4944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440403	},
}					
--최상급 강화 전투 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5044050, 5144050, 5344050, 5544050, 5944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440503	},
}					
--최상급 강화 전투 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6044050, 6144050, 6344050, 6544050, 6944050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440603	},
}					
--최상급 강화 전투 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7044050, 7144050, 7344050, 7544050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440703	},
}					
--벨더 투사 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3046000, 3046005, 3146000, 3146005, 3148000, 3148005, 3346000, 3346005, 3348000, 3348005, 3548000, 3548005, 3948000, 3948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480300	},
}					
--벨더 투사 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4046000, 4046005, 4146000, 4146005, 4148000, 4148005, 4346000, 4346005, 4348000, 4348005, 4548000, 4548005, 4948000, 4948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480400	},
}					
--벨더 투사 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5046000, 5046005, 5146000, 5146005, 5148000, 5148005, 5346000, 5346005, 5348000, 5348005, 5548000, 5548005, 5948000, 5948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480500	},
}					
--벨더 투사 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6046000, 6046005, 6148000, 6148005, 6348000, 6348005, 6548000, 6548005, 6948000, 6948005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480600	},
}					
--벨더 투사 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7048000, 7048005, 7148000, 7148005, 7348000, 7348005, 7548000, 7548005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480700	},
}					
--중급 벨더 투사 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3046010, 3046015, 3046020, 3046025, 3046030, 3046035, 3146010, 3146015, 3146020, 3146025, 3146030, 3146035, 3148010, 3148015, 3148020, 3148025, 3148030, 3148035, 3346010, 3346015, 3346020, 3346025, 3346030, 3346035, 3348010, 3348015, 3348020, 3348025, 3348030, 3348035, 3548010, 3548015, 3548020, 3548025, 3548030, 3548035, 3948010, 3948015, 3948020, 3948025, 3948030, 3948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480301	},
}					
--중급 벨더 투사 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4046010, 4046015, 4046020, 4046025, 4046030, 4046035, 4146010, 4146015, 4146020, 4146025, 4146030, 4146035, 4148010, 4148015, 4148020, 4148025, 4148030, 4148035, 4346010, 4346015, 4346020, 4346025, 4346030, 4346035, 4348010, 4348015, 4348020, 4348025, 4348030, 4348035, 4548010, 4548015, 4548020, 4548025, 4548030, 4548035, 4948010, 4948015, 4948020, 4948025, 4948030, 4948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480401	},
}					
--중급 벨더 투사 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5046010, 5046015, 5046020, 5046025, 5046030, 5046035, 5146010, 5146015, 5146020, 5146025, 5146030, 5146035, 5148010, 5148015, 5148020, 5148025, 5148030, 5148035, 5346010, 5346015, 5346020, 5346025, 5346030, 5346035, 5348010, 5348015, 5348020, 5348025, 5348030, 5348035, 5548010, 5548015, 5548020, 5548025, 5548030, 5548035, 5948010, 5948015, 5948020, 5948025, 5948030, 5948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480501	},
}					
--중급 벨더 투사 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6046010, 6046015, 6046020, 6046025, 6046030, 6046035, 6148010, 6148015, 6148020, 6148025, 6148030, 6148035, 6348010, 6348015, 6348020, 6348025, 6348030, 6348035, 6548010, 6548015, 6548020, 6548025, 6548030, 6548035, 6948010, 6948015, 6948020, 6948025, 6948030, 6948035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480601	},
}					
--중급 벨더 투사 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7046010, 7048010, 7048015, 7048020, 7048025, 7048030, 7048035, 7148010, 7148015, 7148020, 7148025, 7148030, 7148035, 7348010, 7348015, 7348020, 7348025, 7348030, 7348035, 7548010, 7548015, 7548020, 7548025, 7548030, 7548035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480701	},
}					
--상급 벨더 투사 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3046040, 3046045, 3146040, 3146045, 3148040, 3148045, 3346040, 3346045, 3348040, 3348045, 3548040, 3548045, 3948040, 3948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480302	},
}					
--상급 벨더 투사 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4046040, 4046045, 4146040, 4146045, 4148040, 4148045, 4346040, 4346045, 4348040, 4348045, 4548040, 4548045, 4948040, 4948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480402	},
}					
--상급 벨더 투사 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5046040, 5046045, 5146040, 5146045, 5148040, 5148045, 5346040, 5346045, 5348040, 5348045, 5548040, 5548045, 5948040, 5948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480502	},
}					
--상급 벨더 투사 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6046040, 6046045, 6148040, 6148045, 6348040, 6348045, 6548040, 6548045, 6948040, 6948045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480602	},
}					
--상급 벨더 투사 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7048040, 7048045, 7148040, 7148045, 7348040, 7348045, 7548040, 7548045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480702	},
}					
--최상급 벨더 투사 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3148050, 3348050, 3548050, 3948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480303	},
}					
--최상급 벨더 투사 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4148050, 4348050, 4548050, 4948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480403	},
}					
--최상급 벨더 투사 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5148050, 5348050, 5548050, 5948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480503	},
}					
--최상급 벨더 투사 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6548050, 6948050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480603	},
}					
--티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3150000, 3150005, 3152000, 3152005, 3350000, 3350005, 3352000, 3352005, 3552000, 3552005, 3952000, 3952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520300	},
}					
--티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4150000, 4150005, 4152000, 4152005, 4350000, 4350005, 4352000, 4352005, 4552000, 4552005, 4952000, 4952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520400	},
}					
--티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5150000, 5150005, 5152000, 5152005, 5350000, 5350005, 5352000, 5352005, 5552000, 5552005, 5952000, 5952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520500	},
}					
--티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6052000, 6052005, 6152000, 6152005, 6352000, 6352005, 6552000, 6552005, 6952000, 6952005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520600	},
}					
--티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7052005, 7152000, 7152005, 7352000, 7352005, 7552000, 7552005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520700	},
}					
--중급 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3150010, 3150015, 3150020, 3150025, 3150030, 3150035, 3152010, 3152015, 3152020, 3152025, 3152030, 3152035, 3350010, 3350015, 3350020, 3350025, 3350030, 3350035, 3352010, 3352015, 3352020, 3352025, 3352030, 3352035, 3552010, 3552015, 3552020, 3552025, 3552030, 3552035, 3952010, 3952015, 3952020, 3952025, 3952030, 3952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520301	},
}					
--중급 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4150010, 4150015, 4150020, 4150025, 4150030, 4150035, 4152010, 4152015, 4152020, 4152025, 4152030, 4152035, 4350010, 4350015, 4350020, 4350025, 4350030, 4350035, 4352010, 4352015, 4352020, 4352025, 4352030, 4352035, 4552010, 4552015, 4552020, 4552025, 4552030, 4552035, 4952010, 4952015, 4952020, 4952025, 4952030, 4952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520401	},
}					
--중급 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5150010, 5150015, 5150020, 5150025, 5150030, 5150035, 5152010, 5152015, 5152020, 5152025, 5152030, 5152035, 5350010, 5350015, 5350020, 5350025, 5350030, 5350035, 5352010, 5352015, 5352020, 5352025, 5352030, 5352035, 5552010, 5552015, 5552020, 5552025, 5552030, 5552035, 5952010, 5952015, 5952020, 5952025, 5952030, 5952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520501	},
}					
--중급 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6052010, 6052015, 6052020, 6052025, 6052030, 6052035, 6152010, 6152015, 6152020, 6152025, 6152030, 6152035, 6352010, 6352015, 6352020, 6352025, 6352030, 6352035, 6552010, 6552015, 6552020, 6552025, 6552030, 6552035, 6952010, 6952015, 6952020, 6952025, 6952030, 6952035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520601	},
}					
--중급 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7052010, 7052015, 7052020, 7052025, 7052030, 7052035, 7152010, 7152015, 7152020, 7152025, 7152030, 7152035, 7352010, 7352015, 7352020, 7352025, 7352030, 7352035, 7552010, 7552015, 7552020, 7552025, 7552030, 7552035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520701	},
}					
--상급 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3150040, 3150045, 3152040, 3152045, 3350040, 3350045, 3352040, 3352045, 3552040, 3552045, 3952040, 3952045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520302	},
}					
--상급 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4150040, 4150045, 4152040, 4152045, 4350040, 4350045, 4352040, 4352045, 4552040, 4552045, 4952040, 4952045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520402	},
}					
--상급 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5150040, 5150045, 5152040, 5152045, 5350040, 5350045, 5352040, 5352045, 5552040, 5552045, 5952040, 5952045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520502	},
}					
--상급 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6052040, 6052045, 6152040, 6152045, 6352040, 6352045, 6552040, 6552045, 6952040, 6952045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520602	},
}					
--상급 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7052040, 7052045, 7152040, 7152045, 7352040, 7352045, 7552040, 7552045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520702	},
}					
--최상급 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3152050, 3352050, 3552050, 3952050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520303	},
}					
--최상급 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4152050, 4352050, 4552050, 4952050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520403	},
}					
--최상급 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5152050, 5352050, 5552050, 5952050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520503	},
}					
--최상급 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6052050, 6152050, 6352050, 6552050, 6952050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520603	},
}					
--최상급 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7052050, 7152050, 7352050, 7552050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520703	},
}					
--강화 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3156000, 3156005, 3356000, 3356005, 3556000, 3556005, 3956000, 3956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560300	},
}					
--강화 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4156000, 4156005, 4356000, 4356005, 4556000, 4556005, 4956000, 4956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560400	},
}					
--강화 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5156000, 5156005, 5356000, 5356005, 5556000, 5556005, 5956000, 5956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560500	},
}					
--강화 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6156000, 6156005, 6356000, 6356005, 6556000, 6556005, 6956000, 6956005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560600	},
}					
--강화 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7056000, 7056005, 7156000, 7156005, 7356000, 7356005, 7556000, 7556005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560700	},
}					
--중급 강화 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3156010, 3156015, 3156020, 3156025, 3156030, 3156035, 3356010, 3356015, 3356020, 3356025, 3356030, 3356035, 3556010, 3556015, 3556020, 3556025, 3556030, 3556035, 3956010, 3956015, 3956020, 3956025, 3956030, 3956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560301	},
}					
--중급 강화 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4156010, 4156015, 4156020, 4156025, 4156030, 4156035, 4356010, 4356015, 4356020, 4356025, 4356030, 4356035, 4556010, 4556015, 4556020, 4556025, 4556030, 4556035, 4956010, 4956015, 4956020, 4956025, 4956030, 4956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560401	},
}					
--중급 강화 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5156010, 5156015, 5156020, 5156025, 5156030, 5156035, 5356010, 5356015, 5356020, 5356025, 5356030, 5356035, 5556010, 5556015, 5556020, 5556025, 5556030, 5556035, 5956010, 5956015, 5956020, 5956025, 5956030, 5956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560501	},
}					
--중급 강화 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6156010, 6156015, 6156020, 6156025, 6156030, 6156035, 6356010, 6356015, 6356020, 6356025, 6356030, 6356035, 6556010, 6556015, 6556020, 6556025, 6556030, 6556035, 6956010, 6956015, 6956020, 6956025, 6956030, 6956035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560601	},
}					
--중급 강화 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7056010, 7056015, 7056020, 7056025, 7056030, 7056035, 7156010, 7156015, 7156020, 7156025, 7156030, 7156035, 7356010, 7356015, 7356020, 7356025, 7356030, 7356035, 7556010, 7556015, 7556020, 7556025, 7556030, 7556035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560701	},
}					
--상급 강화 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3156040, 3156045, 3356040, 3356045, 3556040, 3556045, 3956040, 3956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560302	},
}					
--상급 강화 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4156040, 4156045, 4356040, 4356045, 4556040, 4556045, 4956040, 4956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560402	},
}					
--상급 강화 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5156040, 5156045, 5356040, 5356045, 5556040, 5556045, 5956040, 5956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560502	},
}					
--상급 강화 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6156040, 6156045, 6356040, 6356045, 6556040, 6556045, 6956040, 6956045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560602	},
}					
--상급 강화 티타늄 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7056040, 7056045, 7156040, 7156045, 7356040, 7356045, 7556040, 7556045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560702	},
}					
--최상급 강화 티타늄 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3556050, 3956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560303	},
}					
--최상급 강화 티타늄 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4556050, 4956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560403	},
}					
--최상급 강화 티타늄 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5556050, 5956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560503	},
}					
--최상급 강화 티타늄 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6556050, 6956050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560603	},
}					
--하멜 탐사단 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3160000, 3160005, 3360000, 3360005, 3560000, 3560005, 3960000, 3960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600300	},
}					
--하멜 탐사단 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4160000, 4160005, 4360000, 4360005, 4560000, 4560005, 4960000, 4960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600400	},
}					
--하멜 탐사단 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5160000, 5160005, 5360000, 5360005, 5560000, 5560005, 5960000, 5960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600500	},
}					
--하멜 탐사단 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6060000, 6060005, 6160000, 6160005, 6360000, 6360005, 6560000, 6560005, 6960000, 6960005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600600	},
}					
--하멜 탐사단 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7060000, 7060005, 7160000, 7160005, 7360000, 7360005, 7560000, 7560005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600700	},
}					
--중급 하멜 탐사단 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3160010, 3160015, 3160020, 3160025, 3160030, 3160035, 3360010, 3360015, 3360020, 3360025, 3360030, 3360035, 3560010, 3560015, 3560020, 3560025, 3560030, 3560035, 3960010, 3960015, 3960020, 3960025, 3960030, 3960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600301	},
}					
--중급 하멜 탐사단 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4160010, 4160015, 4160020, 4160025, 4160030, 4160035, 4360010, 4360015, 4360020, 4360025, 4360030, 4360035, 4560010, 4560015, 4560020, 4560025, 4560030, 4560035, 4960010, 4960015, 4960020, 4960025, 4960030, 4960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600401	},
}					
--중급 하멜 탐사단 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5160010, 5160015, 5160020, 5160025, 5160030, 5160035, 5360010, 5360015, 5360020, 5360025, 5360030, 5360035, 5560010, 5560015, 5560020, 5560025, 5560030, 5560035, 5960010, 5960015, 5960020, 5960025, 5960030, 5960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600501	},
}					
--중급 하멜 탐사단 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6060010, 6060015, 6060020, 6060025, 6060030, 6060035, 6160010, 6160015, 6160020, 6160025, 6160030, 6160035, 6360010, 6360015, 6360020, 6360025, 6360030, 6360035, 6560010, 6560015, 6560020, 6560025, 6560030, 6560035, 6960010, 6960015, 6960020, 6960025, 6960030, 6960035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600601	},
}					
--중급 하멜 탐사단 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7060010, 7060015, 7060020, 7060025, 7060030, 7060035, 7160010, 7160015, 7160020, 7160025, 7160030, 7160035, 7360010, 7360015, 7360020, 7360025, 7360030, 7360035, 7560010, 7560015, 7560020, 7560025, 7560030, 7560035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600701	},
}					
--상급 하멜 탐사단 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3160040, 3160045, 3360040, 3360045, 3560040, 3560045, 3960040, 3960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600302	},
}					
--상급 하멜 탐사단 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4160040, 4160045, 4360040, 4360045, 4560040, 4560045, 4960040, 4960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600402	},
}					
--상급 하멜 탐사단 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5160040, 5160045, 5360040, 5360045, 5560040, 5560045, 5960040, 5960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600502	},
}					
--상급 하멜 탐사단 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6060040, 6060045, 6160040, 6160045, 6360040, 6360045, 6560040, 6560045, 6960040, 6960045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600602	},
}					
--상급 하멜 탐사단 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7060040, 7060045, 7160040, 7160045, 7360040, 7360045, 7560040, 7560045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600702	},
}					
--최상급 하멜 탐사단 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3160050, 3360050, 3560050, 3960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600303	},
}					
--최상급 하멜 탐사단 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4160050, 4360050, 4560050, 4960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600403	},
}					
--최상급 하멜 탐사단 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5160050, 5360050, 5560050, 5960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600503	},
}					
--최상급 하멜 탐사단 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6060050, 6160050, 6360050, 6560050, 6960050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600603	},
}					
--최상급 하멜 탐사단 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7060050, 7160050, 7360050, 7560050 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600703	},
}					
--마족 공격대 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3164000, 3164005, 3364000, 3364005, 3564000, 3564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640300	},
}					
--마족 공격대 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4164000, 4164005, 4364000, 4364005, 4564000, 4564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640400	},
}					
--마족 공격대 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5164000, 5164005, 5364000, 5364005, 5564000, 5564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640500	},
}					
--마족 공격대 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6164000, 6164005, 6364000, 6364005, 6564000, 6564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640600	},
}					
--마족 공격대 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7064000, 7064005, 7164000, 7164005, 7364000, 7364005, 7564000, 7564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640700	},
}					
--중급 마족 공격대 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3164010, 3164015, 3164020, 3164025, 3164030, 3164035, 3364010, 3364015, 3364020, 3364025, 3364030, 3364035, 3564010, 3564015, 3564020, 3564025, 3564030, 3564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640301	},
}					
--중급 마족 공격대 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4164010, 4164015, 4164020, 4164025, 4164030, 4164035, 4364010, 4364015, 4364020, 4364025, 4364030, 4364035, 4564010, 4564015, 4564020, 4564025, 4564030, 4564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640401	},
}					
--중급 마족 공격대 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5164010, 5164015, 5164020, 5164025, 5164030, 5164035, 5364010, 5364015, 5364020, 5364025, 5364030, 5364035, 5564010, 5564015, 5564020, 5564025, 5564030, 5564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640501	},
}					
--중급 마족 공격대 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6164010, 6164015, 6164020, 6164025, 6164030, 6164035, 6364010, 6364015, 6364020, 6364025, 6364030, 6364035, 6564010, 6564015, 6564020, 6564025, 6564030, 6564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640601	},
}					
--중급 마족 공격대 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7064010, 7064015, 7064020, 7064025, 7064030, 7064035, 7164010, 7164015, 7164020, 7164025, 7164030, 7164035, 7364010, 7364015, 7364020, 7364025, 7364030, 7364035, 7564010, 7564015, 7564020, 7564025, 7564030, 7564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640701	},
}					
--상급 마족 공격대 활					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3164040, 3164045, 3364040, 3364045, 3564040, 3564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640302	},
}					
--상급 마족 공격대 장검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4164040, 4164045, 4364040, 4364045, 4564040, 4564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640402	},
}					
--상급 마족 공격대 기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5164040, 5164045, 5364040, 5364045, 5564040, 5564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640502	},
}					
--상급 마족 공격대 철포					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6164040, 6164045, 6364040, 6364045, 6564040, 6564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640602	},
}					
--상급 마족 공격대 창					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	7064040, 7064045, 7164040, 7164045, 7364040, 7364045, 7564040, 7564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640702	},
}					
--청동 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1000, 1005, 1010, 8000, 8005, 8010, 15000, 15005, 15010, 22000, 22005, 22010, 28001, 1002050, 1002055, 1004055, 1004060, 2002050, 2002055, 2004055, 2004060, 3002050, 3002055, 3004055, 3004060, 4002050, 4002055, 4004055, 4004060, 5002050, 5002055, 5004055, 5004060, 6002050, 6002055, 6004055, 6004060, 7004055, 7004060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040000	},
}					
--청동 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4000, 4005, 4010, 11000, 11005, 11010, 18000, 18005, 18010, 25000, 25005, 25010, 28004, 1002320, 1002325, 1004340, 1004345, 2002320, 2002325, 2004340, 2004345, 3002320, 3002325, 3004340, 3004345, 4002320, 4002325, 4004340, 4004345, 5002320, 5002325, 5004340, 5004345, 6002320, 6002325, 6004340, 6004345, 7004340, 7004345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040030	},
}					
--청동 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3000, 3005, 3010, 10000, 10005, 10010, 17000, 17005, 17010, 24000, 24005, 24010, 28003, 1002230, 1002235, 1004245, 1004250, 2002230, 2002235, 2004245, 2004250, 3002230, 3002235, 3004245, 3004250, 4002230, 4002235, 4004245, 4004250, 5002230, 5002235, 5004245, 5004250, 6002230, 6002235, 6004245, 6004250, 7004245, 7004250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040020	},
}					
--청동 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2000, 2005, 2010, 9000, 9005, 9010, 16000, 16005, 16010, 23000, 23005, 23010, 28002, 1002140, 1002145, 1004150, 1004155, 2002140, 2002145, 2004150, 2004155, 3002140, 3002145, 3004150, 3004155, 4002140, 4002145, 4004150, 4004155, 5002140, 5002145, 5004150, 5004155, 6002140, 6002145, 6004150, 6004155, 7004150, 7004155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040010	},
}					
--중급 청동 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020, 8020, 15020, 22020, 1002060, 1002065, 1002070, 1002075, 1002080, 1002085, 1002090, 1002095, 1002100, 1002105, 1002110, 1002115, 1002120, 1002125, 1004065, 1004070, 1004075, 1004080, 1004085, 1004090, 1004095, 1004100, 1004105, 1004110, 1004115, 1004120, 1004125, 1004130, 2002060, 2002065, 2002070, 2002075, 2002080, 2002085, 2002090, 2002095, 2002100, 2002105, 2002110, 2002115, 2002120, 2002125, 2004065, 2004070, 2004075, 2004080, 2004085, 2004090, 2004095, 2004100, 2004105, 2004110, 2004115, 2004120, 2004125, 2004130, 3002060, 3002065, 3002070, 3002075, 3002080, 3002085, 3002090, 3002095, 3002100, 3002105, 3002110, 3002115, 3002120, 3002125, 3004065, 3004070, 3004075, 3004080, 3004085, 3004090, 3004095, 3004100, 3004105, 3004110, 3004115, 3004120, 3004125, 3004130, 4002060, 4002065, 4002070, 4002075, 4002080, 4002085, 4002090, 4002095, 4002100, 4002105, 4002110, 4002115, 4002120, 4002125, 4004065, 4004070, 4004075, 4004080, 4004085, 4004090, 4004095, 4004100, 4004105, 4004110, 4004115, 4004120, 4004125, 4004130, 5002060, 5002065, 5002070, 5002075, 5002080, 5002085, 5002090, 5002095, 5002100, 5002105, 5002110, 5002115, 5002120, 5002125, 5004065, 5004070, 5004075, 5004080, 5004085, 5004090, 5004095, 5004100, 5004105, 5004110, 5004115, 5004120, 5004125, 5004130, 6002060, 6002065, 6002070, 6002075, 6002080, 6002085, 6002090, 6002095, 6002100, 6002105, 6002110, 6002115, 6002120, 6002125, 6004065, 6004070, 6004075, 6004080, 6004085, 6004090, 6004095, 6004100, 6004105, 6004110, 6004115, 6004120, 6004125, 6004130, 7004065, 7004070, 7004075, 7004080, 7004085, 7004090, 7004095, 7004100, 7004105, 7004110, 7004115, 7004120, 7004125, 7004130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040001	},
}					
--중급 청동 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4020, 11020, 18020, 25020, 1002330, 1002335, 1002340, 1002345, 1002350, 1002355, 1002360, 1002365, 1002370, 1002375, 1002380, 1002385, 1002390, 1002395, 1002400, 1004350, 1004355, 1004360, 1004365, 1004370, 1004375, 1004380, 1004385, 1004390, 1004395, 1004400, 1004405, 1004410, 1004415, 1004420, 2002330, 2002335, 2002340, 2002345, 2002350, 2002355, 2002360, 2002365, 2002370, 2002375, 2002380, 2002385, 2002390, 2002395, 2002400, 2004350, 2004355, 2004360, 2004365, 2004370, 2004375, 2004380, 2004385, 2004390, 2004395, 2004400, 2004405, 2004410, 2004415, 2004420, 3002330, 3002335, 3002340, 3002345, 3002350, 3002355, 3002360, 3002365, 3002370, 3002375, 3002380, 3002385, 3002390, 3002395, 3002400, 3004350, 3004355, 3004360, 3004365, 3004370, 3004375, 3004380, 3004385, 3004390, 3004395, 3004400, 3004405, 3004410, 3004415, 3004420, 4002330, 4002335, 4002340, 4002345, 4002350, 4002355, 4002360, 4002365, 4002370, 4002375, 4002380, 4002385, 4002390, 4002395, 4002400, 4004350, 4004355, 4004360, 4004365, 4004370, 4004375, 4004380, 4004385, 4004390, 4004395, 4004400, 4004405, 4004410, 4004415, 4004420, 5002330, 5002335, 5002340, 5002345, 5002350, 5002355, 5002360, 5002365, 5002370, 5002375, 5002380, 5002385, 5002390, 5002395, 5002400, 5004350, 5004355, 5004360, 5004365, 5004370, 5004375, 5004380, 5004385, 5004390, 5004395, 5004400, 5004405, 5004410, 5004415, 5004420, 6002330, 6002335, 6002340, 6002345, 6002350, 6002355, 6002360, 6002365, 6002370, 6002375, 6002380, 6002385, 6002390, 6002395, 6002400, 6004350, 6004355, 6004360, 6004365, 6004370, 6004375, 6004380, 6004385, 6004390, 6004395, 6004400, 6004405, 6004410, 6004415, 6004420, 7004350, 7004355, 7004360, 7004365, 7004370, 7004375, 7004380, 7004385, 7004390, 7004395, 7004400, 7004405, 7004410, 7004415, 7004420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040031	},
}					
--중급 청동 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3020, 10020, 17020, 24020, 1002240, 1002245, 1002250, 1002255, 1002260, 1002265, 1002270, 1002275, 1002280, 1002285, 1002290, 1002295, 1002300, 1002305, 1004255, 1004260, 1004265, 1004270, 1004275, 1004280, 1004285, 1004290, 1004295, 1004300, 1004305, 1004310, 1004315, 1004320, 2002240, 2002245, 2002250, 2002255, 2002260, 2002265, 2002270, 2002275, 2002280, 2002285, 2002290, 2002295, 2002300, 2002305, 2004255, 2004260, 2004265, 2004270, 2004275, 2004280, 2004285, 2004290, 2004295, 2004300, 2004305, 2004310, 2004315, 2004320, 3002240, 3002245, 3002250, 3002255, 3002260, 3002265, 3002270, 3002275, 3002280, 3002285, 3002290, 3002295, 3002300, 3002305, 3004255, 3004260, 3004265, 3004270, 3004275, 3004280, 3004285, 3004290, 3004295, 3004300, 3004305, 3004310, 3004315, 3004320, 4002240, 4002245, 4002250, 4002255, 4002260, 4002265, 4002270, 4002275, 4002280, 4002285, 4002290, 4002295, 4002300, 4002305, 4004255, 4004260, 4004265, 4004270, 4004275, 4004280, 4004285, 4004290, 4004295, 4004300, 4004305, 4004310, 4004315, 4004320, 5002240, 5002245, 5002250, 5002255, 5002260, 5002265, 5002270, 5002275, 5002280, 5002285, 5002290, 5002295, 5002300, 5002305, 5004255, 5004260, 5004265, 5004270, 5004275, 5004280, 5004285, 5004290, 5004295, 5004300, 5004305, 5004310, 5004315, 5004320, 6002240, 6002245, 6002250, 6002255, 6002260, 6002265, 6002270, 6002275, 6002280, 6002285, 6002290, 6002295, 6002300, 6002305, 6004255, 6004260, 6004265, 6004270, 6004275, 6004280, 6004285, 6004290, 6004295, 6004300, 6004305, 6004310, 6004315, 6004320, 7004255, 7004260, 7004265, 7004270, 7004275, 7004280, 7004285, 7004290, 7004295, 7004300, 7004305, 7004310, 7004315, 7004320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040021	},
}					

--중급 청동 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2020, 9020, 16020, 23020, 1002150, 1002155, 1002160, 1002165, 1002170, 1002175, 1002180, 1002185, 1002190, 1002195, 1002200, 1002205, 1002210, 1002215, 1004160, 1004165, 1004170, 1004175, 1004180, 1004185, 1004190, 1004195, 1004200, 1004205, 1004210, 1004215, 1004220, 1004225, 2002150, 2002155, 2002160, 2002165, 2002170, 2002175, 2002180, 2002185, 2002190, 2002195, 2002200, 2002205, 2002210, 2002215, 2004160, 2004165, 2004170, 2004175, 2004180, 2004185, 2004190, 2004195, 2004200, 2004205, 2004210, 2004215, 2004220, 2004225, 3002150, 3002155, 3002160, 3002165, 3002170, 3002175, 3002180, 3002185, 3002190, 3002195, 3002200, 3002205, 3002210, 3002215, 3004160, 3004165, 3004170, 3004175, 3004180, 3004185, 3004190, 3004195, 3004200, 3004205, 3004210, 3004215, 3004220, 3004225, 4002150, 4002155, 4002160, 4002165, 4002170, 4002175, 4002180, 4002185, 4002190, 4002195, 4002200, 4002205, 4002210, 4002215, 4004160, 4004165, 4004170, 4004175, 4004180, 4004185, 4004190, 4004195, 4004200, 4004205, 4004210, 4004215, 4004220, 4004225, 5002150, 5002155, 5002160, 5002165, 5002170, 5002175, 5002180, 5002185, 5002190, 5002195, 5002200, 5002205, 5002210, 5002215, 5004160, 5004165, 5004170, 5004175, 5004180, 5004185, 5004190, 5004195, 5004200, 5004205, 5004210, 5004215, 5004220, 5004225, 6002150, 6002155, 6002160, 6002165, 6002170, 6002175, 6002180, 6002185, 6002190, 6002195, 6002200, 6002205, 6002210, 6002215, 6004160, 6004165, 6004170, 6004175, 6004180, 6004185, 6004190, 6004195, 6004200, 6004205, 6004210, 6004215, 6004220, 6004225, 7004160, 7004165, 7004170, 7004175, 7004180, 7004185, 7004190, 7004195, 7004200, 7004205, 7004210, 7004215, 7004220, 7004225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040011	},
}					
--상급 청동 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2030, 9030, 16030, 23030, 1002220, 1002225, 1004230, 1004235, 2002220, 2002225, 2004230, 2004235, 3002220, 3002225, 3004230, 3004235, 4002220, 4002225, 4004230, 4004235, 5002220, 5002225, 5004230, 5004235, 6002220, 6002225, 6004230, 6004235, 7004230, 7004235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040012	},
}					
--최상급 청동 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1035, 8035, 15035, 22035, 1004145, 2004145, 3004145, 4004145, 5004145, 6004145, 7004145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040003	},
}					
--최상급 청동 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1004435, 2004435, 3004435, 4004435, 5004435, 6004435, 7004435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040033	},
}					
--최상급 청동 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1004335, 2004335, 3004335, 4004335, 5004335, 6004335, 7004335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040023	},
}					
--최상급 청동 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2035, 9035, 16035, 23035, 1004240, 2004240, 3004240, 4004240, 5004240, 6004240, 7004240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10040013	},
}					
--스카우트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040, 1045, 1050, 1720, 8040, 8045, 8050, 8720, 15040, 15045, 15050, 15720, 22040, 22045, 22050, 22720, 1006050, 1006055, 1008055, 1008060, 2006050, 2006055, 2008055, 2008060, 3006050, 3006055, 3008055, 3008060, 4006050, 4006055, 4008055, 4008060, 5006050, 5006055, 5008055, 5008060, 6006050, 6006055, 6008055, 6008060, 7008050, 7008055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080000	},
}					
--스카우트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4040, 4045, 4050, 4720, 11040, 11045, 11050, 11720, 18040, 18045, 18050, 18720, 25040, 25045, 25050, 25720, 1006320, 1006325, 1008340, 1008345, 2006320, 2006325, 2008340, 2008345, 3006320, 3006325, 3008340, 3008345, 4006320, 4006325, 4008340, 4008345, 5006320, 5006325, 5008340, 5008345, 6006320, 6006325, 6008340, 6008345, 7008320, 7008325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080030	},
}					
--스카우트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3040, 3045, 3050, 3720, 10040, 10045, 10050, 10720, 17040, 17045, 17050, 17720, 24040, 24045, 24050, 24720, 1006230, 1006235, 1008245, 1008250, 2006230, 2006235, 2008245, 2008250, 3006230, 3006235, 3008245, 3008250, 4006230, 4006235, 4008245, 4008250, 5006230, 5006235, 5008245, 5008250, 6006230, 6006235, 6008245, 6008250, 7008230, 7008235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080020	},
}					
--스카우트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2040, 2045, 2050, 2720, 9040, 9045, 9050, 9720, 16040, 16045, 16050, 16720, 23040, 23045, 23050, 23720, 1006140, 1006145, 1008150, 1008155, 2006140, 2006145, 2008150, 2008155, 3006140, 3006145, 3008150, 3008155, 4006140, 4006145, 4008150, 4008155, 5006140, 5006145, 5008150, 5008155, 6006140, 6006145, 6008150, 6008155, 7008140, 7008145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080010	},
}					
--중급 스카우트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1060, 8060, 15060, 22060, 1006060, 1006065, 1006070, 1006075, 1006080, 1006085, 1006090, 1006095, 1006100, 1006105, 1006110, 1006115, 1006120, 1006125, 1008065, 1008070, 1008075, 1008080, 1008085, 1008090, 1008095, 1008100, 1008105, 1008110, 1008115, 1008120, 1008125, 1008130, 2006060, 2006065, 2006070, 2006075, 2006080, 2006085, 2006090, 2006095, 2006100, 2006105, 2006110, 2006115, 2006120, 2006125, 2008065, 2008070, 2008075, 2008080, 2008085, 2008090, 2008095, 2008100, 2008105, 2008110, 2008115, 2008120, 2008125, 2008130, 3006060, 3006065, 3006070, 3006075, 3006080, 3006085, 3006090, 3006095, 3006100, 3006105, 3006110, 3006115, 3006120, 3006125, 3008065, 3008070, 3008075, 3008080, 3008085, 3008090, 3008095, 3008100, 3008105, 3008110, 3008115, 3008120, 3008125, 3008130, 4006060, 4006065, 4006070, 4006075, 4006080, 4006085, 4006090, 4006095, 4006100, 4006105, 4006110, 4006115, 4006120, 4006125, 4008065, 4008070, 4008075, 4008080, 4008085, 4008090, 4008095, 4008100, 4008105, 4008110, 4008115, 4008120, 4008125, 4008130, 5006060, 5006065, 5006070, 5006075, 5006080, 5006085, 5006090, 5006095, 5006100, 5006105, 5006110, 5006115, 5006120, 5006125, 5008065, 5008070, 5008075, 5008080, 5008085, 5008090, 5008095, 5008100, 5008105, 5008110, 5008115, 5008120, 5008125, 5008130, 6006060, 6006065, 6006070, 6006075, 6006080, 6006085, 6006090, 6006095, 6006100, 6006105, 6006110, 6006115, 6006120, 6006125, 6008065, 6008070, 6008075, 6008080, 6008085, 6008090, 6008095, 6008100, 6008105, 6008110, 6008115, 6008120, 6008125, 6008130, 7008060, 7008065, 7008070, 7008075, 7008080, 7008085, 7008090, 7008095, 7008100, 7008105, 7008110, 7008115, 7008120, 7008125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080001	},
}					
--중급 스카우트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4060, 11060, 18060, 25060, 1006330, 1006335, 1006340, 1006345, 1006350, 1006355, 1006360, 1006365, 1006370, 1006375, 1006380, 1006385, 1006390, 1006395, 1006400, 1008350, 1008355, 1008360, 1008365, 1008370, 1008375, 1008380, 1008385, 1008390, 1008395, 1008400, 1008405, 1008410, 1008415, 1008420, 2006330, 2006335, 2006340, 2006345, 2006350, 2006355, 2006360, 2006365, 2006370, 2006375, 2006380, 2006385, 2006390, 2006395, 2006400, 2008350, 2008355, 2008360, 2008365, 2008370, 2008375, 2008380, 2008385, 2008390, 2008395, 2008400, 2008405, 2008410, 2008415, 2008420, 3006330, 3006335, 3006340, 3006345, 3006350, 3006355, 3006360, 3006365, 3006370, 3006375, 3006380, 3006385, 3006390, 3006395, 3006400, 3008350, 3008355, 3008360, 3008365, 3008370, 3008375, 3008380, 3008385, 3008390, 3008395, 3008400, 3008405, 3008410, 3008415, 3008420, 4006330, 4006335, 4006340, 4006345, 4006350, 4006355, 4006360, 4006365, 4006370, 4006375, 4006380, 4006385, 4006390, 4006395, 4006400, 4008350, 4008355, 4008360, 4008365, 4008370, 4008375, 4008380, 4008385, 4008390, 4008395, 4008400, 4008405, 4008410, 4008415, 4008420, 5006330, 5006335, 5006340, 5006345, 5006350, 5006355, 5006360, 5006365, 5006370, 5006375, 5006380, 5006385, 5006390, 5006395, 5006400, 5008350, 5008355, 5008360, 5008365, 5008370, 5008375, 5008380, 5008385, 5008390, 5008395, 5008400, 5008405, 5008410, 5008415, 5008420, 6006330, 6006335, 6006340, 6006345, 6006350, 6006355, 6006360, 6006365, 6006370, 6006375, 6006380, 6006385, 6006390, 6006395, 6006400, 6008350, 6008355, 6008360, 6008365, 6008370, 6008375, 6008380, 6008385, 6008390, 6008395, 6008400, 6008405, 6008410, 6008415, 6008420, 7008330, 7008335, 7008340, 7008345, 7008350, 7008355, 7008360, 7008365, 7008370, 7008375, 7008380, 7008385, 7008390, 7008395, 7008400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080031	},
}					
--중급 스카우트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3060, 10060, 17060, 24060, 1006240, 1006245, 1006250, 1006255, 1006260, 1006265, 1006270, 1006275, 1006280, 1006285, 1006290, 1006295, 1006300, 1006305, 1008255, 1008260, 1008265, 1008270, 1008275, 1008280, 1008285, 1008290, 1008295, 1008300, 1008305, 1008310, 1008315, 1008320, 2006240, 2006245, 2006250, 2006255, 2006260, 2006265, 2006270, 2006275, 2006280, 2006285, 2006290, 2006295, 2006300, 2006305, 2008255, 2008260, 2008265, 2008270, 2008275, 2008280, 2008285, 2008290, 2008295, 2008300, 2008305, 2008310, 2008315, 2008320, 3006240, 3006245, 3006250, 3006255, 3006260, 3006265, 3006270, 3006275, 3006280, 3006285, 3006290, 3006295, 3006300, 3006305, 3008255, 3008260, 3008265, 3008270, 3008275, 3008280, 3008285, 3008290, 3008295, 3008300, 3008305, 3008310, 3008315, 3008320, 4006240, 4006245, 4006250, 4006255, 4006260, 4006265, 4006270, 4006275, 4006280, 4006285, 4006290, 4006295, 4006300, 4006305, 4008255, 4008260, 4008265, 4008270, 4008275, 4008280, 4008285, 4008290, 4008295, 4008300, 4008305, 4008310, 4008315, 4008320, 5006240, 5006245, 5006250, 5006255, 5006260, 5006265, 5006270, 5006275, 5006280, 5006285, 5006290, 5006295, 5006300, 5006305, 5008255, 5008260, 5008265, 5008270, 5008275, 5008280, 5008285, 5008290, 5008295, 5008300, 5008305, 5008310, 5008315, 5008320, 6006240, 6006245, 6006250, 6006255, 6006260, 6006265, 6006270, 6006275, 6006280, 6006285, 6006290, 6006295, 6006300, 6006305, 6008255, 6008260, 6008265, 6008270, 6008275, 6008280, 6008285, 6008290, 6008295, 6008300, 6008305, 6008310, 6008315, 6008320, 7008240, 7008245, 7008250, 7008255, 7008260, 7008265, 7008270, 7008275, 7008280, 7008285, 7008290, 7008295, 7008300, 7008305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080021	},
}					
--중급 스카우트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2060, 9060, 16060, 23060, 1006150, 1006155, 1006160, 1006165, 1006170, 1006175, 1006180, 1006185, 1006190, 1006195, 1006200, 1006205, 1006210, 1006215, 1008160, 1008165, 1008170, 1008175, 1008180, 1008185, 1008190, 1008195, 1008200, 1008205, 1008210, 1008215, 1008220, 1008225, 2006150, 2006155, 2006160, 2006165, 2006170, 2006175, 2006180, 2006185, 2006190, 2006195, 2006200, 2006205, 2006210, 2006215, 2008160, 2008165, 2008170, 2008175, 2008180, 2008185, 2008190, 2008195, 2008200, 2008205, 2008210, 2008215, 2008220, 2008225, 3006150, 3006155, 3006160, 3006165, 3006170, 3006175, 3006180, 3006185, 3006190, 3006195, 3006200, 3006205, 3006210, 3006215, 3008160, 3008165, 3008170, 3008175, 3008180, 3008185, 3008190, 3008195, 3008200, 3008205, 3008210, 3008215, 3008220, 3008225, 4006150, 4006155, 4006160, 4006165, 4006170, 4006175, 4006180, 4006185, 4006190, 4006195, 4006200, 4006205, 4006210, 4006215, 4008160, 4008165, 4008170, 4008175, 4008180, 4008185, 4008190, 4008195, 4008200, 4008205, 4008210, 4008215, 4008220, 4008225, 5006150, 5006155, 5006160, 5006165, 5006170, 5006175, 5006180, 5006185, 5006190, 5006195, 5006200, 5006205, 5006210, 5006215, 5008160, 5008165, 5008170, 5008175, 5008180, 5008185, 5008190, 5008195, 5008200, 5008205, 5008210, 5008215, 5008220, 5008225, 6006150, 6006155, 6006160, 6006165, 6006170, 6006175, 6006180, 6006185, 6006190, 6006195, 6006200, 6006205, 6006210, 6006215, 6008160, 6008165, 6008170, 6008175, 6008180, 6008185, 6008190, 6008195, 6008200, 6008205, 6008210, 6008215, 6008220, 6008225, 7008150, 7008155, 7008160, 7008165, 7008170, 7008175, 7008180, 7008185, 7008190, 7008195, 7008200, 7008205, 7008210, 7008215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080011	},
}					
--상급 스카우트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1070, 8070, 15070, 22070, 1006130, 1006135, 1008135, 1008140, 2006130, 2006135, 2008135, 2008140, 3006130, 3006135, 3008135, 3008140, 4006130, 4006135, 4008135, 4008140, 5006130, 5006135, 5008135, 5008140, 6006130, 6006135, 6008135, 6008140, 7008130, 7008135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080002	},
}					
--상급 스카우트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4070, 11070, 18070, 25070, 1006405, 1006410, 1008425, 1008430, 2006405, 2006410, 2008425, 2008430, 3006405, 3006410, 3008425, 3008430, 4006405, 4006410, 4008425, 4008430, 5006405, 5006410, 5008425, 5008430, 6006405, 6006410, 6008425, 6008430, 7008405, 7008410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080032	},
}					
--상급 스카우트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3070, 10070, 17070, 24070, 1006310, 1006315, 1008325, 1008330, 2006310, 2006315, 2008325, 2008330, 3006310, 3006315, 3008325, 3008330, 4006310, 4006315, 4008325, 4008330, 5006310, 5006315, 5008325, 5008330, 6006310, 6006315, 6008325, 6008330, 7008310, 7008315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080022	},
}					
--상급 스카우트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2070, 9070, 16070, 23070, 1006220, 1006225, 1008230, 1008235, 2006220, 2006225, 2008230, 2008235, 3006220, 3006225, 3008230, 3008235, 4006220, 4006225, 4008230, 4008235, 5006220, 5006225, 5008230, 5008235, 6006220, 6006225, 6008230, 6008235, 7008220, 7008225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080012	},
}					
--최상급 스카우트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1075, 8075, 15075, 22075, 1008145, 2008145, 3008145, 4008145, 5008145, 6008145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080003	},
}					
--최상급 스카우트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1008435, 2008435, 3008435, 4008435, 5008435, 6008435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080033	},
}					
--최상급 스카우트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1008335, 2008335, 3008335, 4008335, 5008335, 6008335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080023	},
}					
--최상급 스카우트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2075, 9075, 16075, 23075, 1008240, 2008240, 3008240, 4008240, 5008240, 6008240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10080013	},
}					
--합금 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1076, 1080, 1085, 1090, 1730, 8080, 8085, 8090, 8730, 15080, 15085, 15090, 15730, 22080, 22085, 22090, 22730, 1010050, 1010055, 1012055, 1012060, 2010050, 2010055, 2012055, 2012060, 3010050, 3010055, 3012055, 3012060, 4010050, 4010055, 4012055, 4012060, 5010050, 5010055, 5012055, 5012060, 6010050, 6010055, 6012055, 6012060, 7012055, 7012060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120000	},
}					
--합금 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4080, 4085, 4090, 4730, 11080, 11085, 11090, 11730, 18080, 18085, 18090, 18730, 25080, 25085, 25090, 25730, 1010320, 1010325, 1012340, 1012345, 2010320, 2010325, 2012340, 2012345, 3010320, 3010325, 3012340, 3012345, 4010320, 4010325, 4012340, 4012345, 5010320, 5010325, 5012340, 5012345, 6010320, 6010325, 6012340, 6012345, 7012340, 7012345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120030	},
}					
--합금 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3080, 3085, 3090, 3730, 10080, 10085, 10090, 10730, 17080, 17085, 17090, 17730, 24080, 24085, 24090, 24730, 1010230, 1010235, 1012245, 1012250, 2010230, 2010235, 2012245, 2012250, 3010230, 3010235, 3012245, 3012250, 4010230, 4010235, 4012245, 4012250, 5010230, 5010235, 5012245, 5012250, 6010230, 6010235, 6012245, 6012250, 7012245, 7012250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120020	},
}					
--합금 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2080, 2085, 2090, 2730, 9080, 9085, 9090, 9730, 16080, 16085, 16090, 16730, 23080, 23085, 23090, 23730, 1010140, 1010145, 1012150, 1012155, 2010140, 2010145, 2012150, 2012155, 3010140, 3010145, 3012150, 3012155, 4010140, 4010145, 4012150, 4012155, 5010140, 5010145, 5012150, 5012155, 6010140, 6010145, 6012150, 6012155, 7012150, 7012155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120010	},
}					
--중급 합금 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1100, 8100, 15100, 22100, 1010060, 1010065, 1010070, 1010075, 1010080, 1010085, 1010090, 1010095, 1010100, 1010105, 1010110, 1010115, 1010120, 1010125, 1012065, 1012070, 1012075, 1012080, 1012085, 1012090, 1012095, 1012100, 1012105, 1012110, 1012115, 1012120, 1012125, 1012130, 2010060, 2010065, 2010070, 2010075, 2010080, 2010085, 2010090, 2010095, 2010100, 2010105, 2010110, 2010115, 2010120, 2010125, 2012065, 2012070, 2012075, 2012080, 2012085, 2012090, 2012095, 2012100, 2012105, 2012110, 2012115, 2012120, 2012125, 2012130, 3010060, 3010065, 3010070, 3010075, 3010080, 3010085, 3010090, 3010095, 3010100, 3010105, 3010110, 3010115, 3010120, 3010125, 3012065, 3012070, 3012075, 3012080, 3012085, 3012090, 3012095, 3012100, 3012105, 3012110, 3012115, 3012120, 3012125, 3012130, 4010060, 4010065, 4010070, 4010075, 4010080, 4010085, 4010090, 4010095, 4010100, 4010105, 4010110, 4010115, 4010120, 4010125, 4012065, 4012070, 4012075, 4012080, 4012085, 4012090, 4012095, 4012100, 4012105, 4012110, 4012115, 4012120, 4012125, 4012130, 5010060, 5010065, 5010070, 5010075, 5010080, 5010085, 5010090, 5010095, 5010100, 5010105, 5010110, 5010115, 5010120, 5010125, 5012065, 5012070, 5012075, 5012080, 5012085, 5012090, 5012095, 5012100, 5012105, 5012110, 5012115, 5012120, 5012125, 5012130, 6010060, 6010065, 6010070, 6010075, 6010080, 6010085, 6010090, 6010095, 6010100, 6010105, 6010110, 6010115, 6010120, 6010125, 6012065, 6012070, 6012075, 6012080, 6012085, 6012090, 6012095, 6012100, 6012105, 6012110, 6012115, 6012120, 6012125, 6012130, 7012065, 7012070, 7012075, 7012080, 7012085, 7012090, 7012095, 7012100, 7012105, 7012110, 7012115, 7012120, 7012125, 7012130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120001	},
}					
--중급 합금 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4100, 11100, 18100, 25100, 1010330, 1010335, 1010340, 1010345, 1010350, 1010355, 1010360, 1010365, 1010370, 1010375, 1010380, 1010385, 1010390, 1010395, 1010400, 1012350, 1012355, 1012360, 1012365, 1012370, 1012375, 1012380, 1012385, 1012390, 1012395, 1012400, 1012405, 1012410, 1012415, 1012420, 2010330, 2010335, 2010340, 2010345, 2010350, 2010355, 2010360, 2010365, 2010370, 2010375, 2010380, 2010385, 2010390, 2010395, 2010400, 2012350, 2012355, 2012360, 2012365, 2012370, 2012375, 2012380, 2012385, 2012390, 2012395, 2012400, 2012405, 2012410, 2012415, 2012420, 3010330, 3010335, 3010340, 3010345, 3010350, 3010355, 3010360, 3010365, 3010370, 3010375, 3010380, 3010385, 3010390, 3010395, 3010400, 3012350, 3012355, 3012360, 3012365, 3012370, 3012375, 3012380, 3012385, 3012390, 3012395, 3012400, 3012405, 3012410, 3012415, 3012420, 4010330, 4010335, 4010340, 4010345, 4010350, 4010355, 4010360, 4010365, 4010370, 4010375, 4010380, 4010385, 4010390, 4010395, 4010400, 4012350, 4012355, 4012360, 4012365, 4012370, 4012375, 4012380, 4012385, 4012390, 4012395, 4012400, 4012405, 4012410, 4012415, 4012420, 5010330, 5010335, 5010340, 5010345, 5010350, 5010355, 5010360, 5010365, 5010370, 5010375, 5010380, 5010385, 5010390, 5010395, 5010400, 5012350, 5012355, 5012360, 5012365, 5012370, 5012375, 5012380, 5012385, 5012390, 5012395, 5012400, 5012405, 5012410, 5012415, 5012420, 6010330, 6010335, 6010340, 6010345, 6010350, 6010355, 6010360, 6010365, 6010370, 6010375, 6010380, 6010385, 6010390, 6010395, 6010400, 6012350, 6012355, 6012360, 6012365, 6012370, 6012375, 6012380, 6012385, 6012390, 6012395, 6012400, 6012405, 6012410, 6012415, 6012420, 7012350, 7012355, 7012360, 7012365, 7012370, 7012375, 7012380, 7012385, 7012390, 7012395, 7012400, 7012405, 7012410, 7012415, 7012420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120031	},
}					
--중급 합금 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3100, 10100, 17100, 24100, 1010240, 1010245, 1010250, 1010255, 1010260, 1010265, 1010270, 1010275, 1010280, 1010285, 1010290, 1010295, 1010300, 1010305, 1012255, 1012260, 1012265, 1012270, 1012275, 1012280, 1012285, 1012290, 1012295, 1012300, 1012305, 1012310, 1012315, 1012320, 2010240, 2010245, 2010250, 2010255, 2010260, 2010265, 2010270, 2010275, 2010280, 2010285, 2010290, 2010295, 2010300, 2010305, 2012255, 2012260, 2012265, 2012270, 2012275, 2012280, 2012285, 2012290, 2012295, 2012300, 2012305, 2012310, 2012315, 2012320, 3010240, 3010245, 3010250, 3010255, 3010260, 3010265, 3010270, 3010275, 3010280, 3010285, 3010290, 3010295, 3010300, 3010305, 3012255, 3012260, 3012265, 3012270, 3012275, 3012280, 3012285, 3012290, 3012295, 3012300, 3012305, 3012310, 3012315, 3012320, 4010240, 4010245, 4010250, 4010255, 4010260, 4010265, 4010270, 4010275, 4010280, 4010285, 4010290, 4010295, 4010300, 4010305, 4012255, 4012260, 4012265, 4012270, 4012275, 4012280, 4012285, 4012290, 4012295, 4012300, 4012305, 4012310, 4012315, 4012320, 5010240, 5010245, 5010250, 5010255, 5010260, 5010265, 5010270, 5010275, 5010280, 5010285, 5010290, 5010295, 5010300, 5010305, 5012255, 5012260, 5012265, 5012270, 5012275, 5012280, 5012285, 5012290, 5012295, 5012300, 5012305, 5012310, 5012315, 5012320, 6010240, 6010245, 6010250, 6010255, 6010260, 6010265, 6010270, 6010275, 6010280, 6010285, 6010290, 6010295, 6010300, 6010305, 6012255, 6012260, 6012265, 6012270, 6012275, 6012280, 6012285, 6012290, 6012295, 6012300, 6012305, 6012310, 6012315, 6012320, 7012255, 7012260, 7012265, 7012270, 7012275, 7012280, 7012285, 7012290, 7012295, 7012300, 7012305, 7012310, 7012315, 7012320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120021	},
}					
--중급 합금 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2100, 9100, 16100, 23100, 1010150, 1010155, 1010160, 1010165, 1010170, 1010175, 1010180, 1010185, 1010190, 1010195, 1010200, 1010205, 1010210, 1010215, 1012160, 1012165, 1012170, 1012175, 1012180, 1012185, 1012190, 1012195, 1012200, 1012205, 1012210, 1012215, 1012220, 1012225, 2010150, 2010155, 2010160, 2010165, 2010170, 2010175, 2010180, 2010185, 2010190, 2010195, 2010200, 2010205, 2010210, 2010215, 2012160, 2012165, 2012170, 2012175, 2012180, 2012185, 2012190, 2012195, 2012200, 2012205, 2012210, 2012215, 2012220, 2012225, 3010150, 3010155, 3010160, 3010165, 3010170, 3010175, 3010180, 3010185, 3010190, 3010195, 3010200, 3010205, 3010210, 3010215, 3012160, 3012165, 3012170, 3012175, 3012180, 3012185, 3012190, 3012195, 3012200, 3012205, 3012210, 3012215, 3012220, 3012225, 4010150, 4010155, 4010160, 4010165, 4010170, 4010175, 4010180, 4010185, 4010190, 4010195, 4010200, 4010205, 4010210, 4010215, 4012160, 4012165, 4012170, 4012175, 4012180, 4012185, 4012190, 4012195, 4012200, 4012205, 4012210, 4012215, 4012220, 4012225, 5010150, 5010155, 5010160, 5010165, 5010170, 5010175, 5010180, 5010185, 5010190, 5010195, 5010200, 5010205, 5010210, 5010215, 5012160, 5012165, 5012170, 5012175, 5012180, 5012185, 5012190, 5012195, 5012200, 5012205, 5012210, 5012215, 5012220, 5012225, 6010150, 6010155, 6010160, 6010165, 6010170, 6010175, 6010180, 6010185, 6010190, 6010195, 6010200, 6010205, 6010210, 6010215, 6012160, 6012165, 6012170, 6012175, 6012180, 6012185, 6012190, 6012195, 6012200, 6012205, 6012210, 6012215, 6012220, 6012225, 7012160, 7012165, 7012170, 7012175, 7012180, 7012185, 7012190, 7012195, 7012200, 7012205, 7012210, 7012215, 7012220, 7012225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120011	},
}					
--상급 합금 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1110, 8110, 15110, 22110, 1010130, 1010135, 1012135, 1012140, 2010130, 2010135, 2012135, 2012140, 3010130, 3010135, 3012135, 3012140, 4010130, 4010135, 4012135, 4012140, 5010130, 5010135, 5012135, 5012140, 6010130, 6010135, 6012135, 6012140, 7012135, 7012140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120002	},
}					
--상급 합금 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4110, 11110, 18110, 25110, 1010405, 1010410, 1012425, 1012430, 2010405, 2010410, 2012425, 2012430, 3010405, 3010410, 3012425, 3012430, 4010405, 4010410, 4012425, 4012430, 5010405, 5010410, 5012425, 5012430, 6010405, 6010410, 6012425, 6012430, 7012425, 7012430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120032	},
}					
--상급 합금 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3110, 10110, 17110, 24110, 1010310, 1010315, 1012325, 1012330, 2010310, 2010315, 2012325, 2012330, 3010310, 3010315, 3012325, 3012330, 4010310, 4010315, 4012325, 4012330, 5010310, 5010315, 5012325, 5012330, 6010310, 6010315, 6012325, 6012330, 7012325, 7012330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120022	},
}					
--상급 합금 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2110, 9110, 16110, 23110, 1010220, 1010225, 1012230, 1012235, 2010220, 2010225, 2012230, 2012235, 3010220, 3010225, 3012230, 3012235, 4010220, 4010225, 4012230, 4012235, 5010220, 5010225, 5012230, 5012235, 6010220, 6010225, 6012230, 6012235, 7012230, 7012235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120012	},
}					
--최상급 합금 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1115, 8115, 15115, 22115, 1012145, 2012145, 3012145, 4012145, 5012145, 6012145, 7012145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120003	},
}					
--최상급 합금 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1012435, 2012435, 3012435, 4012435, 5012435, 6012435, 7012435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120033	},
}					
--최상급 합금 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1012335, 2012335, 3012335, 4012335, 5012335, 6012335, 7012335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120023	},
}					
--최상급 합금 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2115, 9115, 16115, 23115, 1012240, 2012240, 3012240, 4012240, 5012240, 6012240, 7012240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10120013	},
}					
--호버크 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1120, 1125, 1130, 8120, 8125, 8130, 15120, 15125, 15130, 22120, 22125, 22130, 1014050, 1014055, 1016055, 1016060, 2014050, 2014055, 2016055, 2016060, 3014050, 3014055, 3016055, 3016060, 4014050, 4014055, 4016055, 4016060, 5014050, 5014055, 5016055, 5016060, 6014050, 6014055, 6016055, 6016060, 7016050, 7016055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160000	},
}					
--호버크 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4120, 4125, 4130, 11120, 11125, 11130, 18120, 18125, 18130, 25120, 25125, 25130, 1014320, 1014325, 1016340, 1016345, 2014320, 2014325, 2016340, 2016345, 3014320, 3014325, 3016340, 3016345, 4014320, 4014325, 4016340, 4016345, 5014320, 5014325, 5016340, 5016345, 6014320, 6014325, 6016340, 6016345, 7016320, 7016325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160030	},
}					
--호버크 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3120, 3125, 3130, 10120, 10125, 10130, 17120, 17125, 17130, 24120, 24125, 24130, 1014230, 1014235, 1016245, 1016250, 2014230, 2014235, 2016245, 2016250, 3014230, 3014235, 3016245, 3016250, 4014230, 4014235, 4016245, 4016250, 5014230, 5014235, 5016245, 5016250, 6014230, 6014235, 6016245, 6016250, 7016230, 7016235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160020	},
}					
--호버크 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2120, 2125, 2130, 9120, 9125, 9130, 16120, 16125, 16130, 23120, 23125, 23130, 1014140, 1014145, 1016150, 1016155, 2014140, 2014145, 2016150, 2016155, 3014140, 3014145, 3016150, 3016155, 4014140, 4014145, 4016150, 4016155, 5014140, 5014145, 5016150, 5016155, 6014140, 6014145, 6016150, 6016155, 7016140, 7016145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160010	},
}					
--중급 호버크 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1140, 1740, 8140, 8740, 15140, 15740, 22140, 22740, 1014060, 1014065, 1014070, 1014075, 1014080, 1014085, 1014090, 1014095, 1014100, 1014105, 1014110, 1014115, 1014120, 1014125, 1016065, 1016070, 1016075, 1016080, 1016085, 1016090, 1016095, 1016100, 1016105, 1016110, 1016115, 1016120, 1016125, 1016130, 2014060, 2014065, 2014070, 2014075, 2014080, 2014085, 2014090, 2014095, 2014100, 2014105, 2014110, 2014115, 2014120, 2014125, 2016065, 2016070, 2016075, 2016080, 2016085, 2016090, 2016095, 2016100, 2016105, 2016110, 2016115, 2016120, 2016125, 2016130, 3014060, 3014065, 3014070, 3014075, 3014080, 3014085, 3014090, 3014095, 3014100, 3014105, 3014110, 3014115, 3014120, 3014125, 3016065, 3016070, 3016075, 3016080, 3016085, 3016090, 3016095, 3016100, 3016105, 3016110, 3016115, 3016120, 3016125, 3016130, 4014060, 4014065, 4014070, 4014075, 4014080, 4014085, 4014090, 4014095, 4014100, 4014105, 4014110, 4014115, 4014120, 4014125, 4016065, 4016070, 4016075, 4016080, 4016085, 4016090, 4016095, 4016100, 4016105, 4016110, 4016115, 4016120, 4016125, 4016130, 5014060, 5014065, 5014070, 5014075, 5014080, 5014085, 5014090, 5014095, 5014100, 5014105, 5014110, 5014115, 5014120, 5014125, 5016065, 5016070, 5016075, 5016080, 5016085, 5016090, 5016095, 5016100, 5016105, 5016110, 5016115, 5016120, 5016125, 5016130, 6014060, 6014065, 6014070, 6014075, 6014080, 6014085, 6014090, 6014095, 6014100, 6014105, 6014110, 6014115, 6014120, 6014125, 6016065, 6016070, 6016075, 6016080, 6016085, 6016090, 6016095, 6016100, 6016105, 6016110, 6016115, 6016120, 6016125, 6016130, 7016060, 7016065, 7016070, 7016075, 7016080, 7016085, 7016090, 7016095, 7016100, 7016105, 7016110, 7016115, 7016120, 7016125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160001	},
}					
--중급 호버크 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4140, 4740, 11140, 11740, 18140, 18740, 25140, 25740, 1014330, 1014335, 1014340, 1014345, 1014350, 1014355, 1014360, 1014365, 1014370, 1014375, 1014380, 1014385, 1014390, 1014395, 1014400, 1016350, 1016355, 1016360, 1016365, 1016370, 1016375, 1016380, 1016385, 1016390, 1016395, 1016400, 1016405, 1016410, 1016415, 1016420, 2014330, 2014335, 2014340, 2014345, 2014350, 2014355, 2014360, 2014365, 2014370, 2014375, 2014380, 2014385, 2014390, 2014395, 2014400, 2016350, 2016355, 2016360, 2016365, 2016370, 2016375, 2016380, 2016385, 2016390, 2016395, 2016400, 2016405, 2016410, 2016415, 2016420, 3014330, 3014335, 3014340, 3014345, 3014350, 3014355, 3014360, 3014365, 3014370, 3014375, 3014380, 3014385, 3014390, 3014395, 3014400, 3016350, 3016355, 3016360, 3016365, 3016370, 3016375, 3016380, 3016385, 3016390, 3016395, 3016400, 3016405, 3016410, 3016415, 3016420, 4014330, 4014335, 4014340, 4014345, 4014350, 4014355, 4014360, 4014365, 4014370, 4014375, 4014380, 4014385, 4014390, 4014395, 4014400, 4016350, 4016355, 4016360, 4016365, 4016370, 4016375, 4016380, 4016385, 4016390, 4016395, 4016400, 4016405, 4016410, 4016415, 4016420, 5014330, 5014335, 5014340, 5014345, 5014350, 5014355, 5014360, 5014365, 5014370, 5014375, 5014380, 5014385, 5014390, 5014395, 5014400, 5016350, 5016355, 5016360, 5016365, 5016370, 5016375, 5016380, 5016385, 5016390, 5016395, 5016400, 5016405, 5016410, 5016415, 5016420, 6014330, 6014335, 6014340, 6014345, 6014350, 6014355, 6014360, 6014365, 6014370, 6014375, 6014380, 6014385, 6014390, 6014395, 6014400, 6016350, 6016355, 6016360, 6016365, 6016370, 6016375, 6016380, 6016385, 6016390, 6016395, 6016400, 6016405, 6016410, 6016415, 6016420, 7016330, 7016335, 7016340, 7016345, 7016350, 7016355, 7016360, 7016365, 7016370, 7016375, 7016380, 7016385, 7016390, 7016395, 7016400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160031	},
}					
--중급 호버크 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3140, 3740, 10140, 10740, 17140, 17740, 24140, 24740, 1014240, 1014245, 1014250, 1014255, 1014260, 1014265, 1014270, 1014275, 1014280, 1014285, 1014290, 1014295, 1014300, 1014305, 1016255, 1016260, 1016265, 1016270, 1016275, 1016280, 1016285, 1016290, 1016295, 1016300, 1016305, 1016310, 1016315, 1016320, 2014240, 2014245, 2014250, 2014255, 2014260, 2014265, 2014270, 2014275, 2014280, 2014285, 2014290, 2014295, 2014300, 2014305, 2016255, 2016260, 2016265, 2016270, 2016275, 2016280, 2016285, 2016290, 2016295, 2016300, 2016305, 2016310, 2016315, 2016320, 3014240, 3014245, 3014250, 3014255, 3014260, 3014265, 3014270, 3014275, 3014280, 3014285, 3014290, 3014295, 3014300, 3014305, 3016255, 3016260, 3016265, 3016270, 3016275, 3016280, 3016285, 3016290, 3016295, 3016300, 3016305, 3016310, 3016315, 3016320, 4014240, 4014245, 4014250, 4014255, 4014260, 4014265, 4014270, 4014275, 4014280, 4014285, 4014290, 4014295, 4014300, 4014305, 4016255, 4016260, 4016265, 4016270, 4016275, 4016280, 4016285, 4016290, 4016295, 4016300, 4016305, 4016310, 4016315, 4016320, 5014240, 5014245, 5014250, 5014255, 5014260, 5014265, 5014270, 5014275, 5014280, 5014285, 5014290, 5014295, 5014300, 5014305, 5016255, 5016260, 5016265, 5016270, 5016275, 5016280, 5016285, 5016290, 5016295, 5016300, 5016305, 5016310, 5016315, 5016320, 6014240, 6014245, 6014250, 6014255, 6014260, 6014265, 6014270, 6014275, 6014280, 6014285, 6014290, 6014295, 6014300, 6014305, 6016255, 6016260, 6016265, 6016270, 6016275, 6016280, 6016285, 6016290, 6016295, 6016300, 6016305, 6016310, 6016315, 6016320, 7016240, 7016245, 7016250, 7016255, 7016260, 7016265, 7016270, 7016275, 7016280, 7016285, 7016290, 7016295, 7016300, 7016305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160021	},
}					
--중급 호버크 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2140, 2740, 9140, 9740, 16140, 16740, 23140, 23740, 1014150, 1014155, 1014160, 1014165, 1014170, 1014175, 1014180, 1014185, 1014190, 1014195, 1014200, 1014205, 1014210, 1014215, 1016160, 1016165, 1016170, 1016175, 1016180, 1016185, 1016190, 1016195, 1016200, 1016205, 1016210, 1016215, 1016220, 1016225, 2014150, 2014155, 2014160, 2014165, 2014170, 2014175, 2014180, 2014185, 2014190, 2014195, 2014200, 2014205, 2014210, 2014215, 2016160, 2016165, 2016170, 2016175, 2016180, 2016185, 2016190, 2016195, 2016200, 2016205, 2016210, 2016215, 2016220, 2016225, 3014150, 3014155, 3014160, 3014165, 3014170, 3014175, 3014180, 3014185, 3014190, 3014195, 3014200, 3014205, 3014210, 3014215, 3016160, 3016165, 3016170, 3016175, 3016180, 3016185, 3016190, 3016195, 3016200, 3016205, 3016210, 3016215, 3016220, 3016225, 4014150, 4014155, 4014160, 4014165, 4014170, 4014175, 4014180, 4014185, 4014190, 4014195, 4014200, 4014205, 4014210, 4014215, 4016160, 4016165, 4016170, 4016175, 4016180, 4016185, 4016190, 4016195, 4016200, 4016205, 4016210, 4016215, 4016220, 4016225, 5014150, 5014155, 5014160, 5014165, 5014170, 5014175, 5014180, 5014185, 5014190, 5014195, 5014200, 5014205, 5014210, 5014215, 5016160, 5016165, 5016170, 5016175, 5016180, 5016185, 5016190, 5016195, 5016200, 5016205, 5016210, 5016215, 5016220, 5016225, 6014150, 6014155, 6014160, 6014165, 6014170, 6014175, 6014180, 6014185, 6014190, 6014195, 6014200, 6014205, 6014210, 6014215, 6016160, 6016165, 6016170, 6016175, 6016180, 6016185, 6016190, 6016195, 6016200, 6016205, 6016210, 6016215, 6016220, 6016225, 7016150, 7016155, 7016160, 7016165, 7016170, 7016175, 7016180, 7016185, 7016190, 7016195, 7016200, 7016205, 7016210, 7016215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160011	},
}					
--상급 호버크 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150, 8150, 15150, 22150, 1014130, 1014135, 1016135, 1016140, 2014130, 2014135, 2016135, 2016140, 3014130, 3014135, 3016135, 3016140, 4014130, 4014135, 4016135, 4016140, 5014130, 5014135, 5016135, 5016140, 6014130, 6014135, 6016135, 6016140, 7016130, 7016135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160002	},
}					
--상급 호버크 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4150, 11150, 18150, 25150, 1014405, 1014410, 1016425, 1016430, 2014405, 2014410, 2016425, 2016430, 3014405, 3014410, 3016425, 3016430, 4014405, 4014410, 4016425, 4016430, 5014405, 5014410, 5016425, 5016430, 6014405, 6014410, 6016425, 6016430, 7016405, 7016410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160032	},
}					
--상급 호버크 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3150, 10150, 17150, 24150, 1014310, 1014315, 1016325, 1016330, 2014310, 2014315, 2016325, 2016330, 3014310, 3014315, 3016325, 3016330, 4014310, 4014315, 4016325, 4016330, 5014310, 5014315, 5016325, 5016330, 6014310, 6014315, 6016325, 6016330, 7016310, 7016315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160022	},
}					
--상급 호버크 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2150, 9150, 16150, 23150, 1014220, 1014225, 1016230, 1016235, 2014220, 2014225, 2016230, 2016235, 3014220, 3014225, 3016230, 3016235, 4014220, 4014225, 4016230, 4016235, 5014220, 5014225, 5016230, 5016235, 6014220, 6014225, 6016230, 6016235, 7016220, 7016225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160012	},
}					
--최상급 호버크 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1155, 8155, 15155, 22155, 1016145, 2016145, 3016145, 4016145, 5016145, 6016145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160003	},
}					
--최상급 호버크 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016435, 2016435, 3016435, 4016435, 5016435, 6016435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160033	},
}					
--최상급 호버크 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1016335, 2016335, 3016335, 4016335, 5016335, 6016335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160023	},
}					
--최상급 호버크 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2155, 9155, 16155, 23155, 1016240, 2016240, 3016240, 4016240, 5016240, 6016240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10160013	},
}					
--레더 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160, 1165, 1170, 1750, 8160, 8165, 8170, 8750, 15160, 15165, 15170, 15750, 22160, 22165, 22170, 22750, 1018050, 1018055, 1020055, 1020060, 2018050, 2018055, 2020055, 2020060, 3018050, 3018055, 3020055, 3020060, 4018050, 4018055, 4020055, 4020060, 5018050, 5018055, 5020055, 5020060, 6018050, 6018055, 6020055, 6020060, 7020055, 7020060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200000	},
}					
--레더 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4160, 4165, 4170, 4750, 11160, 11165, 11170, 11750, 18160, 18165, 18170, 18750, 25160, 25165, 25170, 25750, 1018320, 1018325, 1020340, 1020345, 2018320, 2018325, 2020340, 2020345, 3018320, 3018325, 3020340, 3020345, 4018320, 4018325, 4020340, 4020345, 5018320, 5018325, 5020340, 5020345, 6018320, 6018325, 6020340, 6020345, 7020340, 7020345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200030	},
}					
--레더 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3160, 3165, 3170, 3750, 10160, 10165, 10170, 10750, 17160, 17165, 17170, 17750, 24160, 24165, 24170, 24750, 1018230, 1018235, 1020245, 1020250, 2018230, 2018235, 2020245, 2020250, 3018230, 3018235, 3020245, 3020250, 4018230, 4018235, 4020245, 4020250, 5018230, 5018235, 5020245, 5020250, 6018230, 6018235, 6020245, 6020250, 7020245, 7020250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200020	},
}					
--레더 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2160, 2165, 2170, 2750, 9160, 9165, 9170, 9750, 16160, 16165, 16170, 16750, 23160, 23165, 23170, 23750, 1018140, 1018145, 1020150, 1020155, 2018140, 2018145, 2020150, 2020155, 3018140, 3018145, 3020150, 3020155, 4018140, 4018145, 4020150, 4020155, 5018140, 5018145, 5020150, 5020155, 6018140, 6018145, 6020150, 6020155, 7020150, 7020155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200010	},
}					
--중급 레더 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1180, 8180, 15180, 22180, 1018060, 1018065, 1018070, 1018075, 1018080, 1018085, 1018090, 1018095, 1018100, 1018105, 1018110, 1018115, 1018120, 1018125, 1020065, 1020070, 1020075, 1020080, 1020085, 1020090, 1020095, 1020100, 1020105, 1020110, 1020115, 1020120, 1020125, 1020130, 2018060, 2018065, 2018070, 2018075, 2018080, 2018085, 2018090, 2018095, 2018100, 2018105, 2018110, 2018115, 2018120, 2018125, 2020065, 2020070, 2020075, 2020080, 2020085, 2020090, 2020095, 2020100, 2020105, 2020110, 2020115, 2020120, 2020125, 2020130, 3018060, 3018065, 3018070, 3018075, 3018080, 3018085, 3018090, 3018095, 3018100, 3018105, 3018110, 3018115, 3018120, 3018125, 3020065, 3020070, 3020075, 3020080, 3020085, 3020090, 3020095, 3020100, 3020105, 3020110, 3020115, 3020120, 3020125, 3020130, 4018060, 4018065, 4018070, 4018075, 4018080, 4018085, 4018090, 4018095, 4018100, 4018105, 4018110, 4018115, 4018120, 4018125, 4020065, 4020070, 4020075, 4020080, 4020085, 4020090, 4020095, 4020100, 4020105, 4020110, 4020115, 4020120, 4020125, 4020130, 5018060, 5018065, 5018070, 5018075, 5018080, 5018085, 5018090, 5018095, 5018100, 5018105, 5018110, 5018115, 5018120, 5018125, 5020065, 5020070, 5020075, 5020080, 5020085, 5020090, 5020095, 5020100, 5020105, 5020110, 5020115, 5020120, 5020125, 5020130, 6018060, 6018065, 6018070, 6018075, 6018080, 6018085, 6018090, 6018095, 6018100, 6018105, 6018110, 6018115, 6018120, 6018125, 6020065, 6020070, 6020075, 6020080, 6020085, 6020090, 6020095, 6020100, 6020105, 6020110, 6020115, 6020120, 6020125, 6020130, 7020065, 7020070, 7020075, 7020080, 7020085, 7020090, 7020095, 7020100, 7020105, 7020110, 7020115, 7020120, 7020125, 7020130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200001	},
}					
--중급 레더 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4180, 11180, 18180, 25180, 1018330, 1018335, 1018340, 1018345, 1018350, 1018355, 1018360, 1018365, 1018370, 1018375, 1018380, 1018385, 1018390, 1018395, 1018400, 1020350, 1020355, 1020360, 1020365, 1020370, 1020375, 1020380, 1020385, 1020390, 1020395, 1020400, 1020405, 1020410, 1020415, 1020420, 2018330, 2018335, 2018340, 2018345, 2018350, 2018355, 2018360, 2018365, 2018370, 2018375, 2018380, 2018385, 2018390, 2018395, 2018400, 2020350, 2020355, 2020360, 2020365, 2020370, 2020375, 2020380, 2020385, 2020390, 2020395, 2020400, 2020405, 2020410, 2020415, 2020420, 3018330, 3018335, 3018340, 3018345, 3018350, 3018355, 3018360, 3018365, 3018370, 3018375, 3018380, 3018385, 3018390, 3018395, 3018400, 3020350, 3020355, 3020360, 3020365, 3020370, 3020375, 3020380, 3020385, 3020390, 3020395, 3020400, 3020405, 3020410, 3020415, 3020420, 4018330, 4018335, 4018340, 4018345, 4018350, 4018355, 4018360, 4018365, 4018370, 4018375, 4018380, 4018385, 4018390, 4018395, 4018400, 4020350, 4020355, 4020360, 4020365, 4020370, 4020375, 4020380, 4020385, 4020390, 4020395, 4020400, 4020405, 4020410, 4020415, 4020420, 5018330, 5018335, 5018340, 5018345, 5018350, 5018355, 5018360, 5018365, 5018370, 5018375, 5018380, 5018385, 5018390, 5018395, 5018400, 5020350, 5020355, 5020360, 5020365, 5020370, 5020375, 5020380, 5020385, 5020390, 5020395, 5020400, 5020405, 5020410, 5020415, 5020420, 6018330, 6018335, 6018340, 6018345, 6018350, 6018355, 6018360, 6018365, 6018370, 6018375, 6018380, 6018385, 6018390, 6018395, 6018400, 6020350, 6020355, 6020360, 6020365, 6020370, 6020375, 6020380, 6020385, 6020390, 6020395, 6020400, 6020405, 6020410, 6020415, 6020420, 7020350, 7020355, 7020360, 7020365, 7020370, 7020375, 7020380, 7020385, 7020390, 7020395, 7020400, 7020405, 7020410, 7020415, 7020420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200031	},
}					
--중급 레더 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3180, 10180, 17180, 24180, 1018240, 1018245, 1018250, 1018255, 1018260, 1018265, 1018270, 1018275, 1018280, 1018285, 1018290, 1018295, 1018300, 1018305, 1020255, 1020260, 1020265, 1020270, 1020275, 1020280, 1020285, 1020290, 1020295, 1020300, 1020305, 1020310, 1020315, 1020320, 2018240, 2018245, 2018250, 2018255, 2018260, 2018265, 2018270, 2018275, 2018280, 2018285, 2018290, 2018295, 2018300, 2018305, 2020255, 2020260, 2020265, 2020270, 2020275, 2020280, 2020285, 2020290, 2020295, 2020300, 2020305, 2020310, 2020315, 2020320, 3018240, 3018245, 3018250, 3018255, 3018260, 3018265, 3018270, 3018275, 3018280, 3018285, 3018290, 3018295, 3018300, 3018305, 3020255, 3020260, 3020265, 3020270, 3020275, 3020280, 3020285, 3020290, 3020295, 3020300, 3020305, 3020310, 3020315, 3020320, 4018240, 4018245, 4018250, 4018255, 4018260, 4018265, 4018270, 4018275, 4018280, 4018285, 4018290, 4018295, 4018300, 4018305, 4020255, 4020260, 4020265, 4020270, 4020275, 4020280, 4020285, 4020290, 4020295, 4020300, 4020305, 4020310, 4020315, 4020320, 5018240, 5018245, 5018250, 5018255, 5018260, 5018265, 5018270, 5018275, 5018280, 5018285, 5018290, 5018295, 5018300, 5018305, 5020255, 5020260, 5020265, 5020270, 5020275, 5020280, 5020285, 5020290, 5020295, 5020300, 5020305, 5020310, 5020315, 5020320, 6018240, 6018245, 6018250, 6018255, 6018260, 6018265, 6018270, 6018275, 6018280, 6018285, 6018290, 6018295, 6018300, 6018305, 6020255, 6020260, 6020265, 6020270, 6020275, 6020280, 6020285, 6020290, 6020295, 6020300, 6020305, 6020310, 6020315, 6020320, 7020255, 7020260, 7020265, 7020270, 7020275, 7020280, 7020285, 7020290, 7020295, 7020300, 7020305, 7020310, 7020315, 7020320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200021	},
}					
--중급 레더 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2180, 9180, 16180, 23180, 1018150, 1018155, 1018160, 1018165, 1018170, 1018175, 1018180, 1018185, 1018190, 1018195, 1018200, 1018205, 1018210, 1018215, 1020160, 1020165, 1020170, 1020175, 1020180, 1020185, 1020190, 1020195, 1020200, 1020205, 1020210, 1020215, 1020220, 1020225, 2018150, 2018155, 2018160, 2018165, 2018170, 2018175, 2018180, 2018185, 2018190, 2018195, 2018200, 2018205, 2018210, 2018215, 2020160, 2020165, 2020170, 2020175, 2020180, 2020185, 2020190, 2020195, 2020200, 2020205, 2020210, 2020215, 2020220, 2020225, 3018150, 3018155, 3018160, 3018165, 3018170, 3018175, 3018180, 3018185, 3018190, 3018195, 3018200, 3018205, 3018210, 3018215, 3020160, 3020165, 3020170, 3020175, 3020180, 3020185, 3020190, 3020195, 3020200, 3020205, 3020210, 3020215, 3020220, 3020225, 4018150, 4018155, 4018160, 4018165, 4018170, 4018175, 4018180, 4018185, 4018190, 4018195, 4018200, 4018205, 4018210, 4018215, 4020160, 4020165, 4020170, 4020175, 4020180, 4020185, 4020190, 4020195, 4020200, 4020205, 4020210, 4020215, 4020220, 4020225, 5018150, 5018155, 5018160, 5018165, 5018170, 5018175, 5018180, 5018185, 5018190, 5018195, 5018200, 5018205, 5018210, 5018215, 5020160, 5020165, 5020170, 5020175, 5020180, 5020185, 5020190, 5020195, 5020200, 5020205, 5020210, 5020215, 5020220, 5020225, 6018150, 6018155, 6018160, 6018165, 6018170, 6018175, 6018180, 6018185, 6018190, 6018195, 6018200, 6018205, 6018210, 6018215, 6020160, 6020165, 6020170, 6020175, 6020180, 6020185, 6020190, 6020195, 6020200, 6020205, 6020210, 6020215, 6020220, 6020225, 7020160, 7020165, 7020170, 7020175, 7020180, 7020185, 7020190, 7020195, 7020200, 7020205, 7020210, 7020215, 7020220, 7020225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200011	},
}					
--상급 레더 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1190, 8190, 15190, 22190, 1018130, 1018135, 1020135, 1020140, 2018130, 2018135, 2020135, 2020140, 3018130, 3018135, 3020135, 3020140, 4018130, 4018135, 4020135, 4020140, 5018130, 5018135, 5020135, 5020140, 6018130, 6018135, 6020135, 6020140, 7020135, 7020140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200002	},
}					
--상급 레더 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4190, 11190, 18190, 25190, 1018405, 1018410, 1020425, 1020430, 2018405, 2018410, 2020425, 2020430, 3018405, 3018410, 3020425, 3020430, 4018405, 4018410, 4020425, 4020430, 5018405, 5018410, 5020425, 5020430, 6018405, 6018410, 6020425, 6020430, 7020425, 7020430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200032	},
}					
--상급 레더 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3190, 10190, 17190, 24190, 1018310, 1018315, 1020325, 1020330, 2018310, 2018315, 2020325, 2020330, 3018310, 3018315, 3020325, 3020330, 4018310, 4018315, 4020325, 4020330, 5018310, 5018315, 5020325, 5020330, 6018310, 6018315, 6020325, 6020330, 7020325, 7020330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200022	},
}					
--상급 레더 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2190, 9190, 16190, 23190, 1018220, 1018225, 1020230, 1020235, 2018220, 2018225, 2020230, 2020235, 3018220, 3018225, 3020230, 3020235, 4018220, 4018225, 4020230, 4020235, 5018220, 5018225, 5020230, 5020235, 6018220, 6018225, 6020230, 6020235, 7020230, 7020235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200012	},
}					
--최상급 레더 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1195, 8195, 15195, 22195, 1020145, 2020145, 3020145, 4020145, 5020145, 6020145, 7020145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200003	},
}					
--최상급 레더 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020435, 2020435, 3020435, 4020435, 5020435, 6020435, 7020435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200033	},
}					
--최상급 레더 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1020335, 2020335, 3020335, 4020335, 5020335, 6020335, 7020335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200023	},
}					
--최상급 레더 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2195, 9195, 16195, 23195, 1020240, 2020240, 3020240, 4020240, 5020240, 6020240, 7020240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10200013	},
}					
--샤이닝 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1200, 1205, 1210, 1760, 8200, 8205, 8210, 8760, 15200, 15205, 15210, 15760, 22200, 22205, 22210, 22760, 1022050, 1022055, 1024055, 1024060, 2022050, 2022055, 2024055, 2024060, 3022050, 3022055, 3024055, 3024060, 4022050, 4022055, 4024055, 4024060, 5022050, 5022055, 5024055, 5024060, 6022050, 6022055, 6024055, 6024060, 7024050, 7024055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240000	},
}					
--샤이닝 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4200, 4205, 4210, 4760, 11200, 11205, 11210, 11760, 18200, 18205, 18210, 18760, 25200, 25205, 25210, 25760, 1022320, 1022325, 1024340, 1024345, 2022320, 2022325, 2024340, 2024345, 3022320, 3022325, 3024340, 3024345, 4022320, 4022325, 4024340, 4024345, 5022320, 5022325, 5024340, 5024345, 6022320, 6022325, 6024340, 6024345, 7024320, 7024325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240030	},
}					
--샤이닝 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3200, 3205, 3210, 3760, 10200, 10205, 10210, 10760, 17200, 17205, 17210, 17760, 24200, 24205, 24210, 24760, 1022230, 1022235, 1024245, 1024250, 2022230, 2022235, 2024245, 2024250, 3022230, 3022235, 3024245, 3024250, 4022230, 4022235, 4024245, 4024250, 5022230, 5022235, 5024245, 5024250, 6022230, 6022235, 6024245, 6024250, 7024230, 7024235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240020	},
}					
--샤이닝 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2200, 2205, 2210, 2760, 9200, 9205, 9210, 9760, 16200, 16205, 16210, 16760, 23200, 23205, 23210, 23760, 1022140, 1022145, 1024150, 1024155, 2022140, 2022145, 2024150, 2024155, 3022140, 3022145, 3024150, 3024155, 4022140, 4022145, 4024150, 4024155, 5022140, 5022145, 5024150, 5024155, 6022140, 6022145, 6024150, 6024155, 7024140, 7024145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240010	},
}					
--중급 샤이닝 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1220, 8220, 15220, 22220, 1022060, 1022065, 1022070, 1022075, 1022080, 1022085, 1022090, 1022095, 1022100, 1022105, 1022110, 1022115, 1022120, 1022125, 1024065, 1024070, 1024075, 1024080, 1024085, 1024090, 1024095, 1024100, 1024105, 1024110, 1024115, 1024120, 1024125, 1024130, 2022060, 2022065, 2022070, 2022075, 2022080, 2022085, 2022090, 2022095, 2022100, 2022105, 2022110, 2022115, 2022120, 2022125, 2024065, 2024070, 2024075, 2024080, 2024085, 2024090, 2024095, 2024100, 2024105, 2024110, 2024115, 2024120, 2024125, 2024130, 3022060, 3022065, 3022070, 3022075, 3022080, 3022085, 3022090, 3022095, 3022100, 3022105, 3022110, 3022115, 3022120, 3022125, 3024065, 3024070, 3024075, 3024080, 3024085, 3024090, 3024095, 3024100, 3024105, 3024110, 3024115, 3024120, 3024125, 3024130, 4022060, 4022065, 4022070, 4022075, 4022080, 4022085, 4022090, 4022095, 4022100, 4022105, 4022110, 4022115, 4022120, 4022125, 4024065, 4024070, 4024075, 4024080, 4024085, 4024090, 4024095, 4024100, 4024105, 4024110, 4024115, 4024120, 4024125, 4024130, 5022060, 5022065, 5022070, 5022075, 5022080, 5022085, 5022090, 5022095, 5022100, 5022105, 5022110, 5022115, 5022120, 5022125, 5024065, 5024070, 5024075, 5024080, 5024085, 5024090, 5024095, 5024100, 5024105, 5024110, 5024115, 5024120, 5024125, 5024130, 6022060, 6022065, 6022070, 6022075, 6022080, 6022085, 6022090, 6022095, 6022100, 6022105, 6022110, 6022115, 6022120, 6022125, 6024065, 6024070, 6024075, 6024080, 6024085, 6024090, 6024095, 6024100, 6024105, 6024110, 6024115, 6024120, 6024125, 6024130, 7024060, 7024065, 7024070, 7024075, 7024080, 7024085, 7024090, 7024095, 7024100, 7024105, 7024110, 7024115, 7024120, 7024125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240001	},
}					
--중급 샤이닝 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4220, 11220, 18220, 25220, 1022330, 1022335, 1022340, 1022345, 1022350, 1022355, 1022360, 1022365, 1022370, 1022375, 1022380, 1022385, 1022390, 1022395, 1022400, 1024350, 1024355, 1024360, 1024365, 1024370, 1024375, 1024380, 1024385, 1024390, 1024395, 1024400, 1024405, 1024410, 1024415, 1024420, 2022330, 2022335, 2022340, 2022345, 2022350, 2022355, 2022360, 2022365, 2022370, 2022375, 2022380, 2022385, 2022390, 2022395, 2022400, 2024350, 2024355, 2024360, 2024365, 2024370, 2024375, 2024380, 2024385, 2024390, 2024395, 2024400, 2024405, 2024410, 2024415, 2024420, 3022330, 3022335, 3022340, 3022345, 3022350, 3022355, 3022360, 3022365, 3022370, 3022375, 3022380, 3022385, 3022390, 3022395, 3022400, 3024350, 3024355, 3024360, 3024365, 3024370, 3024375, 3024380, 3024385, 3024390, 3024395, 3024400, 3024405, 3024410, 3024415, 3024420, 4022330, 4022335, 4022340, 4022345, 4022350, 4022355, 4022360, 4022365, 4022370, 4022375, 4022380, 4022385, 4022390, 4022395, 4022400, 4024350, 4024355, 4024360, 4024365, 4024370, 4024375, 4024380, 4024385, 4024390, 4024395, 4024400, 4024405, 4024410, 4024415, 4024420, 5022330, 5022335, 5022340, 5022345, 5022350, 5022355, 5022360, 5022365, 5022370, 5022375, 5022380, 5022385, 5022390, 5022395, 5022400, 5024350, 5024355, 5024360, 5024365, 5024370, 5024375, 5024380, 5024385, 5024390, 5024395, 5024400, 5024405, 5024410, 5024415, 5024420, 6022330, 6022335, 6022340, 6022345, 6022350, 6022355, 6022360, 6022365, 6022370, 6022375, 6022380, 6022385, 6022390, 6022395, 6022400, 6024350, 6024355, 6024360, 6024365, 6024370, 6024375, 6024380, 6024385, 6024390, 6024395, 6024400, 6024405, 6024410, 6024415, 6024420, 7024330, 7024335, 7024340, 7024345, 7024350, 7024355, 7024360, 7024365, 7024370, 7024375, 7024380, 7024385, 7024390, 7024395, 7024400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240031	},
}					
--중급 샤이닝 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3220, 10220, 17220, 24220, 1022240, 1022245, 1022250, 1022255, 1022260, 1022265, 1022270, 1022275, 1022280, 1022285, 1022290, 1022295, 1022300, 1022305, 1024255, 1024260, 1024265, 1024270, 1024275, 1024280, 1024285, 1024290, 1024295, 1024300, 1024305, 1024310, 1024315, 1024320, 2022240, 2022245, 2022250, 2022255, 2022260, 2022265, 2022270, 2022275, 2022280, 2022285, 2022290, 2022295, 2022300, 2022305, 2024255, 2024260, 2024265, 2024270, 2024275, 2024280, 2024285, 2024290, 2024295, 2024300, 2024305, 2024310, 2024315, 2024320, 3022240, 3022245, 3022250, 3022255, 3022260, 3022265, 3022270, 3022275, 3022280, 3022285, 3022290, 3022295, 3022300, 3022305, 3024255, 3024260, 3024265, 3024270, 3024275, 3024280, 3024285, 3024290, 3024295, 3024300, 3024305, 3024310, 3024315, 3024320, 4022240, 4022245, 4022250, 4022255, 4022260, 4022265, 4022270, 4022275, 4022280, 4022285, 4022290, 4022295, 4022300, 4022305, 4024255, 4024260, 4024265, 4024270, 4024275, 4024280, 4024285, 4024290, 4024295, 4024300, 4024305, 4024310, 4024315, 4024320, 5022240, 5022245, 5022250, 5022255, 5022260, 5022265, 5022270, 5022275, 5022280, 5022285, 5022290, 5022295, 5022300, 5022305, 5024255, 5024260, 5024265, 5024270, 5024275, 5024280, 5024285, 5024290, 5024295, 5024300, 5024305, 5024310, 5024315, 5024320, 6022240, 6022245, 6022250, 6022255, 6022260, 6022265, 6022270, 6022275, 6022280, 6022285, 6022290, 6022295, 6022300, 6022305, 6024255, 6024260, 6024265, 6024270, 6024275, 6024280, 6024285, 6024290, 6024295, 6024300, 6024305, 6024310, 6024315, 6024320, 7024240, 7024245, 7024250, 7024255, 7024260, 7024265, 7024270, 7024275, 7024280, 7024285, 7024290, 7024295, 7024300, 7024305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240021	},
}					
--중급 샤이닝 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2220, 9220, 16220, 23220, 1022150, 1022155, 1022160, 1022165, 1022170, 1022175, 1022180, 1022185, 1022190, 1022195, 1022200, 1022205, 1022210, 1022215, 1024160, 1024165, 1024170, 1024175, 1024180, 1024185, 1024190, 1024195, 1024200, 1024205, 1024210, 1024215, 1024220, 1024225, 2022150, 2022155, 2022160, 2022165, 2022170, 2022175, 2022180, 2022185, 2022190, 2022195, 2022200, 2022205, 2022210, 2022215, 2024160, 2024165, 2024170, 2024175, 2024180, 2024185, 2024190, 2024195, 2024200, 2024205, 2024210, 2024215, 2024220, 2024225, 3022150, 3022155, 3022160, 3022165, 3022170, 3022175, 3022180, 3022185, 3022190, 3022195, 3022200, 3022205, 3022210, 3022215, 3024160, 3024165, 3024170, 3024175, 3024180, 3024185, 3024190, 3024195, 3024200, 3024205, 3024210, 3024215, 3024220, 3024225, 4022150, 4022155, 4022160, 4022165, 4022170, 4022175, 4022180, 4022185, 4022190, 4022195, 4022200, 4022205, 4022210, 4022215, 4024160, 4024165, 4024170, 4024175, 4024180, 4024185, 4024190, 4024195, 4024200, 4024205, 4024210, 4024215, 4024220, 4024225, 5022150, 5022155, 5022160, 5022165, 5022170, 5022175, 5022180, 5022185, 5022190, 5022195, 5022200, 5022205, 5022210, 5022215, 5024160, 5024165, 5024170, 5024175, 5024180, 5024185, 5024190, 5024195, 5024200, 5024205, 5024210, 5024215, 5024220, 5024225, 6022150, 6022155, 6022160, 6022165, 6022170, 6022175, 6022180, 6022185, 6022190, 6022195, 6022200, 6022205, 6022210, 6022215, 6024160, 6024165, 6024170, 6024175, 6024180, 6024185, 6024190, 6024195, 6024200, 6024205, 6024210, 6024215, 6024220, 6024225, 7024150, 7024155, 7024160, 7024165, 7024170, 7024175, 7024180, 7024185, 7024190, 7024195, 7024200, 7024205, 7024210, 7024215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240011	},
}					
--상급 샤이닝 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1230, 8230, 15230, 22230, 1022130, 1022135, 1024135, 1024140, 2022130, 2022135, 2024135, 2024140, 3022130, 3022135, 3024135, 3024140, 4022130, 4022135, 4024135, 4024140, 5022130, 5022135, 5024135, 5024140, 6022130, 6022135, 6024135, 6024140, 7024130, 7024135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240002	},
}					
--상급 샤이닝 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4230, 11230, 18230, 25230, 1022405, 1022410, 1024425, 1024430, 2022405, 2022410, 2024425, 2024430, 3022405, 3022410, 3024425, 3024430, 4022405, 4022410, 4024425, 4024430, 5022405, 5022410, 5024425, 5024430, 6022405, 6022410, 6024425, 6024430, 7024405, 7024410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240032	},
}					
--상급 샤이닝 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3230, 10230, 17230, 24230, 1022310, 1022315, 1024325, 1024330, 2022310, 2022315, 2024325, 2024330, 3022310, 3022315, 3024325, 3024330, 4022310, 4022315, 4024325, 4024330, 5022310, 5022315, 5024325, 5024330, 6022310, 6022315, 6024325, 6024330, 7024310, 7024315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240022	},
}
--상급 샤이닝 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2230, 9230, 16230, 23230, 1022220, 1022225, 1024230, 1024235, 2022220, 2022225, 2024230, 2024235, 3022220, 3022225, 3024230, 3024235, 4022220, 4022225, 4024230, 4024235, 5022220, 5022225, 5024230, 5024235, 6022220, 6022225, 6024230, 6024235, 7024220, 7024225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240012	},
}					
--최상급 샤이닝 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1235, 8235, 15235, 22235, 1024145, 2024145, 3024145, 4024145, 5024145, 6024145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240003	},
}					
--최상급 샤이닝 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024435, 2024435, 3024435, 4024435, 5024435, 6024435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240033	},
}					
--최상급 샤이닝 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1024335, 2024335, 3024335, 4024335, 5024335, 6024335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240023	},
}					
--최상급 샤이닝 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2235, 9235, 16235, 23235, 1024240, 2024240, 3024240, 4024240, 5024240, 6024240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10240013	},
}					
--컴뱃 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1240, 1245, 1250, 8240, 8245, 8250, 15240, 15245, 15250, 22240, 22245, 22250, 1026050, 1026055, 1028055, 1028060, 2026050, 2026055, 2028055, 2028060, 3026050, 3026055, 3028055, 3028060, 4026050, 4026055, 4028055, 4028060, 5026050, 5026055, 5028055, 5028060, 6026050, 6026055, 6028055, 6028060, 7028055, 7028060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280000	},
}					
--컴뱃 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4240, 4245, 4250, 11240, 11245, 11250, 18240, 18245, 18250, 25240, 25245, 25250, 1026320, 1026325, 1028340, 1028345, 2026320, 2026325, 2028340, 2028345, 3026320, 3026325, 3028340, 3028345, 4026320, 4026325, 4028340, 4028345, 5026320, 5026325, 5028340, 5028345, 6026320, 6026325, 6028340, 6028345, 7028340, 7028345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280030	},
}					
--컴뱃 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3240, 3245, 3250, 10240, 10245, 10250, 17240, 17245, 17250, 24240, 24245, 24250, 1026230, 1026235, 1028245, 1028250, 2026230, 2026235, 2028245, 2028250, 3026230, 3026235, 3028245, 3028250, 4026230, 4026235, 4028245, 4028250, 5026230, 5026235, 5028245, 5028250, 6026230, 6026235, 6028245, 6028250, 7028245, 7028250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280020	},
}					
--컴뱃 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2240, 2245, 2250, 9240, 9245, 9250, 16240, 16245, 16250, 23240, 23245, 23250, 1026140, 1026145, 1028150, 1028155, 2026140, 2026145, 2028150, 2028155, 3026140, 3026145, 3028150, 3028155, 4026140, 4026145, 4028150, 4028155, 5026140, 5026145, 5028150, 5028155, 6026140, 6026145, 6028150, 6028155, 7028150, 7028155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280010	},
}					
--중급 컴뱃 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1260, 1770, 8260, 8770, 15260, 15770, 22260, 22770, 1026060, 1026065, 1026070, 1026075, 1026080, 1026085, 1026090, 1026095, 1026100, 1026105, 1026110, 1026115, 1026120, 1026125, 1028065, 1028070, 1028075, 1028080, 1028085, 1028090, 1028095, 1028100, 1028105, 1028110, 1028115, 1028120, 1028125, 1028130, 2026060, 2026065, 2026070, 2026075, 2026080, 2026085, 2026090, 2026095, 2026100, 2026105, 2026110, 2026115, 2026120, 2026125, 2028065, 2028070, 2028075, 2028080, 2028085, 2028090, 2028095, 2028100, 2028105, 2028110, 2028115, 2028120, 2028125, 2028130, 3026060, 3026065, 3026070, 3026075, 3026080, 3026085, 3026090, 3026095, 3026100, 3026105, 3026110, 3026115, 3026120, 3026125, 3028065, 3028070, 3028075, 3028080, 3028085, 3028090, 3028095, 3028100, 3028105, 3028110, 3028115, 3028120, 3028125, 3028130, 4026060, 4026065, 4026070, 4026075, 4026080, 4026085, 4026090, 4026095, 4026100, 4026105, 4026110, 4026115, 4026120, 4026125, 4028065, 4028070, 4028075, 4028080, 4028085, 4028090, 4028095, 4028100, 4028105, 4028110, 4028115, 4028120, 4028125, 4028130, 5026060, 5026065, 5026070, 5026075, 5026080, 5026085, 5026090, 5026095, 5026100, 5026105, 5026110, 5026115, 5026120, 5026125, 5028065, 5028070, 5028075, 5028080, 5028085, 5028090, 5028095, 5028100, 5028105, 5028110, 5028115, 5028120, 5028125, 5028130, 6026060, 6026065, 6026070, 6026075, 6026080, 6026085, 6026090, 6026095, 6026100, 6026105, 6026110, 6026115, 6026120, 6026125, 6028065, 6028070, 6028075, 6028080, 6028085, 6028090, 6028095, 6028100, 6028105, 6028110, 6028115, 6028120, 6028125, 6028130, 7028065, 7028070, 7028075, 7028080, 7028085, 7028090, 7028095, 7028100, 7028105, 7028110, 7028115, 7028120, 7028125, 7028130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280001	},
}					
--중급 컴뱃 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4260, 4770, 11260, 11770, 18260, 18770, 25260, 25770, 1026330, 1026335, 1026340, 1026345, 1026350, 1026355, 1026360, 1026365, 1026370, 1026375, 1026380, 1026385, 1026390, 1026395, 1026400, 1028350, 1028355, 1028360, 1028365, 1028370, 1028375, 1028380, 1028385, 1028390, 1028395, 1028400, 1028405, 1028410, 1028415, 1028420, 2026330, 2026335, 2026340, 2026345, 2026350, 2026355, 2026360, 2026365, 2026370, 2026375, 2026380, 2026385, 2026390, 2026395, 2026400, 2028350, 2028355, 2028360, 2028365, 2028370, 2028375, 2028380, 2028385, 2028390, 2028395, 2028400, 2028405, 2028410, 2028415, 2028420, 3026330, 3026335, 3026340, 3026345, 3026350, 3026355, 3026360, 3026365, 3026370, 3026375, 3026380, 3026385, 3026390, 3026395, 3026400, 3028350, 3028355, 3028360, 3028365, 3028370, 3028375, 3028380, 3028385, 3028390, 3028395, 3028400, 3028405, 3028410, 3028415, 3028420, 4026330, 4026335, 4026340, 4026345, 4026350, 4026355, 4026360, 4026365, 4026370, 4026375, 4026380, 4026385, 4026390, 4026395, 4026400, 4028350, 4028355, 4028360, 4028365, 4028370, 4028375, 4028380, 4028385, 4028390, 4028395, 4028400, 4028405, 4028410, 4028415, 4028420, 5026330, 5026335, 5026340, 5026345, 5026350, 5026355, 5026360, 5026365, 5026370, 5026375, 5026380, 5026385, 5026390, 5026395, 5026400, 5028350, 5028355, 5028360, 5028365, 5028370, 5028375, 5028380, 5028385, 5028390, 5028395, 5028400, 5028405, 5028410, 5028415, 5028420, 6026330, 6026335, 6026340, 6026345, 6026350, 6026355, 6026360, 6026365, 6026370, 6026375, 6026380, 6026385, 6026390, 6026395, 6026400, 6028350, 6028355, 6028360, 6028365, 6028370, 6028375, 6028380, 6028385, 6028390, 6028395, 6028400, 6028405, 6028410, 6028415, 6028420, 7028350, 7028355, 7028360, 7028365, 7028370, 7028375, 7028380, 7028385, 7028390, 7028395, 7028400, 7028405, 7028410, 7028415, 7028420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280031	},
}					
--중급 컴뱃 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3260, 3770, 10260, 10770, 17260, 17770, 24260, 24770, 1026240, 1026245, 1026250, 1026255, 1026260, 1026265, 1026270, 1026275, 1026280, 1026285, 1026290, 1026295, 1026300, 1026305, 1028255, 1028260, 1028265, 1028270, 1028275, 1028280, 1028285, 1028290, 1028295, 1028300, 1028305, 1028310, 1028315, 1028320, 2026240, 2026245, 2026250, 2026255, 2026260, 2026265, 2026270, 2026275, 2026280, 2026285, 2026290, 2026295, 2026300, 2026305, 2028255, 2028260, 2028265, 2028270, 2028275, 2028280, 2028285, 2028290, 2028295, 2028300, 2028305, 2028310, 2028315, 2028320, 3026240, 3026245, 3026250, 3026255, 3026260, 3026265, 3026270, 3026275, 3026280, 3026285, 3026290, 3026295, 3026300, 3026305, 3028255, 3028260, 3028265, 3028270, 3028275, 3028280, 3028285, 3028290, 3028295, 3028300, 3028305, 3028310, 3028315, 3028320, 4026240, 4026245, 4026250, 4026255, 4026260, 4026265, 4026270, 4026275, 4026280, 4026285, 4026290, 4026295, 4026300, 4026305, 4028255, 4028260, 4028265, 4028270, 4028275, 4028280, 4028285, 4028290, 4028295, 4028300, 4028305, 4028310, 4028315, 4028320, 5026240, 5026245, 5026250, 5026255, 5026260, 5026265, 5026270, 5026275, 5026280, 5026285, 5026290, 5026295, 5026300, 5026305, 5028255, 5028260, 5028265, 5028270, 5028275, 5028280, 5028285, 5028290, 5028295, 5028300, 5028305, 5028310, 5028315, 5028320, 6026240, 6026245, 6026250, 6026255, 6026260, 6026265, 6026270, 6026275, 6026280, 6026285, 6026290, 6026295, 6026300, 6026305, 6028255, 6028260, 6028265, 6028270, 6028275, 6028280, 6028285, 6028290, 6028295, 6028300, 6028305, 6028310, 6028315, 6028320, 7028255, 7028260, 7028265, 7028270, 7028275, 7028280, 7028285, 7028290, 7028295, 7028300, 7028305, 7028310, 7028315, 7028320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280021	},
}					
--중급 컴뱃 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2260, 2770, 9260, 9770, 16260, 16770, 23260, 23770, 1026150, 1026155, 1026160, 1026165, 1026170, 1026175, 1026180, 1026185, 1026190, 1026195, 1026200, 1026205, 1026210, 1026215, 1028160, 1028165, 1028170, 1028175, 1028180, 1028185, 1028190, 1028195, 1028200, 1028205, 1028210, 1028215, 1028220, 1028225, 2026150, 2026155, 2026160, 2026165, 2026170, 2026175, 2026180, 2026185, 2026190, 2026195, 2026200, 2026205, 2026210, 2026215, 2028160, 2028165, 2028170, 2028175, 2028180, 2028185, 2028190, 2028195, 2028200, 2028205, 2028210, 2028215, 2028220, 2028225, 3026150, 3026155, 3026160, 3026165, 3026170, 3026175, 3026180, 3026185, 3026190, 3026195, 3026200, 3026205, 3026210, 3026215, 3028160, 3028165, 3028170, 3028175, 3028180, 3028185, 3028190, 3028195, 3028200, 3028205, 3028210, 3028215, 3028220, 3028225, 4026150, 4026155, 4026160, 4026165, 4026170, 4026175, 4026180, 4026185, 4026190, 4026195, 4026200, 4026205, 4026210, 4026215, 4028160, 4028165, 4028170, 4028175, 4028180, 4028185, 4028190, 4028195, 4028200, 4028205, 4028210, 4028215, 4028220, 4028225, 5026150, 5026155, 5026160, 5026165, 5026170, 5026175, 5026180, 5026185, 5026190, 5026195, 5026200, 5026205, 5026210, 5026215, 5028160, 5028165, 5028170, 5028175, 5028180, 5028185, 5028190, 5028195, 5028200, 5028205, 5028210, 5028215, 5028220, 5028225, 6026150, 6026155, 6026160, 6026165, 6026170, 6026175, 6026180, 6026185, 6026190, 6026195, 6026200, 6026205, 6026210, 6026215, 6028160, 6028165, 6028170, 6028175, 6028180, 6028185, 6028190, 6028195, 6028200, 6028205, 6028210, 6028215, 6028220, 6028225, 7028160, 7028165, 7028170, 7028175, 7028180, 7028185, 7028190, 7028195, 7028200, 7028205, 7028210, 7028215, 7028220, 7028225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280011	},
}					
--상급 컴뱃 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1270, 8270, 15270, 22270, 1026130, 1026135, 1028135, 1028140, 2026130, 2026135, 2028135, 2028140, 3026130, 3026135, 3028135, 3028140, 4026130, 4026135, 4028135, 4028140, 5026130, 5026135, 5028135, 5028140, 6026130, 6026135, 6028135, 6028140, 7028135, 7028140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280002	},
}					
--상급 컴뱃 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4270, 11270, 18270, 25270, 1026405, 1026410, 1028425, 1028430, 2026405, 2026410, 2028425, 2028430, 3026405, 3026410, 3028425, 3028430, 4026405, 4026410, 4028425, 4028430, 5026405, 5026410, 5028425, 5028430, 6026405, 6026410, 6028425, 6028430, 7028425, 7028430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280032	},
}					
--상급 컴뱃 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3270, 10270, 17270, 24270, 1026310, 1026315, 1028325, 1028330, 2026310, 2026315, 2028325, 2028330, 3026310, 3026315, 3028325, 3028330, 4026310, 4026315, 4028325, 4028330, 5026310, 5026315, 5028325, 5028330, 6026310, 6026315, 6028325, 6028330, 7028325, 7028330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280022	},
}					
--상급 컴뱃 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2270, 9270, 16270, 23270, 1026220, 1026225, 1028230, 1028235, 2026220, 2026225, 2028230, 2028235, 3026220, 3026225, 3028230, 3028235, 4026220, 4026225, 4028230, 4028235, 5026220, 5026225, 5028230, 5028235, 6026220, 6026225, 6028230, 6028235, 7028230, 7028235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280012	},
}					
--최상급 컴뱃 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1275, 8275, 15275, 22275, 1028145, 2028145, 3028145, 4028145, 5028145, 6028145, 7028145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280003	},
}					
--최상급 컴뱃 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028435, 2028435, 3028435, 4028435, 5028435, 6028435, 7028435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280033	},
}					
--최상급 컴뱃 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1028335, 2028335, 3028335, 4028335, 5028335, 6028335, 7028335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280023	},
}					
--최상급 컴뱃 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2275, 9275, 16275, 23275, 1028240, 2028240, 3028240, 4028240, 5028240, 6028240, 7028240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10280013	},
}					
--하이드 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1280, 1285, 1290, 1780, 8280, 8285, 8290, 8780, 15280, 15285, 15290, 15780, 22280, 22285, 22290, 22780, 1030050, 1030055, 1032055, 1032060, 2030050, 2030055, 2032055, 2032060, 3030050, 3030055, 3032055, 3032060, 4030050, 4030055, 4032055, 4032060, 5030050, 5030055, 5032055, 5032060, 6030050, 6030055, 6032055, 6032060, 7032050, 7032055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320000	},
}					
--하이드 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4280, 4285, 4290, 4780, 11280, 11285, 11290, 11780, 18280, 18285, 18290, 18780, 25280, 25285, 25290, 25780, 1030320, 1030325, 1032340, 1032345, 2030320, 2030325, 2032340, 2032345, 3030320, 3030325, 3032340, 3032345, 4030320, 4030325, 4032340, 4032345, 5030320, 5030325, 5032340, 5032345, 6030320, 6030325, 6032340, 6032345, 7032320, 7032325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320030	},
}					
--하이드 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3280, 3285, 3290, 3780, 10280, 10285, 10290, 10780, 17280, 17285, 17290, 17780, 24280, 24285, 24290, 24780, 1030230, 1030235, 1032245, 1032250, 2030230, 2030235, 2032245, 2032250, 3030230, 3030235, 3032245, 3032250, 4030230, 4030235, 4032245, 4032250, 5030230, 5030235, 5032245, 5032250, 6030230, 6030235, 6032245, 6032250, 7032230, 7032235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320020	},
}					
--하이드 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2280, 2285, 2290, 2780, 9280, 9285, 9290, 9780, 16280, 16285, 16290, 16780, 23280, 23285, 23290, 23780, 1030140, 1030145, 1032150, 1032155, 2030140, 2030145, 2032150, 2032155, 3030140, 3030145, 3032150, 3032155, 4030140, 4030145, 4032150, 4032155, 5030140, 5030145, 5032150, 5032155, 6030140, 6030145, 6032150, 6032155, 7032140, 7032145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320010	},
}					
--중급 하이드 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1300, 8300, 15300, 22300, 1030060, 1030065, 1030070, 1030075, 1030080, 1030085, 1030090, 1030095, 1030100, 1030105, 1030110, 1030115, 1030120, 1030125, 1032065, 1032070, 1032075, 1032080, 1032085, 1032090, 1032095, 1032100, 1032105, 1032110, 1032115, 1032120, 1032125, 1032130, 2030060, 2030065, 2030070, 2030075, 2030080, 2030085, 2030090, 2030095, 2030100, 2030105, 2030110, 2030115, 2030120, 2030125, 2032065, 2032070, 2032075, 2032080, 2032085, 2032090, 2032095, 2032100, 2032105, 2032110, 2032115, 2032120, 2032125, 2032130, 3030060, 3030065, 3030070, 3030075, 3030080, 3030085, 3030090, 3030095, 3030100, 3030105, 3030110, 3030115, 3030120, 3030125, 3032065, 3032070, 3032075, 3032080, 3032085, 3032090, 3032095, 3032100, 3032105, 3032110, 3032115, 3032120, 3032125, 3032130, 4030060, 4030065, 4030070, 4030075, 4030080, 4030085, 4030090, 4030095, 4030100, 4030105, 4030110, 4030115, 4030120, 4030125, 4032065, 4032070, 4032075, 4032080, 4032085, 4032090, 4032095, 4032100, 4032105, 4032110, 4032115, 4032120, 4032125, 4032130, 5030060, 5030065, 5030070, 5030075, 5030080, 5030085, 5030090, 5030095, 5030100, 5030105, 5030110, 5030115, 5030120, 5030125, 5032065, 5032070, 5032075, 5032080, 5032085, 5032090, 5032095, 5032100, 5032105, 5032110, 5032115, 5032120, 5032125, 5032130, 6030060, 6030065, 6030070, 6030075, 6030080, 6030085, 6030090, 6030095, 6030100, 6030105, 6030110, 6030115, 6030120, 6030125, 6032065, 6032070, 6032075, 6032080, 6032085, 6032090, 6032095, 6032100, 6032105, 6032110, 6032115, 6032120, 6032125, 6032130, 7032060, 7032065, 7032070, 7032075, 7032080, 7032085, 7032090, 7032095, 7032100, 7032105, 7032110, 7032115, 7032120, 7032125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320001	},
}					
--중급 하이드 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4300, 11300, 18300, 25300, 1030330, 1030335, 1030340, 1030345, 1030350, 1030355, 1030360, 1030365, 1030370, 1030375, 1030380, 1030385, 1030390, 1030395, 1030400, 1032350, 1032355, 1032360, 1032365, 1032370, 1032375, 1032380, 1032385, 1032390, 1032395, 1032400, 1032405, 1032410, 1032415, 1032420, 2030330, 2030335, 2030340, 2030345, 2030350, 2030355, 2030360, 2030365, 2030370, 2030375, 2030380, 2030385, 2030390, 2030395, 2030400, 2032350, 2032355, 2032360, 2032365, 2032370, 2032375, 2032380, 2032385, 2032390, 2032395, 2032400, 2032405, 2032410, 2032415, 2032420, 3030330, 3030335, 3030340, 3030345, 3030350, 3030355, 3030360, 3030365, 3030370, 3030375, 3030380, 3030385, 3030390, 3030395, 3030400, 3032350, 3032355, 3032360, 3032365, 3032370, 3032375, 3032380, 3032385, 3032390, 3032395, 3032400, 3032405, 3032410, 3032415, 3032420, 4030330, 4030335, 4030340, 4030345, 4030350, 4030355, 4030360, 4030365, 4030370, 4030375, 4030380, 4030385, 4030390, 4030395, 4030400, 4032350, 4032355, 4032360, 4032365, 4032370, 4032375, 4032380, 4032385, 4032390, 4032395, 4032400, 4032405, 4032410, 4032415, 4032420, 5030330, 5030335, 5030340, 5030345, 5030350, 5030355, 5030360, 5030365, 5030370, 5030375, 5030380, 5030385, 5030390, 5030395, 5030400, 5032350, 5032355, 5032360, 5032365, 5032370, 5032375, 5032380, 5032385, 5032390, 5032395, 5032400, 5032405, 5032410, 5032415, 5032420, 6030330, 6030335, 6030340, 6030345, 6030350, 6030355, 6030360, 6030365, 6030370, 6030375, 6030380, 6030385, 6030390, 6030395, 6030400, 6032350, 6032355, 6032360, 6032365, 6032370, 6032375, 6032380, 6032385, 6032390, 6032395, 6032400, 6032405, 6032410, 6032415, 6032420, 7032330, 7032335, 7032340, 7032345, 7032350, 7032355, 7032360, 7032365, 7032370, 7032375, 7032380, 7032385, 7032390, 7032395, 7032400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320031	},
}					
--중급 하이드 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3300, 10300, 17300, 24300, 1030240, 1030245, 1030250, 1030255, 1030260, 1030265, 1030270, 1030275, 1030280, 1030285, 1030290, 1030295, 1030300, 1030305, 1032255, 1032260, 1032265, 1032270, 1032275, 1032280, 1032285, 1032290, 1032295, 1032300, 1032305, 1032310, 1032315, 1032320, 2030240, 2030245, 2030250, 2030255, 2030260, 2030265, 2030270, 2030275, 2030280, 2030285, 2030290, 2030295, 2030300, 2030305, 2032255, 2032260, 2032265, 2032270, 2032275, 2032280, 2032285, 2032290, 2032295, 2032300, 2032305, 2032310, 2032315, 2032320, 3030240, 3030245, 3030250, 3030255, 3030260, 3030265, 3030270, 3030275, 3030280, 3030285, 3030290, 3030295, 3030300, 3030305, 3032255, 3032260, 3032265, 3032270, 3032275, 3032280, 3032285, 3032290, 3032295, 3032300, 3032305, 3032310, 3032315, 3032320, 4030240, 4030245, 4030250, 4030255, 4030260, 4030265, 4030270, 4030275, 4030280, 4030285, 4030290, 4030295, 4030300, 4030305, 4032255, 4032260, 4032265, 4032270, 4032275, 4032280, 4032285, 4032290, 4032295, 4032300, 4032305, 4032310, 4032315, 4032320, 5030240, 5030245, 5030250, 5030255, 5030260, 5030265, 5030270, 5030275, 5030280, 5030285, 5030290, 5030295, 5030300, 5030305, 5032255, 5032260, 5032265, 5032270, 5032275, 5032280, 5032285, 5032290, 5032295, 5032300, 5032305, 5032310, 5032315, 5032320, 6030240, 6030245, 6030250, 6030255, 6030260, 6030265, 6030270, 6030275, 6030280, 6030285, 6030290, 6030295, 6030300, 6030305, 6032255, 6032260, 6032265, 6032270, 6032275, 6032280, 6032285, 6032290, 6032295, 6032300, 6032305, 6032310, 6032315, 6032320, 7032240, 7032245, 7032250, 7032255, 7032260, 7032265, 7032270, 7032275, 7032280, 7032285, 7032290, 7032295, 7032300, 7032305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320021	},
}					
--중급 하이드 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2300, 9300, 16300, 23300, 1030150, 1030155, 1030160, 1030165, 1030170, 1030175, 1030180, 1030185, 1030190, 1030195, 1030200, 1030205, 1030210, 1030215, 1032160, 1032165, 1032170, 1032175, 1032180, 1032185, 1032190, 1032195, 1032200, 1032205, 1032210, 1032215, 1032220, 1032225, 2030150, 2030155, 2030160, 2030165, 2030170, 2030175, 2030180, 2030185, 2030190, 2030195, 2030200, 2030205, 2030210, 2030215, 2032160, 2032165, 2032170, 2032175, 2032180, 2032185, 2032190, 2032195, 2032200, 2032205, 2032210, 2032215, 2032220, 2032225, 3030150, 3030155, 3030160, 3030165, 3030170, 3030175, 3030180, 3030185, 3030190, 3030195, 3030200, 3030205, 3030210, 3030215, 3032160, 3032165, 3032170, 3032175, 3032180, 3032185, 3032190, 3032195, 3032200, 3032205, 3032210, 3032215, 3032220, 3032225, 4030150, 4030155, 4030160, 4030165, 4030170, 4030175, 4030180, 4030185, 4030190, 4030195, 4030200, 4030205, 4030210, 4030215, 4032160, 4032165, 4032170, 4032175, 4032180, 4032185, 4032190, 4032195, 4032200, 4032205, 4032210, 4032215, 4032220, 4032225, 5030150, 5030155, 5030160, 5030165, 5030170, 5030175, 5030180, 5030185, 5030190, 5030195, 5030200, 5030205, 5030210, 5030215, 5032160, 5032165, 5032170, 5032175, 5032180, 5032185, 5032190, 5032195, 5032200, 5032205, 5032210, 5032215, 5032220, 5032225, 6030150, 6030155, 6030160, 6030165, 6030170, 6030175, 6030180, 6030185, 6030190, 6030195, 6030200, 6030205, 6030210, 6030215, 6032160, 6032165, 6032170, 6032175, 6032180, 6032185, 6032190, 6032195, 6032200, 6032205, 6032210, 6032215, 6032220, 6032225, 7032150, 7032155, 7032160, 7032165, 7032170, 7032175, 7032180, 7032185, 7032190, 7032195, 7032200, 7032205, 7032210, 7032215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320011	},
}					
--상급 하이드 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1310, 8310, 15310, 22310, 1030130, 1030135, 1032135, 1032140, 2030130, 2030135, 2032135, 2032140, 3030130, 3030135, 3032135, 3032140, 4030130, 4030135, 4032135, 4032140, 5030130, 5030135, 5032135, 5032140, 6030130, 6030135, 6032135, 6032140, 7032130, 7032135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320002	},
}					
--상급 하이드 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4310, 11310, 18310, 25310, 1030405, 1030410, 1032425, 1032430, 2030405, 2030410, 2032425, 2032430, 3030405, 3030410, 3032425, 3032430, 4030405, 4030410, 4032425, 4032430, 5030405, 5030410, 5032425, 5032430, 6030405, 6030410, 6032425, 6032430, 7032405, 7032410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320032	},
}					
--상급 하이드 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3310, 10310, 17310, 24310, 1030310, 1030315, 1032325, 1032330, 2030310, 2030315, 2032325, 2032330, 3030310, 3030315, 3032325, 3032330, 4030310, 4030315, 4032325, 4032330, 5030310, 5030315, 5032325, 5032330, 6030310, 6030315, 6032325, 6032330, 7032310, 7032315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320022	},
}					
--상급 하이드 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2310, 9310, 16310, 23310, 1030220, 1030225, 1032230, 1032235, 2030220, 2030225, 2032230, 2032235, 3030220, 3030225, 3032230, 3032235, 4030220, 4030225, 4032230, 4032235, 5030220, 5030225, 5032230, 5032235, 6030220, 6030225, 6032230, 6032235, 7032220, 7032225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320012	},
}					
--최상급 하이드 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1315, 8315, 15315, 22315, 1032145, 2032145, 3032145, 4032145, 5032145, 6032145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320003	},
}					
--최상급 하이드 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032435, 2032435, 3032435, 4032435, 5032435, 6032435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320033	},
}					
--최상급 하이드 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1032335, 2032335, 3032335, 4032335, 5032335, 6032335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320023	},
}					
--최상급 하이드 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2315, 9315, 16315, 23315, 1032240, 2032240, 3032240, 4032240, 5032240, 6032240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10320013	},
}					
--자이언트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1320, 1325, 1330, 1790, 8320, 8325, 8330, 8790, 15320, 15325, 15330, 15790, 22320, 22325, 22330, 22790, 1034050, 1034055, 1036055, 1036060, 2034050, 2034055, 2036055, 2036060, 3034050, 3034055, 3036055, 3036060, 4034050, 4034055, 4036055, 4036060, 5034050, 5034055, 5036055, 5036060, 6034050, 6034055, 6036055, 6036060, 7036055, 7036060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360000	},
}					
--자이언트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4320, 4325, 4330, 4790, 11320, 11325, 11330, 11790, 18320, 18325, 18330, 18790, 25320, 25325, 25330, 25790, 1034320, 1034325, 1036340, 1036345, 2034320, 2034325, 2036340, 2036345, 3034320, 3034325, 3036340, 3036345, 4034320, 4034325, 4036340, 4036345, 5034320, 5034325, 5036340, 5036345, 6034320, 6034325, 6036340, 6036345, 7036340, 7036345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360030	},
}					
--자이언트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3320, 3325, 3330, 3790, 10320, 10325, 10330, 10790, 17320, 17325, 17330, 17790, 24320, 24325, 24330, 24790, 1034230, 1034235, 1036245, 1036250, 2034230, 2034235, 2036245, 2036250, 3034230, 3034235, 3036245, 3036250, 4034230, 4034235, 4036245, 4036250, 5034230, 5034235, 5036245, 5036250, 6034230, 6034235, 6036245, 6036250, 7036245, 7036250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360020	},
}					
--자이언트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2320, 2325, 2330, 2790, 9320, 9325, 9330, 9790, 16320, 16325, 16330, 16790, 23320, 23325, 23330, 23790, 1034140, 1034145, 1036150, 1036155, 2034140, 2034145, 2036150, 2036155, 3034140, 3034145, 3036150, 3036155, 4034140, 4034145, 4036150, 4036155, 5034140, 5034145, 5036150, 5036155, 6034140, 6034145, 6036150, 6036155, 7036150, 7036155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360010	},
}					
--중급 자이언트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1340, 8340, 15340, 22340, 1034060, 1034065, 1034070, 1034075, 1034080, 1034085, 1034090, 1034095, 1034100, 1034105, 1034110, 1034115, 1034120, 1034125, 1036065, 1036070, 1036075, 1036080, 1036085, 1036090, 1036095, 1036100, 1036105, 1036110, 1036115, 1036120, 1036125, 1036130, 2034060, 2034065, 2034070, 2034075, 2034080, 2034085, 2034090, 2034095, 2034100, 2034105, 2034110, 2034115, 2034120, 2034125, 2036065, 2036070, 2036075, 2036080, 2036085, 2036090, 2036095, 2036100, 2036105, 2036110, 2036115, 2036120, 2036125, 2036130, 3034060, 3034065, 3034070, 3034075, 3034080, 3034085, 3034090, 3034095, 3034100, 3034105, 3034110, 3034115, 3034120, 3034125, 3036065, 3036070, 3036075, 3036080, 3036085, 3036090, 3036095, 3036100, 3036105, 3036110, 3036115, 3036120, 3036125, 3036130, 4034060, 4034065, 4034070, 4034075, 4034080, 4034085, 4034090, 4034095, 4034100, 4034105, 4034110, 4034115, 4034120, 4034125, 4036065, 4036070, 4036075, 4036080, 4036085, 4036090, 4036095, 4036100, 4036105, 4036110, 4036115, 4036120, 4036125, 4036130, 5034060, 5034065, 5034070, 5034075, 5034080, 5034085, 5034090, 5034095, 5034100, 5034105, 5034110, 5034115, 5034120, 5034125, 5036065, 5036070, 5036075, 5036080, 5036085, 5036090, 5036095, 5036100, 5036105, 5036110, 5036115, 5036120, 5036125, 5036130, 6034060, 6034065, 6034070, 6034075, 6034080, 6034085, 6034090, 6034095, 6034100, 6034105, 6034110, 6034115, 6034120, 6034125, 6036065, 6036070, 6036075, 6036080, 6036085, 6036090, 6036095, 6036100, 6036105, 6036110, 6036115, 6036120, 6036125, 6036130, 7036065, 7036070, 7036075, 7036080, 7036085, 7036090, 7036095, 7036100, 7036105, 7036110, 7036115, 7036120, 7036125, 7036130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360001	},
}					
--중급 자이언트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4340, 11340, 18340, 25340, 1034330, 1034335, 1034340, 1034345, 1034350, 1034355, 1034360, 1034365, 1034370, 1034375, 1034380, 1034385, 1034390, 1034395, 1034400, 1036350, 1036355, 1036360, 1036365, 1036370, 1036375, 1036380, 1036385, 1036390, 1036395, 1036400, 1036405, 1036410, 1036415, 1036420, 2034330, 2034335, 2034340, 2034345, 2034350, 2034355, 2034360, 2034365, 2034370, 2034375, 2034380, 2034385, 2034390, 2034395, 2034400, 2036350, 2036355, 2036360, 2036365, 2036370, 2036375, 2036380, 2036385, 2036390, 2036395, 2036400, 2036405, 2036410, 2036415, 2036420, 3034330, 3034335, 3034340, 3034345, 3034350, 3034355, 3034360, 3034365, 3034370, 3034375, 3034380, 3034385, 3034390, 3034395, 3034400, 3036350, 3036355, 3036360, 3036365, 3036370, 3036375, 3036380, 3036385, 3036390, 3036395, 3036400, 3036405, 3036410, 3036415, 3036420, 4034330, 4034335, 4034340, 4034345, 4034350, 4034355, 4034360, 4034365, 4034370, 4034375, 4034380, 4034385, 4034390, 4034395, 4034400, 4036350, 4036355, 4036360, 4036365, 4036370, 4036375, 4036380, 4036385, 4036390, 4036395, 4036400, 4036405, 4036410, 4036415, 4036420, 5034330, 5034335, 5034340, 5034345, 5034350, 5034355, 5034360, 5034365, 5034370, 5034375, 5034380, 5034385, 5034390, 5034395, 5034400, 5036350, 5036355, 5036360, 5036365, 5036370, 5036375, 5036380, 5036385, 5036390, 5036395, 5036400, 5036405, 5036410, 5036415, 5036420, 6034330, 6034335, 6034340, 6034345, 6034350, 6034355, 6034360, 6034365, 6034370, 6034375, 6034380, 6034385, 6034390, 6034395, 6034400, 6036350, 6036355, 6036360, 6036365, 6036370, 6036375, 6036380, 6036385, 6036390, 6036395, 6036400, 6036405, 6036410, 6036415, 6036420, 7036350, 7036355, 7036360, 7036365, 7036370, 7036375, 7036380, 7036385, 7036390, 7036395, 7036400, 7036405, 7036410, 7036415, 7036420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360031	},
}					
--중급 자이언트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3340, 10340, 17340, 24340, 1034240, 1034245, 1034250, 1034255, 1034260, 1034265, 1034270, 1034275, 1034280, 1034285, 1034290, 1034295, 1034300, 1034305, 1036255, 1036260, 1036265, 1036270, 1036275, 1036280, 1036285, 1036290, 1036295, 1036300, 1036305, 1036310, 1036315, 1036320, 2034240, 2034245, 2034250, 2034255, 2034260, 2034265, 2034270, 2034275, 2034280, 2034285, 2034290, 2034295, 2034300, 2034305, 2036255, 2036260, 2036265, 2036270, 2036275, 2036280, 2036285, 2036290, 2036295, 2036300, 2036305, 2036310, 2036315, 2036320, 3034240, 3034245, 3034250, 3034255, 3034260, 3034265, 3034270, 3034275, 3034280, 3034285, 3034290, 3034295, 3034300, 3034305, 3036255, 3036260, 3036265, 3036270, 3036275, 3036280, 3036285, 3036290, 3036295, 3036300, 3036305, 3036310, 3036315, 3036320, 4034240, 4034245, 4034250, 4034255, 4034260, 4034265, 4034270, 4034275, 4034280, 4034285, 4034290, 4034295, 4034300, 4034305, 4036255, 4036260, 4036265, 4036270, 4036275, 4036280, 4036285, 4036290, 4036295, 4036300, 4036305, 4036310, 4036315, 4036320, 5034240, 5034245, 5034250, 5034255, 5034260, 5034265, 5034270, 5034275, 5034280, 5034285, 5034290, 5034295, 5034300, 5034305, 5036255, 5036260, 5036265, 5036270, 5036275, 5036280, 5036285, 5036290, 5036295, 5036300, 5036305, 5036310, 5036315, 5036320, 6034240, 6034245, 6034250, 6034255, 6034260, 6034265, 6034270, 6034275, 6034280, 6034285, 6034290, 6034295, 6034300, 6034305, 6036255, 6036260, 6036265, 6036270, 6036275, 6036280, 6036285, 6036290, 6036295, 6036300, 6036305, 6036310, 6036315, 6036320, 7036255, 7036260, 7036265, 7036270, 7036275, 7036280, 7036285, 7036290, 7036295, 7036300, 7036305, 7036310, 7036315, 7036320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360021	},
}					
--중급 자이언트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2340, 9340, 16340, 23340, 1034150, 1034155, 1034160, 1034165, 1034170, 1034175, 1034180, 1034185, 1034190, 1034195, 1034200, 1034205, 1034210, 1034215, 1036160, 1036165, 1036170, 1036175, 1036180, 1036185, 1036190, 1036195, 1036200, 1036205, 1036210, 1036215, 1036220, 1036225, 2034150, 2034155, 2034160, 2034165, 2034170, 2034175, 2034180, 2034185, 2034190, 2034195, 2034200, 2034205, 2034210, 2034215, 2036160, 2036165, 2036170, 2036175, 2036180, 2036185, 2036190, 2036195, 2036200, 2036205, 2036210, 2036215, 2036220, 2036225, 2036255, 2036260, 2036265, 2036270, 2036275, 2036280, 2036285, 2036290, 2036295, 2036300, 2036305, 2036310, 2036315, 2036320, 3034150, 3034155, 3034160,	3034165,	3034170,	3034175,	3034180,	3034185,	3034190,	3034195,	3034200,	3034205,	3034210,	3034215,	3036160,	3036165,	3036170,	3036175,	3036180,	3036185,	3036190,	3036195,	3036200,	3036205,	3036210,	3036215,	3036220,	3036225,	4034150,	4034155,	4034160,	4034165,	4034170,	4034175,	4034180,	4034185,	4034190,	4034195,	4034200,	4034205,	4034210,	4034215,	4036160,	4036165,	4036170,	4036175,	4036180,	4036185,	4036190,	4036195,	4036200,	4036205,	4036210,	4036215,	4036220,	4036225,	5034150,	5034155,	5034160,	5034165,	5034170,	5034175,	5034180,	5034185,	5034190,	5034195,	5034200,	5034205,	5034210,	5034215,	5036160,	5036165,	5036170,	5036175,	5036180,	5036185,	5036190,	5036195,	5036200,	5036205,	5036210,	5036215,	5036220,	5036225,	6034150,	6034155,	6034160,	6034165,	6034170,	6034175,	6034180,	6034185,	6034190,	6034195,	6034200,	6034205,	6034210,	6034215,	6036160,	6036165,	6036170,	6036175,	6036180,	6036185,	6036190,	6036195,	6036200, 6036205, 6036210, 6036215, 6036220, 6036225, 7036160, 7036165, 7036170, 7036175, 7036180, 7036185, 7036190, 7036195, 7036200, 7036205, 7036210, 7036215, 7036220, 7036225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360011	},
}					
--상급 자이언트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1350, 8350, 15350, 22350, 1034130, 1034135, 1036135, 1036140, 2034130, 2034135, 2036135, 2036140, 3034130, 3034135, 3036135, 3036140, 4034130, 4034135, 4036135, 4036140, 5034130, 5034135, 5036135, 5036140, 6034130, 6034135, 6036135, 6036140, 7036135, 7036140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360002	},
}						
--상급 자이언트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4350, 11350, 18350, 25350, 1034405, 1034410, 1036425, 1036430, 2034405, 2034410, 2036425, 2036430, 3034405, 3034410, 3036425, 3036430, 4034405, 4034410, 4036425, 4036430, 5034405, 5034410, 5036425, 5036430, 6034405, 6034410, 6036425, 6036430, 7036425, 7036430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360032	},
}					
--상급 자이언트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3350, 10350, 17350, 24350, 1034310, 1034315, 1036325, 1036330, 2034310, 2034315, 2036325, 2036330, 3034310, 3034315, 3036325, 3036330, 4034310, 4034315, 4036325, 4036330, 5034310, 5034315, 5036325, 5036330, 6034310, 6034315, 6036325, 6036330, 7036325, 7036330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360022	},
}					
--상급 자이언트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2350, 9350, 16350, 23350, 1034220, 1034225, 1036230, 1036235, 2034220, 2034225, 2036230, 2036235, 3034220, 3034225, 3036230, 3036235, 4034220, 4034225, 4036230, 4036235, 5034220, 5034225, 5036230, 5036235, 6034220, 6034225, 6036230, 6036235, 7036230, 7036235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360012	},
}					
--최상급 자이언트 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1355, 8355, 15355, 22355, 1036145, 2036145, 3036145, 4036145, 5036145, 6036145, 7036145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360003	},
}					
--최상급 자이언트 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036435, 2036435, 3036435, 4036435, 5036435, 6036435, 7036435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360033	},
}					
--최상급 자이언트 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1036335, 2036335, 3036335, 4036335, 5036335, 6036335, 7036335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360023	},
}					
--최상급 자이언트 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2355, 9355, 16355, 23355, 1036240, 2036240, 3036240, 4036240, 5036240, 6036240, 7036240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10360013	},
}					
--견습 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1360, 1365, 1370, 8360, 8365, 8370, 15360, 15365, 15370, 22360, 22365, 22370, 1038050, 1038055, 1040055, 1040060, 1138050, 1138055, 1140055, 1140060, 1338050, 1338055, 1340055, 1340060, 1540055, 1540060, 1940055, 1940060, 2038050, 2038055, 2040055, 2040060, 2138050, 2138055, 2140055, 2140060, 2338050, 2338055, 2340055, 2340060, 2540055, 2540060, 2940055, 2940060, 3038050, 3038055, 3040055, 3040060, 3138050, 3138055, 3140055, 3140060, 3338050, 3338055, 3340055, 3340060, 3540055, 3540060, 3940055, 3940060, 4038050, 4038055, 4040055, 4040060, 4138050, 4138055, 4140055, 4140060, 4338050, 4338055, 4340055, 4340060, 4540055, 4540060, 4940055, 4940060, 5038050, 5038055, 5040055, 5040060, 5138050, 5138055, 5140055, 5140060, 5338050, 5338055, 5340055, 5340060, 5540055, 5540060, 5940055, 5940060, 6038050, 6038055, 6040055, 6040060, 6140055, 6140060, 6340055, 6340060, 6540055, 6540060, 6940055, 6940060, 7040050, 7040055, 7140050, 7140055, 7340050, 7340055, 7540050, 7540055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400000	},
}					
--견습 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4355, 4360, 4365, 11355, 11360, 11365, 18355, 18360, 18365, 25355, 25360, 25365, 1038320, 1038325, 1040340, 1040345, 1138320, 1138325, 1140340, 1140345, 1338320, 1338325, 1340340, 1340345, 1540340, 1540345, 1940340, 1940345, 2038320, 2038325, 2040340, 2040345, 2138320, 2138325, 2140340, 2140345, 2338320, 2338325, 2340340, 2340345, 2540340, 2540345, 2940340, 2940345, 3038320, 3038325, 3040340, 3040345, 3138320, 3138325, 3140340, 3140345, 3338320, 3338325, 3340340, 3340345, 3540340, 3540345, 3940340, 3940345, 4038320, 4038325, 4040340, 4040345, 4138320, 4138325, 4140340, 4140345, 4338320, 4338325, 4340340, 4340345, 4540340, 4540345, 4940340, 4940345, 5038320, 5038325, 5040340, 5040345, 5138320, 5138325, 5140340, 5140345, 5338320, 5338325, 5340340, 5340345, 5540340, 5540345, 5940340, 5940345, 6038320, 6038325, 6040340, 6040345, 6140340, 6140345, 6340340, 6340345, 6540340, 6540345, 6940340, 6940345, 7040320, 7040325, 7140320, 7140325, 7340320, 7340325, 7540320, 7540325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400030	},
}					
--견습 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3360,	3370,	3380,	10355,	10360,	10365,	17355,	17360,	17365,	24355,	24360,	24365,	1038230,	1038235,	1040245,	1040250,	1138230,	1138235,	1140245,	1140250,	1338230,	1338235,	1340245,	1340250,	1540245,	1540250,	1940245,	1940250,	2038230,	2038235,	2040245,	2040250,	2138230,	2138235,	2140245,	2140250,	2338230,	2338235,	2340245,	2340250,	2540245,	2540250,	2940245,	2940250,	3038230,	3038235,	3040245,	3040250,	3138230,	3138235,	3140245,	3140250,	3338230,	3338235,	3340245,	3340250,	3540245,	3540250,	3940245,	3940250,	4038230,	4038235,	4040245,	4040250,	4138230,	4138235,	4140245,	4140250,	4338230,	4338235,	4340245,	4340250,	4540245,	4540250,	4940245,	4940250,	5038230,	5038235,	5040245,	5040250,	5138230,	5138235,	5140245,	5140250,	5338230,	5338235,	5340245,	5340250,	5540245,	5540250,	5940245,	5940250,	6038230,	6038235,	6040245,	6040250,	6140245,	6140250,	6340245,	6340250,	6540245,	6540250,	6940245,	6940250,	7040230,	7040235,	7140230,	7140235,	7340230,	7340235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400020	},
}					
--견습 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2360, 2365, 2370, 9360, 9365, 9370, 16360, 16365, 16370, 23360, 23365, 23370, 1038140, 1038145, 1040150, 1040155, 1138140, 1138145, 1140150, 1140155, 1338140, 1338145, 1340150, 1340155, 1540150, 1540155, 1940150, 1940155, 2038140, 2038145, 2040150, 2040155, 2138140, 2138145, 2140150, 2140155, 2338140, 2338145, 2340150, 2340155, 2540150, 2540155, 2940150, 2940155, 3038140, 3038145, 3040150, 3040155, 3138140, 3138145, 3140150, 3140155, 3338140, 3338145, 3340150, 3340155, 3540150, 3540155, 3940150, 3940155, 4038140, 4038145, 4040150, 4040155, 4138140, 4138145, 4140150, 4140155, 4338140, 4338145, 4340150, 4340155, 4540150, 4540155, 4940150, 4940155, 5038140, 5038145, 5040150, 5040155, 5138140, 5138145, 5140150, 5140155, 5338140, 5338145, 5340150, 5340155, 5540150, 5540155, 5940150, 5940155, 6038140, 6038145, 6040150, 6040155, 6140150, 6140155, 6340150, 6340155, 6540150, 6540155, 6940150, 6940155, 7040140, 7040145, 7140140, 7140145, 7340140, 7340145, 7540140, 7540145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400010 	},
}					
--중급 견습 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1375, 1800, 8375, 8800, 15375, 15800, 22375, 22800, 1038060, 1038065, 1038070, 1038075, 1038080, 1038085, 1038090, 1038095, 1038100, 1038105, 1038110, 1038115, 1038120, 1038125, 1040065, 1040070, 1040075, 1040080, 1040085, 1040090, 1040095, 1040100, 1040105, 1040110, 1040115, 1040120, 1040125, 1040130, 1138060, 1138065, 1138070, 1138075, 1138080, 1138085, 1138090, 1138095, 1138100, 1138105, 1138110, 1138115, 1138120, 1138125, 1140065, 1140070, 1140075, 1140080, 1140085, 1140090, 1140095, 1140100, 1140105, 1140110, 1140115, 1140120, 1140125, 1140130, 1338060, 1338065, 1338070, 1338075, 1338080, 1338085, 1338090, 1338095, 1338100, 1338105, 1338110, 1338115, 1338120, 1338125, 1340065, 1340070, 1340075, 1340080, 1340085, 1340090, 1340095, 1340100, 1340105, 1340110, 1340115, 1340120, 1340125, 1340130, 1540065, 1540070, 1540075, 1540080, 1540085, 1540090, 1540095, 1540100, 1540105, 1540110, 1540115, 1540120, 1540125, 1540130, 1940065, 1940070, 1940075, 1940080, 1940085, 1940090, 1940095, 1940100, 1940105, 1940110, 1940115, 1940120, 1940125, 1940130, 2038060, 2038065, 2038070, 2038075, 2038080, 2038085, 2038090, 2038095, 2038100, 2038105, 2038110, 2038115, 2038120, 2038125, 2040065, 2040070, 2040075, 2040080, 2040085, 2040090, 2040095, 2040100, 2040105, 2040110, 2040115, 2040120, 2040125, 2040130, 2138060, 2138065, 2138070, 2138075, 2138080, 2138085, 2138090, 2138095, 2138100, 2138105, 2138110, 2138115, 2138120, 2138125, 2140065, 2140070, 2140075, 2140080, 2140085, 2140090, 2140095, 2140100, 2140105, 2140110, 2140115, 2140120, 2140125, 2140130, 2338060, 2338065, 2338070, 2338075, 2338080, 2338085, 2338090, 2338095, 2338100, 2338105, 2338110, 2338115, 2338120, 2338125, 2340065, 2340070, 2340075, 2340080, 2340085, 2340090, 2340095, 2340100, 2340105, 2340110, 2340115, 2340120, 2340125, 2340130, 2540065, 2540070, 2540075, 2540080, 2540085, 2540090, 2540095, 2540100, 2540105, 2540110, 2540115, 2540120, 2540125, 2540130, 2940065, 2940070, 2940075, 2940080, 2940085, 2940090, 2940095, 2940100, 2940105, 2940110, 2940115, 2940120, 2940125, 2940130, 3038060, 3038065, 3038070, 3038075, 3038080, 3038085, 3038090, 3038095, 3038100, 3038105, 3038110, 3038115, 3038120, 3038125, 3040065, 3040070, 3040075, 3040080, 3040085, 3040090, 3040095, 3040100, 3040105, 3040110, 3040115, 3040120, 3040125, 3040130, 3138060, 3138065, 3138070, 3138075, 3138080, 3138085, 3138090, 3138095, 3138100, 3138105, 3138110, 3138115, 3138120, 3138125, 3140065, 3140070, 3140075, 3140080, 3140085, 3140090, 3140095, 3140100, 3140105, 3140110, 3140115, 3140120 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3140125, 3140130, 3338060, 3338065, 3338070, 3338075, 3338080, 3338085, 3338090, 3338095, 3338100, 3338105, 3338110, 3338115, 3338120, 3338125, 3340065, 3340070, 3340075, 3340080, 3340085, 3340090, 3340095, 3340100, 3340105, 3340110, 3340115, 3340120, 3340125, 3340130, 3540065, 3540070, 3540075, 3540080, 3540085, 3540090, 3540095, 3540100, 3540105, 3540110, 3540115, 3540120, 3540125, 3540130, 3940065, 3940070, 3940075, 3940080, 3940085, 3940090, 3940095, 3940100, 3940105, 3940110, 3940115, 3940120, 3940125, 3940130, 4038060, 4038065, 4038070, 4038075, 4038080, 4038085, 4038090, 4038095, 4038100, 4038105, 4038110, 4038115, 4038120, 4038125, 4040065, 4040070, 4040075, 4040080, 4040085, 4040090, 4040095, 4040100, 4040105, 4040110, 4040115, 4040120, 4040125, 4040130, 4138060, 4138065, 4138070, 4138075, 4138080, 4138085, 4138090, 4138095, 4138100, 4138105, 4138110, 4138115, 4138120, 4138125, 4140065, 4140070, 4140075, 4140080, 4140085, 4140090, 4140095, 4140100, 4140105, 4140110, 4140115, 4140120, 4140125, 4140130, 4338060, 4338065, 4338070, 4338075, 4338080, 4338085, 4338090, 4338095, 4338100, 4338105, 4338110, 4338115, 4338120, 4338125, 4340065, 4340070, 4340075, 4340080, 4340085, 4340090, 4340095, 4340100, 4340105, 4340110, 4340115, 4340120, 4340125, 4340130, 4540065, 4540070, 4540075, 4540080, 4540085, 4540090, 4540095, 4540100, 4540105, 4540110, 4540115, 4540120, 4540125, 4540130, 4940065, 4940070, 4940075, 4940080, 4940085, 4940090, 4940095, 4940100, 4940105, 4940110, 4940115, 4940120, 4940125, 4940130, 5038060, 5038065, 5038070, 5038075, 5038080, 5038085, 5038090, 5038095, 5038100, 5038105, 5038110, 5038115, 5038120, 5038125, 5040065, 5040070, 5040075, 5040080, 5040085, 5040090, 5040095, 5040100, 5040105, 5040110, 5040115, 5040120, 5040125, 5040130, 5138060, 5138065, 5138070, 5138075, 5138080, 5138085, 5138090, 5138095, 5138100, 5138105, 5138110, 5138115, 5138120, 5138125, 5140065, 5140070, 5140075, 5140080, 5140085, 5140090, 5140095, 5140100, 5140105, 5140110, 5140115, 5140120, 5140125, 5140130, 5338060, 5338065, 5338070, 5338075, 5338080, 5338085, 5338090, 5338095, 5338100, 5338105, 5338110, 5338115, 5338120, 5338125, 5340065, 5340070, 5340075, 5340080, 5340085, 5340090, 5340095, 5340100, 5340105, 5340110, 5340115, 5340120, 5340125, 5340130, 5540065, 5540070, 5540075, 5540080, 5540085, 5540090, 5540095, 5540100, 5540105, 5540110, 5540115, 5540120, 5540125, 5540130, 5940065, 5940070, 5940075, 5940080, 5940085, 5940090, 5940095, 5940100, 5940105, 5940110, 5940115, 5940120, 5940125, 5940130, 6038060, 6038065, 6038070, 6038075, 6038080 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400001	},
}		
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6038080, 6038085, 6038090, 6038095, 6038100, 6038105, 6038110, 6038115, 6038120, 6038125, 6040065, 6040070, 6040075, 6040080, 6040085, 6040090, 6040095, 6040100, 6040105, 6040110, 6040115, 6040120, 6040125, 6040130, 6140065, 6140070, 6140075, 6140080, 6140085, 6140090, 6140095, 6140100, 6140105, 6140110, 6140115, 6140120, 6140125, 6140130, 6340065, 6340070, 6340075, 6340080, 6340085, 6340090, 6340095, 6340100, 6340105, 6340110, 6340115, 6340120, 6340125, 6340130, 6540065, 6540070, 6540075, 6540080, 6540085, 6540090, 6540095, 6540100, 6540105, 6540110, 6540115, 6540120, 6540125, 6540130, 6940065, 6940070, 6940075, 6940080, 6940085, 6940090, 6940095, 6940100, 6940105, 6940110, 6940115, 6940120, 6940125, 6940130, 7040060, 7040065, 7040070, 7040075, 7040080, 7040085, 7040090, 7040095, 7040100, 7040105, 7040110, 7040115, 7040120, 7040125, 7140060, 7140065, 7140070, 7140075, 7140080, 7140085, 7140090, 7140095, 7140100, 7140105, 7140110, 7140115, 7140120, 7140125, 7340060, 7340065, 7340070, 7340075, 7340080, 7340085, 7340090, 7340095, 7340100, 7340105, 7340110, 7340115, 7340120, 7340125, 7540060, 7540065, 7540070, 7540075, 7540080, 7540085, 7540090, 7540095, 7540100, 7540105, 7540110, 7540115, 7540120, 7540125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400001	},
}					
--중급 견습 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4370, 4800, 11370, 11800, 18370, 18800, 25370, 25800, 1038330, 1038335, 1038340, 1038345, 1038350, 1038355, 1038360, 1038365, 1038370, 1038375, 1038380, 1038385, 1038390, 1038395, 1038400, 1040350, 1040355, 1040360, 1040365, 1040370, 1040375, 1040380, 1040385, 1040390, 1040395, 1040400, 1040405, 1040410, 1040415, 1040420, 1138330, 1138335, 1138340, 1138345, 1138350, 1138355, 1138360, 1138365, 1138370, 1138375, 1138380, 1138385, 1138390, 1138395, 1138400, 1140350, 1140355, 1140360, 1140365, 1140370, 1140375, 1140380, 1140385, 1140390, 1140395, 1140400, 1140405, 1140410, 1140415, 1140420, 1338330, 1338335, 1338340, 1338345, 1338350, 1338355, 1338360, 1338365, 1338370, 1338375, 1338380, 1338385, 1338390, 1338395, 1338400, 1340350, 1340355, 1340360, 1340365, 1340370, 1340375, 1340380, 1340385, 1340390, 1340395, 1340400, 1340405, 1340410, 1340415, 1340420, 1540350, 1540355, 1540360, 1540365, 1540370, 1540375, 1540380, 1540385, 1540390, 1540395, 1540400, 1540405, 1540410, 1540415, 1540420, 1940350, 1940355, 1940360, 1940365, 1940370, 1940375, 1940380, 1940385, 1940390, 1940395, 1940400, 1940405, 1940410, 1940415, 1940420, 2038330, 2038335, 2038340, 2038345, 2038350, 2038355, 2038360, 2038365, 2038370, 2038375, 2038380, 2038385, 2038390, 2038395, 2038400, 2040350, 2040355, 2040360, 2040365, 2040370, 2040375, 2040380, 2040385, 2040390, 2040395, 2040400, 2040405, 2040410, 2040415, 2040420, 2138330, 2138335, 2138340, 2138345, 2138350, 2138355, 2138360, 2138365, 2138370, 2138375, 2138380, 2138385, 2138390, 2138395, 2138400, 2140350, 2140355, 2140360, 2140365, 2140370, 2140375, 2140380, 2140385, 2140390, 2140395, 2140400, 2140405, 2140410, 2140415, 2140420, 2338330, 2338335, 2338340, 2338345, 2338350, 2338355, 2338360, 2338365, 2338370, 2338375, 2338380, 2338385, 2338390, 2338395, 2338400, 2340350, 2340355, 2340360, 2340365, 2340370, 2340375, 2340380, 2340385, 2340390, 2340395, 2340400, 2340405, 2340410, 2340415, 2340420, 2540350, 2540355, 2540360, 2540365, 2540370, 2540375, 2540380, 2540385, 2540390, 2540395, 2540400, 2540405, 2540410, 2540415, 2540420, 2940350, 2940355, 2940360, 2940365, 2940370, 2940375, 2940380, 2940385, 2940390, 2940395, 2940400, 2940405, 2940410, 2940415, 2940420, 3038330, 3038335, 3038340, 3038345, 3038350, 3038355, 3038360, 3038365, 3038370, 3038375, 3038380, 3038385, 3038390, 3038395, 3038400, 3040350, 3040355, 3040360, 3040365, 3040370, 3040375, 3040380 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400031	},
}									
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3040385, 3040390, 3040395, 3040400, 3040405, 3040410, 3040415, 3040420, 3138330, 3138335, 3138340, 3138345, 3138350, 3138355, 3138360, 3138365, 3138370, 3138375, 3138380, 3138385, 3138390, 3138395, 3138400, 3140350, 3140355, 3140360, 3140365, 3140370, 3140375, 3140380, 3140385, 3140390, 3140395, 3140400, 3140405, 3140410, 3140415, 3140420, 3338330, 3338335, 3338340, 3338345, 3338350, 3338355, 3338360, 3338365, 3338370, 3338375, 3338380, 3338385, 3338390, 3338395, 3338400, 3340350, 3340355, 3340360, 3340365, 3340370, 3340375, 3340380, 3340385, 3340390, 3340395, 3340400, 3340405, 3340410, 3340415, 3340420, 3540350, 3540355, 3540360, 3540365, 3540370, 3540375, 3540380, 3540385, 3540390, 3540395, 3540400, 3540405, 3540410, 3540415, 3540420, 3940350, 3940355, 3940360, 3940365, 3940370, 3940375, 3940380, 3940385, 3940390, 3940395, 3940400, 3940405, 3940410, 3940415, 3940420, 4038330, 4038335, 4038340, 4038345, 4038350, 4038355, 4038360, 4038365, 4038370, 4038375, 4038380, 4038385, 4038390, 4038395, 4038400, 4040350, 4040355, 4040360, 4040365, 4040370, 4040375, 4040380, 4040385, 4040390, 4040395, 4040400, 4040405, 4040410, 4040415, 4040420, 4138330, 4138335, 4138340, 4138345, 4138350, 4138355, 4138360, 4138365, 4138370, 4138375, 4138380, 4138385, 4138390, 4138395, 4138400, 4140350, 4140355, 4140360, 4140365, 4140370, 4140375, 4140380, 4140385, 4140390, 4140395, 4140400, 4140405, 4140410, 4140415, 4140420, 4338330, 4338335, 4338340, 4338345, 4338350, 4338355, 4338360, 4338365, 4338370, 4338375, 4338380, 4338385, 4338390, 4338395, 4338400, 4340350, 4340355, 4340360, 4340365, 4340370, 4340375, 4340380, 4340385, 4340390, 4340395, 4340400, 4340405, 4340410, 4340415, 4340420, 4540350, 4540355, 4540360, 4540365, 4540370, 4540375, 4540380, 4540385, 4540390, 4540395, 4540400, 4540405, 4540410, 4540415, 4540420, 4940350, 4940355, 4940360, 4940365, 4940370, 4940375, 4940380, 4940385, 4940390, 4940395, 4940400, 4940405, 4940410, 4940415, 4940420, 5038330, 5038335, 5038340, 5038345, 5038350, 5038355, 5038360, 5038365, 5038370, 5038375, 5038380, 5038385, 5038390, 5038395, 5038400, 5040350, 5040355, 5040360, 5040365, 5040370, 5040375, 5040380, 5040385, 5040390, 5040395, 5040400, 5040405, 5040410, 5040415, 5040420, 5138330, 5138335, 5138340, 5138345, 5138350, 5138355, 5138360, 5138365, 5138370, 5138375, 5138380, 5138385, 5138390, 5138395, 5138400, 5140350, 5140355, 5140360, 5140365, 5140370, 5140375, 5140380, 5140385, 5140390, 5140395, 5140400, 5140405, 5140410, 5140415, 5140420, 5338330, 5338335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5338340, 5338345, 5338350, 5338355, 5338360, 5338365, 5338370, 5338375, 5338380, 5338385, 5338390, 5338395, 5338400, 5340350, 5340355, 5340360, 5340365, 5340370, 5340375, 5340380, 5340385, 5340390, 5340395, 5340400, 5340405, 5340410, 5340415, 5340420, 5540350, 5540355, 5540360, 5540365, 5540370, 5540375, 5540380, 5540385, 5540390, 5540395, 5540400, 5540405, 5540410, 5540415, 5540420, 5940350, 5940355, 5940360, 5940365, 5940370, 5940375, 5940380, 5940385, 5940390, 5940395, 5940400, 5940405, 5940410, 5940415, 5940420, 6038330, 6038335, 6038340, 6038345, 6038350, 6038355, 6038360, 6038365, 6038370, 6038375, 6038380, 6038385, 6038390, 6038395, 6038400, 6040350, 6040355, 6040360, 6040365, 6040370, 6040375, 6040380, 6040385, 6040390, 6040395, 6040400, 6040405, 6040410, 6040415, 6040420, 6140350, 6140355, 6140360, 6140365, 6140370, 6140375, 6140380, 6140385, 6140390, 6140395, 6140400, 6140405, 6140410, 6140415, 6140420, 6340350, 6340355, 6340360, 6340365, 6340370, 6340375, 6340380, 6340385, 6340390, 6340395, 6340400, 6340405, 6340410, 6340415, 6340420, 6540350, 6540355, 6540360, 6540365, 6540370, 6540375, 6540380, 6540385, 6540390, 6540395, 6540400, 6540405, 6540410, 6540415, 6540420, 6940350, 6940355, 6940360, 6940365, 6940370, 6940375, 6940380, 6940385, 6940390, 6940395, 6940400, 6940405, 6940410, 6940415, 6940420, 7040330, 7040335, 7040340, 7040345, 7040350, 7040355, 7040360, 7040365, 7040370, 7040375, 7040380, 7040385, 7040390, 7040395, 7040400, 7140330, 7140335, 7140340, 7140345, 7140350, 7140355, 7140360, 7140365, 7140370, 7140375, 7140380, 7140385, 7140390, 7140395, 7140400, 7340330, 7340335, 7340340, 7340345, 7340350, 7340355, 7340360, 7340365, 7340370, 7340375, 7340380, 7340385, 7340390, 7340395, 7340400, 7540330, 7540335, 7540340, 7540345, 7540350, 7540355, 7540360, 7540365, 7540370, 7540375, 7540380, 7540385, 7540390, 7540395, 7540400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400031	},
}					
--중급 견습 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3390, 3800, 10370, 10800, 17370, 17800, 24370, 24800, 1038240, 1038245, 1038250, 1038255, 1038260, 1038265, 1038270, 1038275, 1038280, 1038285, 1038290, 1038295, 1038300, 1038305, 1040255, 1040260, 1040265, 1040270, 1040275, 1040280, 1040285, 1040290, 1040295, 1040300, 1040305, 1040310, 1040315, 1040320, 1138240, 1138245, 1138250, 1138255, 1138260, 1138265, 1138270, 1138275, 1138280, 1138285, 1138290, 1138295, 1138300, 1138305, 1140255, 1140260, 1140265, 1140270, 1140275, 1140280, 1140285, 1140290, 1140295, 1140300, 1140305, 1140310, 1140315, 1140320, 1338240, 1338245, 1338250, 1338255, 1338260, 1338265, 1338270, 1338275, 1338280, 1338285, 1338290, 1338295, 1338300, 1338305, 1340255, 1340260, 1340265, 1340270, 1340275, 1340280, 1340285, 1340290, 1340295, 1340300, 1340305, 1340310, 1340315, 1340320, 1540255, 1540260, 1540265, 1540270, 1540275, 1540280, 1540285, 1540290, 1540295, 1540300, 1540305, 1540310, 1540315, 1540320, 1940255, 1940260, 1940265, 1940270, 1940275, 1940280, 1940285, 1940290, 1940295, 1940300, 1940305, 1940310, 1940315, 1940320, 2038240, 2038245, 2038250, 2038255, 2038260, 2038265, 2038270, 2038275, 2038280, 2038285, 2038290, 2038295, 2038300, 2038305, 2040255, 2040260, 2040265, 2040270, 2040275, 2040280, 2040285, 2040290, 2040295, 2040300, 2040305, 2040310, 2040315, 2040320, 2138240, 2138245, 2138250, 2138255, 2138260, 2138265, 2138270, 2138275, 2138280, 2138285, 2138290, 2138295, 2138300, 2138305, 2140255, 2140260, 2140265, 2140270, 2140275, 2140280, 2140285, 2140290, 2140295, 2140300, 2140305, 2140310, 2140315, 2140320, 2338240, 2338245, 2338250, 2338255, 2338260, 2338265, 2338270, 2338275, 2338280, 2338285, 2338290, 2338295, 2338300, 2338305, 2340255, 2340260, 2340265, 2340270, 2340275, 2340280, 2340285, 2340290, 2340295, 2340300, 2340305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400021	},
}					

g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2340310, 2340315, 2340320, 2540255, 2540260, 2540265, 2540270, 2540275, 2540280, 2540285, 2540290, 2540295, 2540300, 2540305, 2540310, 2540315, 2540320, 2940255, 2940260, 2940265, 2940270, 2940275, 2940280, 2940285, 2940290, 2940295, 2940300, 2940305, 2940310, 2940315, 2940320, 3038240, 3038245, 3038250, 3038255, 3038260, 3038265, 3038270, 3038275, 3038280, 3038285, 3038290, 3038295, 3038300, 3038305, 3040255, 3040260, 3040265, 3040270, 3040275, 3040280, 3040285, 3040290, 3040295, 3040300, 3040305, 3040310, 3040315, 3040320, 3138240, 3138245, 3138250, 3138255, 3138260, 3138265, 3138270, 3138275, 3138280, 3138285, 3138290, 3138295, 3138300, 3138305, 3140255, 3140260, 3140265, 3140270, 3140275, 3140280, 3140285, 3140290, 3140295, 3140300, 3140305, 3140310, 3140315, 3140320, 3338240, 3338245, 3338250, 3338255, 3338260, 3338265, 3338270, 3338275, 3338280, 3338285, 3338290, 3338295, 3338300, 3338305, 3340255, 3340260, 3340265, 3340270, 3340275, 3340280, 3340285, 3340290, 3340295, 3340300, 3340305, 3340310, 3340315, 3340320, 3540255, 3540260, 3540265, 3540270, 3540275, 3540280, 3540285, 3540290, 3540295, 3540300, 3540305, 3540310, 3540315, 3540320, 3940255, 3940260, 3940265, 3940270, 3940275, 3940280, 3940285, 3940290, 3940295, 3940300, 3940305, 3940310, 3940315, 3940320, 4038240, 4038245, 4038250, 4038255, 4038260, 4038265, 4038270, 4038275, 4038280, 4038285, 4038290, 4038295, 4038300, 4038305, 4040255, 4040260, 4040265, 4040270, 4040275, 4040280, 4040285, 4040290, 4040295, 4040300, 4040305, 4040310, 4040315, 4040320, 4138240, 4138245, 4138250, 4138255, 4138260, 4138265, 4138270, 4138275, 4138280, 4138285, 4138290, 4138295, 4138300, 4138305, 4140255, 4140260, 4140265, 4140270, 4140275, 4140280, 4140285, 4140290, 4140295, 4140300, 4140305, 4140310, 4140315, 4140320, 4338240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400021	},
}					
				
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4338245, 4338250, 4338255, 4338260, 4338265, 4338270, 4338275, 4338280, 4338285, 4338290, 4338295, 4338300, 4338305, 4340255, 4340260, 4340265, 4340270, 4340275, 4340280, 4340285, 4340290, 4340295, 4340300, 4340305, 4340310, 4340315, 4340320, 4540255, 4540260, 4540265, 4540270, 4540275, 4540280, 4540285, 4540290, 4540295, 4540300, 4540305, 4540310, 4540315, 4540320, 4940255, 4940260, 4940265, 4940270, 4940275, 4940280, 4940285, 4940290, 4940295, 4940300, 4940305, 4940310, 4940315, 4940320, 5038240, 5038245, 5038250, 5038255, 5038260, 5038265, 5038270, 5038275, 5038280, 5038285, 5038290, 5038295, 5038300, 5038305, 5040255, 5040260, 5040265, 5040270, 5040275, 5040280, 5040285, 5040290, 5040295, 5040300, 5040305, 5040310, 5040315, 5040320, 5138240, 5138245, 5138250, 5138255, 5138260, 5138265, 5138270, 5138275, 5138280, 5138285, 5138290, 5138295, 5138300, 5138305, 5140255, 5140260, 5140265, 5140270, 5140275, 5140280, 5140285, 5140290, 5140295, 5140300, 5140305, 5140310, 5140315, 5140320, 5338240, 5338245, 5338250, 5338255, 5338260, 5338265, 5338270, 5338275, 5338280, 5338285, 5338290, 5338295, 5338300, 5338305, 5340255, 5340260, 5340265, 5340270, 5340275, 5340280, 5340285, 5340290, 5340295, 5340300, 5340305, 5340310, 5340315, 5340320, 5540255, 5540260, 5540265, 5540270, 5540275, 5540280, 5540285, 5540290, 5540295, 5540300, 5540305, 5540310, 5540315, 5540320, 5940255, 5940260, 5940265, 5940270, 5940275, 5940280, 5940285, 5940290, 5940295, 5940300, 5940305, 5940310, 5940315, 5940320, 6038240, 6038245, 6038250, 6038255, 6038260, 6038265, 6038270, 6038275, 6038280, 6038285, 6038290, 6038295, 6038300, 6038305, 6040255, 6040260, 6040265, 6040270, 6040275, 6040280, 6040285, 6040290, 6040295, 6040300, 6040305, 6040310, 6040315, 6040320, 6140255, 6140260, 6140265, 6140270, 6140275 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400021	},
}					
				
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6140280, 6140285, 6140290, 6140295, 6140300, 6140305, 6140310, 6140315, 6140320, 6340255, 6340260, 6340265, 6340270, 6340275, 6340280, 6340285, 6340290, 6340295, 6340300, 6340305, 6340310, 6340315, 6340320, 6540255, 6540260, 6540265, 6540270, 6540275, 6540280, 6540285, 6540290, 6540295, 6540300, 6540305, 6540310, 6540315, 6540320, 6940255, 6940260, 6940265, 6940270, 6940275, 6940280, 6940285, 6940290, 6940295, 6940300, 6940305, 6940310, 6940315, 6940320, 7040240, 7040245, 7040250, 7040255, 7040260, 7040265, 7040270, 7040275, 7040280, 7040285, 7040290, 7040295, 7040300, 7040305, 7140240, 7140245, 7140250, 7140255, 7140260, 7140265, 7140270, 7140275, 7140280, 7140285, 7140290, 7140295, 7140300, 7140305, 7340240, 7340245, 7340250, 7340255, 7340260, 7340265, 7340270, 7340275, 7340280, 7340285, 7340290, 7340295, 7340300, 7340305, 7540240, 7540245, 7540250, 7540255, 7540260, 7540265, 7540270, 7540275, 7540280, 7540285, 7540290, 7540295, 7540300, 7540305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400021	},
}	

--중급 견습 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2375, 2800, 9375, 9800, 16375, 16800, 23375, 23800, 1038150, 1038155, 1038160, 1038165, 1038170, 1038175, 1038180, 1038185, 1038190, 1038195, 1038200, 1038205, 1038210, 1038215, 1040160, 1040165, 1040170, 1040175, 1040180, 1040185, 1040190, 1040195, 1040200, 1040205, 1040210, 1040215, 1040220, 1040225, 1138150, 1138155, 1138160, 1138165, 1138170, 1138175, 1138180, 1138185, 1138190, 1138195, 1138200, 1138205, 1138210, 1138215, 1140160, 1140165, 1140170, 1140175, 1140180, 1140185, 1140190, 1140195, 1140200, 1140205, 1140210, 1140215, 1140220, 1140225, 1338150, 1338155, 1338160, 1338165, 1338170, 1338175, 1338180, 1338185, 1338190, 1338195, 1338200, 1338205, 1338210, 1338215, 1340160, 1340165, 1340170, 1340175, 1340180, 1340185, 1340190, 1340195, 1340200, 1340205, 1340210, 1340215, 1340220, 1340225, 1540160, 1540165, 1540170, 1540175, 1540180, 1540185, 1540190, 1540195, 1540200, 1540205, 1540210, 1540215, 1540220, 1540225, 1940160, 1940165, 1940170, 1940175, 1940180, 1940185, 1940190, 1940195, 1940200, 1940205, 1940210, 1940215, 1940220, 1940225, 2038150, 2038155, 2038160, 2038165, 2038170, 2038175, 2038180, 2038185, 2038190, 2038195, 2038200, 2038205, 2038210, 2038215, 2040160, 2040165, 2040170, 2040175, 2040180, 2040185, 2040190, 2040195, 2040200, 2040205, 2040210, 2040215, 2040220, 2040225, 2138150, 2138155, 2138160, 2138165, 2138170, 2138175, 2138180, 2138185, 2138190, 2138195, 2138200, 2138205, 2138210, 2138215, 2140160, 2140165, 2140170, 2140175, 2140180, 2140185, 2140190, 2140195, 2140200, 2140205, 2140210, 2140215, 2140220, 2140225, 2338150, 2338155, 2338160, 2338165, 2338170 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2338175, 2338180, 2338185, 2338190, 2338195, 2338200, 2338205, 2338210, 2338215, 2340160, 2340165, 2340170, 2340175, 2340180, 2340185, 2340190, 2340195, 2340200, 2340205, 2340210, 2340215, 2340220, 2340225, 2540160, 2540165, 2540170, 2540175, 2540180, 2540185, 2540190, 2540195, 2540200, 2540205, 2540210, 2540215, 2540220, 2540225, 2940160, 2940165, 2940170, 2940175, 2940180, 2940185, 2940190, 2940195, 2940200, 2940205, 2940210, 2940215, 2940220, 2940225, 3038150, 3038155, 3038160, 3038165, 3038170, 3038175, 3038180, 3038185, 3038190, 3038195, 3038200, 3038205, 3038210, 3038215, 3040160, 3040165, 3040170, 3040175, 3040180, 3040185, 3040190, 3040195, 3040200, 3040205, 3040210, 3040215, 3040220, 3040225, 3138150, 3138155, 3138160, 3138165, 3138170, 3138175, 3138180, 3138185, 3138190, 3138195, 3138200, 3138205, 3138210, 3138215, 3140160, 3140165, 3140170, 3140175, 3140180, 3140185, 3140190, 3140195, 3140200, 3140205, 3140210, 3140215, 3140220, 3140225, 3338150, 3338155, 3338160, 3338165, 3338170, 3338175, 3338180, 3338185, 3338190, 3338195, 3338200, 3338205, 3338210, 3338215, 3340160, 3340165, 3340170, 3340175, 3340180, 3340185, 3340190, 3340195, 3340200, 3340205, 3340210, 3340215, 3340220, 3340225, 3540160, 3540165, 3540170, 3540175, 3540180, 3540185, 3540190, 3540195, 3540200, 3540205, 3540210, 3540215, 3540220, 3540225, 3940160, 3940165, 3940170, 3940175, 3940180, 3940185, 3940190, 3940195, 3940200, 3940205, 3940210, 3940215, 3940220, 3940225, 4038150, 4038155, 4038160, 4038165, 4038170, 4038175, 4038180, 4038185, 4038190, 4038195, 4038200, 4038205, 4038210, 4038215, 4040160, 4040165, 4040170 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4040175, 4040180, 4040185, 4040190, 4040195, 4040200, 4040205, 4040210, 4040215, 4040220, 4040225, 4138150, 4138155, 4138160, 4138165, 4138170, 4138175, 4138180, 4138185, 4138190, 4138195, 4138200, 4138205, 4138210, 4138215, 4140160, 4140165, 4140170, 4140175, 4140180, 4140185, 4140190, 4140195, 4140200, 4140205, 4140210, 4140215, 4140220, 4140225, 4338150, 4338155, 4338160, 4338165, 4338170, 4338175, 4338180, 4338185, 4338190, 4338195, 4338200, 4338205, 4338210, 4338215, 4340160, 4340165, 4340170, 4340175, 4340180, 4340185, 4340190, 4340195, 4340200, 4340205, 4340210, 4340215, 4340220, 4340225, 4540160, 4540165, 4540170, 4540175, 4540180, 4540185, 4540190, 4540195, 4540200, 4540205, 4540210, 4540215, 4540220, 4540225, 4940160, 4940165, 4940170, 4940175, 4940180, 4940185, 4940190, 4940195, 4940200, 4940205, 4940210, 4940215, 4940220, 4940225, 5038150, 5038155, 5038160, 5038165, 5038170, 5038175, 5038180, 5038185, 5038190, 5038195, 5038200, 5038205, 5038210, 5038215, 5040160, 5040165, 5040170, 5040175, 5040180, 5040185, 5040190, 5040195, 5040200, 5040205, 5040210, 5040215, 5040220, 5040225, 5138150, 5138155, 5138160, 5138165, 5138170, 5138175, 5138180, 5138185, 5138190, 5138195, 5138200, 5138205, 5138210, 5138215, 5140160, 5140165, 5140170, 5140175, 5140180, 5140185, 5140190, 5140195, 5140200, 5140205, 5140210, 5140215, 5140220, 5140225, 5338150, 5338155, 5338160, 5338165, 5338170, 5338175, 5338180, 5338185, 5338190, 5338195, 5338200, 5338205, 5338210, 5338215, 5340160, 5340165, 5340170, 5340175, 5340180, 5340185, 5340190, 5340195, 5340200, 5340205, 5340210, 5340215, 5340220, 5340225, 5540160 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5540165, 5540170, 5540175, 5540180, 5540185, 5540190, 5540195, 5540200, 5540205, 5540210, 5540215, 5540220, 5540225, 5940160, 5940165, 5940170, 5940175, 5940180, 5940185, 5940190, 5940195, 5940200, 5940205, 5940210, 5940215, 5940220, 5940225, 6038150, 6038155, 6038160, 6038165, 6038170, 6038175, 6038180, 6038185, 6038190, 6038195, 6038200, 6038205, 6038210, 6038215, 6040160, 6040165, 6040170, 6040175, 6040180, 6040185, 6040190, 6040195, 6040200, 6040205, 6040210, 6040215, 6040220, 6040225, 6140160, 6140165, 6140170, 6140175, 6140180, 6140185, 6140190, 6140195, 6140200, 6140205, 6140210, 6140215, 6140220, 6140225, 6340160, 6340165, 6340170, 6340175, 6340180, 6340185, 6340190, 6340195, 6340200, 6340205, 6340210, 6340215, 6340220, 6340225, 6540160, 6540165, 6540170, 6540175, 6540180, 6540185, 6540190, 6540195, 6540200, 6540205, 6540210, 6540215, 6540220, 6540225, 6940160, 6940165, 6940170, 6940175, 6940180, 6940185, 6940190, 6940195, 6940200, 6940205, 6940210, 6940215, 6940220, 6940225, 7040150, 7040155, 7040160, 7040165, 7040170, 7040175, 7040180, 7040185, 7040190, 7040195, 7040200, 7040205, 7040210, 7040215, 7140150, 7140155, 7140160, 7140165, 7140170, 7140175, 7140180, 7140185, 7140190, 7140195, 7140200, 7140205, 7140210, 7140215, 7340150, 7340155, 7340160, 7340165, 7340170, 7340175, 7340180, 7340185, 7340190, 7340195, 7340200, 7340205, 7340210, 7340215, 7540150, 7540155, 7540160, 7540165, 7540170, 7540175, 7540180, 7540185, 7540190, 7540195, 7540200, 7540205, 7540210, 7540215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400011	},
}					

--상급 견습 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1380, 8380, 15380, 22380, 1038130, 1038135, 1040135, 1040140, 1138130, 1138135, 1140135, 1140140, 1338130, 1338135, 1340135, 1340140, 1540135, 1540140, 1940135, 1940140, 2038130, 2038135, 2040135, 2040140, 2138130, 2138135, 2140135, 2140140, 2338130, 2338135, 2340135, 2340140, 2540135, 2540140, 2940135, 2940140, 3038130, 3038135, 3040135, 3040140, 3138130, 3138135, 3140135, 3140140, 3338130, 3338135, 3340135, 3340140, 3540135, 3540140, 3940135, 3940140, 4038130, 4038135, 4040135, 4040140, 4138130, 4138135, 4140135, 4140140, 4338130, 4338135, 4340135, 4340140, 4540135, 4540140, 4940135, 4940140, 5038130, 5038135, 5040135, 5040140, 5138130, 5138135, 5140135, 5140140, 5338130, 5338135, 5340135, 5340140, 5540135, 5540140, 5940135, 5940140, 6038130, 6038135, 6040135, 6040140, 6140135, 6140140, 6340135, 6340140, 6540135, 6540140, 6940135, 6940140, 7040130, 7040135, 7140130, 7140135, 7340130, 7340135, 7540130, 7540135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400002	},
}					
--상급 견습 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4375, 11375, 18375, 25375, 1038405, 1038410, 1040425, 1040430, 1138405, 1138410, 1140425, 1140430, 1338405, 1338410, 1340425, 1340430, 1540425, 1540430, 1940425, 1940430, 2038405, 2038410, 2040425, 2040430, 2138405, 2138410, 2140425, 2140430, 2338405, 2338410, 2340425, 2340430, 2540425, 2540430, 2940425, 2940430, 3038405, 3038410, 3040425, 3040430, 3138405, 3138410, 3140425, 3140430, 3338405, 3338410, 3340425, 3340430, 3540425, 3540430, 3940425, 3940430, 4038405, 4038410, 4040425, 4040430, 4138405, 4138410, 4140425, 4140430, 4338405, 4338410, 4340425, 4340430, 4540425, 4540430, 4940425, 4940430, 5038405, 5038410, 5040425, 5040430, 5138405, 5138410, 5140425, 5140430, 5338405, 5338410, 5340425, 5340430, 5540425, 5540430, 5940425, 5940430, 6038405, 6038410, 6040425, 6040430, 6140425, 6140430, 6340425, 6340430, 6540425, 6540430, 6940425, 6940430, 7040405, 7040410, 7140405, 7140410, 7340405, 7340410, 7540405, 7540410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400032	},
}					
--상급 견습 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3400, 10375, 17375, 24375, 1038310, 1038315, 1040325, 1040330, 1138310, 1138315, 1140325, 1140330, 1338310, 1338315, 1340325, 1340330, 1540325, 1540330, 1940325, 1940330, 2038310, 2038315, 2040325, 2040330, 2138310, 2138315, 2140325, 2140330, 2338310, 2338315, 2340325, 2340330, 2540325, 2540330, 2940325, 2940330, 3038310, 3038315, 3040325, 3040330, 3138310, 3138315, 3140325, 3140330, 3338310, 3338315, 3340325, 3340330, 3540325, 3540330, 3940325, 3940330, 4038310, 4038315, 4040325, 4040330, 4138310, 4138315, 4140325, 4140330, 4338310, 4338315, 4340325, 4340330, 4540325, 4540330, 4940325, 4940330, 5038310, 5038315, 5040325, 5040330, 5138310, 5138315, 5140325, 5140330, 5338310, 5338315, 5340325, 5340330, 5540325, 5540330, 5940325, 5940330, 6038310, 6038315, 6040325, 6040330, 6140325, 6140330, 6340325, 6340330, 6540325, 6540330, 6940325, 6940330, 7040310, 7040315, 7140310, 7140315, 7340310, 7340315, 7540310, 7540315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400022	},
}					
--상급 견습 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2380, 9380, 16380, 23380, 1038220, 1038225, 1040230, 1040235, 1138220, 1138225, 1140230, 1140235, 1338220, 1338225, 1340230, 1340235, 1540230, 1540235, 1940230, 1940235, 2038220, 2038225, 2040230, 2040235, 2138220, 2138225, 2140230, 2140235, 2338220, 2338225, 2340230, 2340235, 2540230, 2540235, 2940230, 2940235, 3038220, 3038225, 3040230, 3040235, 3138220, 3138225, 3140230, 3140235, 3338220, 3338225, 3340230, 3340235, 3540230, 3540235, 3940230, 3940235, 4038220, 4038225, 4040230, 4040235, 4138220, 4138225, 4140230, 4140235, 4338220, 4338225, 4340230, 4340235, 4540230, 4540235, 4940230, 4940235, 5038220, 5038225, 5040230, 5040235, 5138220, 5138225, 5140230, 5140235, 5338220, 5338225, 5340230, 5340235, 5540230, 5540235, 5940230, 5940235, 6038220, 6038225, 6040230, 6040235, 6140230, 6140235, 6340230, 6340235, 6540230, 6540235, 6940230, 6940235, 7040220, 7040225, 7140220, 7140225, 7340220, 7340225, 7540220, 7540225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400012	},
}					
--최상급 견습 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1385, 8385, 15385, 22385, 1040145, 1140145, 1340145, 1540145, 1940145, 2040145, 2140145, 2340145, 2540145, 2940145, 3040145, 3140145, 3340145, 3540145, 3940145, 4040145, 4140145, 4340145, 4540145, 4940145, 5040145, 5140145, 5340145, 5540145, 5940145, 6040145, 6540145, 6940145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400003	},
}					
--최상급 견습 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040435, 1140435, 1340435, 1540435, 1940435, 2040435, 2140435, 2340435, 2540435, 2940435, 3040435, 3140435, 3340435, 3540435, 3940435, 4040435, 4140435, 4340435, 4540435, 4940435, 5040435, 5140435, 5340435, 5540435, 5940435, 6040435, 6540435, 6940435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400033	},
}					
--최상급 견습 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1040335, 1140335, 1340335, 1540335, 1940335, 2040335, 2140335, 2340335, 2540335, 2940335, 3040335, 3140335, 3340335, 3540335, 3940335, 4040335, 4140335, 4340335, 4540335, 4940335, 5040335, 5140335, 5340335, 5540335, 5940335, 6040335, 6540335, 6940335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400023	},
}					
--최상급 견습 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2385, 9385, 16385, 23385, 1040240, 1140240, 1340240, 1540240, 1940240, 2040240, 2140240, 2340240, 2540240, 2940240, 3040240, 3140240, 3340240, 3540240, 3940240, 4040240, 4140240, 4340240, 4540240, 4940240, 5040240, 5140240, 5340240, 5540240, 5940240, 6040240, 6540240, 6940240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10400013	},
}					
--강화 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1395, 1405, 1415, 8395, 8400, 8405, 15395, 15400, 15405, 22395, 22400, 22405, 1042050, 1042055, 1044055, 1044060, 1142050, 1142055, 1144055, 1144060, 1342050, 1342055, 1344055, 1344060, 1544055, 1544060, 1944055, 1944060, 2042050, 2042055, 2044055, 2044060, 2142050, 2142055, 2144055, 2144060, 2342050, 2342055, 2344055, 2344060, 2544055, 2544060, 2944055, 2944060, 3042050, 3042055, 3044055, 3044060, 3142050, 3142055, 3144055, 3144060, 3342050, 3342055, 3344055, 3344060, 3544055, 3544060, 3944055, 3944060, 4042050, 4042055, 4044055, 4044060, 4142050, 4142055, 4144055, 4144060, 4342050, 4342055, 4344055, 4344060, 4544055, 4544060, 4944055, 4944060, 5042050, 5042055, 5044055, 5044060, 5142050, 5142055, 5144055, 5144060, 5342050, 5342055, 5344055, 5344060, 5544055, 5544060, 5944055, 5944060, 6042050, 6042055, 6044055, 6044060, 6144055, 6144060, 6344055, 6344060, 6544055, 6544060, 6944055, 6944060, 7044055, 7044060, 7144055, 7144060, 7344055, 7344060, 7544055, 7544060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440000	},
}					
--강화 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4385, 4390, 4395, 11385, 11390, 11395, 18385, 18390, 18395, 25385, 25390, 25395, 1042320, 1042325, 1044340, 1044345, 1142320, 1142325, 1144340, 1144345, 1342320, 1342325, 1344340, 1344345, 1544340, 1544345, 1944340, 1944345, 2042320, 2042325, 2044340, 2044345, 2142320, 2142325, 2144340, 2144345, 2342320, 2342325, 2344340, 2344345, 2544340, 2544345, 2944340, 2944345, 3042320, 3042325, 3044340, 3044345, 3142320, 3142325, 3144340, 3144345, 3342320, 3342325, 3344340, 3344345, 3544340, 3544345, 3944340, 3944345, 4042320, 4042325, 4044340, 4044345, 4142320, 4142325, 4144340, 4144345, 4342320, 4342325, 4344340, 4344345, 4544340, 4544345, 4944340, 4944345, 5042320, 5042325, 5044340, 5044345, 5142320, 5142325, 5144340, 5144345, 5342320, 5342325, 5344340, 5344345, 5544340, 5544345, 5944340, 5944345, 6042320, 6042325, 6044340, 6044345, 6144340, 6144345, 6344340, 6344345, 6544340, 6544345, 6944340, 6944345, 7044340, 7044345, 7144340, 7144345, 7344340, 7344345, 7544340, 7544345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440030	},
}					
--강화 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3410, 3415, 3420, 10385, 10390, 10395, 17385, 17390, 17395, 24385, 24390, 24395, 1042230, 1042235, 1044245, 1044250, 1142230, 1142235, 1144245, 1144250, 1342230, 1342235, 1344245, 1344250, 1544245, 1544250, 1944245, 1944250, 2042230, 2042235, 2044245, 2044250, 2142230, 2142235, 2144245, 2144250, 2342230, 2342235, 2344245, 2344250, 2544245, 2544250, 2944245, 2944250, 3042230, 3042235, 3044245, 3044250, 3142230, 3142235, 3144245, 3144250, 3342230, 3342235, 3344245, 3344250, 3544245, 3544250, 3944245, 3944250, 4042230, 4042235, 4044245, 4044250, 4142230, 4142235, 4144245, 4144250, 4342230, 4342235, 4344245, 4344250, 4544245, 4544250, 4944245, 4944250, 5042230, 5042235, 5044245, 5044250, 5142230, 5142235, 5144245, 5144250, 5342230, 5342235, 5344245, 5344250, 5544245, 5544250, 5944245, 5944250, 6042230, 6042235, 6044245, 6044250, 6144245, 6144250, 6344245, 6344250, 6544245, 6544250, 6944245, 6944250, 7044245, 7044250, 7144245, 7144250, 7344245, 7344250, 7544245, 7544250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440020	},
}					
--강화 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2395, 2400, 2405, 9395, 9400, 9405, 16395, 16400, 16405, 23395, 23405, 23415, 1042140, 1042145, 1044150, 1044155, 1142140, 1142145, 1144150, 1144155, 1342140, 1342145, 1344150, 1344155, 1544150, 1544155, 1944150, 1944155, 2042140, 2042145, 2044150, 2044155, 2142140, 2142145, 2144150, 2144155, 2342140, 2342145, 2344150, 2344155, 2544150, 2544155, 2944150, 2944155, 3042140, 3042145, 3044150, 3044155, 3142140, 3142145, 3144150, 3144155, 3342140, 3342145, 3344150, 3344155, 3544150, 3544155, 3944150, 3944155, 4042140, 4042145, 4044150, 4044155, 4142140, 4142145, 4144150, 4144155, 4342140, 4342145, 4344150, 4344155, 4544150, 4544155, 4944150, 4944155, 5042140, 5042145, 5044150, 5044155, 5142140, 5142145, 5144150, 5144155, 5342140, 5342145, 5344150, 5344155, 5544150, 5544155, 5944150, 5944155, 6042140, 6042145, 6044150, 6044155, 6144150, 6144155, 6344150, 6344155, 6544150, 6544155, 6944150, 6944155, 7044150, 7044155, 7144150, 7144155, 7344150, 7344155, 7544150, 7544155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440010	},
}					
--중급 강화 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1425, 8410, 15410, 22410, 1042060, 1042065, 1042070, 1042075, 1042080, 1042085, 1042090, 1042095, 1042100, 1042105, 1042110, 1042115, 1042120, 1042125, 1044065, 1044070, 1044075, 1044080, 1044085, 1044090, 1044095, 1044100, 1044105, 1044110, 1044115, 1044120, 1044125, 1044130, 1142060, 1142065, 1142070, 1142075, 1142080, 1142085, 1142090, 1142095, 1142100, 1142105, 1142110, 1142115, 1142120, 1142125, 1144065, 1144070, 1144075, 1144080, 1144085, 1144090, 1144095, 1144100, 1144105, 1144110, 1144115, 1144120, 1144125, 1144130, 1342060, 1342065, 1342070, 1342075, 1342080, 1342085, 1342090, 1342095, 1342100, 1342105, 1342110, 1342115, 1342120, 1342125, 1344065, 1344070, 1344075, 1344080, 1344085, 1344090, 1344095, 1344100, 1344105, 1344110, 1344115, 1344120, 1344125, 1344130, 1544065, 1544070, 1544075, 1544080, 1544085, 1544090, 1544095, 1544100, 1544105, 1544110, 1544115, 1544120, 1544125, 1544130, 1944065, 1944070, 1944075, 1944080, 1944085, 1944090, 1944095, 1944100, 1944105, 1944110, 1944115, 1944120, 1944125, 1944130, 2042060, 2042065, 2042070, 2042075, 2042080, 2042085, 2042090, 2042095, 2042100, 2042105, 2042110, 2042115, 2042120, 2042125, 2044065, 2044070, 2044075, 2044080, 2044085, 2044090, 2044095, 2044100, 2044105, 2044110, 2044115, 2044120, 2044125, 2044130, 2142060, 2142065, 2142070, 2142075, 2142080, 2142085, 2142090, 2142095, 2142100, 2142105, 2142110, 2142115, 2142120, 2142125, 2144065, 2144070, 2144075, 2144080, 2144085, 2144090, 2144095, 2144100, 2144105, 2144110, 2144115, 2144120, 2144125, 2144130, 2342060, 2342065, 2342070, 2342075, 2342080, 2342085, 2342090, 2342095, 2342100, 2342105, 2342110, 2342115, 2342120, 2342125, 2344065, 2344070, 2344075, 2344080, 2344085, 2344090, 2344095, 2344100, 2344105, 2344110, 2344115, 2344120, 2344125, 2344130, 2544065, 2544070, 2544075, 2544080, 2544085, 2544090, 2544095, 2544100, 2544105, 2544110, 2544115, 2544120, 2544125, 2544130, 2944065, 2944070, 2944075, 2944080, 2944085, 2944090, 2944095, 2944100, 2944105, 2944110, 2944115, 2944120, 2944125, 2944130, 3042060, 3042065, 3042070 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3042070, 3042075, 3042080, 3042085, 3042090, 3042095, 3042100, 3042105, 3042110, 3042115, 3042120, 3042125, 3044065, 3044070, 3044075, 3044080, 3044085, 3044090, 3044095, 3044100, 3044105, 3044110, 3044115, 3044120, 3044125, 3044130, 3142060, 3142065, 3142070, 3142075, 3142080, 3142085, 3142090, 3142095, 3142100, 3142105, 3142110, 3142115, 3142120, 3142125, 3144065, 3144070, 3144075, 3144080, 3144085, 3144090, 3144095, 3144100, 3144105, 3144110, 3144115, 3144120, 3144125, 3144130, 3342060, 3342065, 3342070, 3342075, 3342080, 3342085, 3342090, 3342095, 3342100, 3342105, 3342110, 3342115, 3342120, 3342125, 3344065, 3344070, 3344075, 3344080, 3344085, 3344090, 3344095, 3344100, 3344105, 3344110, 3344115, 3344120, 3344125, 3344130, 3544065, 3544070, 3544075, 3544080, 3544085, 3544090, 3544095, 3544100, 3544105, 3544110, 3544115, 3544120, 3544125, 3544130, 3944065, 3944070, 3944075, 3944080, 3944085, 3944090, 3944095, 3944100, 3944105, 3944110, 3944115, 3944120, 3944125, 3944130, 4042060, 4042065, 4042070, 4042075, 4042080, 4042085, 4042090, 4042095, 4042100, 4042105, 4042110, 4042115, 4042120, 4042125, 4044065, 4044070, 4044075, 4044080, 4044085, 4044090, 4044095, 4044100, 4044105, 4044110, 4044115, 4044120, 4044125, 4044130, 4142060, 4142065, 4142070, 4142075, 4142080, 4142085, 4142090, 4142095, 4142100, 4142105, 4142110, 4142115, 4142120, 4142125, 4144065, 4144070, 4144075, 4144080, 4144085, 4144090, 4144095, 4144100, 4144105, 4144110, 4144115, 4144120, 4144125, 4144130, 4342060, 4342065, 4342070, 4342075, 4342080, 4342085, 4342090, 4342095, 4342100, 4342105, 4342110, 4342115, 4342120, 4342125, 4344065, 4344070, 4344075, 4344080, 4344085, 4344090, 4344095, 4344100, 4344105, 4344110, 4344115, 4344120, 4344125, 4344130, 4544065, 4544070, 4544075, 4544080, 4544085, 4544090, 4544095, 4544100, 4544105, 4544110, 4544115, 4544120, 4544125, 4544130, 4944065, 4944070, 4944075, 4944080, 4944085, 4944090, 4944095, 4944100, 4944105, 4944110, 4944115, 4944120, 4944125, 4944130, 5042060, 5042065, 5042070, 5042075, 5042080, 5042085, 5042090, 5042095, 5042100 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5042105, 5042110, 5042115, 5042120, 5042125, 5044065, 5044070, 5044075, 5044080, 5044085, 5044090, 5044095, 5044100, 5044105, 5044110, 5044115, 5044120, 5044125, 5044130, 5142060, 5142065, 5142070, 5142075, 5142080, 5142085, 5142090, 5142095, 5142100, 5142105, 5142110, 5142115, 5142120, 5142125, 5144065, 5144070, 5144075, 5144080, 5144085, 5144090, 5144095, 5144100, 5144105, 5144110, 5144115, 5144120, 5144125, 5144130, 5342060, 5342065, 5342070, 5342075, 5342080, 5342085, 5342090, 5342095, 5342100, 5342105, 5342110, 5342115, 5342120, 5342125, 5344065, 5344070, 5344075, 5344080, 5344085, 5344090, 5344095, 5344100, 5344105, 5344110, 5344115, 5344120, 5344125, 5344130, 5544065, 5544070, 5544075, 5544080, 5544085, 5544090, 5544095, 5544100, 5544105, 5544110, 5544115, 5544120, 5544125, 5544130, 5944065, 5944070, 5944075, 5944080, 5944085, 5944090, 5944095, 5944100, 5944105, 5944110, 5944115, 5944120, 5944125, 5944130, 6042060, 6042065, 6042070, 6042075, 6042080, 6042085, 6042090, 6042095, 6042100, 6042105, 6042110, 6042115, 6042120, 6042125, 6044065, 6044070, 6044075, 6044080, 6044085, 6044090, 6044095, 6044100, 6044105, 6044110, 6044115, 6044120, 6044125, 6044130, 6144065, 6144070, 6144075, 6144080, 6144085, 6144090, 6144095, 6144100, 6144105, 6144110, 6144115, 6144120, 6144125, 6144130, 6344065, 6344070, 6344075, 6344080, 6344085, 6344090, 6344095, 6344100, 6344105, 6344110, 6344115, 6344120, 6344125, 6344130, 6544065, 6544070, 6544075, 6544080, 6544085, 6544090, 6544095, 6544100, 6544105, 6544110, 6544115, 6544120, 6544125, 6544130, 6944065, 6944070, 6944075, 6944080, 6944085, 6944090, 6944095, 6944100, 6944105, 6944110, 6944115, 6944120, 6944125, 6944130, 7044065, 7044070, 7044075, 7044080, 7044085, 7044090, 7044095, 7044100, 7044105, 7044110, 7044115, 7044120, 7044125, 7044130, 7144065, 7144070, 7144075, 7144080, 7144085, 7144090, 7144095, 7144100, 7144105, 7144110, 7144115, 7144120, 7144125, 7144130, 7344065, 7344070, 7344075, 7344080, 7344085, 7344090, 7344095, 7344100, 7344105, 7344110, 7344115, 7344120, 7344125, 7344130, 7544065, 7544070, 7544075, 7544080, 7544085, 7544090, 7544095, 7544100, 7544105, 7544110, 7544115, 7544120, 7544125, 7544130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440001	},
}					
--중급 강화 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4400, 11400, 18400, 25400, 1042330, 1042335, 1042340, 1042345, 1042350, 1042355, 1042360, 1042365, 1042370, 1042375, 1042380, 1042385, 1042390, 1042395, 1042400, 1044350, 1044355, 1044360, 1044365, 1044370, 1044375, 1044380, 1044385, 1044390, 1044395, 1044400, 1044405, 1044410, 1044415, 1044420, 1142330, 1142335, 1142340, 1142345, 1142350, 1142355, 1142360, 1142365, 1142370, 1142375, 1142380, 1142385, 1142390, 1142395, 1142400, 1144350, 1144355, 1144360, 1144365, 1144370, 1144375, 1144380, 1144385, 1144390, 1144395, 1144400, 1144405, 1144410, 1144415, 1144420, 1342330, 1342335, 1342340, 1342345, 1342350, 1342355, 1342360, 1342365, 1342370, 1342375, 1342380, 1342385, 1342390, 1342395, 1342400, 1344350, 1344355, 1344360, 1344365, 1344370, 1344375, 1344380, 1344385, 1344390, 1344395, 1344400, 1344405, 1344410, 1344415, 1344420, 1544350, 1544355, 1544360, 1544365, 1544370, 1544375, 1544380, 1544385, 1544390, 1544395, 1544400, 1544405, 1544410, 1544415, 1544420, 1944350, 1944355, 1944360, 1944365, 1944370, 1944375, 1944380, 1944385, 1944390, 1944395, 1944400, 1944405, 1944410, 1944415, 1944420, 2042330, 2042335, 2042340, 2042345, 2042350, 2042355, 2042360, 2042365, 2042370, 2042375, 2042380, 2042385, 2042390, 2042395, 2042400, 2044350, 2044355, 2044360, 2044365, 2044370, 2044375, 2044380, 2044385, 2044390, 2044395, 2044400, 2044405, 2044410, 2044415, 2044420, 2142330, 2142335, 2142340, 2142345, 2142350, 2142355, 2142360, 2142365, 2142370, 2142375, 2142380, 2142385, 2142390, 2142395, 2142400, 2144350, 2144355, 2144360, 2144365, 2144370, 2144375, 2144380, 2144385, 2144390, 2144395, 2144400, 2144405, 2144410, 2144415, 2144420, 2342330, 2342335, 2342340, 2342345, 2342350, 2342355, 2342360, 2342365, 2342370, 2342375, 2342380, 2342385, 2342390, 2342395, 2342400, 2344350, 2344355, 2344360, 2344365, 2344370, 2344375, 2344380, 2344385, 2344390, 2344395, 2344400, 2344405, 2344410, 2344415, 2344420, 2544350, 2544355, 2544360, 2544365, 2544370, 2544375, 2544380, 2544385, 2544390, 2544395, 2544400, 2544405, 2544410, 2544415, 2544420, 2944350, 2944355, 2944360, 2944365, 2944370, 2944375, 2944380, 2944385, 2944390, 2944395, 2944400, 2944405, 2944410, 2944415, 2944420, 3042330, 3042335, 3042340, 3042345, 3042350, 3042355, 3042360 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3042365, 3042370, 3042375, 3042380, 3042385, 3042390, 3042395, 3042400, 3044350, 3044355, 3044360, 3044365, 3044370, 3044375, 3044380, 3044385, 3044390, 3044395, 3044400, 3044405, 3044410, 3044415, 3044420, 3142330, 3142335, 3142340, 3142345, 3142350, 3142355, 3142360, 3142365, 3142370, 3142375, 3142380, 3142385, 3142390, 3142395, 3142400, 3144350, 3144355, 3144360, 3144365, 3144370, 3144375, 3144380, 3144385, 3144390, 3144395, 3144400, 3144405, 3144410, 3144415, 3144420, 3342330, 3342335, 3342340, 3342345, 3342350, 3342355, 3342360, 3342365, 3342370, 3342375, 3342380, 3342385, 3342390, 3342395, 3342400, 3344350, 3344355, 3344360, 3344365, 3344370, 3344375, 3344380, 3344385, 3344390, 3344395, 3344400, 3344405, 3344410, 3344415, 3344420, 3544350, 3544355, 3544360, 3544365, 3544370, 3544375, 3544380, 3544385, 3544390, 3544395, 3544400, 3544405, 3544410, 3544415, 3544420, 3944350, 3944355, 3944360, 3944365, 3944370, 3944375, 3944380, 3944385, 3944390, 3944395, 3944400, 3944405, 3944410, 3944415, 3944420, 4042330, 4042335, 4042340, 4042345, 4042350, 4042355, 4042360, 4042365, 4042370, 4042375, 4042380, 4042385, 4042390, 4042395, 4042400, 4044350, 4044355, 4044360, 4044365, 4044370, 4044375, 4044380, 4044385, 4044390, 4044395, 4044400, 4044405, 4044410, 4044415, 4044420, 4142330, 4142335, 4142340, 4142345, 4142350, 4142355, 4142360, 4142365, 4142370, 4142375, 4142380, 4142385, 4142390, 4142395, 4142400, 4144350, 4144355, 4144360, 4144365, 4144370, 4144375, 4144380, 4144385, 4144390, 4144395, 4144400, 4144405, 4144410, 4144415, 4144420, 4342330, 4342335, 4342340, 4342345, 4342350, 4342355, 4342360, 4342365, 4342370, 4342375, 4342380, 4342385, 4342390, 4342395, 4342400, 4344350, 4344355, 4344360, 4344365, 4344370, 4344375, 4344380, 4344385, 4344390, 4344395, 4344400, 4344405, 4344410, 4344415, 4344420, 4544350, 4544355, 4544360, 4544365, 4544370, 4544375, 4544380, 4544385, 4544390, 4544395, 4544400, 4544405, 4544410, 4544415, 4544420, 4944350, 4944355, 4944360, 4944365, 4944370, 4944375, 4944380, 4944385, 4944390, 4944395, 4944400, 4944405, 4944410, 4944415, 4944420, 5042330, 5042335, 5042340, 5042345, 5042350, 5042355, 5042360, 5042365, 5042370, 5042375, 5042380, 5042385, 5042390, 5042395, 5042400, 5044350, 5044355, 3042360 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5044360, 5044365, 5044370, 5044375, 5044380, 5044385, 5044390, 5044395, 5044400, 5044405, 5044410, 5044415, 5044420, 5142330, 5142335, 5142340, 5142345, 5142350, 5142355, 5142360, 5142365, 5142370, 5142375, 5142380, 5142385, 5142390, 5142395, 5142400, 5144350, 5144355, 5144360, 5144365, 5144370, 5144375, 5144380, 5144385, 5144390, 5144395, 5144400, 5144405, 5144410, 5144415, 5144420, 5342330, 5342335, 5342340, 5342345, 5342350, 5342355, 5342360, 5342365, 5342370, 5342375, 5342380, 5342385, 5342390, 5342395, 5342400, 5344350, 5344355, 5344360, 5344365, 5344370, 5344375, 5344380, 5344385, 5344390, 5344395, 5344400, 5344405, 5344410, 5344415, 5344420, 5544350, 5544355, 5544360, 5544365, 5544370, 5544375, 5544380, 5544385, 5544390, 5544395, 5544400, 5544405, 5544410, 5544415, 5544420, 5944350, 5944355, 5944360, 5944365, 5944370, 5944375, 5944380, 5944385, 5944390, 5944395, 5944400, 5944405, 5944410, 5944415, 5944420, 6042330, 6042335, 6042340, 6042345, 6042350, 6042355, 6042360, 6042365, 6042370, 6042375, 6042380, 6042385, 6042390, 6042395, 6042400, 6044350, 6044355, 6044360, 6044365, 6044370, 6044375, 6044380, 6044385, 6044390, 6044395, 6044400, 6044405, 6044410, 6044415, 6044420, 6144350, 6144355, 6144360, 6144365, 6144370, 6144375, 6144380, 6144385, 6144390, 6144395, 6144400, 6144405, 6144410, 6144415, 6144420, 6344350, 6344355, 6344360, 6344365, 6344370, 6344375, 6344380, 6344385, 6344390, 6344395, 6344400, 6344405, 6344410, 6344415, 6344420, 6544350, 6544355, 6544360, 6544365, 6544370, 6544375, 6544380, 6544385, 6544390, 6544395, 6544400, 6544405, 6544410, 6544415, 6544420, 6944350, 6944355, 6944360, 6944365, 6944370, 6944375, 6944380, 6944385, 6944390, 6944395, 6944400, 6944405, 6944410, 6944415, 6944420, 7044350, 7044355, 7044360, 7044365, 7044370, 7044375, 7044380, 7044385, 7044390, 7044395, 7044400, 7044405, 7044410, 7044415, 7044420, 7144350, 7144355, 7144360, 7144365, 7144370, 7144375, 7144380, 7144385, 7144390, 7144395, 7144400, 7144405, 7144410, 7144415, 7144420, 7344350, 7344355, 7344360, 7344365, 7344370, 7344375, 7344380, 7344385, 7344390, 7344395, 7344400, 7344405, 7344410, 7344415, 7344420, 7544350, 7544355, 7544360, 7544365, 7544370, 7544375, 7544380, 7544385, 7544390, 7544395, 7544400, 7544405, 7544410, 7544415, 7544420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440031	},
}					
	
--중급 강화 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3425, 10400, 17400, 24400, 1042240, 1042245, 1042250, 1042255, 1042260, 1042265, 1042270, 1042275, 1042280, 1042285, 1042290, 1042295, 1042300, 1042305, 1044255, 1044260, 1044265, 1044270, 1044275, 1044280, 1044285, 1044290, 1044295, 1044300, 1044305, 1044310, 1044315, 1044320, 1142240, 1142245, 1142250, 1142255, 1142260, 1142265, 1142270, 1142275, 1142280, 1142285, 1142290, 1142295, 1142300, 1142305, 1144255, 1144260, 1144265, 1144270, 1144275, 1144280, 1144285, 1144290, 1144295, 1144300, 1144305, 1144310, 1144315, 1144320, 1342240, 1342245, 1342250, 1342255, 1342260, 1342265, 1342270, 1342275, 1342280, 1342285, 1342290, 1342295, 1342300, 1342305, 1344255, 1344260, 1344265, 1344270, 1344275, 1344280, 1344285, 1344290, 1344295, 1344300, 1344305, 1344310, 1344315, 1344320, 1544255, 1544260, 1544265, 1544270, 1544275, 1544280, 1544285, 1544290, 1544295, 1544300, 1544305, 1544310, 1544315, 1544320, 1944255, 1944260, 1944265, 1944270, 1944275, 1944280, 1944285, 1944290, 1944295, 1944300, 1944305, 1944310, 1944315, 1944320, 2042240, 2042245, 2042250, 2042255, 2042260, 2042265, 2042270, 2042275, 2042280, 2042285, 2042290, 2042295, 2042300, 2042305, 2044255, 2044260, 2044265, 2044270, 2044275, 2044280, 2044285, 2044290, 2044295, 2044300, 2044305, 2044310, 2044315, 2044320, 2142240, 2142245, 2142250, 2142255, 2142260, 2142265, 2142270, 2142275, 2142280, 2142285, 2142290, 2142295, 2142300, 2142305, 2144255, 2144260, 2144265, 2144270, 2144275, 2144280, 2144285, 2144290, 2144295, 2144300, 2144305, 2144310, 2144315, 2144320, 2342240, 2342245, 2342250, 2342255, 2342260, 2342265, 2342270, 2342275, 2342280, 2342285, 2342290, 2342295, 2342300, 2342305, 2344255, 2344260, 2344265, 2344270, 2344275, 2344280, 2344285, 2344290, 2344295, 2344300, 2344305, 2344310, 2344315, 2344320, 2544255, 2544260, 2544265, 2544270, 2544275, 2544280, 2544285, 2544290, 2544295, 2544300, 2544305, 2544310, 2544315, 2544320, 2944255, 2944260, 2944265, 2944270, 2944275, 2944280, 2944285, 2944290, 2944295, 2944300, 2944305, 2944310, 2944315, 2944320, 3042240, 3042245, 3042250, 3042255, 3042260, 3042265, 3042270, 3042275, 3042280, 3042285, 3042290, 3042295, 3042300 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3042305, 3044255, 3044260, 3044265, 3044270, 3044275, 3044280, 3044285, 3044290, 3044295, 3044300, 3044305, 3044310, 3044315, 3044320, 3142240, 3142245, 3142250, 3142255, 3142260, 3142265, 3142270, 3142275, 3142280, 3142285, 3142290, 3142295, 3142300, 3142305, 3144255, 3144260, 3144265, 3144270, 3144275, 3144280, 3144285, 3144290, 3144295, 3144300, 3144305, 3144310, 3144315, 3144320, 3342240, 3342245, 3342250, 3342255, 3342260, 3342265, 3342270, 3342275, 3342280, 3342285, 3342290, 3342295, 3342300, 3342305, 3344255, 3344260, 3344265, 3344270, 3344275, 3344280, 3344285, 3344290, 3344295, 3344300, 3344305, 3344310, 3344315, 3344320, 3544255, 3544260, 3544265, 3544270, 3544275, 3544280, 3544285, 3544290, 3544295, 3544300, 3544305, 3544310, 3544315, 3544320, 3944255, 3944260, 3944265, 3944270, 3944275, 3944280, 3944285, 3944290, 3944295, 3944300, 3944305, 3944310, 3944315, 3944320, 4042240, 4042245, 4042250, 4042255, 4042260, 4042265, 4042270, 4042275, 4042280, 4042285, 4042290, 4042295, 4042300, 4042305, 4044255, 4044260, 4044265, 4044270, 4044275, 4044280, 4044285, 4044290, 4044295, 4044300, 4044305, 4044310, 4044315, 4044320, 4142240, 4142245, 4142250, 4142255, 4142260, 4142265, 4142270, 4142275, 4142280, 4142285, 4142290, 4142295, 4142300, 4142305, 4144255, 4144260, 4144265, 4144270, 4144275, 4144280, 4144285, 4144290, 4144295, 4144300, 4144305, 4144310, 4144315, 4144320, 4342240, 4342245, 4342250, 4342255, 4342260, 4342265, 4342270, 4342275, 4342280, 4342285, 4342290, 4342295, 4342300, 4342305, 4344255, 4344260, 4344265, 4344270, 4344275, 4344280, 4344285, 4344290, 4344295, 4344300, 4344305, 4344310, 4344315, 4344320, 4544255, 4544260, 4544265, 4544270, 4544275, 4544280, 4544285, 4544290, 4544295, 4544300, 4544305, 4544310, 4544315, 4544320, 4944255, 4944260, 4944265, 4944270, 4944275, 4944280, 4944285, 4944290, 4944295, 4944300, 4944305, 4944310, 4944315, 4944320, 5042240, 5042245, 5042250, 5042255, 5042260, 5042265, 5042270, 5042275, 5042280, 5042285, 5042290, 5042295, 5042300, 5042305, 5044255, 5044260, 5044265, 5044270, 5044275, 5044280, 5044285, 5044290, 5044295, 5044300, 5044305, 5044310, 5044315, 5044320, 5142240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5142245, 5142250, 5142255, 5142260, 5142265, 5142270, 5142275, 5142280, 5142285, 5142290, 5142295, 5142300, 5142305, 5144255, 5144260, 5144265, 5144270, 5144275, 5144280, 5144285, 5144290, 5144295, 5144300, 5144305, 5144310, 5144315, 5144320, 5342240, 5342245, 5342250, 5342255, 5342260, 5342265, 5342270, 5342275, 5342280, 5342285, 5342290, 5342295, 5342300, 5342305, 5344255, 5344260, 5344265, 5344270, 5344275, 5344280, 5344285, 5344290, 5344295, 5344300, 5344305, 5344310, 5344315, 5344320, 5544255, 5544260, 5544265, 5544270, 5544275, 5544280, 5544285, 5544290, 5544295, 5544300, 5544305, 5544310, 5544315, 5544320, 5944255, 5944260, 5944265, 5944270, 5944275, 5944280, 5944285, 5944290, 5944295, 5944300, 5944305, 5944310, 5944315, 5944320, 6042240, 6042245, 6042250, 6042255, 6042260, 6042265, 6042270, 6042275, 6042280, 6042285, 6042290, 6042295, 6042300, 6042305, 6044255, 6044260, 6044265, 6044270, 6044275, 6044280, 6044285, 6044290, 6044295, 6044300, 6044305, 6044310, 6044315, 6044320, 6144255, 6144260, 6144265, 6144270, 6144275, 6144280, 6144285, 6144290, 6144295, 6144300, 6144305, 6144310, 6144315, 6144320, 6344255, 6344260, 6344265, 6344270, 6344275, 6344280, 6344285, 6344290, 6344295, 6344300, 6344305, 6344310, 6344315, 6344320, 6544255, 6544260, 6544265, 6544270, 6544275, 6544280, 6544285, 6544290, 6544295, 6544300, 6544305, 6544310, 6544315, 6544320, 6944255, 6944260, 6944265, 6944270, 6944275, 6944280, 6944285, 6944290, 6944295, 6944300, 6944305, 6944310, 6944315, 6944320, 7044255, 7044260, 7044265, 7044270, 7044275, 7044280, 7044285, 7044290, 7044295, 7044300, 7044305, 7044310, 7044315, 7044320, 7144255, 7144260, 7144265, 7144270, 7144275, 7144280, 7144285, 7144290, 7144295, 7144300, 7144305, 7144310, 7144315, 7144320, 7344255, 7344260, 7344265, 7344270, 7344275, 7344280, 7344285, 7344290, 7344295, 7344300, 7344305, 7344310, 7344315, 7344320, 7544255, 7544260, 7544265, 7544270, 7544275, 7544280, 7544285, 7544290, 7544295, 7544300, 7544305, 7544310, 7544315, 7544320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440021	},
}					
--중급 강화 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2410, 9410, 16410, 23425, 1042150, 1042155, 1042160, 1042165, 1042170, 1042175, 1042180, 1042185, 1042190, 1042195, 1042200, 1042205, 1042210, 1042215, 1044160, 1044165, 1044170, 1044175, 1044180, 1044185, 1044190, 1044195, 1044200, 1044205, 1044210, 1044215, 1044220, 1044225, 1142150, 1142155, 1142160, 1142165, 1142170, 1142175, 1142180, 1142185, 1142190, 1142195, 1142200, 1142205, 1142210, 1142215, 1144160, 1144165, 1144170, 1144175, 1144180, 1144185, 1144190, 1144195, 1144200, 1144205, 1144210, 1144215, 1144220, 1144225, 1342150, 1342155, 1342160, 1342165, 1342170, 1342175, 1342180, 1342185, 1342190, 1342195, 1342200, 1342205, 1342210, 1342215, 1344160, 1344165, 1344170, 1344175, 1344180, 1344185, 1344190, 1344195, 1344200, 1344205, 1344210, 1344215, 1344220, 1344225, 1544160, 1544165, 1544170, 1544175, 1544180, 1544185, 1544190, 1544195, 1544200, 1544205, 1544210, 1544215, 1544220, 1544225, 1944160, 1944165, 1944170, 1944175, 1944180, 1944185, 1944190, 1944195, 1944200, 1944205, 1944210, 1944215, 1944220, 1944225, 2042150, 2042155, 2042160, 2042165, 2042170, 2042175, 2042180, 2042185, 2042190, 2042195, 2042200, 2042205, 2042210, 2042215, 2044160, 2044165, 2044170, 2044175, 2044180, 2044185, 2044190, 2044195, 2044200, 2044205, 2044210, 2044215, 2044220, 2044225, 2142150, 2142155, 2142160, 2142165, 2142170, 2142175, 2142180, 2142185, 2142190, 2142195, 2142200, 2142205, 2142210, 2142215, 2144160, 2144165, 2144170, 2144175, 2144180, 2144185, 2144190, 2144195, 2144200, 2144205, 2144210, 2144215, 2144220, 2144225, 2342150, 2342155, 2342160, 2342165, 2342170, 2342175, 2342180, 2342185, 2342190, 2342195, 2342200, 2342205, 2342210, 2342215, 2344160, 2344165, 2344170, 2344175, 2344180, 2344185, 2344190, 2344195, 2344200, 2344205, 2344210, 2344215, 2344220, 2344225, 2544160, 2544165, 2544170, 2544175, 2544180, 2544185, 2544190, 2544195, 2544200, 2544205, 2544210, 2544215, 2544220, 2544225, 2944160, 2944165, 2944170, 2944175, 2944180, 2944185, 2944190, 2944195, 2944200, 2944205, 2944210, 2944215, 2944220, 2944225, 3042150, 3042155, 3042160, 3042165, 3042170, 3042175, 3042180, 3042185, 3042190, 3042195, 3042200, 3042205, 3042210 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3042215, 3044160, 3044165, 3044170, 3044175, 3044180, 3044185, 3044190, 3044195, 3044200, 3044205, 3044210, 3044215, 3044220, 3044225, 3142150, 3142155, 3142160, 3142165, 3142170, 3142175, 3142180, 3142185, 3142190, 3142195, 3142200, 3142205, 3142210, 3142215, 3144160, 3144165, 3144170, 3144175, 3144180, 3144185, 3144190, 3144195, 3144200, 3144205, 3144210, 3144215, 3144220, 3144225, 3342150, 3342155, 3342160, 3342165, 3342170, 3342175, 3342180, 3342185, 3342190, 3342195, 3342200, 3342205, 3342210, 3342215, 3344160, 3344165, 3344170, 3344175, 3344180, 3344185, 3344190, 3344195, 3344200, 3344205, 3344210, 3344215, 3344220, 3344225, 3544160, 3544165, 3544170, 3544175, 3544180, 3544185, 3544190, 3544195, 3544200, 3544205, 3544210, 3544215, 3544220, 3544225, 3944160, 3944165, 3944170, 3944175, 3944180, 3944185, 3944190, 3944195, 3944200, 3944205, 3944210, 3944215, 3944220, 3944225, 4042150, 4042155, 4042160, 4042165, 4042170, 4042175, 4042180, 4042185, 4042190, 4042195, 4042200, 4042205, 4042210, 4042215, 4044160, 4044165, 4044170, 4044175, 4044180, 4044185, 4044190, 4044195, 4044200, 4044205, 4044210, 4044215, 4044220, 4044225, 4142150, 4142155, 4142160, 4142165, 4142170, 4142175, 4142180, 4142185, 4142190, 4142195, 4142200, 4142205, 4142210, 4142215, 4144160, 4144165, 4144170, 4144175, 4144180, 4144185, 4144190, 4144195, 4144200, 4144205, 4144210, 4144215, 4144220, 4144225, 4342150, 4342155, 4342160, 4342165, 4342170, 4342175, 4342180, 4342185, 4342190, 4342195, 4342200, 4342205, 4342210, 4342215, 4344160, 4344165, 4344170, 4344175, 4344180, 4344185, 4344190, 4344195, 4344200, 4344205, 4344210, 4344215, 4344220, 4344225, 4544160, 4544165, 4544170, 4544175, 4544180, 4544185, 4544190, 4544195, 4544200, 4544205, 4544210, 4544215, 4544220, 4544225, 4944160, 4944165, 4944170, 4944175, 4944180, 4944185, 4944190, 4944195, 4944200, 4944205, 4944210, 4944215, 4944220, 4944225, 5042150, 5042155, 5042160, 5042165, 5042170, 5042175, 5042180, 5042185, 5042190, 5042195, 5042200, 5042205, 5042210, 5042215, 5044160, 5044165, 5044170, 5044175, 5044180, 5044185, 5044190, 5044195, 5044200, 5044205, 5044210, 5044215, 5044220, 5044225, 5142150 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5142155, 5142160, 5142165, 5142170, 5142175, 5142180, 5142185, 5142190, 5142195, 5142200, 5142205, 5142210, 5142215, 5144160, 5144165, 5144170, 5144175, 5144180, 5144185, 5144190, 5144195, 5144200, 5144205, 5144210, 5144215, 5144220, 5144225, 5342150, 5342155, 5342160, 5342165, 5342170, 5342175, 5342180, 5342185, 5342190, 5342195, 5342200, 5342205, 5342210, 5342215, 5344160, 5344165, 5344170, 5344175, 5344180, 5344185, 5344190, 5344195, 5344200, 5344205, 5344210, 5344215, 5344220, 5344225, 5544160, 5544165, 5544170, 5544175, 5544180, 5544185, 5544190, 5544195, 5544200, 5544205, 5544210, 5544215, 5544220, 5544225, 5944160, 5944165, 5944170, 5944175, 5944180, 5944185, 5944190, 5944195, 5944200, 5944205, 5944210, 5944215, 5944220, 5944225, 6042150, 6042155, 6042160, 6042165, 6042170, 6042175, 6042180, 6042185, 6042190, 6042195, 6042200, 6042205, 6042210, 6042215, 6044160, 6044165, 6044170, 6044175, 6044180, 6044185, 6044190, 6044195, 6044200, 6044205, 6044210, 6044215, 6044220, 6044225, 6144160, 6144165, 6144170, 6144175, 6144180, 6144185, 6144190, 6144195, 6144200, 6144205, 6144210, 6144215, 6144220, 6144225, 6344160, 6344165, 6344170, 6344175, 6344180, 6344185, 6344190, 6344195, 6344200, 6344205, 6344210, 6344215, 6344220, 6344225, 6544160, 6544165, 6544170, 6544175, 6544180, 6544185, 6544190, 6544195, 6544200, 6544205, 6544210, 6544215, 6544220, 6544225, 6944160, 6944165, 6944170, 6944175, 6944180, 6944185, 6944190, 6944195, 6944200, 6944205, 6944210, 6944215, 6944220, 6944225, 7044160, 7044165, 7044170, 7044175, 7044180, 7044185, 7044190, 7044195, 7044200, 7044205, 7044210, 7044215, 7044220, 7044225, 7144160, 7144165, 7144170, 7144175, 7144180, 7144185, 7144190, 7144195, 7144200, 7144205, 7144210, 7144215, 7144220, 7144225, 7344160, 7344165, 7344170, 7344175, 7344180, 7344185, 7344190, 7344195, 7344200, 7344205, 7344210, 7344215, 7344220, 7344225, 7544160, 7544165, 7544170, 7544175, 7544180, 7544185, 7544190, 7544195, 7544200, 7544205, 7544210, 7544215, 7544220, 7544225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440011	},
}					
--상급 강화 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1435, 8415, 15415, 22415, 1042130, 1042135, 1044135, 1044140, 1142130, 1142135, 1144135, 1144140, 1342130, 1342135, 1344135, 1344140, 1544135, 1544140, 1944135, 1944140, 2042130, 2042135, 2044135, 2044140, 2142130, 2142135, 2144135, 2144140, 2342130, 2342135, 2344135, 2344140, 2544135, 2544140, 2944135, 2944140, 3042130, 3042135, 3044135, 3044140, 3142130, 3142135, 3144135, 3144140, 3342130, 3342135, 3344135, 3344140, 3544135, 3544140, 3944135, 3944140, 4042130, 4042135, 4044135, 4044140, 4142130, 4142135, 4144135, 4144140, 4342130, 4342135, 4344135, 4344140, 4544135, 4544140, 4944135, 4944140, 5042130, 5042135, 5044135, 5044140, 5142130, 5142135, 5144135, 5144140, 5342130, 5342135, 5344135, 5344140, 5544135, 5544140, 5944135, 5944140, 6042130, 6042135, 6044135, 6044140, 6144135, 6144140, 6344135, 6344140, 6544135, 6544140, 6944135, 6944140, 7044135, 7044140, 7144135, 7144140, 7344135, 7344140, 7544135, 7544140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440002	},
}					
--상급 강화 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4405, 11405, 18405, 25405, 1042405, 1042410, 1044425, 1044430, 1142405, 1142410, 1144425, 1144430, 1342405, 1342410, 1344425, 1344430, 1544425, 1544430, 1944425, 1944430, 2042405, 2042410, 2044425, 2044430, 2142405, 2142410, 2144425, 2144430, 2342405, 2342410, 2344425, 2344430, 2544425, 2544430, 2944425, 2944430, 3042405, 3042410, 3044425, 3044430, 3142405, 3142410, 3144425, 3144430, 3342405, 3342410, 3344425, 3344430, 3544425, 3544430, 3944425, 3944430, 4042405, 4042410, 4044425, 4044430, 4142405, 4142410, 4144425, 4144430, 4342405, 4342410, 4344425, 4344430, 4544425, 4544430, 4944425, 4944430, 5042405, 5042410, 5044425, 5044430, 5142405, 5142410, 5144425, 5144430, 5342405, 5342410, 5344425, 5344430, 5544425, 5544430, 5944425, 5944430, 6042405, 6042410, 6044425, 6044430, 6144425, 6144430, 6344425, 6344430, 6544425, 6544430, 6944425, 6944430, 7044425, 7044430, 7144425, 7144430, 7344425, 7344430, 7544425, 7544430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440032	},
}					
--상급 강화 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3430, 10405, 17405, 24405, 1042310, 1042315, 1044325, 1044330, 1142310, 1142315, 1144325, 1144330, 1342310, 1342315, 1344325, 1344330, 1544325, 1544330, 1944325, 1944330, 2042310, 2042315, 2044325, 2044330, 2142310, 2142315, 2144325, 2144330, 2342310, 2342315, 2344325, 2344330, 2544325, 2544330, 2944325, 2944330, 3042310, 3042315, 3044325, 3044330, 3142310, 3142315, 3144325, 3144330, 3342310, 3342315, 3344325, 3344330, 3544325, 3544330, 3944325, 3944330, 4042310, 4042315, 4044325, 4044330, 4142310, 4142315, 4144325, 4144330, 4342310, 4342315, 4344325, 4344330, 4544325, 4544330, 4944325, 4944330, 5042310, 5042315, 5044325, 5044330, 5142310, 5142315, 5144325, 5144330, 5342310, 5342315, 5344325, 5344330, 5544325, 5544330, 5944325, 5944330, 6042310, 6042315, 6044325, 6044330, 6144325, 6144330, 6344325, 6344330, 6544325, 6544330, 6944325, 6944330, 7044325, 7044330, 7144325, 7144330, 7344325, 7344330, 7544325, 7544330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440022	},
}					
--상급 강화 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2415, 9415, 16415, 23435, 1042220, 1042225, 1044230, 1044235, 1142220, 1142225, 1144230, 1144235, 1342220, 1342225, 1344230, 1344235, 1544230, 1544235, 1944230, 1944235, 2042220, 2042225, 2044230, 2044235, 2142220, 2142225, 2144230, 2144235, 2342220, 2342225, 2344230, 2344235, 2544230, 2544235, 2944230, 2944235, 3042220, 3042225, 3044230, 3044235, 3142220, 3142225, 3144230, 3144235, 3342220, 3342225, 3344230, 3344235, 3544230, 3544235, 3944230, 3944235, 4042220, 4042225, 4044230, 4044235, 4142220, 4142225, 4144230, 4144235, 4342220, 4342225, 4344230, 4344235, 4544230, 4544235, 4944230, 4944235, 5042220, 5042225, 5044230, 5044235, 5142220, 5142225, 5144230, 5144235, 5342220, 5342225, 5344230, 5344235, 5544230, 5544235, 5944230, 5944235, 6042220, 6042225, 6044230, 6044235, 6144230, 6144235, 6344230, 6344235, 6544230, 6544235, 6944230, 6944235, 7044230, 7044235, 7144230, 7144235, 7344230, 7344235, 7544230, 7544235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440012	},
}					
--최상급 강화 전투 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1445, 8420, 15420, 22420, 1044145, 1144145, 1344145, 1544145, 1944145, 2044145, 2144145, 2344145, 2544145, 2944145, 3044145, 3144145, 3344145, 3544145, 3944145, 4044145, 4144145, 4344145, 4544145, 4944145, 5044145, 5144145, 5344145, 5544145, 5944145, 6044145, 6144145, 6344145, 6544145, 6944145, 7044145, 7144145, 7344145, 7544145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440003	},
}					
--최상급 강화 전투 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044435, 1144435, 1344435, 1544435, 1944435, 2044435, 2144435, 2344435, 2544435, 2944435, 3044435, 3144435, 3344435, 3544435, 3944435, 4044435, 4144435, 4344435, 4544435, 4944435, 5044435, 5144435, 5344435, 5544435, 5944435, 6044435, 6144435, 6344435, 6544435, 6944435, 7044435, 7144435, 7344435, 7544435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440033	},
}					
--최상급 강화 전투 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1044335, 1144335, 1344335, 1544335, 1944335, 2044335, 2144335, 2344335, 2544335, 2944335, 3044335, 3144335, 3344335, 3544335, 3944335, 4044335, 4144335, 4344335, 4544335, 4944335, 5044335, 5144335, 5344335, 5544335, 5944335, 6044335, 6144335, 6344335, 6544335, 6944335, 7044335, 7144335, 7344335, 7544335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440023	},
}					
--최상급 강화 전투 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2420, 9420, 16420, 23445, 1044240, 1144240, 1344240, 1544240, 1944240, 2044240, 2144240, 2344240, 2544240, 2944240, 3044240, 3144240, 3344240, 3544240, 3944240, 4044240, 4144240, 4344240, 4544240, 4944240, 5044240, 5144240, 5344240, 5544240, 5944240, 6044240, 6144240, 6344240, 6544240, 6944240, 7044240, 7144240, 7344240, 7544240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10440013	},
}					
--벨더 투사 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046050, 1046055, 1146050, 1146055, 1148055, 1148060, 1346050, 1346055, 1348055, 1348060, 1548055, 1548060, 1948055, 1948060, 2046050, 2046055, 2146050, 2146055, 2148055, 2148060, 2346050, 2346055, 2348055, 2348060, 2548055, 2548060, 2948055, 2948060, 3046050, 3046055, 3146050, 3146055, 3148055, 3148060, 3346050, 3346055, 3348055, 3348060, 3548055, 3548060, 3948055, 3948060, 4046050, 4046055, 4146050, 4146055, 4148055, 4148060, 4346050, 4346055, 4348055, 4348060, 4548055, 4548060, 4948055, 4948060, 5046050, 5046055, 5146050, 5146055, 5148055, 5148060, 5346050, 5346055, 5348055, 5348060, 5548055, 5548060, 5948055, 5948060, 6046050, 6046055, 6148055, 6148060, 6348055, 6348060, 6548055, 6548060, 6948055, 6948060, 7048050, 7048055, 7148050, 7148055, 7348050, 7348055, 7548050, 7548055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480000	},
}					
--벨더 투사 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046320, 1046325, 1146320, 1146325, 1148340, 1148345, 1346320, 1346325, 1348340, 1348345, 1548340, 1548345, 1948340, 1948345, 2046320, 2046325, 2146320, 2146325, 2148340, 2148345, 2346320, 2346325, 2348340, 2348345, 2548340, 2548345, 2948340, 2948345, 3046320, 3046325, 3146320, 3146325, 3148340, 3148345, 3346320, 3346325, 3348340, 3348345, 3548340, 3548345, 3948340, 3948345, 4046320, 4046325, 4146320, 4146325, 4148340, 4148345, 4346320, 4346325, 4348340, 4348345, 4548340, 4548345, 4948340, 4948345, 5046320, 5046325, 5146320, 5146325, 5148340, 5148345, 5346320, 5346325, 5348340, 5348345, 5548340, 5548345, 5948340, 5948345, 6046320, 6046325, 6148340, 6148345, 6348340, 6348345, 6548340, 6548345, 6948340, 6948345, 7048320, 7048325, 7148320, 7148325, 7348320, 7348325, 7548320, 7548325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480030	},
}					
--벨더 투사 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046230, 1046235, 1146230, 1146235, 1148245, 1148250, 1346230, 1346235, 1348245, 1348250, 1548245, 1548250, 1948245, 1948250, 2046230, 2046235, 2146230, 2146235, 2148245, 2148250, 2346230, 2346235, 2348245, 2348250, 2548245, 2548250, 2948245, 2948250, 3046230, 3046235, 3146230, 3146235, 3148245, 3148250, 3346230, 3346235, 3348245, 3348250, 3548245, 3548250, 3948245, 3948250, 4046230, 4046235, 4146230, 4146235, 4148245, 4148250, 4346230, 4346235, 4348245, 4348250, 4548245, 4548250, 4948245, 4948250, 5046230, 5046235, 5146230, 5146235, 5148245, 5148250, 5346230, 5346235, 5348245, 5348250, 5548245, 5548250, 5948245, 5948250, 6046230, 6046235, 6148245, 6148250, 6348245, 6348250, 6548245, 6548250, 6948245, 6948250, 7048230, 7048235, 7148230, 7148235, 7348230, 7348235, 7548230, 7548235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480020	},
}					
--벨더 투사 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046140, 1046145, 1146140, 1146145, 1148150, 1148155, 1346140, 1346145, 1348150, 1348155, 1548150, 1548155, 1948150, 1948155, 2046140, 2046145, 2146140, 2146145, 2148150, 2148155, 2346140, 2346145, 2348150, 2348155, 2548150, 2548155, 2948150, 2948155, 3046140, 3046145, 3146140, 3146145, 3148150, 3148155, 3346140, 3346145, 3348150, 3348155, 3548150, 3548155, 3948150, 3948155, 4046140, 4046145, 4146140, 4146145, 4148150, 4148155, 4346140, 4346145, 4348150, 4348155, 4548150, 4548155, 4948150, 4948155, 5046140, 5046145, 5146140, 5146145, 5148150, 5148155, 5346140, 5346145, 5348150, 5348155, 5548150, 5548155, 5948150, 5948155, 6046140, 6046145, 6148150, 6148155, 6348150, 6348155, 6548150, 6548155, 6948150, 6948155, 7048140, 7048145, 7148140, 7148145, 7348140, 7348145, 7548140, 7548145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480010	},
}					
--중급 벨더 투사 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046060, 1046065, 1046070, 1046075, 1046080, 1046085, 1046090, 1046095, 1046100, 1046105, 1046110, 1046115, 1046120, 1046125, 1146060, 1146065, 1146070, 1146075, 1146080, 1146085, 1146090, 1146095, 1146100, 1146105, 1146110, 1146115, 1146120, 1146125, 1148065, 1148070, 1148075, 1148080, 1148085, 1148090, 1148095, 1148100, 1148105, 1148110, 1148115, 1148120, 1148125, 1148130, 1346060, 1346065, 1346070, 1346075, 1346080, 1346085, 1346090, 1346095, 1346100, 1346105, 1346110, 1346115, 1346120, 1346125, 1348065, 1348070, 1348075, 1348080, 1348085, 1348090, 1348095, 1348100, 1348105, 1348110, 1348115, 1348120, 1348125, 1348130, 1548065, 1548070, 1548075, 1548080, 1548085, 1548090, 1548095, 1548100, 1548105, 1548110, 1548115, 1548120, 1548125, 1548130, 1948065, 1948070, 1948075, 1948080, 1948085, 1948090, 1948095, 1948100, 1948105, 1948110, 1948115, 1948120, 1948125, 1948130, 2046060, 2046065, 2046070, 2046075, 2046080, 2046085, 2046090, 2046095, 2046100, 2046105, 2046110, 2046115, 2046120, 2046125, 2146060, 2146065, 2146070, 2146075, 2146080, 2146085, 2146090, 2146095, 2146100, 2146105, 2146110, 2146115, 2146120, 2146125, 2148065, 2148070, 2148075, 2148080, 2148085, 2148090, 2148095, 2148100, 2148105, 2148110, 2148115, 2148120, 2148125, 2148130, 2346060, 2346065, 2346070, 2346075, 2346080, 2346085, 2346090, 2346095, 2346100, 2346105, 2346110, 2346115, 2346120, 2346125, 2348065, 2348070, 2348075, 2348080, 2348085, 2348090, 2348095, 2348100, 2348105, 2348110, 2348115, 2348120, 2348125, 2348130, 2548065, 2548070, 2548075, 2548080, 2548085, 2548090, 2548095, 2548100, 2548105, 2548110, 2548115, 2548120, 2548125, 2548130, 2948065, 2948070, 2948075, 2948080, 2948085, 2948090, 2948095, 2948100, 2948105, 2948110, 2948115, 2948120, 2948125, 2948130, 3046060, 3046065, 3046070, 3046075, 3046080, 3046085, 3046090, 3046095, 3046100, 3046105, 3046110, 3046115, 3046120, 3046125, 3146060, 3146065, 3146070, 3146075, 3146080, 3146085, 3146090, 3146095, 3146100, 3146105, 3146110, 3146115, 3146120, 3146125, 3148065, 3148070, 3148075, 3148080, 3148085, 3148090, 3148095, 3148100, 3148105, 3148110, 3148115, 3148120, 3148125, 3148130, 3346060, 3346065, 3346070 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3346075, 3346080, 3346085, 3346090, 3346095, 3346100, 3346105, 3346110, 3346115, 3346120, 3346125, 3348065, 3348070, 3348075, 3348080, 3348085, 3348090, 3348095, 3348100, 3348105, 3348110, 3348115, 3348120, 3348125, 3348130, 3548065, 3548070, 3548075, 3548080, 3548085, 3548090, 3548095, 3548100, 3548105, 3548110, 3548115, 3548120, 3548125, 3548130, 3948065, 3948070, 3948075, 3948080, 3948085, 3948090, 3948095, 3948100, 3948105, 3948110, 3948115, 3948120, 3948125, 3948130, 4046060, 4046065, 4046070, 4046075, 4046080, 4046085, 4046090, 4046095, 4046100, 4046105, 4046110, 4046115, 4046120, 4046125, 4146060, 4146065, 4146070, 4146075, 4146080, 4146085, 4146090, 4146095, 4146100, 4146105, 4146110, 4146115, 4146120, 4146125, 4148065, 4148070, 4148075, 4148080, 4148085, 4148090, 4148095, 4148100, 4148105, 4148110, 4148115, 4148120, 4148125, 4148130, 4346060, 4346065, 4346070, 4346075, 4346080, 4346085, 4346090, 4346095, 4346100, 4346105, 4346110, 4346115, 4346120, 4346125, 4348065, 4348070, 4348075, 4348080, 4348085, 4348090, 4348095, 4348100, 4348105, 4348110, 4348115, 4348120, 4348125, 4348130, 4548065, 4548070, 4548075, 4548080, 4548085, 4548090, 4548095, 4548100, 4548105, 4548110, 4548115, 4548120, 4548125, 4548130, 4948065, 4948070, 4948075, 4948080, 4948085, 4948090, 4948095, 4948100, 4948105, 4948110, 4948115, 4948120, 4948125, 4948130, 5046060, 5046065, 5046070, 5046075, 5046080, 5046085, 5046090, 5046095, 5046100, 5046105, 5046110, 5046115, 5046120, 5046125, 5146060, 5146065, 5146070, 5146075, 5146080, 5146085, 5146090, 5146095, 5146100, 5146105, 5146110, 5146115, 5146120, 5146125, 5148065, 5148070, 5148075, 5148080, 5148085, 5148090, 5148095, 5148100, 5148105, 5148110, 5148115, 5148120, 5148125, 5148130, 5346060, 5346065, 5346070, 5346075, 5346080, 5346085, 5346090, 5346095, 5346100, 5346105, 5346110, 5346115, 5346120, 5346125, 5348065, 5348070, 5348075, 5348080, 5348085, 5348090, 5348095, 5348100, 5348105, 5348110, 5348115, 5348120, 5348125, 5348130, 5548065, 5548070, 5548075, 5548080, 5548085, 5548090, 5548095, 5548100, 5548105, 5548110, 5548115, 5548120, 5548125, 5548130, 5948065, 5948070, 5948075, 5948080, 5948085 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5948090, 5948095, 5948100, 5948105, 5948110, 5948115, 5948120, 5948125, 5948130, 6046060, 6046065, 6046070, 6046075, 6046080, 6046085, 6046090, 6046095, 6046100, 6046105, 6046110, 6046115, 6046120, 6046125, 6148065, 6148070, 6148075, 6148080, 6148085, 6148090, 6148095, 6148100, 6148105, 6148110, 6148115, 6148120, 6148125, 6148130, 6348065, 6348070, 6348075, 6348080, 6348085, 6348090, 6348095, 6348100, 6348105, 6348110, 6348115, 6348120, 6348125, 6348130, 6548065, 6548070, 6548075, 6548080, 6548085, 6548090, 6548095, 6548100, 6548105, 6548110, 6548115, 6548120, 6548125, 6548130, 6948065, 6948070, 6948075, 6948080, 6948085, 6948090, 6948095, 6948100, 6948105, 6948110, 6948115, 6948120, 6948125, 6948130, 7046095, 7048060, 7048065, 7048070, 7048075, 7048080, 7048085, 7048090, 7048095, 7048100, 7048105, 7048110, 7048115, 7048120, 7048125, 7148060, 7148065, 7148070, 7148075, 7148080, 7148085, 7148090, 7148095, 7148100, 7148105, 7148110, 7148115, 7148120, 7148125, 7348060, 7348065, 7348070, 7348075, 7348080, 7348085, 7348090, 7348095, 7348100, 7348105, 7348110, 7348115, 7348120, 7348125, 7548060, 7548065, 7548070, 7548075, 7548080, 7548085, 7548090, 7548095, 7548100, 7548105, 7548110, 7548115, 7548120, 7548125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480001	},
}					
--중급 벨더 투사 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046330, 1046335, 1046340, 1046345, 1046350, 1046355, 1046360, 1046365, 1046370, 1046375, 1046380, 1046385, 1046390, 1046395, 1046400, 1146330, 1146335, 1146340, 1146345, 1146350, 1146355, 1146360, 1146365, 1146370, 1146375, 1146380, 1146385, 1146390, 1146395, 1146400, 1148350, 1148355, 1148360, 1148365, 1148370, 1148375, 1148380, 1148385, 1148390, 1148395, 1148400, 1148405, 1148410, 1148415, 1148420, 1346330, 1346335, 1346340, 1346345, 1346350, 1346355, 1346360, 1346365, 1346370, 1346375, 1346380, 1346385, 1346390, 1346395, 1346400, 1348350, 1348355, 1348360, 1348365, 1348370, 1348375, 1348380, 1348385, 1348390, 1348395, 1348400, 1348405, 1348410, 1348415, 1348420, 1548350, 1548355, 1548360, 1548365, 1548370, 1548375, 1548380, 1548385, 1548390, 1548395, 1548400, 1548405, 1548410, 1548415, 1548420, 1948350, 1948355, 1948360, 1948365, 1948370, 1948375, 1948380, 1948385, 1948390, 1948395, 1948400, 1948405, 1948410, 1948415, 1948420, 2046330, 2046335, 2046340, 2046345, 2046350, 2046355, 2046360, 2046365, 2046370, 2046375, 2046380, 2046385, 2046390, 2046395, 2046400, 2146330, 2146335, 2146340, 2146345, 2146350, 2146355, 2146360, 2146365, 2146370, 2146375, 2146380, 2146385, 2146390, 2146395, 2146400, 2148350, 2148355, 2148360, 2148365, 2148370, 2148375, 2148380, 2148385, 2148390, 2148395, 2148400, 2148405, 2148410, 2148415, 2148420, 2346330, 2346335, 2346340, 2346345, 2346350, 2346355, 2346360, 2346365, 2346370, 2346375, 2346380, 2346385, 2346390, 2346395, 2346400, 2348350, 2348355, 2348360, 2348365, 2348370, 2348375, 2348380, 2348385, 2348390, 2348395, 2348400, 2348405, 2348410, 2348415, 2348420, 2548350, 2548355, 2548360, 2548365, 2548370, 2548375, 2548380, 2548385, 2548390, 2548395, 2548400, 2548405, 2548410, 2548415, 2548420, 2948350, 2948355, 2948360, 2948365, 2948370, 2948375, 2948380, 2948385, 2948390, 2948395, 2948400, 2948405, 2948410, 2948415, 2948420, 3046330, 3046335, 3046340, 3046345, 3046350, 3046355, 3046360, 3046365, 3046370, 3046375, 3046380, 3046385, 3046390, 3046395, 3046400, 3146330, 3146335, 3146340, 3146345, 3146350, 3146355, 3146360, 3146365, 3146370, 3146375, 3146380, 3146385, 3146390, 3146395, 3146400, 3148350 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3148355, 3148360, 3148365, 3148370, 3148375, 3148380, 3148385, 3148390, 3148395, 3148400, 3148405, 3148410, 3148415, 3148420, 3346330, 3346335, 3346340, 3346345, 3346350, 3346355, 3346360, 3346365, 3346370, 3346375, 3346380, 3346385, 3346390, 3346395, 3346400, 3348350, 3348355, 3348360, 3348365, 3348370, 3348375, 3348380, 3348385, 3348390, 3348395, 3348400, 3348405, 3348410, 3348415, 3348420, 3548350, 3548355, 3548360, 3548365, 3548370, 3548375, 3548380, 3548385, 3548390, 3548395, 3548400, 3548405, 3548410, 3548415, 3548420, 3948350, 3948355, 3948360, 3948365, 3948370, 3948375, 3948380, 3948385, 3948390, 3948395, 3948400, 3948405, 3948410, 3948415, 3948420, 4046330, 4046335, 4046340, 4046345, 4046350, 4046355, 4046360, 4046365, 4046370, 4046375, 4046380, 4046385, 4046390, 4046395, 4046400, 4146330, 4146335, 4146340, 4146345, 4146350, 4146355, 4146360, 4146365, 4146370, 4146375, 4146380, 4146385, 4146390, 4146395, 4146400, 4148350, 4148355, 4148360, 4148365, 4148370, 4148375, 4148380, 4148385, 4148390, 4148395, 4148400, 4148405, 4148410, 4148415, 4148420, 4346330, 4346335, 4346340, 4346345, 4346350, 4346355, 4346360, 4346365, 4346370, 4346375, 4346380, 4346385, 4346390, 4346395, 4346400, 4348350, 4348355, 4348360, 4348365, 4348370, 4348375, 4348380, 4348385, 4348390, 4348395, 4348400, 4348405, 4348410, 4348415, 4348420, 4548350, 4548355, 4548360, 4548365, 4548370, 4548375, 4548380, 4548385, 4548390, 4548395, 4548400, 4548405, 4548410, 4548415, 4548420, 4948350, 4948355, 4948360, 4948365, 4948370, 4948375, 4948380, 4948385, 4948390, 4948395, 4948400, 4948405, 4948410, 4948415, 4948420, 5046330, 5046335, 5046340, 5046345, 5046350, 5046355, 5046360, 5046365, 5046370, 5046375, 5046380, 5046385, 5046390, 5046395, 5046400, 5146330, 5146335, 5146340, 5146345, 5146350, 5146355, 5146360, 5146365, 5146370, 5146375, 5146380, 5146385, 5146390, 5146395, 5146400, 5148350, 5148355, 5148360, 5148365, 5148370, 5148375, 5148380, 5148385, 5148390, 5148395, 5148400, 5148405, 5148410, 5148415, 5148420, 5346330, 5346335, 5346340, 5346345, 5346350, 5346355, 5346360, 5346365, 5346370, 5346375, 5346380, 5346385, 5346390, 5346395, 5346400, 5348350 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5348355, 5348360, 5348365, 5348370, 5348375, 5348380, 5348385, 5348390, 5348395, 5348400, 5348405, 5348410, 5348415, 5348420, 5548350, 5548355, 5548360, 5548365, 5548370, 5548375, 5548380, 5548385, 5548390, 5548395, 5548400, 5548405, 5548410, 5548415, 5548420, 5948350, 5948355, 5948360, 5948365, 5948370, 5948375, 5948380, 5948385, 5948390, 5948395, 5948400, 5948405, 5948410, 5948415, 5948420, 6046330, 6046335, 6046340, 6046345, 6046350, 6046355, 6046360, 6046365, 6046370, 6046375, 6046380, 6046385, 6046390, 6046395, 6046400, 6148350, 6148355, 6148360, 6148365, 6148370, 6148375, 6148380, 6148385, 6148390, 6148395, 6148400, 6148405, 6148410, 6148415, 6148420, 6348350, 6348355, 6348360, 6348365, 6348370, 6348375, 6348380, 6348385, 6348390, 6348395, 6348400, 6348405, 6348410, 6348415, 6348420, 6548350, 6548355, 6548360, 6548365, 6548370, 6548375, 6548380, 6548385, 6548390, 6548395, 6548400, 6548405, 6548410, 6548415, 6548420, 6948350, 6948355, 6948360, 6948365, 6948370, 6948375, 6948380, 6948385, 6948390, 6948395, 6948400, 6948405, 6948410, 6948415, 6948420, 7046370, 7048330, 7048335, 7048340, 7048345, 7048350, 7048355, 7048360, 7048365, 7048370, 7048375, 7048380, 7048385, 7048390, 7048395, 7048400, 7148330, 7148335, 7148340, 7148345, 7148350, 7148355, 7148360, 7148365, 7148370, 7148375, 7148380, 7148385, 7148390, 7148395, 7148400, 7348330, 7348335, 7348340, 7348345, 7348350, 7348355, 7348360, 7348365, 7348370, 7348375, 7348380, 7348385, 7348390, 7348395, 7348400, 7548330, 7548335, 7548340, 7548345, 7548350, 7548355, 7548360, 7548365, 7548370, 7548375, 7548380, 7548385, 7548390, 7548395, 7548400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480031	},
}					
--중급 벨더 투사 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046240, 1046245, 1046250, 1046255, 1046260, 1046265, 1046270, 1046275, 1046280, 1046285, 1046290, 1046295, 1046300, 1046305, 1146240, 1146245, 1146250, 1146255, 1146260, 1146265, 1146270, 1146275, 1146280, 1146285, 1146290, 1146295, 1146300, 1146305, 1148255, 1148260, 1148265, 1148270, 1148275, 1148280, 1148285, 1148290, 1148295, 1148300, 1148305, 1148310, 1148315, 1148320, 1346240, 1346245, 1346250, 1346255, 1346260, 1346265, 1346270, 1346275, 1346280, 1346285, 1346290, 1346295, 1346300, 1346305, 1348255, 1348260, 1348265, 1348270, 1348275, 1348280, 1348285, 1348290, 1348295, 1348300, 1348305, 1348310, 1348315, 1348320, 1548255, 1548260, 1548265, 1548270, 1548275, 1548280, 1548285, 1548290, 1548295, 1548300, 1548305, 1548310, 1548315, 1548320, 1948255, 1948260, 1948265, 1948270, 1948275, 1948280, 1948285, 1948290, 1948295, 1948300, 1948305, 1948310, 1948315, 1948320, 2046240, 2046245, 2046250, 2046255, 2046260, 2046265, 2046270, 2046275, 2046280, 2046285, 2046290, 2046295, 2046300, 2046305, 2146240, 2146245, 2146250, 2146255, 2146260, 2146265, 2146270, 2146275, 2146280, 2146285, 2146290, 2146295, 2146300, 2146305, 2148255, 2148260, 2148265, 2148270, 2148275, 2148280, 2148285, 2148290, 2148295, 2148300, 2148305, 2148310, 2148315, 2148320, 2346240, 2346245, 2346250, 2346255, 2346260, 2346265, 2346270, 2346275, 2346280, 2346285, 2346290, 2346295, 2346300, 2346305, 2348255, 2348260, 2348265, 2348270, 2348275, 2348280, 2348285, 2348290, 2348295, 2348300, 2348305, 2348310, 2348315, 2348320, 2548255, 2548260, 2548265, 2548270, 2548275, 2548280, 2548285, 2548290, 2548295, 2548300, 2548305, 2548310, 2548315, 2548320, 2948255, 2948260, 2948265, 2948270, 2948275, 2948280, 2948285, 2948290, 2948295, 2948300, 2948305, 2948310, 2948315, 2948320, 3046240, 3046245, 3046250, 3046255, 3046260, 3046265, 3046270, 3046275, 3046280, 3046285, 3046290, 3046295, 3046300, 3046305, 3146240, 3146245, 3146250, 3146255, 3146260, 3146265, 3146270, 3146275, 3146280, 3146285, 3146290, 3146295, 3146300, 3146305, 3148255, 3148260, 3148265, 3148270, 3148275, 3148280, 3148285, 3148290, 3148295, 3148300, 3148305, 3148310, 3148315, 3148320, 3346240, 3346245, 3346250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3346255, 3346260, 3346265, 3346270, 3346275, 3346280, 3346285, 3346290, 3346295, 3346300, 3346305, 3348255, 3348260, 3348265, 3348270, 3348275, 3348280, 3348285, 3348290, 3348295, 3348300, 3348305, 3348310, 3348315, 3348320, 3548255, 3548260, 3548265, 3548270, 3548275, 3548280, 3548285, 3548290, 3548295, 3548300, 3548305, 3548310, 3548315, 3548320, 3948255, 3948260, 3948265, 3948270, 3948275, 3948280, 3948285, 3948290, 3948295, 3948300, 3948305, 3948310, 3948315, 3948320, 4046240, 4046245, 4046250, 4046255, 4046260, 4046265, 4046270, 4046275, 4046280, 4046285, 4046290, 4046295, 4046300, 4046305, 4146240, 4146245, 4146250, 4146255, 4146260, 4146265, 4146270, 4146275, 4146280, 4146285, 4146290, 4146295, 4146300, 4146305, 4148255, 4148260, 4148265, 4148270, 4148275, 4148280, 4148285, 4148290, 4148295, 4148300, 4148305, 4148310, 4148315, 4148320, 4346240, 4346245, 4346250, 4346255, 4346260, 4346265, 4346270, 4346275, 4346280, 4346285, 4346290, 4346295, 4346300, 4346305, 4348255, 4348260, 4348265, 4348270, 4348275, 4348280, 4348285, 4348290, 4348295, 4348300, 4348305, 4348310, 4348315, 4348320, 4548255, 4548260, 4548265, 4548270, 4548275, 4548280, 4548285, 4548290, 4548295, 4548300, 4548305, 4548310, 4548315, 4548320, 4948255, 4948260, 4948265, 4948270, 4948275, 4948280, 4948285, 4948290, 4948295, 4948300, 4948305, 4948310, 4948315, 4948320, 5046240, 5046245, 5046250, 5046255, 5046260, 5046265, 5046270, 5046275, 5046280, 5046285, 5046290, 5046295, 5046300, 5046305, 5146240, 5146245, 5146250, 5146255, 5146260, 5146265, 5146270, 5146275, 5146280, 5146285, 5146290, 5146295, 5146300, 5146305, 5148255, 5148260, 5148265, 5148270, 5148275, 5148280, 5148285, 5148290, 5148295, 5148300, 5148305, 5148310, 5148315, 5148320, 5346240, 5346245, 5346250, 5346255, 5346260, 5346265, 5346270, 5346275, 5346280, 5346285, 5346290, 5346295, 5346300, 5346305, 5348255, 5348260, 5348265, 5348270, 5348275, 5348280, 5348285, 5348290, 5348295, 5348300, 5348305, 5348310, 5348315, 5348320, 5548255, 5548260, 5548265, 5548270, 5548275, 5548280, 5548285, 5548290, 5548295, 5548300, 5548305, 5548310, 5548315, 5548320, 5948255, 5948260, 5948265, 5948270, 5948275 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5948280, 5948285, 5948290, 5948295, 5948300, 5948305, 5948310, 5948315, 5948320, 6046240, 6046245, 6046250, 6046255, 6046260, 6046265, 6046270, 6046275, 6046280, 6046285, 6046290, 6046295, 6046300, 6046305, 6148255, 6148260, 6148265, 6148270, 6148275, 6148280, 6148285, 6148290, 6148295, 6148300, 6148305, 6148310, 6148315, 6148320, 6348255, 6348260, 6348265, 6348270, 6348275, 6348280, 6348285, 6348290, 6348295, 6348300, 6348305, 6348310, 6348315, 6348320, 6548255, 6548260, 6548265, 6548270, 6548275, 6548280, 6548285, 6548290, 6548295, 6548300, 6548305, 6548310, 6548315, 6548320, 6948255, 6948260, 6948265, 6948270, 6948275, 6948280, 6948285, 6948290, 6948295, 6948300, 6948305, 6948310, 6948315, 6948320, 7046275, 7048240, 7048245, 7048250, 7048255, 7048260, 7048265, 7048270, 7048275, 7048280, 7048285, 7048290, 7048295, 7048300, 7048305, 7148240, 7148245, 7148250, 7148255, 7148260, 7148265, 7148270, 7148275, 7148280, 7148285, 7148290, 7148295, 7148300, 7148305, 7348240, 7348245, 7348250, 7348255, 7348260, 7348265, 7348270, 7348275, 7348280, 7348285, 7348290, 7348295, 7348300, 7348305, 7548240, 7548245, 7548250, 7548255, 7548260, 7548265, 7548270, 7548275, 7548280, 7548285, 7548290, 7548295, 7548300, 7548305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480021	},
}					
--중급 벨더 투사 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046150, 1046155, 1046160, 1046165, 1046170, 1046175, 1046180, 1046185, 1046190, 1046195, 1046200, 1046205, 1046210, 1046215, 1146150, 1146155, 1146160, 1146165, 1146170, 1146175, 1146180, 1146185, 1146190, 1146195, 1146200, 1146205, 1146210, 1146215, 1148160, 1148165, 1148170, 1148175, 1148180, 1148185, 1148190, 1148195, 1148200, 1148205, 1148210, 1148215, 1148220, 1148225, 1346150, 1346155, 1346160, 1346165, 1346170, 1346175, 1346180, 1346185, 1346190, 1346195, 1346200, 1346205, 1346210, 1346215, 1348160, 1348165, 1348170, 1348175, 1348180, 1348185, 1348190, 1348195, 1348200, 1348205, 1348210, 1348215, 1348220, 1348225, 1548160, 1548165, 1548170, 1548175, 1548180, 1548185, 1548190, 1548195, 1548200, 1548205, 1548210, 1548215, 1548220, 1548225, 1948160, 1948165, 1948170, 1948175, 1948180, 1948185, 1948190, 1948195, 1948200, 1948205, 1948210, 1948215, 1948220, 1948225, 2046150, 2046155, 2046160, 2046165, 2046170, 2046175, 2046180, 2046185, 2046190, 2046195, 2046200, 2046205, 2046210, 2046215, 2146150, 2146155, 2146160, 2146165, 2146170, 2146175, 2146180, 2146185, 2146190, 2146195, 2146200, 2146205, 2146210, 2146215, 2148160, 2148165, 2148170, 2148175, 2148180, 2148185, 2148190, 2148195, 2148200, 2148205, 2148210, 2148215, 2148220, 2148225, 2346150, 2346155, 2346160, 2346165, 2346170, 2346175, 2346180, 2346185, 2346190, 2346195, 2346200, 2346205, 2346210, 2346215, 2348160, 2348165, 2348170, 2348175, 2348180, 2348185, 2348190, 2348195, 2348200, 2348205, 2348210, 2348215, 2348220, 2348225, 2548160, 2548165, 2548170, 2548175, 2548180, 2548185, 2548190, 2548195, 2548200, 2548205, 2548210, 2548215, 2548220, 2548225, 2948160, 2948165, 2948170, 2948175, 2948180, 2948185, 2948190, 2948195, 2948200, 2948205, 2948210, 2948215, 2948220, 2948225, 3046150, 3046155, 3046160, 3046165, 3046170, 3046175, 3046180, 3046185, 3046190, 3046195, 3046200, 3046205, 3046210, 3046215, 3146150, 3146155, 3146160, 3146165, 3146170, 3146175, 3146180, 3146185, 3146190, 3146195, 3146200, 3146205, 3146210, 3146215, 3148160, 3148165, 3148170, 3148175, 3148180, 3148185, 3148190, 3148195, 3148200, 3148205, 3148210, 3148215, 3148220, 3148225, 3346150, 3346155, 3346160 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3346165, 3346170, 3346175, 3346180, 3346185, 3346190, 3346195, 3346200, 3346205, 3346210, 3346215, 3348160, 3348165, 3348170, 3348175, 3348180, 3348185, 3348190, 3348195, 3348200, 3348205, 3348210, 3348215, 3348220, 3348225, 3548160, 3548165, 3548170, 3548175, 3548180, 3548185, 3548190, 3548195, 3548200, 3548205, 3548210, 3548215, 3548220, 3548225, 3948160, 3948165, 3948170, 3948175, 3948180, 3948185, 3948190, 3948195, 3948200, 3948205, 3948210, 3948215, 3948220, 3948225, 4046150, 4046155, 4046160, 4046165, 4046170, 4046175, 4046180, 4046185, 4046190, 4046195, 4046200, 4046205, 4046210, 4046215, 4146150, 4146155, 4146160, 4146165, 4146170, 4146175, 4146180, 4146185, 4146190, 4146195, 4146200, 4146205, 4146210, 4146215, 4148160, 4148165, 4148170, 4148175, 4148180, 4148185, 4148190, 4148195, 4148200, 4148205, 4148210, 4148215, 4148220, 4148225, 4346150, 4346155, 4346160, 4346165, 4346170, 4346175, 4346180, 4346185, 4346190, 4346195, 4346200, 4346205, 4346210, 4346215, 4348160, 4348165, 4348170, 4348175, 4348180, 4348185, 4348190, 4348195, 4348200, 4348205, 4348210, 4348215, 4348220, 4348225, 4548160, 4548165, 4548170, 4548175, 4548180, 4548185, 4548190, 4548195, 4548200, 4548205, 4548210, 4548215, 4548220, 4548225, 4948160, 4948165, 4948170, 4948175, 4948180, 4948185, 4948190, 4948195, 4948200, 4948205, 4948210, 4948215, 4948220, 4948225, 5046150, 5046155, 5046160, 5046165, 5046170, 5046175, 5046180, 5046185, 5046190, 5046195, 5046200, 5046205, 5046210, 5046215, 5146150, 5146155, 5146160, 5146165, 5146170, 5146175, 5146180, 5146185, 5146190, 5146195, 5146200, 5146205, 5146210, 5146215, 5148160, 5148165, 5148170, 5148175, 5148180, 5148185, 5148190, 5148195, 5148200, 5148205, 5148210, 5148215, 5148220, 5148225, 5346150, 5346155, 5346160, 5346165, 5346170, 5346175, 5346180, 5346185, 5346190, 5346195, 5346200, 5346205, 5346210, 5346215, 5348160, 5348165, 5348170, 5348175, 5348180, 5348185, 5348190, 5348195, 5348200, 5348205, 5348210, 5348215, 5348220, 5348225, 5548160, 5548165, 5548170, 5548175, 5548180, 5548185, 5548190, 5548195, 5548200, 5548205, 5548210, 5548215, 5548220, 5548225, 5948160, 5948165, 5948170, 5948175, 5948180 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5948185, 5948190, 5948195, 5948200, 5948205, 5948210, 5948215, 5948220, 5948225, 6046150, 6046155, 6046160, 6046165, 6046170, 6046175, 6046180, 6046185, 6046190, 6046195, 6046200, 6046205, 6046210, 6046215, 6148160, 6148165, 6148170, 6148175, 6148180, 6148185, 6148190, 6148195, 6148200, 6148205, 6148210, 6148215, 6148220, 6148225, 6348160, 6348165, 6348170, 6348175, 6348180, 6348185, 6348190, 6348195, 6348200, 6348205, 6348210, 6348215, 6348220, 6348225, 6548160, 6548165, 6548170, 6548175, 6548180, 6548185, 6548190, 6548195, 6548200, 6548205, 6548210, 6548215, 6548220, 6548225, 6948160, 6948165, 6948170, 6948175, 6948180, 6948185, 6948190, 6948195, 6948200, 6948205, 6948210, 6948215, 6948220, 6948225, 7046185, 7048150, 7048155, 7048160, 7048165, 7048170, 7048175, 7048180, 7048185, 7048190, 7048195, 7048200, 7048205, 7048210, 7048215, 7148150, 7148155, 7148160, 7148165, 7148170, 7148175, 7148180, 7148185, 7148190, 7148195, 7148200, 7148205, 7148210, 7148215, 7348150, 7348155, 7348160, 7348165, 7348170, 7348175, 7348180, 7348185, 7348190, 7348195, 7348200, 7348205, 7348210, 7348215, 7548150, 7548155, 7548160, 7548165, 7548170, 7548175, 7548180, 7548185, 7548190, 7548195, 7548200, 7548205, 7548210, 7548215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480011	},
}					
--상급 벨더 투사 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046130, 1046135, 1146130, 1146135, 1148135, 1148140, 1346130, 1346135, 1348135, 1348140, 1548135, 1548140, 1948135, 1948140, 2046130, 2046135, 2146130, 2146135, 2148135, 2148140, 2346130, 2346135, 2348135, 2348140, 2548135, 2548140, 2948135, 2948140, 3046130, 3046135, 3146130, 3146135, 3148135, 3148140, 3346130, 3346135, 3348135, 3348140, 3548135, 3548140, 3948135, 3948140, 4046130, 4046135, 4146130, 4146135, 4148135, 4148140, 4346130, 4346135, 4348135, 4348140, 4548135, 4548140, 4948135, 4948140, 5046130, 5046135, 5146130, 5146135, 5148135, 5148140, 5346130, 5346135, 5348135, 5348140, 5548135, 5548140, 5948135, 5948140, 6046130, 6046135, 6148135, 6148140, 6348135, 6348140, 6548135, 6548140, 6948135, 6948140, 7048130, 7048135, 7148130, 7148135, 7348130, 7348135, 7548130, 7548135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480002	},
}					
--상급 벨더 투사 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046405, 1046410, 1146405, 1146410, 1148425, 1148430, 1346405, 1346410, 1348425, 1348430, 1548425, 1548430, 1948425, 1948430, 2046405, 2046410, 2146405, 2146410, 2148425, 2148430, 2346405, 2346410, 2348425, 2348430, 2548425, 2548430, 2948425, 2948430, 3046405, 3046410, 3146405, 3146410, 3148425, 3148430, 3346405, 3346410, 3348425, 3348430, 3548425, 3548430, 3948425, 3948430, 4046405, 4046410, 4146405, 4146410, 4148425, 4148430, 4346405, 4346410, 4348425, 4348430, 4548425, 4548430, 4948425, 4948430, 5046405, 5046410, 5146405, 5146410, 5148425, 5148430, 5346405, 5346410, 5348425, 5348430, 5548425, 5548430, 5948425, 5948430, 6046405, 6046410, 6148425, 6148430, 6348425, 6348430, 6548425, 6548430, 6948425, 6948430, 7048405, 7048410, 7148405, 7148410, 7348405, 7348410, 7548405, 7548410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480032	},
}					
--상급 벨더 투사 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046310, 1046315, 1146310, 1146315, 1148325, 1148330, 1346310, 1346315, 1348325, 1348330, 1548325, 1548330, 1948325, 1948330, 2046310, 2046315, 2146310, 2146315, 2148325, 2148330, 2346310, 2346315, 2348325, 2348330, 2548325, 2548330, 2948325, 2948330, 3046310, 3046315, 3146310, 3146315, 3148325, 3148330, 3346310, 3346315, 3348325, 3348330, 3548325, 3548330, 3948325, 3948330, 4046310, 4046315, 4146310, 4146315, 4148325, 4148330, 4346310, 4346315, 4348325, 4348330, 4548325, 4548330, 4948325, 4948330, 5046310, 5046315, 5146310, 5146315, 5148325, 5148330, 5346310, 5346315, 5348325, 5348330, 5548325, 5548330, 5948325, 5948330, 6046310, 6046315, 6148325, 6148330, 6348325, 6348330, 6548325, 6548330, 6948325, 6948330, 7048310, 7048315, 7148310, 7148315, 7348310, 7348315, 7548310, 7548315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480022	},
}					
--상급 벨더 투사 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1046220, 1046225, 1146220, 1146225, 1148230, 1148235, 1346220, 1346225, 1348230, 1348235, 1548230, 1548235, 1948230, 1948235, 2046220, 2046225, 2146220, 2146225, 2148230, 2148235, 2346220, 2346225, 2348230, 2348235, 2548230, 2548235, 2948230, 2948235, 3046220, 3046225, 3146220, 3146225, 3148230, 3148235, 3346220, 3346225, 3348230, 3348235, 3548230, 3548235, 3948230, 3948235, 4046220, 4046225, 4146220, 4146225, 4148230, 4148235, 4346220, 4346225, 4348230, 4348235, 4548230, 4548235, 4948230, 4948235, 5046220, 5046225, 5146220, 5146225, 5148230, 5148235, 5346220, 5346225, 5348230, 5348235, 5548230, 5548235, 5948230, 5948235, 6046220, 6046225, 6148230, 6148235, 6348230, 6348235, 6548230, 6548235, 6948230, 6948235, 7048220, 7048225, 7148220, 7148225, 7348220, 7348225, 7548220, 7548225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480012	},
}					
--최상급 벨더 투사 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148145, 1348145, 1548145, 1948145, 2148145, 2348145, 2548145, 2948145, 3148145, 3348145, 3548145, 3948145, 4148145, 4348145, 4548145, 4948145, 5148145, 5348145, 5548145, 5948145, 6548145, 6948145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480003	},
}					
--최상급 벨더 투사 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148435, 1348435, 1548435, 1948435, 2148435, 2348435, 2548435, 2948435, 3148435, 3348435, 3548435, 3948435, 4148435, 4348435, 4548435, 4948435, 5148435, 5348435, 5548435, 5948435, 6548435, 6948435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480033	},
}					
--최상급 벨더 투사 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148335, 1348335, 1548335, 1948335, 2148335, 2348335, 2548335, 2948335, 3148335, 3348335, 3548335, 3948335, 4148335, 4348335, 4548335, 4948335, 5148335, 5348335, 5548335, 5948335, 6548335, 6948335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480023	},
}					
--최상급 벨더 투사 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1148240, 1348240, 1548240, 1948240, 2148240, 2348240, 2548240, 2948240, 3148240, 3348240, 3548240, 3948240, 4148240, 4348240, 4548240, 4948240, 5148240, 5348240, 5548240, 5948240, 6548240, 6948240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10480013	},
}					
--티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150050, 1150055, 1152055, 1152060, 1350050, 1350055, 1352055, 1352060, 1552055, 1552060, 1952055, 1952060, 2150050, 2150055, 2152055, 2152060, 2350050, 2350055, 2352055, 2352060, 2552055, 2552060, 2952055, 2952060, 3150050, 3150055, 3152055, 3152060, 3350050, 3350055, 3352055, 3352060, 3552055, 3552060, 3952055, 3952060, 4150050, 4150055, 4152055, 4152060, 4350050, 4350055, 4352055, 4352060, 4552055, 4552060, 4952055, 4952060, 5150050, 5150055, 5152055, 5152060, 5350050, 5350055, 5352055, 5352060, 5552055, 5552060, 5952055, 5952060, 6052055, 6052060, 6152055, 6152060, 6352055, 6352060, 6552055, 6552060, 6952055, 6952060, 7052055, 7052060, 7152055, 7152060, 7352055, 7352060, 7552055, 7552060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520000	},
}					
--티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150320, 1150325, 1152340, 1152345, 1350320, 1350325, 1352340, 1352345, 1552340, 1552345, 1952340, 1952345, 2150320, 2150325, 2152340, 2152345, 2350320, 2350325, 2352340, 2352345, 2552340, 2552345, 2952340, 2952345, 3150320, 3150325, 3152340, 3152345, 3350320, 3350325, 3352340, 3352345, 3552340, 3552345, 3952340, 3952345, 4150320, 4150325, 4152340, 4152345, 4350320, 4350325, 4352340, 4352345, 4552340, 4552345, 4952340, 4952345, 5150320, 5150325, 5152340, 5152345, 5350320, 5350325, 5352340, 5352345, 5552340, 5552345, 5952340, 5952345, 6052340, 6052345, 6152340, 6152345, 6352340, 6352345, 6552340, 6552345, 6952340, 6952345, 7052340, 7052345, 7152340, 7152345, 7352340, 7352345, 7552340, 7552345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520030	},
}					
--티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150230, 1150235, 1152245, 1152250, 1350230, 1350235, 1352245, 1352250, 1552245, 1552250, 1952245, 1952250, 2150230, 2150235, 2152245, 2152250, 2350230, 2350235, 2352245, 2352250, 2552245, 2552250, 2952245, 2952250, 3150230, 3150235, 3152245, 3152250, 3350230, 3350235, 3352245, 3352250, 3552245, 3552250, 3952245, 3952250, 4150230, 4150235, 4152245, 4152250, 4350230, 4350235, 4352245, 4352250, 4552245, 4552250, 4952245, 4952250, 5150230, 5150235, 5152245, 5152250, 5350230, 5350235, 5352245, 5352250, 5552245, 5552250, 5952245, 5952250, 6052245, 6052250, 6152245, 6152250, 6352245, 6352250, 6552245, 6552250, 6952245, 6952250, 7052245, 7052250, 7152245, 7152250, 7352245, 7352250, 7552245, 7552250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520020	},
}					
--티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150140, 1150145, 1152150, 1152155, 1350140, 1350145, 1352150, 1352155, 1552150, 1552155, 1952150, 1952155, 2150140, 2150145, 2152150, 2152155, 2350140, 2350145, 2352150, 2352155, 2552150, 2552155, 2952150, 2952155, 3150140, 3150145, 3152150, 3152155, 3350140, 3350145, 3352150, 3352155, 3552150, 3552155, 3952150, 3952155, 4150140, 4150145, 4152150, 4152155, 4350140, 4350145, 4352150, 4352155, 4552150, 4552155, 4952150, 4952155, 5150140, 5150145, 5152150, 5152155, 5350140, 5350145, 5352150, 5352155, 5552150, 5552155, 5952150, 5952155, 6052150, 6052155, 6152150, 6152155, 6352150, 6352155, 6552150, 6552155, 6952150, 6952155, 7052150, 7052155, 7152150, 7152155, 7352150, 7352155, 7552150, 7552155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520010	},
}					
--중급 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150060, 1150065, 1150070, 1150075, 1150080, 1150085, 1150090, 1150095, 1150100, 1150105, 1150110, 1150115, 1150120, 1150125, 1152065, 1152070, 1152075, 1152080, 1152085, 1152090, 1152095, 1152100, 1152105, 1152110, 1152115, 1152120, 1152125, 1152130, 1350060, 1350065, 1350070, 1350075, 1350080, 1350085, 1350090, 1350095, 1350100, 1350105, 1350110, 1350115, 1350120, 1350125, 1352065, 1352070, 1352075, 1352080, 1352085, 1352090, 1352095, 1352100, 1352105, 1352110, 1352115, 1352120, 1352125, 1352130, 1552065, 1552070, 1552075, 1552080, 1552085, 1552090, 1552095, 1552100, 1552105, 1552110, 1552115, 1552120, 1552125, 1552130, 1952065, 1952070, 1952075, 1952080, 1952085, 1952090, 1952095, 1952100, 1952105, 1952110, 1952115, 1952120, 1952125, 1952130, 2150060, 2150065, 2150070, 2150075, 2150080, 2150085, 2150090, 2150095, 2150100, 2150105, 2150110, 2150115, 2150120, 2150125, 2152065, 2152070, 2152075, 2152080, 2152085, 2152090, 2152095, 2152100, 2152105, 2152110, 2152115, 2152120, 2152125, 2152130, 2350060, 2350065, 2350070, 2350075, 2350080, 2350085, 2350090, 2350095, 2350100, 2350105, 2350110, 2350115, 2350120, 2350125, 2352065, 2352070, 2352075, 2352080, 2352085, 2352090, 2352095, 2352100, 2352105, 2352110, 2352115, 2352120, 2352125, 2352130, 2552065, 2552070, 2552075, 2552080, 2552085, 2552090, 2552095, 2552100, 2552105, 2552110, 2552115, 2552120, 2552125, 2552130, 2952065, 2952070, 2952075, 2952080, 2952085, 2952090, 2952095, 2952100, 2952105, 2952110, 2952115, 2952120, 2952125, 2952130, 3150060, 3150065, 3150070, 3150075, 3150080, 3150085, 3150090, 3150095, 3150100, 3150105, 3150110, 3150115, 3150120, 3150125, 3152065, 3152070, 3152075, 3152080, 3152085, 3152090, 3152095, 3152100, 3152105, 3152110, 3152115, 3152120, 3152125, 3152130, 3350060, 3350065, 3350070, 3350075, 3350080, 3350085, 3350090, 3350095, 3350100, 3350105, 3350110, 3350115, 3350120, 3350125, 3352065, 3352070, 3352075, 3352080, 3352085, 3352090, 3352095, 3352100, 3352105, 3352110, 3352115, 3352120, 3352125, 3352130, 3552065, 3552070, 3552075, 3552080, 3552085, 3552090, 3552095, 3552100, 3552105, 3552110, 3552115, 3552120, 3552125, 3552130, 3952065, 3952070, 3952075 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3952080, 3952085, 3952090, 3952095, 3952100, 3952105, 3952110, 3952115, 3952120, 3952125, 3952130, 4150060, 4150065, 4150070, 4150075, 4150080, 4150085, 4150090, 4150095, 4150100, 4150105, 4150110, 4150115, 4150120, 4150125, 4152065, 4152070, 4152075, 4152080, 4152085, 4152090, 4152095, 4152100, 4152105, 4152110, 4152115, 4152120, 4152125, 4152130, 4350060, 4350065, 4350070, 4350075, 4350080, 4350085, 4350090, 4350095, 4350100, 4350105, 4350110, 4350115, 4350120, 4350125, 4352065, 4352070, 4352075, 4352080, 4352085, 4352090, 4352095, 4352100, 4352105, 4352110, 4352115, 4352120, 4352125, 4352130, 4552065, 4552070, 4552075, 4552080, 4552085, 4552090, 4552095, 4552100, 4552105, 4552110, 4552115, 4552120, 4552125, 4552130, 4952065, 4952070, 4952075, 4952080, 4952085, 4952090, 4952095, 4952100, 4952105, 4952110, 4952115, 4952120, 4952125, 4952130, 5150060, 5150065, 5150070, 5150075, 5150080, 5150085, 5150090, 5150095, 5150100, 5150105, 5150110, 5150115, 5150120, 5150125, 5152065, 5152070, 5152075, 5152080, 5152085, 5152090, 5152095, 5152100, 5152105, 5152110, 5152115, 5152120, 5152125, 5152130, 5350060, 5350065, 5350070, 5350075, 5350080, 5350085, 5350090, 5350095, 5350100, 5350105, 5350110, 5350115, 5350120, 5350125, 5352065, 5352070, 5352075, 5352080, 5352085, 5352090, 5352095, 5352100, 5352105, 5352110, 5352115, 5352120, 5352125, 5352130, 5552065, 5552070, 5552075, 5552080, 5552085, 5552090, 5552095, 5552100, 5552105, 5552110, 5552115, 5552120, 5552125, 5552130, 5952065, 5952070, 5952075, 5952080, 5952085, 5952090, 5952095, 5952100, 5952105, 5952110, 5952115, 5952120, 5952125, 5952130, 6052065, 6052070, 6052075, 6052080, 6052085, 6052090, 6052095, 6052100, 6052105, 6052110, 6052115, 6052120, 6052125, 6052130, 6152065, 6152070, 6152075, 6152080, 6152085, 6152090, 6152095, 6152100, 6152105, 6152110, 6152115, 6152120, 6152125, 6152130, 6352065, 6352070, 6352075, 6352080, 6352085, 6352090, 6352095, 6352100, 6352105, 6352110, 6352115, 6352120, 6352125, 6352130, 6552065, 6552070, 6552075, 6552080, 6552085, 6552090, 6552095, 6552100, 6552105, 6552110, 6552115, 6552120, 6552125, 6552130, 6952065, 6952070, 6952075, 6952080, 6952085 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6952090, 6952095, 6952100, 6952105, 6952110, 6952115, 6952120, 6952125, 6952130, 7052065, 7052070, 7052075, 7052080, 7052085, 7052090, 7052095, 7052100, 7052105, 7052110, 7052115, 7052120, 7052125, 7052130, 7152065, 7152070, 7152075, 7152080, 7152085, 7152090, 7152095, 7152100, 7152105, 7152110, 7152115, 7152120, 7152125, 7152130, 7352065, 7352070, 7352075, 7352080, 7352085, 7352090, 7352095, 7352100, 7352105, 7352110, 7352115, 7352120, 7352125, 7352130, 7552065, 7552070, 7552075, 7552080, 7552085, 7552090, 7552095, 7552100, 7552105, 7552110, 7552115, 7552120, 7552125, 7552130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520001	},
}					
--중급 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150330, 1150335, 1150340, 1150345, 1150350, 1150355, 1150360, 1150365, 1150370, 1150375, 1150380, 1150385, 1150390, 1150395, 1150400, 1152350, 1152355, 1152360, 1152365, 1152370, 1152375, 1152380, 1152385, 1152390, 1152395, 1152400, 1152405, 1152410, 1152415, 1152420, 1350330, 1350335, 1350340, 1350345, 1350350, 1350355, 1350360, 1350365, 1350370, 1350375, 1350380, 1350385, 1350390, 1350395, 1350400, 1352350, 1352355, 1352360, 1352365, 1352370, 1352375, 1352380, 1352385, 1352390, 1352395, 1352400, 1352405, 1352410, 1352415, 1352420, 1552350, 1552355, 1552360, 1552365, 1552370, 1552375, 1552380, 1552385, 1552390, 1552395, 1552400, 1552405, 1552410, 1552415, 1552420, 1952350, 1952355, 1952360, 1952365, 1952370, 1952375, 1952380, 1952385, 1952390, 1952395, 1952400, 1952405, 1952410, 1952415, 1952420, 2150330, 2150335, 2150340, 2150345, 2150350, 2150355, 2150360, 2150365, 2150370, 2150375, 2150380, 2150385, 2150390, 2150395, 2150400, 2152350, 2152355, 2152360, 2152365, 2152370, 2152375, 2152380, 2152385, 2152390, 2152395, 2152400, 2152405, 2152410, 2152415, 2152420, 2350330, 2350335, 2350340, 2350345, 2350350, 2350355, 2350360, 2350365, 2350370, 2350375, 2350380, 2350385, 2350390, 2350395, 2350400, 2352350, 2352355, 2352360, 2352365, 2352370, 2352375, 2352380, 2352385, 2352390, 2352395, 2352400, 2352405, 2352410, 2352415, 2352420, 2552350, 2552355, 2552360, 2552365, 2552370, 2552375, 2552380, 2552385, 2552390, 2552395, 2552400, 2552405, 2552410, 2552415, 2552420, 2952350, 2952355, 2952360, 2952365, 2952370, 2952375, 2952380, 2952385, 2952390, 2952395, 2952400, 2952405, 2952410, 2952415, 2952420, 3150330, 3150335, 3150340, 3150345, 3150350, 3150355, 3150360, 3150365, 3150370, 3150375, 3150380, 3150385, 3150390, 3150395, 3150400, 3152350, 3152355, 3152360, 3152365, 3152370, 3152375, 3152380, 3152385, 3152390, 3152395, 3152400, 3152405, 3152410, 3152415, 3152420, 3350330, 3350335, 3350340, 3350345, 3350350, 3350355, 3350360, 3350365, 3350370, 3350375, 3350380, 3350385, 3350390, 3350395, 3350400, 3352350, 3352355, 3352360, 3352365, 3352370, 3352375, 3352380, 3352385, 3352390, 3352395, 3352400, 3352405, 3352410, 3352415, 3352420, 3552350 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3552355, 3552360, 3552365, 3552370, 3552375, 3552380, 3552385, 3552390, 3552395, 3552400, 3552405, 3552410, 3552415, 3552420, 3952350, 3952355, 3952360, 3952365, 3952370, 3952375, 3952380, 3952385, 3952390, 3952395, 3952400, 3952405, 3952410, 3952415, 3952420, 4150330, 4150335, 4150340, 4150345, 4150350, 4150355, 4150360, 4150365, 4150370, 4150375, 4150380, 4150385, 4150390, 4150395, 4150400, 4152350, 4152355, 4152360, 4152365, 4152370, 4152375, 4152380, 4152385, 4152390, 4152395, 4152400, 4152405, 4152410, 4152415, 4152420, 4350330, 4350335, 4350340, 4350345, 4350350, 4350355, 4350360, 4350365, 4350370, 4350375, 4350380, 4350385, 4350390, 4350395, 4350400, 4352350, 4352355, 4352360, 4352365, 4352370, 4352375, 4352380, 4352385, 4352390, 4352395, 4352400, 4352405, 4352410, 4352415, 4352420, 4552350, 4552355, 4552360, 4552365, 4552370, 4552375, 4552380, 4552385, 4552390, 4552395, 4552400, 4552405, 4552410, 4552415, 4552420, 4952350, 4952355, 4952360, 4952365, 4952370, 4952375, 4952380, 4952385, 4952390, 4952395, 4952400, 4952405, 4952410, 4952415, 4952420, 5150330, 5150335, 5150340, 5150345, 5150350, 5150355, 5150360, 5150365, 5150370, 5150375, 5150380, 5150385, 5150390, 5150395, 5150400, 5152350, 5152355, 5152360, 5152365, 5152370, 5152375, 5152380, 5152385, 5152390, 5152395, 5152400, 5152405, 5152410, 5152415, 5152420, 5350330, 5350335, 5350340, 5350345, 5350350, 5350355, 5350360, 5350365, 5350370, 5350375, 5350380, 5350385, 5350390, 5350395, 5350400, 5352350, 5352355, 5352360, 5352365, 5352370, 5352375, 5352380, 5352385, 5352390, 5352395, 5352400, 5352405, 5352410, 5352415, 5352420, 5552350, 5552355, 5552360, 5552365, 5552370, 5552375, 5552380, 5552385, 5552390, 5552395, 5552400, 5552405, 5552410, 5552415, 5552420, 5952350, 5952355, 5952360, 5952365, 5952370, 5952375, 5952380, 5952385, 5952390, 5952395, 5952400, 5952405, 5952410, 5952415, 5952420, 6052350, 6052355, 6052360, 6052365, 6052370, 6052375, 6052380, 6052385, 6052390, 6052395, 6052400, 6052405, 6052410, 6052415, 6052420, 6152350, 6152355, 6152360, 6152365, 6152370, 6152375, 6152380, 6152385, 6152390, 6152395, 6152400, 6152405, 6152410, 6152415, 6152420, 6352350 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6352355, 6352360, 6352365, 6352370, 6352375, 6352380, 6352385, 6352390, 6352395, 6352400, 6352405, 6352410, 6352415, 6352420, 6552350, 6552355, 6552360, 6552365, 6552370, 6552375, 6552380, 6552385, 6552390, 6552395, 6552400, 6552405, 6552410, 6552415, 6552420, 6952350, 6952355, 6952360, 6952365, 6952370, 6952375, 6952380, 6952385, 6952390, 6952395, 6952400, 6952405, 6952410, 6952415, 6952420, 7052350, 7052355, 7052360, 7052365, 7052370, 7052375, 7052380, 7052385, 7052390, 7052395, 7052400, 7052405, 7052410, 7052415, 7052420, 7152350, 7152355, 7152360, 7152365, 7152370, 7152375, 7152380, 7152385, 7152390, 7152395, 7152400, 7152405, 7152410, 7152415, 7152420, 7352350, 7352355, 7352360, 7352365, 7352370, 7352375, 7352380, 7352385, 7352390, 7352395, 7352400, 7352405, 7352410, 7352415, 7352420, 7552350, 7552355, 7552360, 7552365, 7552370, 7552375, 7552380, 7552385, 7552390, 7552395, 7552400, 7552405, 7552410, 7552415, 7552420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520031	},
}					
--중급 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150240, 1150245, 1150250, 1150255, 1150260, 1150265, 1150270, 1150275, 1150280, 1150285, 1150290, 1150295, 1150300, 1150305, 1152255, 1152260, 1152265, 1152270, 1152275, 1152280, 1152285, 1152290, 1152295, 1152300, 1152305, 1152310, 1152315, 1152320, 1350240, 1350245, 1350250, 1350255, 1350260, 1350265, 1350270, 1350275, 1350280, 1350285, 1350290, 1350295, 1350300, 1350305, 1352255, 1352260, 1352265, 1352270, 1352275, 1352280, 1352285, 1352290, 1352295, 1352300, 1352305, 1352310, 1352315, 1352320, 1552255, 1552260, 1552265, 1552270, 1552275, 1552280, 1552285, 1552290, 1552295, 1552300, 1552305, 1552310, 1552315, 1552320, 1952255, 1952260, 1952265, 1952270, 1952275, 1952280, 1952285, 1952290, 1952295, 1952300, 1952305, 1952310, 1952315, 1952320, 2150240, 2150245, 2150250, 2150255, 2150260, 2150265, 2150270, 2150275, 2150280, 2150285, 2150290, 2150295, 2150300, 2150305, 2152255, 2152260, 2152265, 2152270, 2152275, 2152280, 2152285, 2152290, 2152295, 2152300, 2152305, 2152310, 2152315, 2152320, 2350240, 2350245, 2350250, 2350255, 2350260, 2350265, 2350270, 2350275, 2350280, 2350285, 2350290, 2350295, 2350300, 2350305, 2352255, 2352260, 2352265, 2352270, 2352275, 2352280, 2352285, 2352290, 2352295, 2352300, 2352305, 2352310, 2352315, 2352320, 2552255, 2552260, 2552265, 2552270, 2552275, 2552280, 2552285, 2552290, 2552295, 2552300, 2552305, 2552310, 2552315, 2552320, 2952255, 2952260, 2952265, 2952270, 2952275, 2952280, 2952285, 2952290, 2952295, 2952300, 2952305, 2952310, 2952315, 2952320, 3150240, 3150245, 3150250, 3150255, 3150260, 3150265, 3150270, 3150275, 3150280, 3150285, 3150290, 3150295, 3150300, 3150305, 3152255, 3152260, 3152265, 3152270, 3152275, 3152280, 3152285, 3152290, 3152295, 3152300, 3152305, 3152310, 3152315, 3152320, 3350240, 3350245, 3350250, 3350255, 3350260, 3350265, 3350270, 3350275, 3350280, 3350285, 3350290, 3350295, 3350300, 3350305, 3352255, 3352260, 3352265, 3352270, 3352275, 3352280, 3352285, 3352290, 3352295, 3352300, 3352305, 3352310, 3352315, 3352320, 3552255, 3552260, 3552265, 3552270, 3552275, 3552280, 3552285, 3552290, 3552295, 3552300, 3552305, 3552310, 3552315, 3552320, 3952255, 3952260, 3952265 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3952270, 3952275, 3952280, 3952285, 3952290, 3952295, 3952300, 3952305, 3952310, 3952315, 3952320, 4150240, 4150245, 4150250, 4150255, 4150260, 4150265, 4150270, 4150275, 4150280, 4150285, 4150290, 4150295, 4150300, 4150305, 4152255, 4152260, 4152265, 4152270, 4152275, 4152280, 4152285, 4152290, 4152295, 4152300, 4152305, 4152310, 4152315, 4152320, 4350240, 4350245, 4350250, 4350255, 4350260, 4350265, 4350270, 4350275, 4350280, 4350285, 4350290, 4350295, 4350300, 4350305, 4352255, 4352260, 4352265, 4352270, 4352275, 4352280, 4352285, 4352290, 4352295, 4352300, 4352305, 4352310, 4352315, 4352320, 4552255, 4552260, 4552265, 4552270, 4552275, 4552280, 4552285, 4552290, 4552295, 4552300, 4552305, 4552310, 4552315, 4552320, 4952255, 4952260, 4952265, 4952270, 4952275, 4952280, 4952285, 4952290, 4952295, 4952300, 4952305, 4952310, 4952315, 4952320, 5150240, 5150245, 5150250, 5150255, 5150260, 5150265, 5150270, 5150275, 5150280, 5150285, 5150290, 5150295, 5150300, 5150305, 5152255, 5152260, 5152265, 5152270, 5152275, 5152280, 5152285, 5152290, 5152295, 5152300, 5152305, 5152310, 5152315, 5152320, 5350240, 5350245, 5350250, 5350255, 5350260, 5350265, 5350270, 5350275, 5350280, 5350285, 5350290, 5350295, 5350300, 5350305, 5352255, 5352260, 5352265, 5352270, 5352275, 5352280, 5352285, 5352290, 5352295, 5352300, 5352305, 5352310, 5352315, 5352320, 5552255, 5552260, 5552265, 5552270, 5552275, 5552280, 5552285, 5552290, 5552295, 5552300, 5552305, 5552310, 5552315, 5552320, 5952255, 5952260, 5952265, 5952270, 5952275, 5952280, 5952285, 5952290, 5952295, 5952300, 5952305, 5952310, 5952315, 5952320, 6052255, 6052260, 6052265, 6052270, 6052275, 6052280, 6052285, 6052290, 6052295, 6052300, 6052305, 6052310, 6052315, 6052320, 6152255, 6152260, 6152265, 6152270, 6152275, 6152280, 6152285, 6152290, 6152295, 6152300, 6152305, 6152310, 6152315, 6152320, 6352255, 6352260, 6352265, 6352270, 6352275, 6352280, 6352285, 6352290, 6352295, 6352300, 6352305, 6352310, 6352315, 6352320, 6552255, 6552260, 6552265, 6552270, 6552275, 6552280, 6552285, 6552290, 6552295, 6552300, 6552305, 6552310, 6552315, 6552320, 6952255, 6952260, 6952265, 6952270, 6952275 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6952280, 6952285, 6952290, 6952295, 6952300, 6952305, 6952310, 6952315, 6952320, 7052255, 7052260, 7052265, 7052270, 7052275, 7052280, 7052285, 7052290, 7052295, 7052300, 7052305, 7052310, 7052315, 7052320, 7152255, 7152260, 7152265, 7152270, 7152275, 7152280, 7152285, 7152290, 7152295, 7152300, 7152305, 7152310, 7152315, 7152320, 7352255, 7352260, 7352265, 7352270, 7352275, 7352280, 7352285, 7352290, 7352295, 7352300, 7352305, 7352310, 7352315, 7352320, 7552255, 7552260, 7552265, 7552270, 7552275, 7552280, 7552285, 7552290, 7552295, 7552300, 7552305, 7552310, 7552315, 7552320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520021	},
}					
--중급 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150150, 1150155, 1150160, 1150165, 1150170, 1150175, 1150180, 1150185, 1150190, 1150195, 1150200, 1150205, 1150210, 1150215, 1152160, 1152165, 1152170, 1152175, 1152180, 1152185, 1152190, 1152195, 1152200, 1152205, 1152210, 1152215, 1152220, 1152225, 1350150, 1350155, 1350160, 1350165, 1350170, 1350175, 1350180, 1350185, 1350190, 1350195, 1350200, 1350205, 1350210, 1350215, 1352160, 1352165, 1352170, 1352175, 1352180, 1352185, 1352190, 1352195, 1352200, 1352205, 1352210, 1352215, 1352220, 1352225, 1552160, 1552165, 1552170, 1552175, 1552180, 1552185, 1552190, 1552195, 1552200, 1552205, 1552210, 1552215, 1552220, 1552225, 1952160, 1952165, 1952170, 1952175, 1952180, 1952185, 1952190, 1952195, 1952200, 1952205, 1952210, 1952215, 1952220, 1952225, 2150150, 2150155, 2150160, 2150165, 2150170, 2150175, 2150180, 2150185, 2150190, 2150195, 2150200, 2150205, 2150210, 2150215, 2152160, 2152165, 2152170, 2152175, 2152180, 2152185, 2152190, 2152195, 2152200, 2152205, 2152210, 2152215, 2152220, 2152225, 2350150, 2350155, 2350160, 2350165, 2350170, 2350175, 2350180, 2350185, 2350190, 2350195, 2350200, 2350205, 2350210, 2350215, 2352160, 2352165, 2352170, 2352175, 2352180, 2352185, 2352190, 2352195, 2352200, 2352205, 2352210, 2352215, 2352220, 2352225, 2552160, 2552165, 2552170, 2552175, 2552180, 2552185, 2552190, 2552195, 2552200, 2552205, 2552210, 2552215, 2552220, 2552225, 2952160, 2952165, 2952170, 2952175, 2952180, 2952185, 2952190, 2952195, 2952200, 2952205, 2952210, 2952215, 2952220, 2952225, 3150150, 3150155, 3150160, 3150165, 3150170, 3150175, 3150180, 3150185, 3150190, 3150195, 3150200, 3150205, 3150210, 3150215, 3152160, 3152165, 3152170, 3152175, 3152180, 3152185, 3152190, 3152195, 3152200, 3152205, 3152210, 3152215, 3152220, 3152225, 3350150, 3350155, 3350160, 3350165, 3350170, 3350175, 3350180, 3350185, 3350190, 3350195, 3350200, 3350205, 3350210, 3350215, 3352160, 3352165, 3352170, 3352175, 3352180, 3352185, 3352190, 3352195, 3352200, 3352205, 3352210, 3352215, 3352220, 3352225, 3552160, 3552165, 3552170, 3552175, 3552180, 3552185, 3552190, 3552195, 3552200, 3552205, 3552210, 3552215, 3552220, 3552225, 3952160, 3952165, 3952170 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	3952175, 3952180, 3952185, 3952190, 3952195, 3952200, 3952205, 3952210, 3952215, 3952220, 3952225, 4150150, 4150155, 4150160, 4150165, 4150170, 4150175, 4150180, 4150185, 4150190, 4150195, 4150200, 4150205, 4150210, 4150215, 4152160, 4152165, 4152170, 4152175, 4152180, 4152185, 4152190, 4152195, 4152200, 4152205, 4152210, 4152215, 4152220, 4152225, 4350150, 4350155, 4350160, 4350165, 4350170, 4350175, 4350180, 4350185, 4350190, 4350195, 4350200, 4350205, 4350210, 4350215, 4352160, 4352165, 4352170, 4352175, 4352180, 4352185, 4352190, 4352195, 4352200, 4352205, 4352210, 4352215, 4352220, 4352225, 4552160, 4552165, 4552170, 4552175, 4552180, 4552185, 4552190, 4552195, 4552200, 4552205, 4552210, 4552215, 4552220, 4552225, 4952160, 4952165, 4952170, 4952175, 4952180, 4952185, 4952190, 4952195, 4952200, 4952205, 4952210, 4952215, 4952220, 4952225, 5150150, 5150155, 5150160, 5150165, 5150170, 5150175, 5150180, 5150185, 5150190, 5150195, 5150200, 5150205, 5150210, 5150215, 5152160, 5152165, 5152170, 5152175, 5152180, 5152185, 5152190, 5152195, 5152200, 5152205, 5152210, 5152215, 5152220, 5152225, 5350150, 5350155, 5350160, 5350165, 5350170, 5350175, 5350180, 5350185, 5350190, 5350195, 5350200, 5350205, 5350210, 5350215, 5352160, 5352165, 5352170, 5352175, 5352180, 5352185, 5352190, 5352195, 5352200, 5352205, 5352210, 5352215, 5352220, 5352225, 5552160, 5552165, 5552170, 5552175, 5552180, 5552185, 5552190, 5552195, 5552200, 5552205, 5552210, 5552215, 5552220, 5552225, 5952160, 5952165, 5952170, 5952175, 5952180, 5952185, 5952190, 5952195, 5952200, 5952205, 5952210, 5952215, 5952220, 5952225, 6052160, 6052165, 6052170, 6052175, 6052180, 6052185, 6052190, 6052195, 6052200, 6052205, 6052210, 6052215, 6052220, 6052225, 6152160, 6152165, 6152170, 6152175, 6152180, 6152185, 6152190, 6152195, 6152200, 6152205, 6152210, 6152215, 6152220, 6152225, 6352160, 6352165, 6352170, 6352175, 6352180, 6352185, 6352190, 6352195, 6352200, 6352205, 6352210, 6352215, 6352220, 6352225, 6552160, 6552165, 6552170, 6552175, 6552180, 6552185, 6552190, 6552195, 6552200, 6552205, 6552210, 6552215, 6552220, 6552225, 6952160, 6952165, 6952170, 6952175, 6952180 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	6952185, 6952190, 6952195, 6952200, 6952205, 6952210, 6952215, 6952220, 6952225, 7052160, 7052165, 7052170, 7052175, 7052180, 7052185, 7052190, 7052195, 7052200, 7052205, 7052210, 7052215, 7052220, 7052225, 7152160, 7152165, 7152170, 7152175, 7152180, 7152185, 7152190, 7152195, 7152200, 7152205, 7152210, 7152215, 7152220, 7152225, 7352160, 7352165, 7352170, 7352175, 7352180, 7352185, 7352190, 7352195, 7352200, 7352205, 7352210, 7352215, 7352220, 7352225, 7552160, 7552165, 7552170, 7552175, 7552180, 7552185, 7552190, 7552195, 7552200, 7552205, 7552210, 7552215, 7552220, 7552225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520011	},
}					
--상급 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150130, 1150135, 1152135, 1152140, 1350130, 1350135, 1352135, 1352140, 1552135, 1552140, 1952135, 1952140, 2150130, 2150135, 2152135, 2152140, 2350130, 2350135, 2352135, 2352140, 2552135, 2552140, 2952135, 2952140, 3150130, 3150135, 3152135, 3152140, 3350130, 3350135, 3352135, 3352140, 3552135, 3552140, 3952135, 3952140, 4150130, 4150135, 4152135, 4152140, 4350130, 4350135, 4352135, 4352140, 4552135, 4552140, 4952135, 4952140, 5150130, 5150135, 5152135, 5152140, 5350130, 5350135, 5352135, 5352140, 5552135, 5552140, 5952135, 5952140, 6052135, 6052140, 6152135, 6152140, 6352135, 6352140, 6552135, 6552140, 6952135, 6952140, 7052135, 7052140, 7152135, 7152140, 7352135, 7352140, 7552135, 7552140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520002	},
}					
--상급 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150405, 1150410, 1152425, 1152430, 1350405, 1350410, 1352425, 1352430, 1552425, 1552430, 1952425, 1952430, 2150405, 2150410, 2152425, 2152430, 2350405, 2350410, 2352425, 2352430, 2552425, 2552430, 2952425, 2952430, 3150405, 3150410, 3152425, 3152430, 3350405, 3350410, 3352425, 3352430, 3552425, 3552430, 3952425, 3952430, 4150405, 4150410, 4152425, 4152430, 4350405, 4350410, 4352425, 4352430, 4552425, 4552430, 4952425, 4952430, 5150405, 5150410, 5152425, 5152430, 5350405, 5350410, 5352425, 5352430, 5552425, 5552430, 5952425, 5952430, 6052425, 6052430, 6152425, 6152430, 6352425, 6352430, 6552425, 6552430, 6952425, 6952430, 7052425, 7052430, 7152425, 7152430, 7352425, 7352430, 7552425, 7552430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520032	},
}					
--상급 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150310, 1150315, 1152325, 1152330, 1350310, 1350315, 1352325, 1352330, 1552325, 1552330, 1952325, 1952330, 2150310, 2150315, 2152325, 2152330, 2350310, 2350315, 2352325, 2352330, 2552325, 2552330, 2952325, 2952330, 3150310, 3150315, 3152325, 3152330, 3350310, 3350315, 3352325, 3352330, 3552325, 3552330, 3952325, 3952330, 4150310, 4150315, 4152325, 4152330, 4350310, 4350315, 4352325, 4352330, 4552325, 4552330, 4952325, 4952330, 5150310, 5150315, 5152325, 5152330, 5350310, 5350315, 5352325, 5352330, 5552325, 5552330, 5952325, 5952330, 6052325, 6052330, 6152325, 6152330, 6352325, 6352330, 6552325, 6552330, 6952325, 6952330, 7052325, 7052330, 7152325, 7152330, 7352325, 7352330, 7552325, 7552330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520022	},
}					
--상급 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1150220, 1150225, 1152230, 1152235, 1350220, 1350225, 1352230, 1352235, 1552230, 1552235, 1952230, 1952235, 2150220, 2150225, 2152230, 2152235, 2350220, 2350225, 2352230, 2352235, 2552230, 2552235, 2952230, 2952235, 3150220, 3150225, 3152230, 3152235, 3350220, 3350225, 3352230, 3352235, 3552230, 3552235, 3952230, 3952235, 4150220, 4150225, 4152230, 4152235, 4350220, 4350225, 4352230, 4352235, 4552230, 4552235, 4952230, 4952235, 5150220, 5150225, 5152230, 5152235, 5350220, 5350225, 5352230, 5352235, 5552230, 5552235, 5952230, 5952235, 6052230, 6052235, 6152230, 6152235, 6352230, 6352235, 6552230, 6552235, 6952230, 6952235, 7052230, 7052235, 7152230, 7152235, 7352230, 7352235, 7552230, 7552235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520012	},
}					
--최상급 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1152145, 1352145, 1552145, 1952145, 2152145, 2352145, 2552145, 2952145, 3152145, 3352145, 3552145, 3952145, 4152145, 4352145, 4552145, 4952145, 5152145, 5352145, 5552145, 5952145, 6052145, 6152145, 6352145, 6552145, 6952145, 7052145, 7152145, 7352145, 7552145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520003	},
}					
--최상급 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1152435, 1352435, 1552435, 1952435, 2152435, 2352435, 2552435, 2952435, 3152435, 3352435, 3552435, 3952435, 4152435, 4352435, 4552435, 4952435, 5152435, 5352435, 5552435, 5952435, 6052435, 6152435, 6352435, 6552435, 6952435, 7052435, 7152435, 7352435, 7552435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520033	},
}					
--최상급 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1152335, 1352335, 1552335, 1952335, 2152335, 2352335, 2552335, 2952335, 3152335, 3352335, 3552335, 3952335, 4152335, 4352335, 4552335, 4952335, 5152335, 5352335, 5552335, 5952335, 6052335, 6152335, 6352335, 6552335, 6952335, 7052335, 7152335, 7352335, 7552335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520023	},
}					
--최상급 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1152240, 1352240, 1552240, 1952240, 2152240, 2352240, 2552240, 2952240, 3152240, 3352240, 3552240, 3952240, 4152240, 4352240, 4552240, 4952240, 5152240, 5352240, 5552240, 5952240, 6052240, 6152240, 6352240, 6552240, 6952240, 7052240, 7152240, 7352240, 7552240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10520013	},
}					
--강화 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156050, 1156055, 1356050, 1356055, 1556050, 1556055, 1956055, 1956060, 2156050, 2156055, 2356050, 2356055, 2556055, 2556060, 2956055, 2956060, 3156050, 3156055, 3356050, 3356055, 3556055, 3556060, 3956055, 3956060, 4156050, 4156055, 4356050, 4356055, 4556055, 4556060, 4956055, 4956060, 5156050, 5156055, 5356050, 5356055, 5556055, 5556060, 5956055, 5956060, 6156050, 6156055, 6356050, 6356055, 6556055, 6556060, 6956055, 6956060, 7056050, 7056055, 7156050, 7156055, 7356050, 7356055, 7556050, 7556055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560000	},
}					
--강화 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156320, 1156325, 1356320, 1356325, 1556320, 1556325, 1956340, 1956345, 2156320, 2156325, 2356320, 2356325, 2556340, 2556345, 2956340, 2956345, 3156320, 3156325, 3356320, 3356325, 3556340, 3556345, 3956340, 3956345, 4156320, 4156325, 4356320, 4356325, 4556340, 4556345, 4956340, 4956345, 5156320, 5156325, 5356320, 5356325, 5556340, 5556345, 5956340, 5956345, 6156320, 6156325, 6356320, 6356325, 6556340, 6556345, 6956340, 6956345, 7056320, 7056325, 7156320, 7156325, 7356320, 7356325, 7556320, 7556325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560030	},
}					
--강화 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156230, 1156235, 1356230, 1356235, 1556230, 1556235, 1956245, 1956250, 2156230, 2156235, 2356230, 2356235, 2556245, 2556250, 2956245, 2956250, 3156230, 3156235, 3356230, 3356235, 3556245, 3556250, 3956245, 3956250, 4156230, 4156235, 4356230, 4356235, 4556245, 4556250, 4956245, 4956250, 5156230, 5156235, 5356230, 5356235, 5556245, 5556250, 5956245, 5956250, 6156230, 6156235, 6356230, 6356235, 6556245, 6556250, 6956245, 6956250, 7056230, 7056235, 7156230, 7156235, 7356230, 7356235, 7556230, 7556235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560020	},
}					
--강화 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156140, 1156145, 1356140, 1356145, 1556140, 1556145, 1956150, 1956155, 2156140, 2156145, 2356140, 2356145, 2556150, 2556155, 2956150, 2956155, 3156140, 3156145, 3356140, 3356145, 3556150, 3556155, 3956150, 3956155, 4156140, 4156145, 4356140, 4356145, 4556150, 4556155, 4956150, 4956155, 5156140, 5156145, 5356140, 5356145, 5556150, 5556155, 5956150, 5956155, 6156140, 6156145, 6356140, 6356145, 6556150, 6556155, 6956150, 6956155, 7056140, 7056145, 7156140, 7156145, 7356140, 7356145, 7556140, 7556145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560010	},
}					
--중급 강화 티타늄 상의				
g_pItemManager:AddItemConvertInfo				
{				
	m_TargetItemID		= {	1156060, 1156065, 1156070, 1156075, 1156080, 1156085, 1156090, 1156095, 1156100, 1156105, 1156110, 1156115, 1156120, 1156125, 1356060, 1356065, 1356070, 1356075, 1356080, 1356085, 1356090, 1356095, 1356100, 1356105, 1356110, 1356115, 1356120, 1356125, 1556060, 1556065, 1556070, 1556075, 1556080, 1556085, 1556090, 1556095, 1556100, 1556105, 1556110, 1556115, 1556120, 1556125, 1956065, 1956070, 1956075, 1956080, 1956085, 1956090, 1956095, 1956100, 1956105, 1956110, 1956115, 1956120, 1956125, 1956130, 2156060, 2156065, 2156070, 2156075, 2156080, 2156085, 2156090, 2156095, 2156100, 2156105, 2156110, 2156115, 2156120, 2156125, 2356060, 2356065, 2356070, 2356075, 2356080, 2356085, 2356090, 2356095, 2356100, 2356105, 2356110, 2356115, 2356120, 2356125, 2556065, 2556070, 2556075, 2556080, 2556085, 2556090, 2556095, 2556100, 2556105, 2556110, 2556115, 2556120, 2556125, 2556130, 2956065, 2956070, 2956075, 2956080, 2956085, 2956090, 2956095, 2956100, 2956105, 2956110, 2956115, 2956120, 2956125, 2956130, 3156060, 3156065, 3156070, 3156075, 3156080, 3156085, 3156090, 3156095, 3156100, 3156105, 3156110, 3156115, 3156120, 3156125, 3356060, 3356065, 3356070, 3356075, 3356080, 3356085, 3356090, 3356095, 3356100, 3356105, 3356110, 3356115, 3356120, 3356125, 3556065, 3556070, 3556075, 3556080, 3556085, 3556090, 3556095, 3556100, 3556105, 3556110, 3556115, 3556120, 3556125, 3556130, 3956065, 3956070, 3956075, 3956080, 3956085, 3956090, 3956095, 3956100, 3956105, 3956110, 3956115, 3956120, 3956125, 3956130, 4156060, 4156065, 4156070, 4156075, 4156080, 4156085, 4156090, 4156095, 4156100, 4156105, 4156110, 4156115, 4156120 },
	m_ConvertType		= 0,	
	m_Commission		= 0,	
	m_ResultItemID		= {	10560001 },
}				
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4156120, 4156125, 4356060, 4356065, 4356070, 4356075, 4356080, 4356085, 4356090, 4356095, 4356100, 4356105, 4356110, 4356115, 4356120, 4356125, 4556065, 4556070, 4556075, 4556080, 4556085, 4556090, 4556095, 4556100, 4556105, 4556110, 4556115, 4556120, 4556125, 4556130, 4956065, 4956070, 4956075, 4956080, 4956085, 4956090, 4956095, 4956100, 4956105, 4956110, 4956115, 4956120, 4956125, 4956130, 5156060, 5156065, 5156070, 5156075, 5156080, 5156085, 5156090, 5156095, 5156100, 5156105, 5156110, 5156115, 5156120, 5156125, 5356060, 5356065, 5356070, 5356075, 5356080, 5356085, 5356090, 5356095, 5356100, 5356105, 5356110, 5356115, 5356120, 5356125, 5556065, 5556070, 5556075, 5556080, 5556085, 5556090, 5556095, 5556100, 5556105, 5556110, 5556115, 5556120, 5556125, 5556130, 5956065, 5956070, 5956075, 5956080, 5956085, 5956090, 5956095, 5956100, 5956105, 5956110, 5956115, 5956120, 5956125, 5956130, 6156060, 6156065, 6156070, 6156075, 6156080, 6156085, 6156090, 6156095, 6156100, 6156105, 6156110, 6156115, 6156120, 6156125, 6356060, 6356065, 6356070, 6356075, 6356080, 6356085, 6356090, 6356095, 6356100, 6356105, 6356110, 6356115, 6356120, 6356125, 6556065, 6556070, 6556075, 6556080, 6556085, 6556090, 6556095, 6556100, 6556105, 6556110, 6556115, 6556120, 6556125, 6556130, 6956065, 6956070, 6956075, 6956080, 6956085, 6956090, 6956095, 6956100, 6956105, 6956110, 6956115, 6956120, 6956125, 6956130, 7056060, 7056065, 7056070, 7056075, 7056080, 7056085, 7056090, 7056095, 7056100, 7056105, 7056110, 7056115, 7056120, 7056125, 7156060, 7156065, 7156070, 7156075, 7156080, 7156085, 7156090, 7156095, 7156100, 7156105, 7156110, 7156115, 7156120, 7156125, 7356060, 7356065, 7356070, 7356075, 7356080, 7356085, 7356090, 7356095, 7356100, 7356105, 7356110, 7356115, 7356120, 7356125, 7556060, 7556065, 7556070, 7556075, 7556080, 7556085, 7556090, 7556095, 7556100, 7556105, 7556110, 7556115, 7556120, 7556125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560001	},
}					
--중급 강화 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156330, 1156335, 1156340, 1156345, 1156350, 1156355, 1156360, 1156365, 1156370, 1156375, 1156380, 1156385, 1156390, 1156395, 1156400, 1356330, 1356335, 1356340, 1356345, 1356350, 1356355, 1356360, 1356365, 1356370, 1356375, 1356380, 1356385, 1356390, 1356395, 1356400, 1556330, 1556335, 1556340, 1556345, 1556350, 1556355, 1556360, 1556365, 1556370, 1556375, 1556380, 1556385, 1556390, 1556395, 1556400, 1956350, 1956355, 1956360, 1956365, 1956370, 1956375, 1956380, 1956385, 1956390, 1956395, 1956400, 1956405, 1956410, 1956415, 1956420, 2156330, 2156335, 2156340, 2156345, 2156350, 2156355, 2156360, 2156365, 2156370, 2156375, 2156380, 2156385, 2156390, 2156395, 2156400, 2356330, 2356335, 2356340, 2356345, 2356350, 2356355, 2356360, 2356365, 2356370, 2356375, 2356380, 2356385, 2356390, 2356395, 2356400, 2556350, 2556355, 2556360, 2556365, 2556370, 2556375, 2556380, 2556385, 2556390, 2556395, 2556400, 2556405, 2556410, 2556415, 2556420, 2956350, 2956355, 2956360, 2956365, 2956370, 2956375, 2956380, 2956385, 2956390, 2956395, 2956400, 2956405, 2956410, 2956415, 2956420, 3156330, 3156335, 3156340, 3156345, 3156350, 3156355, 3156360, 3156365, 3156370, 3156375, 3156380, 3156385, 3156390, 3156395, 3156400, 3356330, 3356335, 3356340, 3356345, 3356350, 3356355, 3356360, 3356365, 3356370, 3356375, 3356380, 3356385, 3356390, 3356395, 3356400, 3556350, 3556355, 3556360, 3556365, 3556370, 3556375, 3556380, 3556385, 3556390, 3556395, 3556400, 3556405, 3556410, 3556415, 3556420, 3956350, 3956355, 3956360, 3956365, 3956370, 3956375, 3956380, 3956385, 3956390, 3956395, 3956400, 3956405, 3956410, 3956415, 3956420, 4156330, 4156335, 4156340, 4156345, 4156350, 4156355, 4156360, 4156365, 4156370, 4156375, 4156380, 4156385, 4156390, 4156395, 4156400, 4356330, 4356335, 4356340, 4356345, 4356350, 4356355, 4356360, 4356365, 4356370, 4356375, 4356380, 4356385, 4356390, 4356395, 4356400, 4556350, 4556355, 4556360, 4556365, 4556370, 4556375, 4556380, 4556385, 4556390, 4556395, 4556400, 4556405, 4556410, 4556415, 4556420, 4956350, 4956355, 4956360, 4956365, 4956370, 4956375, 4956380, 4956385, 4956390, 4956395, 4956400, 4956405, 4956410, 4956415, 4956420, 5156330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	5156335, 5156340, 5156345, 5156350, 5156355, 5156360, 5156365, 5156370, 5156375, 5156380, 5156385, 5156390, 5156395, 5156400, 5356330, 5356335, 5356340, 5356345, 5356350, 5356355, 5356360, 5356365, 5356370, 5356375, 5356380, 5356385, 5356390, 5356395, 5356400, 5556350, 5556355, 5556360, 5556365, 5556370, 5556375, 5556380, 5556385, 5556390, 5556395, 5556400, 5556405, 5556410, 5556415, 5556420, 5956350, 5956355, 5956360, 5956365, 5956370, 5956375, 5956380, 5956385, 5956390, 5956395, 5956400, 5956405, 5956410, 5956415, 5956420, 6156330, 6156335, 6156340, 6156345, 6156350, 6156355, 6156360, 6156365, 6156370, 6156375, 6156380, 6156385, 6156390, 6156395, 6156400, 6356330, 6356335, 6356340, 6356345, 6356350, 6356355, 6356360, 6356365, 6356370, 6356375, 6356380, 6356385, 6356390, 6356395, 6356400, 6556350, 6556355, 6556360, 6556365, 6556370, 6556375, 6556380, 6556385, 6556390, 6556395, 6556400, 6556405, 6556410, 6556415, 6556420, 6956350, 6956355, 6956360, 6956365, 6956370, 6956375, 6956380, 6956385, 6956390, 6956395, 6956400, 6956405, 6956410, 6956415, 6956420, 7056330, 7056335, 7056340, 7056345, 7056350, 7056355, 7056360, 7056365, 7056370, 7056375, 7056380, 7056385, 7056390, 7056395, 7056400, 7156330, 7156335, 7156340, 7156345, 7156350, 7156355, 7156360, 7156365, 7156370, 7156375, 7156380, 7156385, 7156390, 7156395, 7156400, 7356330, 7356335, 7356340, 7356345, 7356350, 7356355, 7356360, 7356365, 7356370, 7356375, 7356380, 7356385, 7356390, 7356395, 7356400, 7556330, 7556335, 7556340, 7556345, 7556350, 7556355, 7556360, 7556365, 7556370, 7556375, 7556380, 7556385, 7556390, 7556395, 7556400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560031	},
}					
--중급 강화 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156240, 1156245, 1156250, 1156255, 1156260, 1156265, 1156270, 1156275, 1156280, 1156285, 1156290, 1156295, 1156300, 1156305, 1356240, 1356245, 1356250, 1356255, 1356260, 1356265, 1356270, 1356275, 1356280, 1356285, 1356290, 1356295, 1356300, 1356305, 1556240, 1556245, 1556250, 1556255, 1556260, 1556265, 1556270, 1556275, 1556280, 1556285, 1556290, 1556295, 1556300, 1556305, 1956255, 1956260, 1956265, 1956270, 1956275, 1956280, 1956285, 1956290, 1956295, 1956300, 1956305, 1956310, 1956315, 1956320, 2156240, 2156245, 2156250, 2156255, 2156260, 2156265, 2156270, 2156275, 2156280, 2156285, 2156290, 2156295, 2156300, 2156305, 2356240, 2356245, 2356250, 2356255, 2356260, 2356265, 2356270, 2356275, 2356280, 2356285, 2356290, 2356295, 2356300, 2356305, 2556255, 2556260, 2556265, 2556270, 2556275, 2556280, 2556285, 2556290, 2556295, 2556300, 2556305, 2556310, 2556315, 2556320, 2956255, 2956260, 2956265, 2956270, 2956275, 2956280, 2956285, 2956290, 2956295, 2956300, 2956305, 2956310, 2956315, 2956320, 3156240, 3156245, 3156250, 3156255, 3156260, 3156265, 3156270, 3156275, 3156280, 3156285, 3156290, 3156295, 3156300, 3156305, 3356240, 3356245, 3356250, 3356255, 3356260, 3356265, 3356270, 3356275, 3356280, 3356285, 3356290, 3356295, 3356300, 3356305, 3556255, 3556260, 3556265, 3556270, 3556275, 3556280, 3556285, 3556290, 3556295, 3556300, 3556305, 3556310, 3556315, 3556320, 3956255, 3956260, 3956265, 3956270, 3956275, 3956280, 3956285, 3956290, 3956295, 3956300, 3956305, 3956310, 3956315, 3956320, 4156240, 4156245, 4156250, 4156255, 4156260, 4156265, 4156270, 4156275, 4156280, 4156285, 4156290, 4156295, 4156300, 4156305, 4356240, 4356245, 4356250, 4356255, 4356260, 4356265, 4356270, 4356275, 4356280, 4356285, 4356290, 4356295, 4356300, 4356305, 4556255, 4556260, 4556265, 4556270, 4556275, 4556280, 4556285, 4556290, 4556295, 4556300 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4556305, 4556310, 4556315, 4556320, 4956255, 4956260, 4956265, 4956270, 4956275, 4956280, 4956285, 4956290, 4956295, 4956300, 4956305, 4956310, 4956315, 4956320, 5156240, 5156245, 5156250, 5156255, 5156260, 5156265, 5156270, 5156275, 5156280, 5156285, 5156290, 5156295, 5156300, 5156305, 5356240, 5356245, 5356250, 5356255, 5356260, 5356265, 5356270, 5356275, 5356280, 5356285, 5356290, 5356295, 5356300, 5356305, 5556255, 5556260, 5556265, 5556270, 5556275, 5556280, 5556285, 5556290, 5556295, 5556300, 5556305, 5556310, 5556315, 5556320, 5956255, 5956260, 5956265, 5956270, 5956275, 5956280, 5956285, 5956290, 5956295, 5956300, 5956305, 5956310, 5956315, 5956320, 6156240, 6156245, 6156250, 6156255, 6156260, 6156265, 6156270, 6156275, 6156280, 6156285, 6156290, 6156295, 6156300, 6156305, 6356240, 6356245, 6356250, 6356255, 6356260, 6356265, 6356270, 6356275, 6356280, 6356285, 6356290, 6356295, 6356300, 6356305, 6556255, 6556260, 6556265, 6556270, 6556275, 6556280, 6556285, 6556290, 6556295, 6556300, 6556305, 6556310, 6556315, 6556320, 6956255, 6956260, 6956265, 6956270, 6956275, 6956280, 6956285, 6956290, 6956295, 6956300, 6956305, 6956310, 6956315, 6956320, 7056240, 7056245, 7056250, 7056255, 7056260, 7056265, 7056270, 7056275, 7056280, 7056285, 7056290, 7056295, 7056300, 7056305, 7156240, 7156245, 7156250, 7156255, 7156260, 7156265, 7156270, 7156275, 7156280, 7156285, 7156290, 7156295, 7156300, 7156305, 7356240, 7356245, 7356250, 7356255, 7356260, 7356265, 7356270, 7356275, 7356280, 7356285, 7356290, 7356295, 7356300, 7356305, 7556240, 7556245, 7556250, 7556255, 7556260, 7556265, 7556270, 7556275, 7556280, 7556285, 7556290, 7556295, 7556300, 7556305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560021	},
}					
--중급 강화 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156150, 1156155, 1156160, 1156165, 1156170, 1156175, 1156180, 1156185, 1156190, 1156195, 1156200, 1156205, 1156210, 1156215, 1356150, 1356155, 1356160, 1356165, 1356170, 1356175, 1356180, 1356185, 1356190, 1356195, 1356200, 1356205, 1356210, 1356215, 1556150, 1556155, 1556160, 1556165, 1556170, 1556175, 1556180, 1556185, 1556190, 1556195, 1556200, 1556205, 1556210, 1556215, 1956160, 1956165, 1956170, 1956175, 1956180, 1956185, 1956190, 1956195, 1956200, 1956205, 1956210, 1956215, 1956220, 1956225, 2156150, 2156155, 2156160, 2156165, 2156170, 2156175, 2156180, 2156185, 2156190, 2156195, 2156200, 2156205, 2156210, 2156215, 2356150, 2356155, 2356160, 2356165, 2356170, 2356175, 2356180, 2356185, 2356190, 2356195, 2356200, 2356205, 2356210, 2356215, 2556160, 2556165, 2556170, 2556175, 2556180, 2556185, 2556190, 2556195, 2556200, 2556205, 2556210, 2556215, 2556220, 2556225, 2956160, 2956165, 2956170, 2956175, 2956180, 2956185, 2956190, 2956195, 2956200, 2956205, 2956210, 2956215, 2956220, 2956225, 3156150, 3156155, 3156160, 3156165, 3156170, 3156175, 3156180, 3156185, 3156190, 3156195, 3156200, 3156205, 3156210, 3156215, 3356150, 3356155, 3356160, 3356165, 3356170, 3356175, 3356180, 3356185, 3356190, 3356195, 3356200, 3356205, 3356210, 3356215, 3556160, 3556165, 3556170, 3556175, 3556180, 3556185, 3556190, 3556195, 3556200, 3556205, 3556210, 3556215, 3556220, 3556225, 3956160, 3956165, 3956170, 3956175, 3956180, 3956185, 3956190, 3956195, 3956200, 3956205, 3956210, 3956215, 3956220, 3956225, 4156150, 4156155, 4156160, 4156165, 4156170, 4156175, 4156180, 4156185, 4156190, 4156195, 4156200, 4156205, 4156210, 4156215, 4356150, 4356155, 4356160, 4356165, 4356170, 4356175, 4356180, 4356185, 4356190, 4356195, 4356200, 4356205, 4356210, 4356215, 4556160, 4556165, 4556170, 4556175, 4556180, 4556185, 4556190, 4556195, 4556200, 4556205 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4556210, 4556215, 4556220, 4556225, 4956160, 4956165, 4956170, 4956175, 4956180, 4956185, 4956190, 4956195, 4956200, 4956205, 4956210, 4956215, 4956220, 4956225, 5156150, 5156155, 5156160, 5156165, 5156170, 5156175, 5156180, 5156185, 5156190, 5156195, 5156200, 5156205, 5156210, 5156215, 5356150, 5356155, 5356160, 5356165, 5356170, 5356175, 5356180, 5356185, 5356190, 5356195, 5356200, 5356205, 5356210, 5356215, 5556160, 5556165, 5556170, 5556175, 5556180, 5556185, 5556190, 5556195, 5556200, 5556205, 5556210, 5556215, 5556220, 5556225, 5956160, 5956165, 5956170, 5956175, 5956180, 5956185, 5956190, 5956195, 5956200, 5956205, 5956210, 5956215, 5956220, 5956225, 6156150, 6156155, 6156160, 6156165, 6156170, 6156175, 6156180, 6156185, 6156190, 6156195, 6156200, 6156205, 6156210, 6156215, 6356150, 6356155, 6356160, 6356165, 6356170, 6356175, 6356180, 6356185, 6356190, 6356195, 6356200, 6356205, 6356210, 6356215, 6556160, 6556165, 6556170, 6556175, 6556180, 6556185, 6556190, 6556195, 6556200, 6556205, 6556210, 6556215, 6556220, 6556225, 6956160, 6956165, 6956170, 6956175, 6956180, 6956185, 6956190, 6956195, 6956200, 6956205, 6956210, 6956215, 6956220, 6956225, 7056150, 7056155, 7056160, 7056165, 7056170, 7056175, 7056180, 7056185, 7056190, 7056195, 7056200, 7056205, 7056210, 7056215, 7156150, 7156155, 7156160, 7156165, 7156170, 7156175, 7156180, 7156185, 7156190, 7156195, 7156200, 7156205, 7156210, 7156215, 7356150, 7356155, 7356160, 7356165, 7356170, 7356175, 7356180, 7356185, 7356190, 7356195, 7356200, 7356205, 7356210, 7356215, 7556150, 7556155, 7556160, 7556165, 7556170, 7556175, 7556180, 7556185, 7556190, 7556195, 7556200, 7556205, 7556210, 7556215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560011	},
}					
--상급 강화 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156130, 1156135, 1356130, 1356135, 1556130, 1556135, 1956135, 1956140, 2156130, 2156135, 2356130, 2356135, 2556135, 2556140, 2956135, 2956140, 3156130, 3156135, 3356130, 3356135, 3556135, 3556140, 3956135, 3956140, 4156130, 4156135, 4356130, 4356135, 4556135, 4556140, 4956135, 4956140, 5156130, 5156135, 5356130, 5356135, 5556135, 5556140, 5956135, 5956140, 6156130, 6156135, 6356130, 6356135, 6556135, 6556140, 6956135, 6956140, 7056130, 7056135, 7156130, 7156135, 7356130, 7356135, 7556130, 7556135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560002	},
}					
--상급 강화 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156405, 1156410, 1356405, 1356410, 1556405, 1556410, 1956425, 1956430, 2156405, 2156410, 2356405, 2356410, 2556425, 2556430, 2956425, 2956430, 3156405, 3156410, 3356405, 3356410, 3556425, 3556430, 3956425, 3956430, 4156405, 4156410, 4356405, 4356410, 4556425, 4556430, 4956425, 4956430, 5156405, 5156410, 5356405, 5356410, 5556425, 5556430, 5956425, 5956430, 6156405, 6156410, 6356405, 6356410, 6556425, 6556430, 6956425, 6956430, 7056405, 7056410, 7156405, 7156410, 7356405, 7356410, 7556405, 7556410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560032	},
}					
--상급 강화 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1156310, 1156315, 1356310, 1356315, 1556310, 1556315, 1956325, 1956330, 2156310, 2156315, 2356310, 2356315, 2556325, 2556330, 2956325, 2956330, 3156310, 3156315, 3356310, 3356315, 3556325, 3556330, 3956325, 3956330, 4156310, 4156315, 4356310, 4356315, 4556325, 4556330, 4956325, 4956330, 5156310, 5156315, 5356310, 5356315, 5556325, 5556330, 5956325, 5956330, 6156310, 6156315, 6356310, 6356315, 6556325, 6556330, 6956325, 6956330, 7056310, 7056315, 7156310, 7156315, 7356310, 7356315, 7556310, 7556315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560022	},
}					
--상급 강화 티타늄 하의				
g_pItemManager:AddItemConvertInfo				
{
	m_TargetItemID		= {	1156220, 1156225, 1356220, 1356225, 1556220, 1556225, 1956230, 1956235, 2156220, 2156225, 2356220, 2356225, 2556230, 2556235, 2956230, 2956235, 3156220, 3156225, 3356220, 3356225, 3556230, 3556235, 3956230, 3956235, 4156220, 4156225, 4356220, 4356225, 4556230, 4556235, 4956230, 4956235, 5156220, 5156225, 5356220, 5356225, 5556230, 5556235, 5956230, 5956235, 6156220, 6156225, 6356220, 6356225, 6556230, 6556235, 6956230, 6956235, 7056220, 7056225, 7156220, 7156225, 7356220, 7356225, 7556220, 7556225 },
	m_ConvertType		= 0,	
	m_Commission		= 0,	
	m_ResultItemID		= {	10560012 },
}				
--최상급 강화 티타늄 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1956145, 2556145, 2956145, 3556145, 3956145, 4556145, 4956145, 5556145, 5956145, 6556145, 6956145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560003	},
}					
--최상급 강화 티타늄 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1956435, 2556435, 2956435, 3556435, 3956435, 4556435, 4956435, 5556435, 5956435, 6556435, 6956435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560033	},
}					
--최상급 강화 티타늄 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1956335, 2556335, 2956335, 3556335, 3956335, 4556335, 4956335, 5556335, 5956335, 6556335, 6956335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560023	},
}					
--최상급 강화 티타늄 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1956240, 2556240, 2956240, 3556240, 3956240, 4556240, 4956240, 5556240, 5956240, 6556240, 6956240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10560013	},
}					
--하멜 탐사단 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160055, 1160060, 1360055, 1360060, 1560055, 1560060, 1960055, 1960060, 2160055, 2160060, 2360055, 2360060, 2560055, 2560060, 2960055, 2960060, 3160055, 3160060, 3360055, 3360060, 3560055, 3560060, 3960055, 3960060, 4160055, 4160060, 4360055, 4360060, 4560055, 4560060, 4960055, 4960060, 5160055, 5160060, 5360055, 5360060, 5560055, 5560060, 5960055, 5960060, 6060055, 6060060, 6160055, 6160060, 6360055, 6360060, 6560055, 6560060, 6960055, 6960060, 7060055, 7060060, 7160055, 7160060, 7360055, 7360060, 7560055, 7560060 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600000	},
}					
--하멜 탐사단 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160340, 1160345, 1360340, 1360345, 1560340, 1560345, 1960340, 1960345, 2160340, 2160345, 2360340, 2360345, 2560340, 2560345, 2960340, 2960345, 3160340, 3160345, 3360340, 3360345, 3560340, 3560345, 3960340, 3960345, 4160340, 4160345, 4360340, 4360345, 4560340, 4560345, 4960340, 4960345, 5160340, 5160345, 5360340, 5360345, 5560340, 5560345, 5960340, 5960345, 6060340, 6060345, 6160340, 6160345, 6360340, 6360345, 6560340, 6560345, 6960340, 6960345, 7060340, 7060345, 7160340, 7160345, 7360340, 7360345, 7560340, 7560345 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600030	},
}					
--하멜 탐사단 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160245, 1160250, 1360245, 1360250, 1560245, 1560250, 1960245, 1960250, 2160245, 2160250, 2360245, 2360250, 2560245, 2560250, 2960245, 2960250, 3160245, 3160250, 3360245, 3360250, 3560245, 3560250, 3960245, 3960250, 4160245, 4160250, 4360245, 4360250, 4560245, 4560250, 4960245, 4960250, 5160245, 5160250, 5360245, 5360250, 5560245, 5560250, 5960245, 5960250, 6060245, 6060250, 6160245, 6160250, 6360245, 6360250, 6560245, 6560250, 6960245, 6960250, 7060245, 7060250, 7160245, 7160250, 7360245, 7360250, 7560245, 7560250 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600020	},
}					
--하멜 탐사단 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160150, 1160155, 1360150, 1360155, 1560150, 1560155, 1960150, 1960155, 2160150, 2160155, 2360150, 2360155, 2560150, 2560155, 2960150, 2960155, 3160150, 3160155, 3360150, 3360155, 3560150, 3560155, 3960150, 3960155, 4160150, 4160155, 4360150, 4360155, 4560150, 4560155, 4960150, 4960155, 5160150, 5160155, 5360150, 5360155, 5560150, 5560155, 5960150, 5960155, 6060150, 6060155, 6160150, 6160155, 6360150, 6360155, 6560150, 6560155, 6960150, 6960155, 7060150, 7060155, 7160150, 7160155, 7360150, 7360155, 7560150, 7560155 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600010	},
}					

--중급 하멜 탐사단 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160065, 1160070, 1160075, 1160080, 1160085, 1160090, 1160095, 1160100, 1160105, 1160110, 1160115, 1160120, 1160125, 1160130, 1360065, 1360070, 1360075, 1360080, 1360085, 1360090, 1360095, 1360100, 1360105, 1360110, 1360115, 1360120, 1360125, 1360130, 1560065, 1560070, 1560075, 1560080, 1560085, 1560090, 1560095, 1560100, 1560105, 1560110, 1560115, 1560120, 1560125, 1560130, 1960065, 1960070, 1960075, 1960080, 1960085, 1960090, 1960095, 1960100, 1960105, 1960110, 1960115, 1960120, 1960125, 1960130, 2160065, 2160070, 2160075, 2160080, 2160085, 2160090, 2160095, 2160100, 2160105, 2160110, 2160115, 2160120, 2160125, 2160130, 2360065, 2360070, 2360075, 2360080, 2360085, 2360090, 2360095, 2360100, 2360105, 2360110, 2360115, 2360120, 2360125, 2360130, 2560065, 2560070, 2560075, 2560080, 2560085, 2560090, 2560095, 2560100, 2560105, 2560110, 2560115, 2560120, 2560125, 2560130, 2960065, 2960070, 2960075, 2960080, 2960085, 2960090, 2960095, 2960100, 2960105, 2960110, 2960115, 2960120, 2960125, 2960130, 3160065, 3160070, 3160075, 3160080, 3160085, 3160090, 3160095, 3160100, 3160105, 3160110, 3160115, 3160120, 3160125, 3160130, 3360065, 3360070, 3360075, 3360080, 3360085, 3360090, 3360095, 3360100, 3360105, 3360110, 3360115, 3360120, 3360125, 3360130, 3560065, 3560070, 3560075, 3560080, 3560085, 3560090, 3560095, 3560100, 3560105, 3560110, 3560115, 3560120, 3560125, 3560130, 3960065, 3960070, 3960075, 3960080, 3960085, 3960090, 3960095, 3960100, 3960105, 3960110, 3960115, 3960120, 3960125, 3960130, 4160065, 4160070, 4160075, 4160080, 4160085, 4160090, 4160095, 4160100, 4160105, 4160110, 4160115, 4160120, 4160125, 4160130, 4360065, 4360070, 4360075, 4360080, 4360085, 4360090, 4360095, 4360100, 4360105, 4360110, 4360115, 4360120, 4360125, 4360130, 4560065, 4560070, 4560075, 4560080, 4560085 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4560090, 4560095, 4560100, 4560105, 4560110, 4560115, 4560120, 4560125, 4560130, 4960065, 4960070, 4960075, 4960080, 4960085, 4960090, 4960095, 4960100, 4960105, 4960110, 4960115, 4960120, 4960125, 4960130, 5160065, 5160070, 5160075, 5160080, 5160085, 5160090, 5160095, 5160100, 5160105, 5160110, 5160115, 5160120, 5160125, 5160130, 5360065, 5360070, 5360075, 5360080, 5360085, 5360090, 5360095, 5360100, 5360105, 5360110, 5360115, 5360120, 5360125, 5360130, 5560065, 5560070, 5560075, 5560080, 5560085, 5560090, 5560095, 5560100, 5560105, 5560110, 5560115, 5560120, 5560125, 5560130, 5960065, 5960070, 5960075, 5960080, 5960085, 5960090, 5960095, 5960100, 5960105, 5960110, 5960115, 5960120, 5960125, 5960130, 6060065, 6060070, 6060075, 6060080, 6060085, 6060090, 6060095, 6060100, 6060105, 6060110, 6060115, 6060120, 6060125, 6060130, 6160065, 6160070, 6160075, 6160080, 6160085, 6160090, 6160095, 6160100, 6160105, 6160110, 6160115, 6160120, 6160125, 6160130, 6360065, 6360070, 6360075, 6360080, 6360085, 6360090, 6360095, 6360100, 6360105, 6360110, 6360115, 6360120, 6360125, 6360130, 6560065, 6560070, 6560075, 6560080, 6560085, 6560090, 6560095, 6560100, 6560105, 6560110, 6560115, 6560120, 6560125, 6560130, 6960065, 6960070, 6960075, 6960080, 6960085, 6960090, 6960095, 6960100, 6960105, 6960110, 6960115, 6960120, 6960125, 6960130, 7060065, 7060070, 7060075, 7060080, 7060085, 7060090, 7060095, 7060100, 7060105, 7060110, 7060115, 7060120, 7060125, 7060130, 7160065, 7160070, 7160075, 7160080, 7160085, 7160090, 7160095, 7160100, 7160105, 7160110, 7160115, 7160120, 7160125, 7160130, 7360065, 7360070, 7360075, 7360080, 7360085, 7360090, 7360095, 7360100, 7360105, 7360110, 7360115, 7360120, 7360125, 7360130, 7560065, 7560070, 7560075, 7560080, 7560085, 7560090, 7560095, 7560100, 7560105, 7560110, 7560115, 7560120, 7560125, 7560130 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600001	},
}					
--중급 하멜 탐사단 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160350, 1160355, 1160360, 1160365, 1160370, 1160375, 1160380, 1160385, 1160390, 1160395, 1160400, 1160405, 1160410, 1160415, 1160420, 1360350, 1360355, 1360360, 1360365, 1360370, 1360375, 1360380, 1360385, 1360390, 1360395, 1360400, 1360405, 1360410, 1360415, 1360420, 1560350, 1560355, 1560360, 1560365, 1560370, 1560375, 1560380, 1560385, 1560390, 1560395, 1560400, 1560405, 1560410, 1560415, 1560420, 1960350, 1960355, 1960360, 1960365, 1960370, 1960375, 1960380, 1960385, 1960390, 1960395, 1960400, 1960405, 1960410, 1960415, 1960420, 2160350, 2160355, 2160360, 2160365, 2160370, 2160375, 2160380, 2160385, 2160390, 2160395, 2160400, 2160405, 2160410, 2160415, 2160420, 2360350, 2360355, 2360360, 2360365, 2360370, 2360375, 2360380, 2360385, 2360390, 2360395, 2360400, 2360405, 2360410, 2360415, 2360420, 2560350, 2560355, 2560360, 2560365, 2560370, 2560375, 2560380, 2560385, 2560390, 2560395, 2560400, 2560405, 2560410, 2560415, 2560420, 2960350, 2960355, 2960360, 2960365, 2960370, 2960375, 2960380, 2960385, 2960390, 2960395, 2960400, 2960405, 2960410, 2960415, 2960420, 3160350, 3160355, 3160360, 3160365, 3160370, 3160375, 3160380, 3160385, 3160390, 3160395, 3160400, 3160405, 3160410, 3160415, 3160420, 3360350, 3360355, 3360360, 3360365, 3360370, 3360375, 3360380, 3360385, 3360390, 3360395, 3360400, 3360405, 3360410, 3360415, 3360420, 3560350, 3560355, 3560360, 3560365, 3560370, 3560375, 3560380, 3560385, 3560390, 3560395, 3560400, 3560405, 3560410, 3560415, 3560420, 3960350, 3960355, 3960360, 3960365, 3960370, 3960375, 3960380, 3960385, 3960390, 3960395, 3960400, 3960405, 3960410, 3960415, 3960420, 4160350, 4160355, 4160360, 4160365, 4160370, 4160375, 4160380, 4160385, 4160390, 4160395, 4160400, 4160405, 4160410, 4160415, 4160420, 4360350, 4360355, 4360360, 4360365, 4360370, 4360375, 4360380, 4360385, 4360390, 4360395, 4360400, 4360405, 4360410, 4360415, 4360420, 4560350, 4560355, 4560360, 4560365, 4560370, 4560375, 4560380, 4560385, 4560390, 4560395, 4560400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4560405, 4560410, 4560415, 4560420, 4960350, 4960355, 4960360, 4960365, 4960370, 4960375, 4960380, 4960385, 4960390, 4960395, 4960400, 4960405, 4960410, 4960415, 4960420, 5160350, 5160355, 5160360, 5160365, 5160370, 5160375, 5160380, 5160385, 5160390, 5160395, 5160400, 5160405, 5160410, 5160415, 5160420, 5360350, 5360355, 5360360, 5360365, 5360370, 5360375, 5360380, 5360385, 5360390, 5360395, 5360400, 5360405, 5360410, 5360415, 5360420, 5560350, 5560355, 5560360, 5560365, 5560370, 5560375, 5560380, 5560385, 5560390, 5560395, 5560400, 5560405, 5560410, 5560415, 5560420, 5960350, 5960355, 5960360, 5960365, 5960370, 5960375, 5960380, 5960385, 5960390, 5960395, 5960400, 5960405, 5960410, 5960415, 5960420, 6060350, 6060355, 6060360, 6060365, 6060370, 6060375, 6060380, 6060385, 6060390, 6060395, 6060400, 6060405, 6060410, 6060415, 6060420, 6160350, 6160355, 6160360, 6160365, 6160370, 6160375, 6160380, 6160385, 6160390, 6160395, 6160400, 6160405, 6160410, 6160415, 6160420, 6360350, 6360355, 6360360, 6360365, 6360370, 6360375, 6360380, 6360385, 6360390, 6360395, 6360400, 6360405, 6360410, 6360415, 6360420, 6560350, 6560355, 6560360, 6560365, 6560370, 6560375, 6560380, 6560385, 6560390, 6560395, 6560400, 6560405, 6560410, 6560415, 6560420, 6960350, 6960355, 6960360, 6960365, 6960370, 6960375, 6960380, 6960385, 6960390, 6960395, 6960400, 6960405, 6960410, 6960415, 6960420, 7060350, 7060355, 7060360, 7060365, 7060370, 7060375, 7060380, 7060385, 7060390, 7060395, 7060400, 7060405, 7060410, 7060415, 7060420, 7160350, 7160355, 7160360, 7160365, 7160370, 7160375, 7160380, 7160385, 7160390, 7160395, 7160400, 7160405, 7160410, 7160415, 7160420, 7360350, 7360355, 7360360, 7360365, 7360370, 7360375, 7360380, 7360385, 7360390, 7360395, 7360400, 7360405, 7360410, 7360415, 7360420, 7560350, 7560355, 7560360, 7560365, 7560370, 7560375, 7560380, 7560385, 7560390, 7560395, 7560400, 7560405, 7560410, 7560415, 7560420 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600031	},
}					
--중급 하멜 탐사단 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160255, 1160260, 1160265, 1160270, 1160275, 1160280, 1160285, 1160290, 1160295, 1160300, 1160305, 1160310, 1160315, 1160320, 1360255, 1360260, 1360265, 1360270, 1360275, 1360280, 1360285, 1360290, 1360295, 1360300, 1360305, 1360310, 1360315, 1360320, 1560255, 1560260, 1560265, 1560270, 1560275, 1560280, 1560285, 1560290, 1560295, 1560300, 1560305, 1560310, 1560315, 1560320, 1960255, 1960260, 1960265, 1960270, 1960275, 1960280, 1960285, 1960290, 1960295, 1960300, 1960305, 1960310, 1960315, 1960320, 2160255, 2160260, 2160265, 2160270, 2160275, 2160280, 2160285, 2160290, 2160295, 2160300, 2160305, 2160310, 2160315, 2160320, 2360255, 2360260, 2360265, 2360270, 2360275, 2360280, 2360285, 2360290, 2360295, 2360300, 2360305, 2360310, 2360315, 2360320, 2560255, 2560260, 2560265, 2560270, 2560275, 2560280, 2560285, 2560290, 2560295, 2560300, 2560305, 2560310, 2560315, 2560320, 2960255, 2960260, 2960265, 2960270, 2960275, 2960280, 2960285, 2960290, 2960295, 2960300, 2960305, 2960310, 2960315, 2960320, 3160255, 3160260, 3160265, 3160270, 3160275, 3160280, 3160285, 3160290, 3160295, 3160300, 3160305, 3160310, 3160315, 3160320, 3360255, 3360260, 3360265, 3360270, 3360275, 3360280, 3360285, 3360290, 3360295, 3360300, 3360305, 3360310, 3360315, 3360320, 3560255, 3560260, 3560265, 3560270, 3560275, 3560280, 3560285, 3560290, 3560295, 3560300, 3560305, 3560310, 3560315, 3560320, 3960255, 3960260, 3960265, 3960270, 3960275, 3960280, 3960285, 3960290, 3960295, 3960300, 3960305, 3960310, 3960315, 3960320, 4160255, 4160260, 4160265, 4160270, 4160275, 4160280, 4160285, 4160290, 4160295, 4160300, 4160305, 4160310, 4160315, 4160320, 4360255, 4360260, 4360265, 4360270, 4360275, 4360280, 4360285, 4360290, 4360295, 4360300, 4360305, 4360310, 4360315, 4360320, 4560255, 4560260, 4560265, 4560270, 4560275 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4560280, 4560285, 4560290, 4560295, 4560300, 4560305, 4560310, 4560315, 4560320, 4960255, 4960260, 4960265, 4960270, 4960275, 4960280, 4960285, 4960290, 4960295, 4960300, 4960305, 4960310, 4960315, 4960320, 5160255, 5160260, 5160265, 5160270, 5160275, 5160280, 5160285, 5160290, 5160295, 5160300, 5160305, 5160310, 5160315, 5160320, 5360255, 5360260, 5360265, 5360270, 5360275, 5360280, 5360285, 5360290, 5360295, 5360300, 5360305, 5360310, 5360315, 5360320, 5560255, 5560260, 5560265, 5560270, 5560275, 5560280, 5560285, 5560290, 5560295, 5560300, 5560305, 5560310, 5560315, 5560320, 5960255, 5960260, 5960265, 5960270, 5960275, 5960280, 5960285, 5960290, 5960295, 5960300, 5960305, 5960310, 5960315, 5960320, 6060255, 6060260, 6060265, 6060270, 6060275, 6060280, 6060285, 6060290, 6060295, 6060300, 6060305, 6060310, 6060315, 6060320, 6160255, 6160260, 6160265, 6160270, 6160275, 6160280, 6160285, 6160290, 6160295, 6160300, 6160305, 6160310, 6160315, 6160320, 6360255, 6360260, 6360265, 6360270, 6360275, 6360280, 6360285, 6360290, 6360295, 6360300, 6360305, 6360310, 6360315, 6360320, 6560255, 6560260, 6560265, 6560270, 6560275, 6560280, 6560285, 6560290, 6560295, 6560300, 6560305, 6560310, 6560315, 6560320, 6960255, 6960260, 6960265, 6960270, 6960275, 6960280, 6960285, 6960290, 6960295, 6960300, 6960305, 6960310, 6960315, 6960320, 7060255, 7060260, 7060265, 7060270, 7060275, 7060280, 7060285, 7060290, 7060295, 7060300, 7060305, 7060310, 7060315, 7060320, 7160255, 7160260, 7160265, 7160270, 7160275, 7160280, 7160285, 7160290, 7160295, 7160300, 7160305, 7160310, 7160315, 7160320, 7360255, 7360260, 7360265, 7360270, 7360275, 7360280, 7360285, 7360290, 7360295, 7360300, 7360305, 7360310, 7360315, 7360320, 7560255, 7560260, 7560265, 7560270, 7560275, 7560280, 7560285, 7560290, 7560295, 7560300, 7560305, 7560310, 7560315, 7560320 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600021	},
}					
--중급 하멜 탐사단 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160160, 1160165, 1160170, 1160175, 1160180, 1160185, 1160190, 1160195, 1160200, 1160205, 1160210, 1160215, 1160220, 1160225, 1360160, 1360165, 1360170, 1360175, 1360180, 1360185, 1360190, 1360195, 1360200, 1360205, 1360210, 1360215, 1360220, 1360225, 1560160, 1560165, 1560170, 1560175, 1560180, 1560185, 1560190, 1560195, 1560200, 1560205, 1560210, 1560215, 1560220, 1560225, 1960160, 1960165, 1960170, 1960175, 1960180, 1960185, 1960190, 1960195, 1960200, 1960205, 1960210, 1960215, 1960220, 1960225, 2160160, 2160165, 2160170, 2160175, 2160180, 2160185, 2160190, 2160195, 2160200, 2160205, 2160210, 2160215, 2160220, 2160225, 2360160, 2360165, 2360170, 2360175, 2360180, 2360185, 2360190, 2360195, 2360200, 2360205, 2360210, 2360215, 2360220, 2360225, 2560160, 2560165, 2560170, 2560175, 2560180, 2560185, 2560190, 2560195, 2560200, 2560205, 2560210, 2560215, 2560220, 2560225, 2960160, 2960165, 2960170, 2960175, 2960180, 2960185, 2960190, 2960195, 2960200, 2960205, 2960210, 2960215, 2960220, 2960225, 3160160, 3160165, 3160170, 3160175, 3160180, 3160185, 3160190, 3160195, 3160200, 3160205, 3160210, 3160215, 3160220, 3160225, 3360160, 3360165, 3360170, 3360175, 3360180, 3360185, 3360190, 3360195, 3360200, 3360205, 3360210, 3360215, 3360220, 3360225, 3560160, 3560165, 3560170, 3560175, 3560180, 3560185, 3560190, 3560195, 3560200, 3560205, 3560210, 3560215, 3560220, 3560225, 3960160, 3960165, 3960170, 3960175, 3960180, 3960185, 3960190, 3960195, 3960200, 3960205, 3960210, 3960215, 3960220, 3960225, 4160160, 4160165, 4160170, 4160175, 4160180, 4160185, 4160190, 4160195, 4160200, 4160205, 4160210, 4160215, 4160220, 4160225, 4360160, 4360165, 4360170, 4360175, 4360180, 4360185, 4360190, 4360195, 4360200, 4360205, 4360210, 4360215, 4360220, 4360225, 4560160, 4560165, 4560170, 4560175, 4560180, 4560185, 4560190, 4560195, 4560200, 4560205 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4560210, 4560215, 4560220, 4560225, 4960160, 4960165, 4960170, 4960175, 4960180, 4960185, 4960190, 4960195, 4960200, 4960205, 4960210, 4960215, 4960220, 4960225, 5160160, 5160165, 5160170, 5160175, 5160180, 5160185, 5160190, 5160195, 5160200, 5160205, 5160210, 5160215, 5160220, 5160225, 5360160, 5360165, 5360170, 5360175, 5360180, 5360185, 5360190, 5360195, 5360200, 5360205, 5360210, 5360215, 5360220, 5360225, 5560160, 5560165, 5560170, 5560175, 5560180, 5560185, 5560190, 5560195, 5560200, 5560205, 5560210, 5560215, 5560220, 5560225, 5960160, 5960165, 5960170, 5960175, 5960180, 5960185, 5960190, 5960195, 5960200, 5960205, 5960210, 5960215, 5960220, 5960225, 6060160, 6060165, 6060170, 6060175, 6060180, 6060185, 6060190, 6060195, 6060200, 6060205, 6060210, 6060215, 6060220, 6060225, 6160160, 6160165, 6160170, 6160175, 6160180, 6160185, 6160190, 6160195, 6160200, 6160205, 6160210, 6160215, 6160220, 6160225, 6360160, 6360165, 6360170, 6360175, 6360180, 6360185, 6360190, 6360195, 6360200, 6360205, 6360210, 6360215, 6360220, 6360225, 6560160, 6560165, 6560170, 6560175, 6560180, 6560185, 6560190, 6560195, 6560200, 6560205, 6560210, 6560215, 6560220, 6560225, 6960160, 6960165, 6960170, 6960175, 6960180, 6960185, 6960190, 6960195, 6960200, 6960205, 6960210, 6960215, 6960220, 6960225, 7060160, 7060165, 7060170, 7060175, 7060180, 7060185, 7060190, 7060195, 7060200, 7060205, 7060210, 7060215, 7060220, 7060225, 7160160, 7160165, 7160170, 7160175, 7160180, 7160185, 7160190, 7160195, 7160200, 7160205, 7160210, 7160215, 7160220, 7160225, 7360160, 7360165, 7360170, 7360175, 7360180, 7360185, 7360190, 7360195, 7360200, 7360205, 7360210, 7360215, 7360220, 7360225, 7560160, 7560165, 7560170, 7560175, 7560180, 7560185, 7560190, 7560195, 7560200, 7560205, 7560210, 7560215, 7560220, 7560225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600011	},
}				
--상급 하멜 탐사단 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160135, 1160140, 1360135, 1360140, 1560135, 1560140, 1960135, 1960140, 2160135, 2160140, 2360135, 2360140, 2560135, 2560140, 2960135, 2960140, 3160135, 3160140, 3360135, 3360140, 3560135, 3560140, 3960135, 3960140, 4160135, 4160140, 4360135, 4360140, 4560135, 4560140, 4960135, 4960140, 5160135, 5160140, 5360135, 5360140, 5560135, 5560140, 5960135, 5960140, 6060135, 6060140, 6160135, 6160140, 6360135, 6360140, 6560135, 6560140, 6960135, 6960140, 7060135, 7060140, 7160135, 7160140, 7360135, 7360140, 7560135, 7560140 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600002	},
}					
--상급 하멜 탐사단 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160230, 1160235, 1360230, 1360235, 1560230, 1560235, 1960230, 1960235, 2160230, 2160235, 2360230, 2360235, 2560230, 2560235, 2960230, 2960235, 3160230, 3160235, 3360230, 3360235, 3560230, 3560235, 3960230, 3960235, 4160230, 4160235, 4360230, 4360235, 4560230, 4560235, 4960230, 4960235, 5160230, 5160235, 5360230, 5360235, 5560230, 5560235, 5960230, 5960235, 6060230, 6060235, 6160230, 6160235, 6360230, 6360235, 6560230, 6560235, 6960230, 6960235, 7060230, 7060235, 7160230, 7160235, 7360230, 7360235, 7560230, 7560235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600012	},
}					
--상급 하멜 탐사단 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160325, 1160330, 1360325, 1360330, 1560325, 1560330, 1960325, 1960330, 2160325, 2160330, 2360325, 2360330, 2560325, 2560330, 2960325, 2960330, 3160325, 3160330, 3360325, 3360330, 3560325, 3560330, 3960325, 3960330, 4160325, 4160330, 4360325, 4360330, 4560325, 4560330, 4960325, 4960330, 5160325, 5160330, 5360325, 5360330, 5560325, 5560330, 5960325, 5960330, 6060325, 6060330, 6160325, 6160330, 6360325, 6360330, 6560325, 6560330, 6960325, 6960330, 7060325, 7060330, 7160325, 7160330, 7360325, 7360330, 7560325, 7560330 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600022	},
}					
--상급 하멜 탐사단 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160425, 1160430, 1360425, 1360430, 1560425, 1560430, 1960425, 1960430, 2160425, 2160430, 2360425, 2360430, 2560425, 2560430, 2960425, 2960430, 3160425, 3160430, 3360425, 3360430, 3560425, 3560430, 3960425, 3960430, 4160425, 4160430, 4360425, 4360430, 4560425, 4560430, 4960425, 4960430, 5160425, 5160430, 5360425, 5360430, 5560425, 5560430, 5960425, 5960430, 6060425, 6060430, 6160425, 6160430, 6360425, 6360430, 6560425, 6560430, 6960425, 6960430, 7060425, 7060430, 7160425, 7160430, 7360425, 7360430, 7560425, 7560430 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600032	},
}					
--최상급 하멜 탐사단 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160145, 1360145, 1560145, 1960145, 2160145, 2360145, 2560145, 2960145, 3160145, 3360145, 3560145, 3960145, 4160145, 4360145, 4560145, 4960145, 5160145, 5360145, 5560145, 5960145, 6060145, 6160145, 6360145, 6560145, 6960145, 7060145, 7160145, 7360145, 7560145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600003	},
}					
--최상급 하멜 탐사단 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160435, 1360435, 1560435, 1960435, 2160435, 2360435, 2560435, 2960435, 3160435, 3360435, 3560435, 3960435, 4160435, 4360435, 4560435, 4960435, 5160435, 5360435, 5560435, 5960435, 6060435, 6160435, 6360435, 6560435, 6960435, 7060435, 7160435, 7360435, 7560435 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600033	},
}					
--최상급 하멜 탐사단 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160335, 1360335, 1560335, 1960335, 2160335, 2360335, 2560335, 2960335, 3160335, 3360335, 3560335, 3960335, 4160335, 4360335, 4560335, 4960335, 5160335, 5360335, 5560335, 5960335, 6060335, 6160335, 6360335, 6560335, 6960335, 7060335, 7160335, 7360335, 7560335 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600023	},
}					
--최상급 하멜 탐사단 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1160240, 1360240, 1560240, 1960240, 2160240, 2360240, 2560240, 2960240, 3160240, 3360240, 3560240, 3960240, 4160240, 4360240, 4560240, 4960240, 5160240, 5360240, 5560240, 5960240, 6060240, 6160240, 6360240, 6560240, 6960240, 7060240, 7160240, 7360240, 7560240 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10600013	},
}					
--마족 공격대 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164050, 1164055, 1364050, 1364055, 1564050, 1564055, 2164050, 2164055, 2364050, 2364055, 2564050, 2564055, 3164050, 3164055, 3364050, 3364055, 3564050, 3564055, 4164050, 4164055, 4364050, 4364055, 4564050, 4564055, 5164050, 5164055, 5364050, 5364055, 5564050, 5564055, 6164050, 6164055, 6364050, 6364055, 6564050, 6564055, 7064050, 7064055, 7164050, 7164055, 7364050, 7364055, 7564050, 7564055 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640000	},
}					
--마족 공격대 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164320, 1164325, 1364320, 1364325, 1564320, 1564325, 2164320, 2164325, 2364320, 2364325, 2564320, 2564325, 3164320, 3164325, 3364320, 3364325, 3564320, 3564325, 4164320, 4164325, 4364320, 4364325, 4564320, 4564325, 5164320, 5164325, 5364320, 5364325, 5564320, 5564325, 6164320, 6164325, 6364320, 6364325, 6564320, 6564325, 7064320, 7064325, 7164320, 7164325, 7364320, 7364325, 7564320, 7564325 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640030	},
}					
--마족 공격대 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164230, 1164235, 1364230, 1364235, 1564230, 1564235, 2164230, 2164235, 2364230, 2364235, 2564230, 2564235, 3164230, 3164235, 3364230, 3364235, 3564230, 3564235, 4164230, 4164235, 4364230, 4364235, 4564230, 4564235, 5164230, 5164235, 5364230, 5364235, 5564230, 5564235, 6164230, 6164235, 6364230, 6364235, 6564230, 6564235, 7064230, 7064235, 7164230, 7164235, 7364230, 7364235, 7564230, 7564235 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640020	},
}					
--마족 공격대 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164140, 1164145, 1364140, 1364145, 1564140, 1564145, 2164140, 2164145, 2364140, 2364145, 2564140, 2564145, 3164140, 3164145, 3364140, 3364145, 3564140, 3564145, 4164140, 4164145, 4364140, 4364145, 4564140, 4564145, 5164140, 5164145, 5364140, 5364145, 5564140, 5564145, 6164140, 6164145, 6364140, 6364145, 6564140, 6564145, 7064140, 7064145, 7164140, 7164145, 7364140, 7364145, 7564140, 7564145 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640010	},
}					
--중급 마족 공격대 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164060, 1164065, 1164070, 1164075, 1164080, 1164085, 1164090, 1164095, 1164100, 1164105, 1164110, 1164115, 1164120, 1164125, 1364060, 1364065, 1364070, 1364075, 1364080, 1364085, 1364090, 1364095, 1364100, 1364105, 1364110, 1364115, 1364120, 1364125, 1564060, 1564065, 1564070, 1564075, 1564080, 1564085, 1564090, 1564095, 1564100, 1564105, 1564110, 1564115, 1564120, 1564125, 2164060, 2164065, 2164070, 2164075, 2164080, 2164085, 2164090, 2164095, 2164100, 2164105, 2164110, 2164115, 2164120, 2164125, 2364060, 2364065, 2364070, 2364075, 2364080, 2364085, 2364090, 2364095, 2364100, 2364105, 2364110, 2364115, 2364120, 2364125, 2564060, 2564065, 2564070, 2564075, 2564080, 2564085, 2564090, 2564095, 2564100, 2564105, 2564110, 2564115, 2564120, 2564125, 3164060, 3164065, 3164070, 3164075, 3164080, 3164085, 3164090, 3164095, 3164100, 3164105, 3164110, 3164115, 3164120, 3164125, 3364060, 3364065, 3364070, 3364075, 3364080, 3364085, 3364090, 3364095, 3364100, 3364105, 3364110, 3364115, 3364120, 3364125, 3564060, 3564065, 3564070, 3564075, 3564080, 3564085, 3564090, 3564095, 3564100, 3564105, 3564110, 3564115, 3564120, 3564125, 4164060, 4164065, 4164070, 4164075, 4164080, 4164085, 4164090, 4164095, 4164100, 4164105, 4164110, 4164115, 4164120, 4164125, 4364060, 4364065, 4364070, 4364075, 4364080, 4364085, 4364090, 4364095, 4364100, 4364105, 4364110 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640001	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4364115, 4364120, 4364125, 4564060, 4564065, 4564070, 4564075, 4564080, 4564085, 4564090, 4564095, 4564100, 4564105, 4564110, 4564115, 4564120, 4564125, 5164060, 5164065, 5164070, 5164075, 5164080, 5164085, 5164090, 5164095, 5164100, 5164105, 5164110, 5164115, 5164120, 5164125, 5364060, 5364065, 5364070, 5364075, 5364080, 5364085, 5364090, 5364095, 5364100, 5364105, 5364110, 5364115, 5364120, 5364125, 5564060, 5564065, 5564070, 5564075, 5564080, 5564085, 5564090, 5564095, 5564100, 5564105, 5564110, 5564115, 5564120, 5564125, 6164060, 6164065, 6164070, 6164075, 6164080, 6164085, 6164090, 6164095, 6164100, 6164105, 6164110, 6164115, 6164120, 6164125, 6364060, 6364065, 6364070, 6364075, 6364080, 6364085, 6364090, 6364095, 6364100, 6364105, 6364110, 6364115, 6364120, 6364125, 6564060, 6564065, 6564070, 6564075, 6564080, 6564085, 6564090, 6564095, 6564100, 6564105, 6564110, 6564115, 6564120, 6564125, 7064060, 7064065, 7064070, 7064075, 7064080, 7064085, 7064090, 7064095, 7064100, 7064105, 7064110, 7064115, 7064120, 7064125, 7164060, 7164065, 7164070, 7164075, 7164080, 7164085, 7164090, 7164095, 7164100, 7164105, 7164110, 7164115, 7164120, 7164125, 7364060, 7364065, 7364070, 7364075, 7364080, 7364085, 7364090, 7364095, 7364100, 7364105, 7364110, 7364115, 7364120, 7364125, 7564060, 7564065, 7564070, 7564075, 7564080, 7564085, 7564090, 7564095, 7564100, 7564105, 7564110, 7564115, 7564120, 7564125 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640001	},
}					
--중급 마족 공격대 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164330, 1164335, 1164340, 1164345, 1164350, 1164355, 1164360, 1164365, 1164370, 1164375, 1164380, 1164385, 1164390, 1164395, 1164400, 1364330, 1364335, 1364340, 1364345, 1364350, 1364355, 1364360, 1364365, 1364370, 1364375, 1364380, 1364385, 1364390, 1364395, 1364400, 1564330, 1564335, 1564340, 1564345, 1564350, 1564355, 1564360, 1564365, 1564370, 1564375, 1564380, 1564385, 1564390, 1564395, 1564400, 2164330, 2164335, 2164340, 2164345, 2164350, 2164355, 2164360, 2164365, 2164370, 2164375, 2164380, 2164385, 2164390, 2164395, 2164400, 2364330, 2364335, 2364340, 2364345, 2364350, 2364355, 2364360, 2364365, 2364370, 2364375, 2364380, 2364385, 2364390, 2364395, 2364400, 2564330, 2564335, 2564340, 2564345, 2564350, 2564355, 2564360, 2564365, 2564370, 2564375, 2564380, 2564385, 2564390, 2564395, 2564400, 3164330, 3164335, 3164340, 3164345, 3164350, 3164355, 3164360, 3164365, 3164370, 3164375, 3164380, 3164385, 3164390, 3164395, 3164400, 3364330, 3364335, 3364340, 3364345, 3364350, 3364355, 3364360, 3364365, 3364370, 3364375, 3364380, 3364385, 3364390, 3364395, 3364400, 3564330, 3564335, 3564340, 3564345, 3564350, 3564355, 3564360, 3564365, 3564370, 3564375, 3564380, 3564385, 3564390, 3564395, 3564400, 4164330, 4164335, 4164340, 4164345, 4164350, 4164355, 4164360, 4164365, 4164370, 4164375, 4164380, 4164385, 4164390, 4164395, 4164400, 4364330, 4364335, 4364340, 4364345, 4364350, 4364355, 4364360, 4364365, 4364370, 4364375, 4364380, 4364385, 4364390, 4364395, 4364400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640031	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4564330, 4564335, 4564340, 4564345, 4564350, 4564355, 4564360, 4564365, 4564370, 4564375, 4564380, 4564385, 4564390, 4564395, 4564400, 5164330, 5164335, 5164340, 5164345, 5164350, 5164355, 5164360, 5164365, 5164370, 5164375, 5164380, 5164385, 5164390, 5164395, 5164400, 5364330, 5364335, 5364340, 5364345, 5364350, 5364355, 5364360, 5364365, 5364370, 5364375, 5364380, 5364385, 5364390, 5364395, 5364400, 5564330, 5564335, 5564340, 5564345, 5564350, 5564355, 5564360, 5564365, 5564370, 5564375, 5564380, 5564385, 5564390, 5564395, 5564400, 6164330, 6164335, 6164340, 6164345, 6164350, 6164355, 6164360, 6164365, 6164370, 6164375, 6164380, 6164385, 6164390, 6164395, 6164400, 6364330, 6364335, 6364340, 6364345, 6364350, 6364355, 6364360, 6364365, 6364370, 6364375, 6364380, 6364385, 6364390, 6364395, 6364400, 6564330, 6564335, 6564340, 6564345, 6564350, 6564355, 6564360, 6564365, 6564370, 6564375, 6564380, 6564385, 6564390, 6564395, 6564400, 7064330, 7064335, 7064340, 7064345, 7064350, 7064355, 7064360, 7064365, 7064370, 7064375, 7064380, 7064385, 7064390, 7064395, 7064400, 7164330, 7164335, 7164340, 7164345, 7164350, 7164355, 7164360, 7164365, 7164370, 7164375, 7164380, 7164385, 7164390, 7164395, 7164400, 7364330, 7364335, 7364340, 7364345, 7364350, 7364355, 7364360, 7364365, 7364370, 7364375, 7364380, 7364385, 7364390, 7364395, 7364400, 7564330, 7564335, 7564340, 7564345, 7564350, 7564355, 7564360, 7564365, 7564370, 7564375, 7564380, 7564385, 7564390, 7564395, 7564400 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640031	},
}					
--중급 마족 공격대 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164240, 1164245, 1164250, 1164255, 1164260, 1164265, 1164270, 1164275, 1164280, 1164285, 1164290, 1164295, 1164300, 1164305, 1364240, 1364245, 1364250, 1364255, 1364260, 1364265, 1364270, 1364275, 1364280, 1364285, 1364290, 1364295, 1364300, 1364305, 1564240, 1564245, 1564250, 1564255, 1564260, 1564265, 1564270, 1564275, 1564280, 1564285, 1564290, 1564295, 1564300, 1564305, 2164240, 2164245, 2164250, 2164255, 2164260, 2164265, 2164270, 2164275, 2164280, 2164285, 2164290, 2164295, 2164300, 2164305, 2364240, 2364245, 2364250, 2364255, 2364260, 2364265, 2364270, 2364275, 2364280, 2364285, 2364290, 2364295, 2364300, 2364305, 2564240, 2564245, 2564250, 2564255, 2564260, 2564265, 2564270, 2564275, 2564280, 2564285, 2564290, 2564295, 2564300, 2564305, 3164240, 3164245, 3164250, 3164255, 3164260, 3164265, 3164270, 3164275, 3164280, 3164285, 3164290, 3164295, 3164300, 3164305, 3364240, 3364245, 3364250, 3364255, 3364260, 3364265, 3364270, 3364275, 3364280, 3364285, 3364290, 3364295, 3364300, 3364305, 3564240, 3564245, 3564250, 3564255, 3564260, 3564265, 3564270, 3564275, 3564280, 3564285, 3564290, 3564295, 3564300, 3564305, 4164240, 4164245, 4164250, 4164255, 4164260, 4164265, 4164270, 4164275, 4164280, 4164285, 4164290, 4164295, 4164300, 4164305, 4364240, 4364245, 4364250, 4364255, 4364260, 4364265, 4364270, 4364275, 4364280, 4364285, 4364290 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640021	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4364295, 4364300, 4364305, 4564240, 4564245, 4564250, 4564255, 4564260, 4564265, 4564270, 4564275, 4564280, 4564285, 4564290, 4564295, 4564300, 4564305, 5164240, 5164245, 5164250, 5164255, 5164260, 5164265, 5164270, 5164275, 5164280, 5164285, 5164290, 5164295, 5164300, 5164305, 5364240, 5364245, 5364250, 5364255, 5364260, 5364265, 5364270, 5364275, 5364280, 5364285, 5364290, 5364295, 5364300, 5364305, 5564240, 5564245, 5564250, 5564255, 5564260, 5564265, 5564270, 5564275, 5564280, 5564285, 5564290, 5564295, 5564300, 5564305, 6164240, 6164245, 6164250, 6164255, 6164260, 6164265, 6164270, 6164275, 6164280, 6164285, 6164290, 6164295, 6164300, 6164305, 6364240, 6364245, 6364250, 6364255, 6364260, 6364265, 6364270, 6364275, 6364280, 6364285, 6364290, 6364295, 6364300, 6364305, 6564240, 6564245, 6564250, 6564255, 6564260, 6564265, 6564270, 6564275, 6564280, 6564285, 6564290, 6564295, 6564300, 6564305, 7064240, 7064245, 7064250, 7064255, 7064260, 7064265, 7064270, 7064275, 7064280, 7064285, 7064290, 7064295, 7064300, 7064305, 7164240, 7164245, 7164250, 7164255, 7164260, 7164265, 7164270, 7164275, 7164280, 7164285, 7164290, 7164295, 7164300, 7164305, 7364240, 7364245, 7364250, 7364255, 7364260, 7364265, 7364270, 7364275, 7364280, 7364285, 7364290, 7364295, 7364300, 7364305, 7564240, 7564245, 7564250, 7564255, 7564260, 7564265, 7564270, 7564275, 7564280, 7564285, 7564290, 7564295, 7564300, 7564305 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640021	},
}					
--중급 마족 공격대 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164150, 1164155, 1164160, 1164165, 1164170, 1164175, 1164180, 1164185, 1164190, 1164195, 1164200, 1164205, 1164210, 1164215, 1364150, 1364155, 1364160, 1364165, 1364170, 1364175, 1364180, 1364185, 1364190, 1364195, 1364200, 1364205, 1364210, 1364215, 1564150, 1564155, 1564160, 1564165, 1564170, 1564175, 1564180, 1564185, 1564190, 1564195, 1564200, 1564205, 1564210, 1564215, 2164150, 2164155, 2164160, 2164165, 2164170, 2164175, 2164180, 2164185, 2164190, 2164195, 2164200, 2164205, 2164210, 2164215, 2364150, 2364155, 2364160, 2364165, 2364170, 2364175, 2364180, 2364185, 2364190, 2364195, 2364200, 2364205, 2364210, 2364215, 2564150, 2564155, 2564160, 2564165, 2564170, 2564175, 2564180, 2564185, 2564190, 2564195, 2564200, 2564205, 2564210, 2564215, 3164150, 3164155, 3164160, 3164165, 3164170, 3164175, 3164180, 3164185, 3164190, 3164195, 3164200, 3164205, 3164210, 3164215, 3364150, 3364155, 3364160, 3364165, 3364170, 3364175, 3364180, 3364185, 3364190, 3364195, 3364200, 3364205, 3364210, 3364215, 3564150, 3564155, 3564160, 3564165, 3564170, 3564175, 3564180, 3564185, 3564190, 3564195, 3564200, 3564205, 3564210, 3564215, 4164150, 4164155, 4164160, 4164165, 4164170, 4164175, 4164180, 4164185, 4164190, 4164195, 4164200, 4164205, 4164210, 4164215, 4364150, 4364155, 4364160, 4364165, 4364170, 4364175, 4364180, 4364185, 4364190, 4364195, 4364200, 4364205 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640011	},
}					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	4364210, 4364215, 4564150, 4564155, 4564160, 4564165, 4564170, 4564175, 4564180, 4564185, 4564190, 4564195, 4564200, 4564205, 4564210, 4564215, 5164150, 5164155, 5164160, 5164165, 5164170, 5164175, 5164180, 5164185, 5164190, 5164195, 5164200, 5164205, 5164210, 5164215, 5364150, 5364155, 5364160, 5364165, 5364170, 5364175, 5364180, 5364185, 5364190, 5364195, 5364200, 5364205, 5364210, 5364215, 5564150, 5564155, 5564160, 5564165, 5564170, 5564175, 5564180, 5564185, 5564190, 5564195, 5564200, 5564205, 5564210, 5564215, 6164150, 6164155, 6164160, 6164165, 6164170, 6164175, 6164180, 6164185, 6164190, 6164195, 6164200, 6164205, 6164210, 6164215, 6364150, 6364155, 6364160, 6364165, 6364170, 6364175, 6364180, 6364185, 6364190, 6364195, 6364200, 6364205, 6364210, 6364215, 6564150, 6564155, 6564160, 6564165, 6564170, 6564175, 6564180, 6564185, 6564190, 6564195, 6564200, 6564205, 6564210, 6564215, 7064150, 7064155, 7064160, 7064165, 7064170, 7064175, 7064180, 7064185, 7064190, 7064195, 7064200, 7064205, 7064210, 7064215, 7164150, 7164155, 7164160, 7164165, 7164170, 7164175, 7164180, 7164185, 7164190, 7164195, 7164200, 7164205, 7164210, 7164215, 7364150, 7364155, 7364160, 7364165, 7364170, 7364175, 7364180, 7364185, 7364190, 7364195, 7364200, 7364205, 7364210, 7364215, 7564150, 7564155, 7564160, 7564165, 7564170, 7564175, 7564180, 7564185, 7564190, 7564195, 7564200, 7564205, 7564210, 7564215 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640011	},
}					
--상급 마족 공격대 상의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164130, 1164135, 1364130, 1364135, 1564130, 1564135, 2164130, 2164135, 2364130, 2364135, 2564130, 2564135, 3164130, 3164135, 3364130, 3364135, 3564130, 3564135, 4164130, 4164135, 4364130, 4364135, 4564130, 4564135, 5164130, 5164135, 5364130, 5364135, 5564130, 5564135, 6164130, 6164135, 6364130, 6364135, 6564130, 6564135, 7064130, 7064135, 7164130, 7164135, 7364130, 7364135, 7564130, 7564135 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640002	},
}					
--상급 마족 공격대 신발					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164405, 1164410, 1364405, 1364410, 1564405, 1564410, 2164405, 2164410, 2364405, 2364410, 2564405, 2564410, 3164405, 3164410, 3364405, 3364410, 3564405, 3564410, 4164405, 4164410, 4364405, 4364410, 4564405, 4564410, 5164405, 5164410, 5364405, 5364410, 5564405, 5564410, 6164405, 6164410, 6364405, 6364410, 6564405, 6564410, 7064405, 7064410, 7164405, 7164410, 7364405, 7364410, 7564405, 7564410 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640032	},
}					
--상급 마족 공격대 장갑					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164310, 1164315, 1364310, 1364315, 1564310, 1564315, 2164310, 2164315, 2364310, 2364315, 2564310, 2564315, 3164310, 3164315, 3364310, 3364315, 3564310, 3564315, 4164310, 4164315, 4364310, 4364315, 4564310, 4564315, 5164310, 5164315, 5364310, 5364315, 5564310, 5564315, 6164310, 6164315, 6364310, 6364315, 6564310, 6564315, 7064310, 7064315, 7164310, 7164315, 7364310, 7364315, 7564310, 7564315 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640022	},
}					
--상급 마족 공격대 하의					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164220, 1164225, 1364220, 1364225, 1564220, 1564225, 2164220, 2164225, 2364220, 2364225, 2564220, 2564225, 3164220, 3164225, 3364220, 3364225, 3564220, 3564225, 4164220, 4164225, 4364220, 4364225, 4564220, 4564225, 5164220, 5164225, 5364220, 5364225, 5564220, 5564225, 6164220, 6164225, 6364220, 6364225, 6564220, 6564225, 7064220, 7064225, 7164220, 7164225, 7364220, 7364225, 7564220, 7564225 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640012	},
}					
--마족 공격대 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164000, 1164005, 1364000, 1364005, 1564000, 1564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640100	},
}					
--중급 마족 공격대 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164010, 1164015, 1164020, 1164025, 1164030, 1164035, 1364010, 1364015, 1364020, 1364025, 1364030, 1364035, 1564010, 1564015, 1564020, 1564025, 1564030, 1564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640101	},
}					
--상급 마족 공격대 대검					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	1164040, 1164045, 1364040, 1364045, 1564040, 1564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640102	},
}					
--마족 공격대 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2164000, 2164005, 2364000, 2364005, 2564000, 2564005 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640200	},
}					
--중급 마족 공격대 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2164010, 2164015, 2164020, 2164025, 2164030, 2164035, 2364010, 2364015, 2364020, 2364025, 2364030, 2364035, 2564010, 2564015, 2564020, 2564025, 2564030, 2564035 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640201	},
}					
--상급 마족 공격대 지팡이					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	2164040, 2164045, 2364040, 2364045, 2564040, 2564045 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	10640202	},
}					

--[[
--마룡의 헤드기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111379, 113500 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117171	},
}					
--고대 마룡의 헤드기어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111386, 111928, 113511 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117182	},
}					
	
--마룡의 날개					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111380, 113501 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117172	},
}					
--고대 마룡의 날개					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111387, 111929, 113512 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117183	},
}					
--마룡의 꼬리					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111381, 113502 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117173	},
}					
--고대 마룡의 꼬리					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111388, 111930, 113513 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117184	},
}					
--마룡의 헥사코어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111382, 113503 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117174	},
}					
--고대 마룡의 헥사코어					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	111389, 111931, 113514 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117185	},
}					
--마룡의 발톱 (아라)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113510 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117181	},
}					
--고대 마룡의 발톱 (아라)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113521 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117192	},
}					
--마룡의 발톱 (아이샤)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113505 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117176	},
}					
--고대 마룡의 발톱 (아이샤)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113516 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117187	},
}					
--마룡의 발톱 (청)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113509 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117180	},
}					
--고대 마룡의 발톱 (청)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113520 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117191	},
}					
--마룡의 발톱 (엘소드)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113504 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117175	},
}					
--고대 마룡의 발톱 (엘소드)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113515 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117186	},
}					
--마룡의 발톱 (이브)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113508 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117179	},
}					
--고대 마룡의 발톱 (이브)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113519 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117190	},
}					
--마룡의 발톱 (레나)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113506 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117177	},
}					
--고대 마룡의 발톱 (레나)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113517 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117188	},
}					
--마룡의 발톱 (레이븐)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113507 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117178	},
}					
--고대 마룡의 발톱 (레이븐)					
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	113518 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	117189	},
}	
		
--유연한 기술의 반지 (II) : 2013.07.17 이승헌, 2013.07.24 제거되어야 함.
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	270974 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	270975	},
}
--강인한 기술의 반지 (II) : 2013.07.17 이승헌, 2013.07.24 제거되어야 함.
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	270975 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	270976	},
}
--강렬한 기술의 반지 (II) : 2013.07.17 이승헌, 2013.07.24 제거되어야 함.
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	270976 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	270977	},
}	
--초월한 기술의 반지 (II) : 2013.07.17 이승헌, 2013.07.24 제거되어야 함.
g_pItemManager:AddItemConvertInfo					
{					
	m_TargetItemID		= {	270977 },	
	m_ConvertType		= 0,		
	m_Commission		= 0,		
	m_ResultItemID		= {	270974	},
}

]]--

