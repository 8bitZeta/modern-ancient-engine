SECTION "Move Animations 3", ROMX

MoveAnimations3:
;==========================
;	New Moves Start Here
;==========================
	dw BattleAnim_RockClimb
	dw BattleAnim_Defog
	dw BattleAnim_TrickRoom
	dw BattleAnim_DracoMeteor
	dw BattleAnim_Discharge
	dw BattleAnim_LavaPlume
	dw BattleAnim_LeafStorm
	dw BattleAnim_PowerWhip
	dw BattleAnim_RockWrecker
	dw BattleAnim_CrossPoison
	dw BattleAnim_GunkShot
	dw BattleAnim_IronHead
	dw BattleAnim_MagnetBomb
	dw BattleAnim_StoneEdge
	dw BattleAnim_Captivate
	dw BattleAnim_StealthRock
	dw BattleAnim_GrassKnot
	dw BattleAnim_Chatter
	dw BattleAnim_Judgment
	dw BattleAnim_BugBite
	dw BattleAnim_ChargeBeam
	dw BattleAnim_WoodHammer
	dw BattleAnim_AquaJet
	dw BattleAnim_AttackOrder
	dw BattleAnim_DefendOrder
	dw BattleAnim_HealOrder
	dw BattleAnim_HeadSmash
	dw BattleAnim_DoubleHit
	dw BattleAnim_RoarOfTime
	dw BattleAnim_SpacialRend
	dw BattleAnim_LunarDance
	dw BattleAnim_CrushGrip
	dw BattleAnim_MagmaStorm
	dw BattleAnim_DarkVoid
	dw BattleAnim_SeedFlare
	dw BattleAnim_OminousWind
	dw BattleAnim_ShadowForce
.IndirectEnd::

;==========================
;	New Moves Start Here
;==========================

BattleAnim_RockClimb:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row_3
	anim_bgeffect ANIM_BG_BOUNCE_DOWN, $0, $1, $0
	anim_wait 8
.loop
	anim_obj ANIM_OBJ_ROCK_CLIMB, 56, 108, $5c
	anim_obj ANIM_OBJ_ROCK_CLIMB, 40, 108, $e8
	anim_sound 6, 2, SFX_SPARK
	anim_wait 28
	anim_loop 2, .loop
	anim_incbgeffect ANIM_BG_BOUNCE_DOWN
	anim_wait 8
	anim_bgeffect ANIM_BG_BODY_SLAM, $0, $1, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_0_3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 62, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 62, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 62, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 54, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 54, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 54, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 46, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 46, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 46, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 38, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 38, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 38, $e8
	anim_wait 3
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 30, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 30, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 30, $e8
	anim_wait 8
	anim_ret

BattleAnim_Defog:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BRIGHT
	anim_2gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_HAZE
	anim_bgp $90
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 24, $10
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 48, $2
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 88, $8
	anim_wait 4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 32, $6
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 56, $c
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 80, $4
	anim_obj ANIM_OBJ_MIST_BALL_BG, 8, 104, $e
	anim_wait 64
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_DRAGON_RUSH, 144, 245, $14
	anim_obj ANIM_OBJ_DRAGON_RUSH_XFLIP, 128, 245, $0c
	anim_wait 16
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_clearobjs
	anim_wait 12
	anim_ret

BattleAnim_TrickRoom:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_1gfx ANIM_GFX_TRICK_ROOM
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_PSYCHIC, $0, $0, $0
	anim_sound 0, 0, SFX_PSYBEAM
.loop
	anim_obj ANIM_OBJ_TRICK_ROOM, 80, 72, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 156, 36, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 40, 24, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 140, 100, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 164, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 48, 66, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 96, 24, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 60, 96, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 102, 86, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 150, 14, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 26, 80, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 12, 50, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 72, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 110, 62, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 170, 94, $0
	anim_wait 3
	anim_obj ANIM_OBJ_TRICK_ROOM, 80, 104, $0
	anim_wait 3
	anim_loop 2, .loop
	anim_wait 32
	anim_incbgeffect ANIM_BG_PSYCHIC
	anim_wait 4
	anim_ret

BattleAnim_DracoMeteor:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DRAGON_PULSE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_DRAGON_PULSE
	anim_4gfx ANIM_GFX_METEOR, ANIM_GFX_SMOKE_PUFF, ANIM_GFX_WATER, ANIM_GFX_EXPLOSION
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $8, $0
	anim_bgp $1b
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 32
	anim_clearobjs
	anim_obj ANIM_OBJ_METEOR_SMALL, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 238, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 138, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 188, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_SMALL, 38, 0, $2
	anim_obj ANIM_OBJ_METEOR_BIG, 80, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 142, 64, $0
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR_BIG, 64, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 136, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR_BIG, 88, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 150, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR_BIG, 68, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 130, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 88, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 142, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 68, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 130, 64, $0
	anim_obj ANIM_OBJ_METEOR_BIG, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_wait 32
	anim_ret

BattleAnim_Discharge:
	anim_2gfx ANIM_GFX_LIGHTNING, ANIM_GFX_EXPLOSION
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERSHOCK_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 88, $0
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 88, $0
	anim_wait 4
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_THUNDERBOLT_SPARKS, 48, 88, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_wait 4
	anim_clearobjs
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_THUNDERBOLT_CORE, 48, 88, $2
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SMALL, 48, 88, $0
.loop
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $0
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $8
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $18
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $20
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $28
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $30
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $38
	anim_wait 10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $4
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $14
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $1b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $24
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $2b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $34
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $3b
	anim_wait 10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $0
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $8
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $18
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $20
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $28
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $30
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $38
	anim_wait 10
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_N,  48, 88, $4
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NE, 48, 88, $b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_E,  48, 88, $14
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SE, 48, 88, $1b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_S,  48, 88, $24
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_SW, 48, 88, $2b
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_W,  48, 88, $34
	anim_obj ANIM_OBJ_DISCHARGE_SPARKS_NW, 48, 88, $3b
	anim_wait 10
	anim_loop 2, .loop
	anim_clearobjs
	anim_wait 4
	anim_ret

BattleAnim_LavaPlume:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_LAVA_PLUME
	anim_2gfx ANIM_GFX_FIRE, ANIM_GFX_SMOKE_PUFF_BIG
	anim_sound 6, 2, SFX_EMBER
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
.loop
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $38
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $10
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $5c
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 52, 96, $2
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $2a
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $4
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 40, 100, $28
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $18
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $3b
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 84, $38
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $1a
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $0a
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $50
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 56, 100, $8
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $1e
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $30
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 44, 88, $30
	anim_wait 2
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $0
	anim_obj ANIM_OBJ_RADIAL_FLAME, 48, 96, $24
	anim_wait 2
	anim_obj ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
	anim_obj ANIM_OBJ_LAVA_PLUME_SMOKE, 48, 108, $18
	anim_wait 2
	anim_loop 2, .loop
	anim_wait 20
	anim_ret

BattleAnim_LeafStorm:
	anim_1gfx ANIM_GFX_LEAF_STORM
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GREEN
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_GREEN
	anim_4gfx ANIM_GFX_VORTEX, ANIM_GFX_LEAF_STORM, ANIM_GFX_WIND_BG, ANIM_GFX_SWIRL
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
	anim_sound 0, 1, SFX_OUTRAGE
.loop
	anim_obj ANIM_OBJ_SWIRL_SHORT, 44, 96, $0
	anim_wait 8
	anim_loop 4, .loop
	anim_obj ANIM_OBJ_VORTEX, 44, 96, $0
	anim_wait 32
	anim_clearobjs
	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_GREEN
	anim_obj ANIM_OBJ_VORTEX, 44, 96, $0
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $2, $0
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 80, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 92, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 112, $18
	anim_wait 2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $0
.loop2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 96, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 80, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 112, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 80, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_LEAF_STORM_BIG_LEAF, 44, 92, $18
	anim_wait 2
	anim_obj ANIM_OBJ_LEAF_STORM_LEAF, 44, 112, $18
	anim_wait 2
	anim_loop 5, .loop2
	anim_incbgeffect ANIM_BG_SHAKE_SCREEN_X
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 4
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 32
	anim_ret

BattleAnim_PowerWhip:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_2gfx ANIM_GFX_BIG_WHIP, ANIM_GFX_HIT
	anim_sound 0, 0, SFX_CUT
	anim_obj ANIM_OBJ_PUNISHMENT, 96, 245, $0c
	anim_wait 2
	anim_obj ANIM_OBJ_PUNISHMENT, 96, 245, $0c
	anim_wait 12
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $6, $08
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $28, $2, $0
	anim_sound 0, 1, SFX_THUNDER
	anim_obj ANIM_OBJ_HIT_BIG, 136, 48, $0
	anim_wait 32
	anim_ret

BattleAnim_RockWrecker:
	anim_3gfx ANIM_GFX_ROCKS, ANIM_GFX_HUGE_ROCK, ANIM_GFX_WIND_BG
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_YELLOW
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
	anim_obj ANIM_OBJ_ROCK_WRECKER_GROW, 48, 96, $0
.loop
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $38
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $28
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $18
	anim_wait 4
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER_CHARGE, 48, 96, $30
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 6
	anim_sound 0, 0, SFX_OUTRAGE
	anim_obj ANIM_OBJ_ROCK_WRECKER, 48, 91, $1
	anim_wait 80
	anim_incobj 31
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $3
	anim_clearobjs
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_wait 6
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_CrossPoison:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
	anim_2gfx ANIM_GFX_CUT, ANIM_GFX_POISON
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj ANIM_OBJ_CUT_LONG_UP_LEFT, 150, 68, $0
	anim_obj ANIM_OBJ_CUT_LONG_UP_RIGHT, 118, 68, $0
	anim_bgeffect ANIM_BG_BLACK_HUES, $0, $8, $0
	anim_wait 24
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 32
	anim_ret

BattleAnim_GunkShot:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_PURPLE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PURPLE
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_PURPLE
	anim_2gfx ANIM_GFX_WIND_BG, ANIM_GFX_POISON
	anim_bgeffect ANIM_BG_BLACK_HUES, $0, $8, $0
	anim_obj ANIM_OBJ_GUNK_SHOT, 48, 96, $0
	anim_obj ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj ANIM_OBJ_AGILITY, 8, 48, $2
	anim_wait 4
	anim_obj ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj ANIM_OBJ_AGILITY, 8, 104, $e
.loop
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $5c
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $e8
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $d0
	anim_wait 2
	anim_obj ANIM_OBJ_GUNK_SHOT_BUBBLES, 48, 88, $50
	anim_wait 2
	anim_loop 6, .loop
	anim_wait 16
	anim_clearobjs
	anim_bgp $1b
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
.loop2
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_loop 4, .loop2
	anim_wait 4
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_INK_SPLASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_IronHead:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_3gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT, ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row_3
	anim_sound 0, 0, SFX_SHINE
	anim_bgeffect ANIM_BG_FADE_MON_TO_BLACK, $0, $1, $40
	anim_wait 8
	anim_obj ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 32
	anim_obj ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 40
	anim_incbgeffect ANIM_BG_FADE_MON_TO_BLACK
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 6
	anim_sound 0, 1, SFX_HEADBUTT
	anim_wait 6
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 2
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearobjs
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_call BattleAnim_ShowMon_0_3
	anim_ret

BattleAnim_MagnetBomb:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ICE
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_EXPLOSION_SMALL
	anim_battlergfx_2row
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $0
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 62, $18
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 54, $30
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 48, $8
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $20
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $10
	anim_wait 8
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 38, $8
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $1, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 124, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $28
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $16
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 140, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $39
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 124, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $10
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 132, 52, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 124, 62, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 140, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $0
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 124, 42, $0
	anim_obj ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $1d
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION_SMALL, 132, 52, $0
	anim_wait 32
	anim_call BattleAnim_ShowMon_1_3
	anim_ret

BattleAnim_StoneEdge:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 156, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 152, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 128, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 108, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 112, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 148, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 118, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 136, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 116, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 144, 64, $8
	anim_wait 32
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 156, 64, $8
	anim_wait 2
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $55, $1, $0
	anim_obj ANIM_OBJ_STONE_EDGE, 152, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 128, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 120, 40, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 108, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 112, 64, $8
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 148, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 152, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 118, 64, $8
	anim_wait 2
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_obj ANIM_OBJ_STONE_EDGE, 136, 64, $8
	anim_wait 2
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_STONE_EDGE, 116, 64, $8
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 56, $0
	anim_wait 2
	anim_obj ANIM_OBJ_STONE_EDGE, 144, 64, $8
	anim_wait 32
	anim_ret

BattleAnim_Captivate:
	anim_2gfx ANIM_GFX_OBJECTS_1, ANIM_GFX_SPEED
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_PSYCHO_BOOST_1
	anim_call BattleAnim_TargetObj_1Row_3
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
	anim_bgeffect ANIM_BG_WOBBLE_MON, $0, $1, $0
	anim_sound 0, 0, SFX_ATTRACT
	anim_obj ANIM_OBJ_HEART_CAPTIVATE, 64, 96, $0
	anim_wait 16
	anim_obj ANIM_OBJ_HEART_CAPTIVATE, 32, 96, $0
	anim_wait 16
	anim_incbgeffect ANIM_BG_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0_3
	anim_wait 1
	anim_clearobjs
	anim_sound 0, 0, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 32, 72, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 64, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 32, 104, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 64, 72, $0
	anim_wait 5
	anim_obj ANIM_OBJ_PULSING_SPARKLE_YFIX, 48, 88, $0
	anim_wait 12
	anim_ret

BattleAnim_StealthRock:
	anim_1gfx ANIM_GFX_ROCKS
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $20
	anim_wait 8

	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $30
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $28
	anim_wait 8

	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $30
	anim_wait 8

	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $28
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 44, 80, $20
	anim_wait 8

	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $30
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STEALTH_ROCK, 52, 80, $28
	anim_wait 8

	anim_obj ANIM_OBJ_STEALTH_ROCK, 48, 80, $20
	anim_wait 64
	anim_ret

	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 156, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 152, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 128, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 108, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 112, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 148, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 118, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 136, 64, $8
	anim_wait 1
	anim_sound 0, 0, SFX_SPARK
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 116, 64, $8
	anim_wait 1
	anim_obj ANIM_OBJ_STONE_EDGE_STILL, 144, 64, $8
	anim_wait 32

BattleAnim_GrassKnot:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_2gfx ANIM_GFX_GRASS_KNOT, ANIM_GFX_PLANT
	anim_call BattleAnim_UserObj_1Row_3
	anim_obj ANIM_OBJ_GRASS_KNOT, 136, 56, $0
	anim_wait 26
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_RAZOR_LEAF, 144, 40, $90
	anim_wait 2
	anim_obj ANIM_OBJ_RAZOR_LEAF, 144, 40, $50
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_wait 40
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_Chatter:
	anim_2gfx ANIM_GFX_NOISE, ANIM_GFX_MISC_2
	anim_call BattleAnim_TargetObj_1Row_3
	anim_bgeffect ANIM_BG_FLAIL, $0, $1, $0
	anim_cry $0
.loop
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_RED
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_obj ANIM_OBJ_CHATTER_NOTE, 56, 84, $36
	anim_wait 9
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GLOW_YELLOW
	anim_obj ANIM_OBJ_CHATTER_NOTE, 46, 84, $2e
	anim_wait 9
	anim_obj ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj ANIM_OBJ_SOUND, 64, 100, $2
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_WATER
	anim_obj ANIM_OBJ_CHATTER_NOTE, 38, 84, $2a
	anim_wait 9
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GLOW_YELLOW
	anim_obj ANIM_OBJ_CHATTER_NOTE, 50, 84, $32
	anim_wait 9
	anim_loop 2, .loop
	anim_wait 20
	anim_incbgeffect ANIM_BG_FLAIL
	anim_jump BattleAnim_ShowMon_0_3

BattleAnim_Judgment:
	anim_5gfx ANIM_GFX_GLOW, ANIM_GFX_SPEED, ANIM_GFX_OBJECTS_2, ANIM_GFX_ROCK_POLISH, ANIM_GFX_BIG_GLOW_SPIKED
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_INVERT_BLACK
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $2, $0
	anim_obj ANIM_OBJ_TINY_GLOW_CLEAR, 136, 48, $0
	anim_sound 0, 0, SFX_FORESIGHT
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $38
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $0
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $20
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $28
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $8
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $30
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $10
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $38
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $28
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $20
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $0
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $8
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $18
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $4
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 136, 48, $30
	anim_obj ANIM_OBJ_WIND_SPARKLE_SHORT, 136, 48, $18
	anim_wait 4
	anim_loop 2, .loop
	anim_clearobjs
	anim_obj ANIM_OBJ_SMALL_GLOW, 136, 48, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $90, $4, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BRIGHT
	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
.loop2
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R, 154, 30, $0
	anim_obj ANIM_OBJ_JUDGMENT_SW, 136, 48, $18
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L_Y_FLIP, 130, 64, $0
	anim_obj ANIM_OBJ_JUDGMENT_E, 136, 48, $0
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_5DEG_R_Y_FLIP, 164, 56, $0
	anim_obj ANIM_OBJ_JUDGMENT_NW, 136, 48, $28
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L, 118, 30, $0
	anim_obj ANIM_OBJ_JUDGMENT_N, 136, 48, $30
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_R_Y_FLIP, 142, 64, $0
	anim_obj ANIM_OBJ_JUDGMENT_SE, 136, 48, $8
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L_Y_FLIP, 118, 66, $0
	anim_obj ANIM_OBJ_JUDGMENT_W, 136, 48, $20
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L, 130, 32, $0
	anim_obj ANIM_OBJ_JUDGMENT_NE, 136, 48, $38
	anim_wait 3
	anim_sound 16, 2, SFX_THUNDER
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R_Y_FLIP, 154, 66, $0
	anim_obj ANIM_OBJ_JUDGMENT_S, 136, 48, $10
	anim_wait 3
	anim_loop 3, .loop2
	anim_clearobjs
	anim_obj ANIM_OBJ_BIG_GLOW_SPIKED, 136, 48, $0
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R, 154, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L_Y_FLIP, 130, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_5DEG_R_Y_FLIP, 164, 56, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L, 118, 30, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_R_Y_FLIP, 142, 64, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_L_Y_FLIP, 118, 66, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_85DEG_L, 130, 32, $0
	anim_wait 3
	anim_obj ANIM_OBJ_JUDGMENT_STREAK_45DEG_R_Y_FLIP, 154, 66, $0
	anim_wait 11
	anim_ret

BattleAnim_BugBite:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_call BattleAnim_UserObj_1Row_3
.loop
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_wait 4
	anim_sound 0, 1, SFX_BITE
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 124, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 32
	anim_call BattleAnim_ShowMon_1_3
	anim_ret

BattleAnim_ChargeBeam:
	anim_2gfx ANIM_GFX_LIGHTNING, ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, 4, $0
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $38
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $8
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $28
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $18
	anim_obj ANIM_OBJ_THUNDERSHOCK_SPARKS, 48, 96, $0
	anim_wait 4
	anim_obj ANIM_OBJ_ENERGY_ORB, 48, 96, $30
	anim_wait 64
	anim_clearobjs
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 96, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 94, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 98, $18
	anim_wait 2
.loop2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 94, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 96, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 98, $18
	anim_wait 2
	anim_sound 0, 0, SFX_RAGE
	anim_obj ANIM_OBJ_CHARGE_BEAM, 64, 92, $18
	anim_wait 2
	anim_loop 6, .loop2
	anim_wait 32
	anim_ret

BattleAnim_WoodHammer:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_3gfx ANIM_GFX_WOOD_HAMMER, ANIM_GFX_PLANT, ANIM_GFX_HIT
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $40, $4, $10
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $1c
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $5c
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $50
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $e8
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $dc
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $d0
	anim_wait 1
	anim_obj ANIM_OBJ_RAZOR_LEAF, 136, 40, $90
	anim_obj ANIM_OBJ_WOOD_HAMMER, 136, 56, $50
	anim_wait 4
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_wait 60
	anim_ret

BattleAnim_AquaJet:
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_BUBBLE
	anim_1gfx ANIM_GFX_SPEED
	anim_sound 0, 0, SFX_MENU
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 6
	anim_3gfx ANIM_GFX_HIT, ANIM_GFX_AQUA_JET, ANIM_GFX_BUBBLE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BUBBLE
	anim_sound 0, 1, SFX_SURF
	anim_wait 1
	anim_obj ANIM_OBJ_AQUA_JET, 72, 89, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 72, 89, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 72, 89, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 92, 78, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 92, 78, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 92, 78, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 112, 67, $0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 112, 67, $d0
	anim_obj ANIM_OBJ_AQUA_JET_BUBBLE, 112, 67, $50
	anim_wait 6
	anim_obj ANIM_OBJ_AQUA_JET, 132, 56, $0
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 56, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 56, $50
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 40, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 40, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 40, $50
	anim_wait 3
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 32, $0
	anim_wait 3
	anim_sound 0, 1, SFX_WATER_GUN
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 24, $0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 24, $d0
	anim_obj ANIM_OBJ_BUBBLE_SPLASH, 140, 24, $50
	anim_wait 8
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 16
	anim_ret

BattleAnim_AttackOrder:
	anim_2gfx ANIM_GFX_OBJECTS_3, ANIM_GFX_HIT
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_LIME
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BEE
	anim_call BattleAnim_UserObj_1Row_3
.loop
	anim_obj ANIM_OBJ_BEE_SW, 136, 48, $38
	anim_wait 4
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 40, $0
	anim_obj ANIM_OBJ_BEE_E, 136, 48, $20
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_BEE_SE, 136, 48, $8
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 56, $0
	anim_obj ANIM_OBJ_BEE_N, 136, 48, $10
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 40, $0
	anim_obj ANIM_OBJ_BEE_SE, 136, 48, $28
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 48, $0
	anim_obj ANIM_OBJ_BEE_W, 136, 48, $0
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 144, 56, $0
	anim_obj ANIM_OBJ_BEE_NE, 136, 48, $18
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_BEE_S, 136, 48, $30
	anim_wait 4
	anim_sound 0, 1, SFX_POISON_STING
	anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 136, 48, $0
	anim_loop 3, .loop
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 8
	anim_clearobjs
	anim_wait 1
	anim_wait 23
	anim_ret

BattleAnim_DefendOrder:
	anim_3gfx ANIM_GFX_BIG_GLOW_CLEAR, ANIM_GFX_OBJECTS_3, ANIM_GFX_SMOKE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PEACH
	anim_call BattleAnim_Self_Bees_branch
	anim_wait 20
	anim_sound 0, 0, SFX_ATTRACT
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_SIGNAL_BEAM_RED
	anim_obj ANIM_OBJ_BIG_GLOW_CLEAR, 48, 96, $0
	anim_wait 6
	anim_clearobjs
	anim_wait 14
	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
	anim_ret

BattleAnim_HealOrder:
	anim_3gfx ANIM_GFX_SHINE, ANIM_GFX_OBJECTS_3, ANIM_GFX_SMOKE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_REFRESH
	anim_call BattleAnim_Self_Bees_branch
	anim_wait 20
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GRAY
	anim_sound 0, 0, SFX_METRONOME
	anim_obj ANIM_OBJ_GLIMMER, 44, 64, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 24, 96, $0
	anim_wait 5
	anim_obj ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 21
	anim_ret
	anim_wait 20
	anim_incbgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING
	anim_ret

BattleAnim_Self_Bees_branch:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_BEE
	anim_bgeffect ANIM_BG_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
.loop
	anim_obj ANIM_OBJ_BEE_SW, 48, 96, $38
	anim_wait 4
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj ANIM_OBJ_BEE_E, 48, 96, $20
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 56, 88, $0
	anim_obj ANIM_OBJ_BEE_SE, 48, 96, $8
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_N, 48, 96, $10
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 40, 104, $0
	anim_obj ANIM_OBJ_BEE_SE, 48, 96, $28
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_W, 48, 96, $0
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 56, 104, $0
	anim_obj ANIM_OBJ_BEE_NE, 48, 96, $18
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_S, 48, 96, $30
	anim_wait 4
	anim_obj ANIM_OBJ_BEE_POOF, 40, 88, $0
	anim_loop 3, .loop
	anim_ret

BattleAnim_HeadSmash:
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_GRAY
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $14, $2, $0
	anim_wait 32
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_sound 0, 1, SFX_HEADBUTT
	anim_bgeffect ANIM_BG_TACKLE, $0, $1, $0
	anim_wait 12
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearobjs
	anim_wait 1
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $10
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 138, 64, $28
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_wait 6
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 128, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_DoubleHit:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 148, 48, $0
	anim_wait 24
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $6, $1, $0
	anim_obj ANIM_OBJ_HIT_BIG_YFIX, 116, 48, $0
	anim_wait 32
	anim_ret

BattleAnim_RoarOfTime:
	anim_3gfx ANIM_GFX_ROAR_OF_TIME, ANIM_GFX_CHARGE, ANIM_GFX_EXPLOSION_SMALL
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_ICE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ROAR_OF_TIME
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_bgp $f8
	anim_sound 0, 1, SFX_SUPERSONIC
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $30
	anim_wait 1
	anim_loop 4, .loop
	anim_wait 32
	anim_bgp $1b
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $2, $0
	anim_sound 0, 1, SFX_ROAR_OF_TIME
.loop2
	anim_obj ANIM_OBJ_ROT_E,  48, 88, $0
	anim_obj ANIM_OBJ_ROT_SE, 48, 88, $8
	anim_obj ANIM_OBJ_ROT_S,  48, 88, $10
	anim_obj ANIM_OBJ_ROT_SW, 48, 88, $18
	anim_obj ANIM_OBJ_ROT_W,  48, 88, $20
	anim_obj ANIM_OBJ_ROT_NW, 48, 88, $28
	anim_obj ANIM_OBJ_ROT_N,  48, 88, $30
	anim_obj ANIM_OBJ_ROT_NE, 48, 88, $38
	anim_wait 10
	anim_loop 6, .loop2
	anim_bgp $90
	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_setbgpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_VERY_BRIGHT
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_obj ANIM_OBJ_ROT_CLOCK, 132, 48, $0
.loop3
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 144, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 104, 72, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 120, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 144, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 160, 72, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 112, 68, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 136, 64, $0
	anim_wait 2
	anim_obj ANIM_OBJ_EXPLOSION_SMALL_YFIX, 128, 72, $0
	anim_wait 2
	anim_loop 3, .loop3
	anim_wait 48
	anim_sound 0, 1, SFX_RAGE
	anim_bgeffect ANIM_BG_FLASH_WHITE, $0, $4, $2
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $20, $0
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_BROWN
	anim_wait 32
	anim_ret

BattleAnim_SpacialRend:
	anim_2gfx ANIM_GFX_GLOW, ANIM_GFX_SPACIAL_REND
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_DARK_PULSE
	anim_clearenemyhud
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $8, $0
	anim_bgp $90
	anim_sound 0, 1, SFX_SUPERSONIC
	anim_obj ANIM_OBJ_SR_E,  48, 96, $0
	anim_obj ANIM_OBJ_SR_SE, 48, 96, $8
	anim_obj ANIM_OBJ_SR_S,  48, 96, $10
	anim_obj ANIM_OBJ_SR_SW, 48, 96, $18
	anim_obj ANIM_OBJ_SR_W,  48, 96, $20
	anim_obj ANIM_OBJ_SR_NW, 48, 96, $28
	anim_obj ANIM_OBJ_SR_N,  48, 96, $30
	anim_obj ANIM_OBJ_SR_NE, 48, 96, $38
	anim_wait 8
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY, 48, 96, $30
	anim_wait 1
	anim_loop 3, .loop
	anim_obj ANIM_OBJ_SMALL_GLOW, 48, 96, $0
	anim_wait 8
	anim_clearobjs
	anim_wait 1
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_DARK_PULSE
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_PSYCHO_BOOST_2
	anim_2gfx ANIM_GFX_SWIRL, ANIM_GFX_BIG_WHIP
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 15
	anim_bgeffect ANIM_BG_CYCLE_BGPALS_INVERTED, $0, $a, $0
	anim_bgeffect ANIM_BG_WAVE_DEFORM_MON, $0, $0, $0
	anim_obj ANIM_OBJ_SWIRL, 132, 48, $30
	anim_obj ANIM_OBJ_SR_CUT_N, 132, 48, $30
	anim_obj ANIM_OBJ_SR_CUT_S, 132, 48, $10
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $8, $20
.loop2
	anim_sound 6, 2, SFX_THUNDER
	anim_wait 8
	anim_loop 6, .loop2
	anim_incbgeffect ANIM_BG_WAVE_DEFORM_MON
	anim_wait 48
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_LunarDance:
	anim_3gfx ANIM_GFX_LUNAR_DANCE, ANIM_GFX_WIND, ANIM_GFX_SPEED
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_MOON
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_AURORA
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $4, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_clearenemyhud
	anim_bgp $1b
	anim_sound 0, 0, SFX_MOONLIGHT
	anim_obj ANIM_OBJ_LUNAR_DANCE, 90, 84, $30
	anim_wait 80
	anim_sound 0, 0, SFX_METRONOME
.loop
	anim_obj ANIM_OBJ_RAPID_SPIN, 44, 112, $0
	anim_wait 2
	anim_loop 10, .loop
	anim_wait 8
	anim_sound 0, 0, SFX_GAME_FREAK_PRESENTS
	anim_obj ANIM_OBJ_RISING_SPARKLE, 44, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 36, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 52, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 28, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 60, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 20, 108, $6
	anim_wait 2
	anim_obj ANIM_OBJ_RISING_SPARKLE, 68, 108, $6
	anim_wait 50
	anim_ret

BattleAnim_CrushGrip:
	anim_3gfx ANIM_GFX_HIT_2, ANIM_GFX_ROCKS, ANIM_GFX_CRUSH_GRIP
	anim_setobjpal PAL_BATTLE_OB_BROWN, PAL_BTLCUSTOM_BRIGHT
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_CRUSH_GRIP, 64, 88, $4
	anim_wait 28
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $50, $2, $0
	anim_wait 16
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $2
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 140, 60, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_wait 4
	anim_sound 6, 2, SFX_BIND
	anim_obj ANIM_OBJ_HIT_YFIX, 124, 44, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_MagmaStorm:
	anim_2gfx ANIM_GFX_BLAST_BURN, ANIM_GFX_FIRE
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
	anim_setobjpal PAL_BATTLE_BG_USER, PAL_BTLCUSTOM_FIRE
	anim_setobjpal PAL_BATTLE_BG_TARGET, PAL_BTLCUSTOM_FIRE
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $a0, $1, $0
	anim_obj ANIM_OBJ_FIRE_BG,  24, 36, $30
	anim_obj ANIM_OBJ_FIRE_BG,  52, 133, $30
	anim_obj ANIM_OBJ_FIRE_BG,  80, 67, $30
	anim_obj ANIM_OBJ_FIRE_BG, 108, 11, $30
	anim_obj ANIM_OBJ_FIRE_BG, 134, 109, $30
	anim_obj ANIM_OBJ_FIRE_BG, 152, 162, $30
.loop
	anim_sound 0, 1, SFX_EMBER
	anim_obj ANIM_OBJ_MAGMA_STORM, 132, 56, $18
	anim_wait 20
	anim_loop 3, .loop
	anim_wait 96
	anim_ret

BattleAnim_DarkVoid:
	anim_2gfx ANIM_GFX_ANGELS, ANIM_GFX_SPEED
	anim_clearenemyhud
	anim_sound 0, 0, SFX_WARP_TO
	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
	anim_wait 16
	anim_obp0 $fc
	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_DARK_VOID
	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_DARK_VOID
	anim_sound 6, 2, SFX_CURSE
	anim_obj ANIM_OBJ_DESTINY_BOND, 44, 120, $2
	anim_wait 48
	anim_bgeffect ANIM_BG_DIG, $0, $0, $1
.loop
	anim_sound 0, 0, SFX_SLUDGE_BOMB
	anim_obj ANIM_OBJ_FOCUS, 132, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 124, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 140, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 116, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 148, 68, $6
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 108, 68, $8
	anim_wait 2
	anim_obj ANIM_OBJ_FOCUS, 156, 68, $8
	anim_wait 2
	anim_loop 6, .loop
	anim_wait 40
	anim_incbgeffect ANIM_BG_DIG
	anim_wait 1
	anim_setbgpal PAL_BATTLE_BG_PLAYER, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_ENEMY, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_ENEMY_HP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_PLAYER_HP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_EXP, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_5, PAL_BTLCUSTOM_GRAY
	anim_setbgpal PAL_BATTLE_BG_6, PAL_BTLCUSTOM_GRAY
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_ret

BattleAnim_SeedFlare:
	anim_3gfx ANIM_GFX_PLANT, ANIM_GFX_BIG_WHIP, ANIM_GFX_CHARGE
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_LIGHT_SCREEN
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_GREEN
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_sound 0, 0, SFX_SWORDS_DANCE
.loop
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_ENERGY_ORB_TINY_OUT, 48, 96, $30
	anim_wait 1
	anim_loop 3, .loop
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $4, $10
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_bgeffect ANIM_BG_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $6, $0
	anim_bgeffect ANIM_BG_ALTERNATE_HUES, $0, $6, $0
.loop2
	anim_obj ANIM_OBJ_SEED_FLARE_E, 48, 96, $0
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $18
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $4
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_NW, 48, 96, $28
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $2b
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $14
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_S, 48, 96, $10
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $3b
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $24
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_NE, 48, 96, $38
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $0
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $28
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_W, 48, 96, $20
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $30
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $38
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_SE, 48, 96, $8
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $20
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $8
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_SW, 48, 96, $18
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $10
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $2b
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SEED_FLARE_N, 48, 96, $30
	anim_wait 1
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $34
	anim_obj ANIM_OBJ_SEED_OUT, 48, 96, $1b
	anim_wait 1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_loop 3, .loop2
	anim_wait 32
	anim_ret

BattleAnim_OminousWind:

BattleAnim_ShadowForce:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

;==========================
;	New Moves End Here
;==========================

BattleAnim_TargetObj_1Row_3:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_TargetObj_2Row_3:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0_3:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_UserObj_1Row_3:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 6
	anim_ret

BattleAnim_UserObj_2Row_3:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
	anim_wait 4
	anim_ret

BattleAnim_ShowMon_1_3:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 1
	anim_ret

