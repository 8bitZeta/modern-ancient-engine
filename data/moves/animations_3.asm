SECTION "Move Animations 3", ROMX

MoveAnimations3:
;==========================
;	New Moves Start Here
;==========================
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

BattleAnim_WoodHammer:

BattleAnim_AquaJet:

BattleAnim_AttackOrder:

BattleAnim_DefendOrder:

BattleAnim_HealOrder:

BattleAnim_HeadSmash:

BattleAnim_DoubleHit:

BattleAnim_RoarOfTime:

BattleAnim_SpacialRend:

BattleAnim_LunarDance:

BattleAnim_CrushGrip:

BattleAnim_MagmaStorm:

BattleAnim_DarkVoid:

BattleAnim_SeedFlare:

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

