-- DarkGate2013.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetOriginColor_LUA(  1, 1, 0.909804 ) 
g_pWorld:SetLineMap( "DarkGate2013_LineMap.lua" )
g_pWorld:SetBGM( "Music059_Stage.ogg" )

g_pWorld:AddEffectBGM_LUA( "Amb_Velder_Gate_Wind.ogg" ) --바람소리

g_pWorld:AddEffectBGM_LUA( "Amb_DarkGate_Drone01.ogg" ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Drone02.ogg", -3289, 2257, 528, 3000 )  
g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Drone03.ogg", 2641, 1836, 1204, 3000 )  

g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Lavar01.ogg", -1112, -2693, 7045, 20000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Lavar02.ogg", -572, -1935, 328, 6000 )  
g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Lavar03.ogg", 5320, -3274, 4584, 6000 )  

g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_WoodBridgeCreak.ogg", 181, 1042, -19, 4000 )  
g_pWorld:Add3DEffectBGM_LUA( "Amb_DarkGate_Effect.ogg", -4716, 1621, 1801, 8000 )  

--g_pWorld:SetWorldCamera( "DarkGate2013_Camera.lua" )	-- 연출용 카메라 설정
--g_pWorld:SetTriggerCamera(3,1)	-- 연출용 카메라 설정
g_pWorld:SetFogWorld( 20600, 36800, 0, 0, -0.78, D3DXCOLOR( 0.537255, 0.156863, 0.584314, 1.0 ) )
g_pWorld:SetProjection( 10, 5e+006, 4, 300, 0, 0, 0 )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "WorldLayer_darkgate.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0.1, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.976471, 0.411765, 0.0588235, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer:SetLayerId(0)
g_pWorldLayer:SetInitShow( true )
g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "Peita_Chapel_S5_Lightt_Layer.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 0.733333, 0.145098, 0.698039))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer:SetLayerId(1)
g_pWorldLayer:SetInitShow( true )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.6, 0.380392, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.764706, 0.886275, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_alpa3.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_alpa3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_alpa4.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_alpa4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Bridge.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Bridge.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Bridge_ChainAlpa.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Bridge_ChainAlpa.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Bridge_Top.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Bridge_Top.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_chain1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_chain1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_chain2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_chain2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Dragon0.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Dragon0.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.756863, 0.678431, 0.588235, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.76 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Dragon1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Dragon1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Dragon2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Dragon2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.52 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Dragon3.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Dragon3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Drop_uv1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Drop_uv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.3 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.83 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Drop_uv2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Drop_uv2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.3 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.88 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_fire_uv.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_fire_uv.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.2, 0.2 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_island.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_island.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Left_gate.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Left_gate.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Left_light1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Left_light1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 0.513726, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Left_light2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Left_light2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 0.521569, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Left_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Left_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Leftground.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Leftground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Right_light1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Right_light1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 0.596078, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Right_light2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Right_light2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 0.529412, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Right_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Right_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Rightground.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Rightground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Rock.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Rock.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.86 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_Top1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_Top1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.89 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_top_light1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_top_light1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.470588, 0.286275, 0.176471, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_top_light2.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_top_light2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.541176, 0.580392, 0.376471, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_water02.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_water02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.05, 0.05 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 0.266667, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.84 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_water1.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.05, 0.05 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.913725, 0.776471, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.86 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Darkgate_water_uv.Y" )
g_pObjectMesh:SetXMeshLOD( "Darkgate_water_uv.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.2 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -1 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "DARKGATE_FIRESTORM.X" )
g_pObjectSkinMesh:AddXSkinModel( "DARKGATE_FIRESTORM.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pRenderParam.bAlphaTestEnable = true
g_pObjectSkinMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "DARKGATE_LEFT_GATE_ROATE.X" )
g_pObjectSkinMesh:AddXSkinModel( "DARKGATE_LEFT_GATE_ROATE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 20600, 36800, 0, 0, D3DXCOLOR(0.541176, 0.160784, 0.584314, 1), -0.78 )


-- PARTICLE -- 

-- 중앙의 탑 꼭대기 이펙트
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 2 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P01A" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P02" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 3 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P03" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 2 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P03A" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 2 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "darkness_Top_gate_P03B" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0.0, 1152.754, -1700.742 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- 좌측 아군 소환문 이펙트
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4730.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P02" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4731.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P03" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4730.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 5 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P01A" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4732.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P04" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4732.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P05" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4733.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMajorParticle, "darkness_El_Tree_P06" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4734.311, 1550.922, 2164.178 ) )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )