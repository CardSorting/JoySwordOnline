-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Elder_Below_Passage_stage3A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Elder_Below_Passage_stage3A_linemap.lua" )
g_pWorld:SetBGM( "Music014_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Torch.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_BelowPassage_WaterStream.ogg" )


-- SKY / CLOUD -- 
-- STATIC MESH -- 
--[[
	g_pObjectMesh = g_pWorld:CreateObjectMesh()
	g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_doorend.Y" )
	g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_doorend.Y" )
	g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
	g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
	g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
	g_pObjectMesh:SetCanHide( true, false )
	g_pRenderParam = g_pObjectMesh:GetRenderParam()
--]]

g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_doorstart.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_doorstart.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_group1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_group1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_group2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_group2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_group3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_group3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_group4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_group4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_group5.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_group5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_lightalpha1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_lightalpha1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_lightalpha2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_lightalpha2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_lightalpha3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_lightalpha3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Below_Passage_stage3A_lightalpha4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Below_Passage_stage3A_lightalpha4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SPIDER_BG.X" )
g_pObjectSkinMesh:AddXSkinModel( "SPIDER_BG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 10 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(500, 800, 500) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SPIDER_BG.X" )
g_pObjectSkinMesh:AddXSkinModel( "SPIDER_BG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 10 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(7800, 1000, 500) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true








-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1825, 621+50, 547 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 4075, 621+50, 547 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 6325, 821+50, 547 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 9324, 621+50, 547 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




