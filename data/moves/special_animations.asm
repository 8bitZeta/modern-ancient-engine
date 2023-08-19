SECTION "Move Animations Special", ROMX

SpecialAnimations:
	dw BattleAnim_ThrowPokeBall  ; -16
	dw BattleAnim_SendOutMon
	dw BattleAnim_ReturnMon
	dw BattleAnim_SnatchedMove
	dw BattleAnim_Confused
	dw BattleAnim_Slp
	dw BattleAnim_Brn
	dw BattleAnim_Psn            ; -10
	dw BattleAnim_Sap
	dw BattleAnim_Frz
	dw BattleAnim_Par
	dw BattleAnim_InLove
	dw BattleAnim_InSandstorm
	dw BattleAnim_InNightmare
	dw BattleAnim_InWhirlpool
	dw BattleAnim_0         ;  -8
	dw BattleAnim_EnemyDamage
	dw BattleAnim_EnemyStatDown
	dw BattleAnim_PlayerStatDown
	dw BattleAnim_PlayerDamage
	dw BattleAnim_Wobble
	dw BattleAnim_Shake
	dw BattleAnim_HitConfusion
.IndirectEnd::

; Start Pokeball Animations

BattleAnim_ThrowPokeBall:
	anim_if_param_equal NO_ITEM, .TheTrainerBlockedTheBall
	anim_if_param_equal POKE_BALL, .PokeBall
	anim_if_param_equal GREAT_BALL, .GreatBall
	anim_if_param_equal ULTRA_BALL, .UltraBall
	anim_if_param_equal MASTER_BALL, .MasterBall
	anim_if_param_equal LEVEL_BALL, .LevelBall
	anim_if_param_equal LURE_BALL, .LureBall
	anim_if_param_equal MOON_BALL, .MoonBall
	anim_if_param_equal FRIEND_BALL, .FriendBall
	anim_if_param_equal FAST_BALL, .FastBall
	anim_if_param_equal HEAVY_BALL, .HeavyBall
	anim_if_param_equal LOVE_BALL, .LoveBall
	anim_if_param_equal PARK_BALL, .ParkBall

.TheTrainerBlockedTheBall:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_POKE_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_HIT
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL_BLOCKED, 64, 92, $20
	anim_wait 20
	anim_obj ANIM_OBJ_HIT_YFIX, 112, 40, $0
	anim_wait 32
	anim_ret

.PokeBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_POKE_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
.Throw
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.GreatBall:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_GREAT_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.UltraBall:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ULTRA_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.MasterBall:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_MASTER_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.LevelBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_LEVEL_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.LureBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_LURE_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.MoonBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_MOON_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.FriendBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FRIEND_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.FastBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FAST_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.HeavyBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_HEAVY_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.LoveBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_LOVE_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw

.ParkBall
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_PARK_BALL
	anim_2gfx ANIM_GFX_POKE_BALL, ANIM_GFX_SMOKE
	anim_jump .Throw
	
.Shake:
	anim_bgeffect ANIM_BG_RETURN_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 8
	anim_incobj 2
	anim_wait 16
	anim_sound 0, 1, SFX_CHANGE_DEX_MODE
	anim_incobj 1
	anim_wait 32
	anim_sound 0, 1, SFX_BALL_BOUNCE
	anim_wait 32
	anim_wait 32
	anim_wait 32
	anim_wait 8
	anim_setvar $0
.Loop:
	anim_wait 48
	anim_checkpokeball
	anim_if_var_equal $1, .CatchColor
	anim_if_var_equal $2, .BreakFree
	anim_incobj 1
	anim_sound 0, 1, SFX_BALL_WOBBLE
	anim_jump .Loop

.CatchColor:
	anim_if_param_equal POKE_BALL, .PokeBallClick
	anim_if_param_equal GREAT_BALL, .GreatBallClick
	anim_if_param_equal ULTRA_BALL, .UltraBallClick
	anim_if_param_equal MASTER_BALL, .MasterBallClick
	anim_if_param_equal LEVEL_BALL, .LevelBallClick
	anim_if_param_equal LURE_BALL, .LureBallClick
	anim_if_param_equal MOON_BALL, .MoonBallClick
	anim_if_param_equal FRIEND_BALL, .FriendBallClick
	anim_if_param_equal FAST_BALL, .FastBallClick
	anim_if_param_equal HEAVY_BALL, .HeavyBallClick
	anim_if_param_equal LOVE_BALL, .LoveBallClick
	anim_if_param_equal PARK_BALL, .ParkBallClick

.PokeBallClick
	anim_setobjpal PAL_BTLCUSTOM_POKE_BALL, PAL_BTLCUSTOM_POKE_BALL_CAUGHT
.Click:
	anim_keepsprites
	anim_ret

.GreatBallClick
	anim_setobjpal PAL_BTLCUSTOM_GREAT_BALL, PAL_BTLCUSTOM_GREAT_BALL_CAUGHT
	anim_jump .Click

.UltraBallClick
	anim_setobjpal PAL_BTLCUSTOM_ULTRA_BALL, PAL_BTLCUSTOM_ULTRA_BALL_CAUGHT
	anim_jump .Click

.MasterBallClick
	anim_setobjpal PAL_BTLCUSTOM_MASTER_BALL, PAL_BTLCUSTOM_MASTER_BALL_CAUGHT
	anim_jump .Click

.LevelBallClick
	anim_setobjpal PAL_BTLCUSTOM_LEVEL_BALL, PAL_BTLCUSTOM_LEVEL_BALL_CAUGHT
	anim_jump .Click

.LureBallClick
	anim_setobjpal PAL_BTLCUSTOM_LURE_BALL, PAL_BTLCUSTOM_LURE_BALL_CAUGHT
	anim_jump .Click

.MoonBallClick
	anim_setobjpal PAL_BTLCUSTOM_MOON_BALL, PAL_BTLCUSTOM_MOON_BALL_CAUGHT
	anim_jump .Click

.FriendBallClick
	anim_setobjpal PAL_BTLCUSTOM_FRIEND_BALL, PAL_BTLCUSTOM_FRIEND_BALL_CAUGHT
	anim_jump .Click

.FastBallClick
	anim_setobjpal PAL_BTLCUSTOM_FAST_BALL, PAL_BTLCUSTOM_FAST_BALL_CAUGHT
	anim_jump .Click

.HeavyBallClick
	anim_setobjpal PAL_BTLCUSTOM_HEAVY_BALL, PAL_BTLCUSTOM_HEAVY_BALL_CAUGHT
	anim_jump .Click

.LoveBallClick
	anim_setobjpal PAL_BTLCUSTOM_LOVE_BALL, PAL_BTLCUSTOM_LOVE_BALL_CAUGHT
	anim_jump .Click

.ParkBallClick
	anim_setobjpal PAL_BTLCUSTOM_PARK_BALL, PAL_BTLCUSTOM_PARK_BALL_CAUGHT
	anim_jump .Click

.BreakFree:
	anim_setobj $1, $b
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 2
	anim_bgeffect ANIM_BG_ENTER_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 32
	anim_ret

BattleAnim_SendOutMon:
	anim_if_param_equal $0, .Normal
	anim_if_param_equal $1, .Shiny
	anim_1gfx ANIM_GFX_SMOKE
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 44, 96, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_ENTER_MON, $0, $1, $0
	anim_wait 32
	anim_ret

.Shiny:
	anim_1gfx ANIM_GFX_SPEED
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $18
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $28
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $30
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj ANIM_OBJ_SHINY, 48, 96, $38
	anim_wait 32
	anim_ret

.Normal:
	anim_1gfx ANIM_GFX_SMOKE
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj ANIM_OBJ_BALL_POOF, 44, 96, $0
	anim_wait 4
	anim_bgeffect ANIM_BG_ENTER_MON, $0, $1, $0
	anim_wait 32
	anim_ret

BattleAnim_ReturnMon:
	anim_sound 0, 0, SFX_BALL_POOF
	anim_bgeffect ANIM_BG_RETURN_MON, $0, $1, $0
	anim_wait 32
	anim_ret

; Start Battle Animations

BattleAnim_SnatchedMove:
	anim_if_param_equal $0, .off
	anim_2gfx ANIM_GFX_SNATCH, ANIM_GFX_SPEED
	anim_sound 0, 0, SFX_MENU
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $1, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 12
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SNATCH_1, 48, 88, $0
	anim_wait 16
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj ANIM_OBJ_SNATCH_2, 158, 56, $20
.off
	anim_wait 32
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_Confused:
	anim_1gfx ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_KINESIS
	anim_obj ANIM_OBJ_CHICK, 44, 56, $15
	anim_obj ANIM_OBJ_CHICK, 44, 56, $aa
	anim_obj ANIM_OBJ_CHICK, 44, 56, $bf
	anim_wait 96
	anim_ret

BattleAnim_Slp:
	anim_1gfx ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_TAIL_WHIP
.loop
	anim_obj ANIM_OBJ_ASLEEP, 64, 80, $0
	anim_wait 40
	anim_loop 3, .loop
	anim_wait 32
	anim_ret

BattleAnim_Brn:
	anim_1gfx ANIM_GFX_FIRE
.loop
	anim_sound 0, 0, SFX_BURN
	anim_obj ANIM_OBJ_BURNED, 56, 88, $10
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 6
	anim_ret

BattleAnim_Psn:
	anim_1gfx ANIM_GFX_POISON
	anim_sound 0, 0, SFX_POISON
	anim_obj ANIM_OBJ_SKULL, 64, 56, $0
	anim_wait 8
	anim_sound 0, 0, SFX_POISON
	anim_obj ANIM_OBJ_SKULL, 48, 56, $0
	anim_wait 8
	anim_ret

BattleAnim_Sap:
	anim_setobjpal PAL_BATTLE_OB_YELLOW, PAL_BTLCUSTOM_GREEN
	anim_1gfx ANIM_GFX_CHARGE
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 128, 48, $2
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 136, 64, $3
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj ANIM_OBJ_ABSORB, 136, 32, $4
	anim_wait 16
	anim_ret

BattleAnim_Frz:
	anim_1gfx ANIM_GFX_ICE
	anim_obj ANIM_OBJ_FROZEN, 44, 110, $0
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_ret

BattleAnim_Par:
	anim_1gfx ANIM_GFX_STATUS
	anim_bgeffect ANIM_BG_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_THUNDERSHOCK
	anim_obj ANIM_OBJ_PARALYZED, 20, 88, $42
	anim_obj ANIM_OBJ_PARALYZED, 76, 88, $c2
	anim_wait 128
	anim_ret

BattleAnim_InLove:
	anim_1gfx ANIM_GFX_OBJECTS_1
	anim_sound 0, 0, SFX_LICK
	anim_obj ANIM_OBJ_HEART, 64, 76, $0
	anim_wait 32
	anim_sound 0, 0, SFX_LICK
	anim_obj ANIM_OBJ_HEART, 36, 72, $0
	anim_wait 32
	anim_ret

	BattleAnim_InSandstorm:
		anim_1gfx ANIM_GFX_POWDER
		anim_obj ANIM_OBJ_SANDSTORM, 88, 0, $0
		anim_wait 8
		anim_obj ANIM_OBJ_SANDSTORM, 72, 0, $1
		anim_wait 8
		anim_obj ANIM_OBJ_SANDSTORM, 56, 0, $2
	.loop
		anim_sound 0, 1, SFX_MENU
		anim_wait 8
		anim_loop 6, .loop
		anim_wait 8
		anim_ret

BattleAnim_InNightmare:
	anim_1gfx ANIM_GFX_ANGELS
	anim_sound 0, 0, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_IN_NIGHTMARE, 68, 80, $0
	anim_wait 40
	anim_ret

BattleAnim_InWhirlpool:
	anim_1gfx ANIM_GFX_WIND
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 1, SFX_SURF
.loop
	anim_obj ANIM_OBJ_GUST, 132, 72, $0
	anim_wait 6
	anim_loop 6, .loop
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_wait 1
	anim_ret

BattleAnim_EnemyDamage:
.loop
	anim_bgeffect ANIM_BG_HIDE_MON, $0, $0, $0
	anim_wait 5
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_loop 3, .loop
	anim_ret

BattleAnim_EnemyStatDown:
	anim_call BattleAnim_UserObj_1Row_Special
	anim_bgeffect ANIM_BG_VIBRATE_MON, $0, $0, $0
	anim_wait 40
	anim_call BattleAnim_ShowMon_1_Special
	anim_wait 1
	anim_ret

BattleAnim_PlayerStatDown:
	anim_call BattleAnim_UserObj_1Row_Special
	anim_bgeffect ANIM_BG_WOBBLE_PLAYER, $0, $0, $0
	anim_wait 40
	anim_call BattleAnim_ShowMon_1_Special
	anim_wait 1
	anim_ret

BattleAnim_PlayerDamage:
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_Y, $20, $2, $20
	anim_wait 40
	anim_ret

BattleAnim_Wobble:
	anim_bgeffect ANIM_BG_WOBBLE_SCREEN, $0, $0, $0
	anim_wait 40
	anim_ret

BattleAnim_Shake:
	anim_bgeffect ANIM_BG_SHAKE_SCREEN_X, $20, $2, $40
	anim_wait 40
	anim_ret

BattleAnim_HitConfusion:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 0, 0, SFX_POUND
	anim_obj ANIM_OBJ_HIT, 44, 96, $0
	anim_wait 16
	anim_ret

;============================
;	Special Branch Anims
;============================

BattleAnim_Recover_branch_Special:
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $30
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $31
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $32
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $33
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $34
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $35
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $36
	anim_obj ANIM_OBJ_RECOVER, 44, 88, $37
	anim_wait 64
	anim_ret

BattleAnim_TargetObj_1Row_Special:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_TargetObj_2Row_Special:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $0, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0_Special:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $0, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_ShowMon_1_Special:
	anim_wait 1
	anim_bgeffect ANIM_BG_SHOW_MON, $0, $1, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_UserObj_1Row_Special:
	anim_battlergfx_2row
	anim_bgeffect ANIM_BG_BATTLEROBJ_1ROW, $0, $1, $0
	anim_wait 6
	anim_ret

BattleAnim_UserObj_2Row_Special:
	anim_battlergfx_1row
	anim_bgeffect ANIM_BG_BATTLEROBJ_2ROW, $0, $1, $0
	anim_wait 4
	anim_ret