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
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_DracoMeteor:
	anim_3gfx ANIM_GFX_METEOR, ANIM_GFX_EXPLOSION, ANIM_GFX_WATER
	anim_bgp $1b
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 64
	anim_clearobjs
	anim_obj ANIM_OBJ_METEOR, 88, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 150, 64, $0
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR, 72, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 134, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $60, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 158, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 146, 64, $0
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 158, 64, $0
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_EXPLOSION2, 146, 64, $0
	anim_wait 32
	anim_ret

BattleAnim_Discharge:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_LavaPlume:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_LeafStorm:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_PowerWhip:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_RockWrecker:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_CrossPoison:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_GunkShot:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_IronHead:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_MagnetBomb:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_StoneEdge:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Captivate:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_StealthRock:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_GrassKnot:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Chatter:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Judgment:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_BugBite:
	anim_2gfx ANIM_GFX_HIT, ANIM_GFX_ROCKS
.loop
    anim_sound 0, 1, SFX_MENU
    anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 116, 48, $0
    anim_obj ANIM_OBJ_ROCK_SMASH, 132, 60, $5c
    anim_wait 4
    anim_sound 0, 1, SFX_MENU
    anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 148, 56, $0
     anim_obj ANIM_OBJ_ROCK_SMASH, 132, 60, $e8
    anim_wait 4
    anim_sound 0, 1, SFX_MENU
    anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 120, 60, $0
    anim_obj ANIM_OBJ_ROCK_SMASH, 132, 60, $50
    anim_wait 4
    anim_sound 0, 1, SFX_MENU
    anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 140, 40, $0
    anim_obj ANIM_OBJ_ROCK_SMASH, 132, 60, $d0
    anim_wait 4
    anim_sound 0, 1, SFX_MENU
    anim_obj ANIM_OBJ_HIT_SMALL_YFIX, 132, 64, $0
    anim_obj ANIM_OBJ_ROCK_SMASH, 132, 60, $50
    anim_wait 4
    anim_loop 4, .loop
    anim_wait 16
    anim_ret

BattleAnim_ChargeBeam:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_WoodHammer:
    anim_ret

BattleAnim_AquaJet:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_AttackOrder:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_DefendOrder:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_HealOrder:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_HeadSmash:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_DoubleHit:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_RoarOfTime:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_SpacialRend:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_LunarDance:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_CrushGrip:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_MagmaStorm:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_DarkVoid:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_SeedFlare:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_OminousWind:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj ANIM_OBJ_PALM, 136, 56, $0
	anim_wait 6
	anim_obj ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

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

