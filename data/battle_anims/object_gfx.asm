MACRO anim_obj_gfx
; # tiles, gfx pointer
	db \1
	dba \2
ENDM

AnimObjGFX:
; entries correspond to ANIM_GFX_* constants
	table_width 4, AnimObjGFX
	anim_obj_gfx  0, AnimObj00GFX
	anim_obj_gfx 35, AnimObjHitGFX
	anim_obj_gfx  7, AnimObjCutGFX
	anim_obj_gfx  6, AnimObjFireGFX
	anim_obj_gfx 20, AnimObjWaterGFX
	anim_obj_gfx 26, AnimObjLightningGFX
	anim_obj_gfx 18, AnimObjPlantGFX
	anim_obj_gfx 12, AnimObjSmokeGFX
	anim_obj_gfx  9, AnimObjExplosionGFX
	anim_obj_gfx 19, AnimObjRocksGFX
	anim_obj_gfx 15, AnimObjIceGFX
	anim_obj_gfx 10, AnimObjPokeBallGFX
	anim_obj_gfx 19, AnimObjPoisonGFX
	anim_obj_gfx 13, AnimObjBubbleGFX
	anim_obj_gfx 18, AnimObjNoiseGFX
	anim_obj_gfx  2, AnimObjPowderGFX
	anim_obj_gfx 11, AnimObjBeamGFX
	anim_obj_gfx  9, AnimObjSpeedGFX
	anim_obj_gfx 10, AnimObjChargeGFX
	anim_obj_gfx 19, AnimObjWindGFX
	anim_obj_gfx 10, AnimObjWhipGFX
	anim_obj_gfx 12, AnimObjEggGFX
	anim_obj_gfx 18, AnimObjRopeGFX
	anim_obj_gfx 14, AnimObjPsychicGFX
	anim_obj_gfx 10, AnimObjReflectGFX
	anim_obj_gfx 31, AnimObjStatusGFX
	anim_obj_gfx 12, AnimObjSandGFX
	anim_obj_gfx 14, AnimObjWebGFX
	anim_obj_gfx 16, AnimObjHazeGFX
	anim_obj_gfx 13, AnimObjHornGFX
	anim_obj_gfx  8, AnimObjFlowerGFX
	anim_obj_gfx 40, AnimObjMiscGFX
	anim_obj_gfx 36, AnimObjSkyAttackGFX
	anim_obj_gfx 16, AnimObjGlobeGFX
	anim_obj_gfx 48, AnimObjShapesGFX
	anim_obj_gfx 21, AnimObjObjects1GFX
	anim_obj_gfx 22, AnimObjObjects2GFX
	anim_obj_gfx 38, AnimObjShineGFX
	anim_obj_gfx 35, AnimObjAngelsGFX
	anim_obj_gfx 24, AnimObjSwirlGFX
	anim_obj_gfx 24, AnimObjAeroblastGFX
	anim_obj_gfx  1, NULL
	anim_obj_gfx  1, NULL
	anim_obj_gfx 13, AnimObjTauntGFX
	anim_obj_gfx  7, AnimObjStarsGFX
	anim_obj_gfx 13, AnimObjMeteorGFX
	anim_obj_gfx  4, AnimObjFlatterGFX
	anim_obj_gfx 10, AnimObjBeamLightGFX
	anim_obj_gfx  4, AnimObjWindBGGFX
	anim_obj_gfx  4, AnimObjMisc2GFX
	anim_obj_gfx  9, AnimObjSmokePuffGFX
	anim_obj_gfx  5, AnimObjCosmicPowerGFX
	anim_obj_gfx 16, AnimObjRootsGFX
	anim_obj_gfx 64, AnimObjRecycleGFX
	anim_obj_gfx  5, AnimObjLavaRocksGFX
	anim_obj_gfx 16, AnimObjSnatchGFX
	anim_obj_gfx  9, AnimObjGlowGFX
	anim_obj_gfx 13, AnimObjBigGlowGFX
	anim_obj_gfx  9, AnimObjTearGFX
	anim_obj_gfx 16, AnimObjBlastBurnGFX
	anim_obj_gfx 32, AnimObjVortexGFX
	anim_obj_gfx  4, AnimObjHydroCannonGFX
	anim_obj_gfx  8, AnimObjWeatherBallGFX
	anim_obj_gfx 16, AnimObjFrenzyPlantGFX
	anim_obj_gfx 18, AnimObjBulkUpGFX
	anim_obj_gfx 24, AnimObjBlurGFX
	anim_obj_gfx  6, AnimObjRingGFX
	anim_obj_gfx 13, AnimObjRingBigGFX
	anim_obj_gfx  6, AnimObjExplosionSmallGFX
	anim_obj_gfx 10, AnimObjWakeUpSlapGFX
	anim_obj_gfx 55, AnimObjGyroBallGFX
	anim_obj_gfx 13, AnimObjBigGlowClearGFX
	anim_obj_gfx  6, AnimObjGlowSpikedGFX
	anim_obj_gfx 10, AnimObjBigGlowSpikedGFX
	anim_obj_gfx 18, AnimObjBigWhipGFX
	anim_obj_gfx 12, AnimObjDepressionGFX
	anim_obj_gfx  5, AnimObjHeartsGFX
	anim_obj_gfx 12, AnimObjAquaRingGFX
	anim_obj_gfx 16, AnimObjAuraSphereGFX
	anim_obj_gfx  6, AnimObjRockPolishGFX
	anim_obj_gfx  9, AnimObjBugBuzzGFX
	anim_obj_gfx  9, AnimObjMidGlowClearGFX
	anim_obj_gfx 18, AnimObjFocusBlastGFX
	anim_obj_gfx 10, AnimObjEnergyBallGFX
	anim_obj_gfx 14, AnimObjTrickRoomGFX
	anim_obj_gfx 14, AnimObjSmokePuffBigGFX
	anim_obj_gfx  6, AnimObjLeafStormGFX
	anim_obj_gfx 16, AnimObjHugeRockGFX
	assert_table_length NUM_ANIM_GFX + 1
