-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Dungeon_Gate_Snow.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetOriginColor_LUA(  0.627451, 0.705882, 1 ) 
g_pWorld:SetLineMap( "Altera_Dungeon_Gate_LineMap.lua" )
g_pWorld:SetBGM( "DunGeonGate02.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_DungeonGate_Altera01.ogg" )


g_pWorld:SetFogWorld( 3200, 6200, 5133, 267, -0.33, D3DXCOLOR( 0.831373, 0.537255, 0.313726, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(-0.04, -0.07)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer:SetLayerId(0)
g_pWorldLayer:SetInitShow( true )
g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.08, -0.1)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer:SetLayerId(1)
g_pWorldLayer:SetInitShow( true )
g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "SNOW_FOG.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 0.988235, 0.945098, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer:SetLayerId(2)
g_pWorldLayer:SetInitShow( true )


-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pSkyDome:SetDomeMesh( "ALTERA_DUNGEON_GATE_A.Y" )
g_pSkyDome:SetPos( 5080.01, 3041.11, -11588.3 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_BM.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_BM.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_F01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_F01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_F02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_F02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_F03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_F03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_Font.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_Font.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetForceShow( true )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_G01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_G01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_G02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_G02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_G03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_G03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_G04.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_G04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_G05.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_G05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_H01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_H01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_H02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_H02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_H03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_H03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_M01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_M01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_M02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_M02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_M03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_M03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_S.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_S.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), 0.96 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T04.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T05.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T06.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), -0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Dungeon_Gate_T07.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Dungeon_Gate_T07.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3200, 6200, 5133, 267, D3DXCOLOR(0.831373, 0.541176, 0.313726, 1), 0.38 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Dungeon_Gate_Altera_ADBoard.Y" )
g_pObjectMesh:SetXMeshLOD( "Dungeon_Gate_Altera_ADBoard.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_NPC_Platform.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_NPC_Platform.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(2002, 996, 294) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_NPC_Platform.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_NPC_Platform.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(3370, 1000, 250) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_DUNGEON_GATE_A01_E.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_DUNGEON_GATE_A01_E.X" )
g_pObjectSkinMesh:AddAnim( "Altera_Dungeon_Gate_Ani01_E" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5600, 1000, 1200) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true


-- PARTICLE -- 
