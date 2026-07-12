-- Hamel_Frozen_Water_Temple_Boss.lua



g_pWorld:SetLightPos( -50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.878431, 1, 1 ) 
g_pWorld:SetLineMap( "Hamel_Frozen_Water_Temple_Boss_Stage_LineMap.lua" )
g_pWorld:SetBGM( "Music049_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_WallyCastle_Wind.ogg" ) --지속되는 바람소리
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaCanyon.ogg" ) --지속되는 바람소리



g_pWorld:SetFogWorld( -8999, 17400, 0, 0, 0, D3DXCOLOR( 0.054902, 0.529412, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "SNOW_FOG.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0, 0.0666667, 0.466667, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1.5, 1.5)
g_pWorldLayer:SetColor(D3DXCOLOR(0.854902, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.7, -0.7)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 3.5, 3.5)
g_pWorldLayer:SetColor(D3DXCOLOR(0.913726, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.5, -0.3)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "snow1.dds" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 6, 6)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(0.4, -0.2)

g_pWorldLayer:SetFeedBackUV(1300, 1300)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_alpa3.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_alpa3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr1.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr3.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr4.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr5.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Frozen_Water_Temple_Boss_Gr6.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Frozen_Water_Temple_Boss_Gr6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -8999, 17400, 0, 0, D3DXCOLOR(0.054902, 0.529412, 1, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
