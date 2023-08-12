DEF ABSOLUTE_X EQU $00
DEF RELATIVE_X EQU $01

MACRO battleanimobj
	db \1 ; flags
	; bit 7: priority
	; bit 6: y flip (for enemy)
	; bit 5: x flip (for enemy)
	; bit 0: enable enemy animation coord fixing (x = $b4 - x; see below for y)
	db \2 ; enemy animation y fix param
	; if $FF: y = y + 5 tiles
	; else:   y = -y - (1 tile) * (is_softboiled_animation)
	dw \3 ; video sequence
	db \4 ; callback
	db \5 ; palette
	db \6 ; tile offset
ENDM

BattleAnimObjects:
; entries correspond to ANIM_OBJ_* constants
	table_width BATTLEANIMOBJ_LENGTH, BattleAnimObjects
; ANIM_OBJ_HIT_BIG_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_HIT_BIG, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_HIT_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_HIT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_HIT_SMALL_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_HIT_SMALL, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_HIT_BIG
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_HIT_BIG, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_HIT
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_HIT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_HIT_SMALL
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_HIT_SMALL, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_PUNCH
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_PUNCH, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_KICK
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_KICK, BATTLEANIMFUNC_KICK, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_PALM
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_PALM, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_FANG
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_FANG, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_PUNCH_SHAKE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_PUNCH_SHAKE, BATTLEANIMFUNC_SHAKE, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_EMBER
	battleanimobj RELATIVE_X, $aa, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_EMBER, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_DRAGON_RAGE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_DRAGON_RAGE, BATTLEANIMFUNC_WAVE_TO_TARGET, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_FLAMETHROWER
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_FLAMETHROWER, BATTLEANIMFUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_FIRE_SPIN
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_FIRE_BLAST
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_FLAMETHROWER, BATTLEANIMFUNC_FIRE_BLAST, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_BURNED
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BURNED, BATTLEANIMFUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_BLIZZARD
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BLIZZARD, BATTLEANIMFUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_ICE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_ICE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_ICE_BEAM
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_ICE_BEAM, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_RAZOR_LEAF
	battleanimobj RELATIVE_X | X_FLIP, $78, BATTLEANIMFRAMESET_RAZOR_LEAF_1, BATTLEANIMFUNC_RAZOR_LEAF, PAL_BATTLE_OB_GREEN, ANIM_GFX_PLANT
; ANIM_OBJ_POKE_BALL
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_POKE_BALL_1, BATTLEANIMFUNC_POKEBALL, PAL_BATTLE_OB_RED, ANIM_GFX_POKE_BALL
; ANIM_OBJ_POKE_BALL_BLOCKED
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_POKE_BALL_1, BATTLEANIMFUNC_POKEBALL_BLOCKED, PAL_BATTLE_OB_RED, ANIM_GFX_POKE_BALL
; ANIM_OBJ_EXPLOSION1
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_EXPLOSION, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_RED, ANIM_GFX_EXPLOSION
; ANIM_OBJ_EXPLOSION2
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_EXPLOSION, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_RED, ANIM_GFX_EXPLOSION
; ANIM_OBJ_ACID
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_ACID, BATTLEANIMFUNC_THROW_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON
; ANIM_OBJ_SLUDGE
	battleanimobj RELATIVE_X, $b4, BATTLEANIMFRAMESET_SLUDGE_BUBBLE, BATTLEANIMFUNC_SLUDGE, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON
; ANIM_OBJ_BALL_POOF_YFIX
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BALL_POOF, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE
; ANIM_OBJ_BALL_POOF
	battleanimobj RELATIVE_X, $a0, BATTLEANIMFRAMESET_BALL_POOF, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE
; ANIM_OBJ_BIG_ROCK
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_DROP, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS
; ANIM_OBJ_SMALL_ROCK
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_SMALL_ROCK_STAR_HEART, BATTLEANIMFUNC_DROP, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS
; ANIM_OBJ_STRENGTH
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_STRENGTH, BATTLEANIMFUNC_STRENGTH_SEISMIC_TOSS, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS
; ANIM_OBJ_SEISMIC_TOSS
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_SEISMIC_TOSS, BATTLEANIMFUNC_STRENGTH_SEISMIC_TOSS, PAL_BATTLE_OB_BLUE, ANIM_GFX_GLOBE
; ANIM_OBJ_BUBBLE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_SMALL_BUBBLE, BATTLEANIMFUNC_BUBBLE, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE
; ANIM_OBJ_SURF
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_SURF, BATTLEANIMFUNC_SURF, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE
; ANIM_OBJ_SING
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_MUSIC_NOTE_1, BATTLEANIMFUNC_SING, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE
; ANIM_OBJ_WATER_GUN
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $80, BATTLEANIMFRAMESET_WATER_GUN_1, BATTLEANIMFUNC_WATER_GUN, PAL_BATTLE_OB_BLUE, ANIM_GFX_WATER
; ANIM_OBJ_HYDRO_PUMP
	battleanimobj RELATIVE_X, $b4, BATTLEANIMFRAMESET_HYDRO_PUMP, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BLUE, ANIM_GFX_WATER
; ANIM_OBJ_POWDER
	battleanimobj RELATIVE_X, $40, BATTLEANIMFRAMESET_POWDER, BATTLEANIMFUNC_POWDER, PAL_BATTLE_OB_YELLOW, ANIM_GFX_POWDER
; ANIM_OBJ_BEAM
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_BEAM, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM
; ANIM_OBJ_BEAM_TIP
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_BEAM_TIP, BATTLEANIMFUNC_SHAKE, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM
; ANIM_OBJ_ICE_BUILDUP
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_ICE_BUILDUP, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_FROZEN
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_FROZEN, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_MASTER_BALL_SPARKLE
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_CIRCLING_SPARKLE, BATTLEANIMFUNC_RECOVER, PAL_BATTLE_OB_BROWN, ANIM_GFX_SPEED
; ANIM_OBJ_RECOVER
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_SMALL_BUBBLE, BATTLEANIMFUNC_RECOVER, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BUBBLE
; ANIM_OBJ_THUNDER_CENTER
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_THUNDER_CENTER, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDER_LEFT
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_THUNDER_LEFT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDER_RIGHT
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_THUNDER_RIGHT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDER_WAVE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDER_WAVE_DISABLE, BATTLEANIMFUNC_THUNDER_WAVE, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDERBOLT_SPARKS
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDERBOLT_SPARKS, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDERBOLT_CORE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDERBOLT_CORE, BATTLEANIMFUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION
; ANIM_OBJ_THUNDERSHOCK_SPARKS
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDERSHOCK_SPARKS, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_THUNDERSHOCK_CORE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDERSHOCK_CORE, BATTLEANIMFUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION
; ANIM_OBJ_CLAMP
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_CLAMP, BATTLEANIMFUNC_CLAMP_ENCORE, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_BITE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BITE_1, BATTLEANIMFUNC_BITE, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CUT_DOWN_LEFT
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CUT_DOWN_LEFT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CUT_DOWN_RIGHT
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CUT_DOWN_RIGHT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CUT_UP_RIGHT
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CUT_UP_RIGHT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CUT_LONG_DOWN_LEFT
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CUT_LONG_DOWN_LEFT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CUT_LONG_DOWN_RIGHT
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CUT_LONG_DOWN_RIGHT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_SOLAR_BEAM_CHARGE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_CHARGE_ORB_1, BATTLEANIMFUNC_SOLAR_BEAM, PAL_BATTLE_OB_GREEN, ANIM_GFX_CHARGE
; ANIM_OBJ_ABSORB_CENTER
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_ABSORB_CENTER, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GREEN, ANIM_GFX_CHARGE
; ANIM_OBJ_GUST
	battleanimobj RELATIVE_X | X_FLIP, $b8, BATTLEANIMFRAMESET_GUST, BATTLEANIMFUNC_GUST, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND
; ANIM_OBJ_VINE_WHIP1
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_VINE_WHIP_1, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_VINE_WHIP2
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_VINE_WHIP_2, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GREEN, ANIM_GFX_WHIP
; ANIM_OBJ_RAZOR_WIND1
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_RAZOR_WIND_1, BATTLEANIMFUNC_RAZOR_WIND, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_RAZOR_WIND2
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_RAZOR_WIND_2, BATTLEANIMFUNC_RAZOR_WIND, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_SONICBOOM_JP
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_SONICBOOM_JP, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_WARP
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_WARP, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_ABSORB
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_CHARGE_ORB_2, BATTLEANIMFUNC_ABSORB, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_EGG
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_EGG, BATTLEANIMFUNC_EGG, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG
; ANIM_OBJ_FOCUS
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_FOCUS, BATTLEANIMFUNC_MOVE_UP, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_BIND1
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_BIND_1, BATTLEANIMFUNC_WRAP, PAL_BATTLE_OB_GREEN, ANIM_GFX_ROPE
; ANIM_OBJ_BIND2
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_BIND_3, BATTLEANIMFUNC_WRAP, PAL_BATTLE_OB_GREEN, ANIM_GFX_ROPE
; ANIM_OBJ_LEECH_SEED
	battleanimobj RELATIVE_X | X_FLIP, $68, BATTLEANIMFRAMESET_LEECH_SEED_1, BATTLEANIMFUNC_LEECH_SEED, PAL_BATTLE_OB_GREEN, ANIM_GFX_PLANT
; ANIM_OBJ_SOUND
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SOUND_1, BATTLEANIMFUNC_SOUND, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE
; ANIM_OBJ_WAVE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_WAVE, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_PSYCHIC
; ANIM_OBJ_CONFUSE_RAY
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_CONFUSE_RAY_1, BATTLEANIMFUNC_CONFUSE_RAY, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_LEER
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $88, BATTLEANIMFRAMESET_LEER, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM
; ANIM_OBJ_LEER_TIP
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $88, BATTLEANIMFRAMESET_BEAM_TIP, BATTLEANIMFUNC_SHAKE, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM
; ANIM_OBJ_SCREEN
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_REFLECT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_REFLECT
; ANIM_OBJ_HARDEN
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_REFLECT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_REFLECT
; ANIM_OBJ_CHICK
	battleanimobj RELATIVE_X | X_FLIP, $50, BATTLEANIMFRAMESET_CHICK_1, BATTLEANIMFUNC_DIZZY, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STATUS
; ANIM_OBJ_AMNESIA
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_AMNESIA_1, BATTLEANIMFUNC_AMNESIA, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS
; ANIM_OBJ_ASLEEP
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_ASLEEP, BATTLEANIMFUNC_FLOAT_UP, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS
; ANIM_OBJ_SKULL
	battleanimobj RELATIVE_X, $50, BATTLEANIMFRAMESET_SKULL_CROSSBONE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON
; ANIM_OBJ_DIG_SAND
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_DIG_SAND, BATTLEANIMFUNC_DIG, PAL_BATTLE_OB_BROWN, ANIM_GFX_SAND
; ANIM_OBJ_DIG_PILE
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_DIG_PILE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BROWN, ANIM_GFX_SAND
; ANIM_OBJ_SAND
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SAND, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, ANIM_GFX_SAND
; ANIM_OBJ_PARALYZED
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_PARALYZED, BATTLEANIMFUNC_PARALYZED, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STATUS
; ANIM_OBJ_STRING_SHOT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_STRING_SHOT_1, BATTLEANIMFUNC_STRING, PAL_BATTLE_OB_GRAY, ANIM_GFX_WEB
; ANIM_OBJ_HAZE
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_HAZE, BATTLEANIMFUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE
; ANIM_OBJ_MIST
	battleanimobj RELATIVE_X | X_FLIP, $48, BATTLEANIMFRAMESET_MIST, BATTLEANIMFUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE
; ANIM_OBJ_SMOG
	battleanimobj RELATIVE_X | X_FLIP, $48, BATTLEANIMFRAMESET_HAZE, BATTLEANIMFUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE
; ANIM_OBJ_POISON_GAS
	battleanimobj RELATIVE_X | X_FLIP, $78, BATTLEANIMFRAMESET_HAZE, BATTLEANIMFUNC_POISON_GAS, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE
; ANIM_OBJ_HORN
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_HORN, BATTLEANIMFUNC_HORN, PAL_BATTLE_OB_GRAY, ANIM_GFX_HORN
; ANIM_OBJ_NEEDLE
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_NEEDLE, BATTLEANIMFUNC_NEEDLE, PAL_BATTLE_OB_BLUE, ANIM_GFX_HORN
; ANIM_OBJ_PETAL_DANCE
	battleanimobj RELATIVE_X, $48, BATTLEANIMFRAMESET_FLOWER, BATTLEANIMFUNC_PETAL_DANCE, PAL_BATTLE_OB_RED, ANIM_GFX_FLOWER
; ANIM_OBJ_SLUDGE_BOMB
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BARRAGE_BALL, BATTLEANIMFUNC_THROW_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG
; ANIM_OBJ_PAY_DAY
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_PAY_DAY, BATTLEANIMFUNC_THIEF_PAYDAY, PAL_BATTLE_OB_BROWN, ANIM_GFX_STATUS
; ANIM_OBJ_SONICBOOM_JP_UNUSED
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SONICBOOM_JP, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_MIMIC
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_CIRCLING_SPARKLE, BATTLEANIMFUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_GRAY, ANIM_GFX_SPEED
; ANIM_OBJ_ATTRACT
	battleanimobj RELATIVE_X, $78, BATTLEANIMFRAMESET_HEART, BATTLEANIMFUNC_POISON_GAS, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS
; ANIM_OBJ_BONEMERANG
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_SPINNING_BONE, BATTLEANIMFUNC_BONEMERANG, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_BONE_CLUB
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_SPINNING_BONE, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_BONE_RUSH
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_SPINNING_BONE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_SWIFT
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_STAR, BATTLEANIMFUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS
; ANIM_OBJ_KINESIS
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SPOON, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_FLASH
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_SPARKLE, BATTLEANIMFUNC_SHINY, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_SHINY
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_SPARKLE, BATTLEANIMFUNC_SHINY, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_SKY_ATTACK
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_SKY_ATTACK, BATTLEANIMFUNC_SKY_ATTACK, PAL_BATTLE_OB_GRAY, ANIM_GFX_SKY_ATTACK
; ANIM_OBJ_LICK
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_LICK, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_WATER
; ANIM_OBJ_WITHDRAW
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_WITHDRAW_SHELL, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_REFLECT
; ANIM_OBJ_DRAIN
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_SMALL_BUBBLE, BATTLEANIMFUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE
; ANIM_OBJ_GROWTH
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_SHRINKING_CHARGE_ORB, BATTLEANIMFUNC_GROWTH_SWORDS_DANCE, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_CONVERSION2
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_CONVERSION, BATTLEANIMFUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION
; ANIM_OBJ_SMOKE
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_HAZE, BATTLEANIMFUNC_SMOKE_FLAME_WHEEL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE
; ANIM_OBJ_SMOKESCREEN
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_BARRAGE_BALL, BATTLEANIMFUNC_PRESENT_SMOKESCREEN, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG
; ANIM_OBJ_SWORDS_DANCE
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_SWORD, BATTLEANIMFUNC_GROWTH_SWORDS_DANCE, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP
; ANIM_OBJ_SPEED_LINE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_SPEED_LINE_1, BATTLEANIMFUNC_SPEED_LINE, PAL_BATTLE_OB_GRAY, ANIM_GFX_SPEED
; ANIM_OBJ_SHARPEN
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_SHARPEN, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHAPES
; ANIM_OBJ_DEFENSE_CURL
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_DEFENSE_CURL, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHAPES
; ANIM_OBJ_METRONOME_HAND
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_METRONOME_HAND, BATTLEANIMFUNC_METRONOME_HAND, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_METRONOME_SPARKLE
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_CIRCLING_SPARKLE, BATTLEANIMFUNC_METRONOME_SPARKLE_SKETCH, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_DISABLE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_THUNDER_WAVE_DISABLE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_AGILITY
	battleanimobj RELATIVE_X | X_FLIP | PRIORITY, $88, BATTLEANIMFRAMESET_AGILITY, BATTLEANIMFUNC_AGILITY, PAL_BATTLE_OB_BLUE, ANIM_GFX_WIND_BG
; ANIM_OBJ_HEART
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_HEART, BATTLEANIMFUNC_FLOAT_UP, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS
; ANIM_OBJ_FLAME_WHEEL
	battleanimobj RELATIVE_X, $98, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_SMOKE_FLAME_WHEEL, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_SACRED_FIRE
	battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_FLAMETHROWER, BATTLEANIMFUNC_SACRED_FIRE, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_COTTON_SPORE
	battleanimobj RELATIVE_X | X_FLIP, $68, BATTLEANIMFRAMESET_COTTON, BATTLEANIMFUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_MILK_DRINK
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_MILK_BOTTLE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_ANGER
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_ANGER_VEIN, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_RED, ANIM_GFX_MISC
; ANIM_OBJ_HEAL_BELL
	battleanimobj RELATIVE_X | X_FLIP, $50, BATTLEANIMFRAMESET_HEAL_BELL, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_MISC
; ANIM_OBJ_HEAL_BELL_NOTE
	battleanimobj RELATIVE_X, $40, BATTLEANIMFRAMESET_MUSIC_NOTE_1, BATTLEANIMFUNC_HEAL_BELL_NOTES, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE
; ANIM_OBJ_BATON_PASS
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_BATON_PASS, BATTLEANIMFUNC_BATON_PASS, PAL_BATTLE_OB_RED, ANIM_GFX_MISC
; ANIM_OBJ_LOCK_ON
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_LOCK_ON_1, BATTLEANIMFUNC_LOCK_ON_MIND_READER, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_MIND_READER
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_MIND_READER_1, BATTLEANIMFUNC_LOCK_ON_MIND_READER, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_SAFEGUARD
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SAFEGUARD, BATTLEANIMFUNC_SAFEGUARD_PROTECT, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_PROTECT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_STAR, BATTLEANIMFUNC_SAFEGUARD_PROTECT, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS
; ANIM_OBJ_THIEF
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_ITEM_BAG_SIDEWAYS_PUNCH, BATTLEANIMFUNC_THIEF_PAYDAY, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS
; ANIM_OBJ_OCTAZOOKA
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_BARRAGE_BALL, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG
; ANIM_OBJ_PRESENT
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_ITEM_BAG_SIDEWAYS_PUNCH, BATTLEANIMFUNC_PRESENT_SMOKESCREEN, PAL_BATTLE_OB_RED, ANIM_GFX_STATUS
; ANIM_OBJ_SPIKES
	battleanimobj RELATIVE_X | X_FLIP, $70, BATTLEANIMFRAMESET_SPIKE, BATTLEANIMFUNC_SPIKES, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC
; ANIM_OBJ_POWDER_SNOW
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_POWDER_SNOW, BATTLEANIMFUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_GRAY, ANIM_GFX_ICE
; ANIM_OBJ_DRAGONBREATH
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BURNED, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_CONVERSION
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_CONVERSION, BATTLEANIMFUNC_CONVERSION, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION
; ANIM_OBJ_SPIDER_WEB
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_SPIDER_WEB, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_WEB
; ANIM_OBJ_NIGHTMARE
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_IMP_U_TURN_RISING, BATTLEANIMFUNC_DIZZY, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS
; ANIM_OBJ_IN_NIGHTMARE
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_IMP_FLIPPED, BATTLEANIMFUNC_FLOAT_UP, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS
; ANIM_OBJ_LOVELY_KISS
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_IMP_U_TURN_RISING, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS
; ANIM_OBJ_SWEET_KISS
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_CHERUB, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BLUE, ANIM_GFX_ANGELS
; ANIM_OBJ_SKETCH
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $80, BATTLEANIMFRAMESET_PENCIL, BATTLEANIMFUNC_METRONOME_SPARKLE_SKETCH, PAL_BATTLE_OB_GREEN, ANIM_GFX_OBJECTS
; ANIM_OBJ_ENCORE_HAND
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_ENCORE_HAND, BATTLEANIMFUNC_CLAMP_ENCORE, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_ENCORE_STAR
	battleanimobj RELATIVE_X | X_FLIP, $70, BATTLEANIMFRAMESET_STAR, BATTLEANIMFUNC_ENCORE_BELLY_DRUM, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS
; ANIM_OBJ_DESTINY_BOND
	battleanimobj RELATIVE_X | X_FLIP, $c0, BATTLEANIMFRAMESET_DESTINY_BOND, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS
; ANIM_OBJ_MORNING_SUN
	battleanimobj RELATIVE_X | X_FLIP, $40, BATTLEANIMFRAMESET_MORNING_SUN, BATTLEANIMFUNC_SWAGGER_MORNING_SUN, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SHINE
; ANIM_OBJ_GLIMMER
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_GLIMMER, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHINE
; ANIM_OBJ_MOONLIGHT
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_MOONLIGHT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SHINE
; ANIM_OBJ_HIDDEN_POWER
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_CHARGE_ORB_1, BATTLEANIMFUNC_HIDDEN_POWER, PAL_BATTLE_OB_RED, ANIM_GFX_CHARGE
; ANIM_OBJ_CROSS_CHOP1
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CROSS_CHOP_1, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_CROSS_CHOP2
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_CROSS_CHOP_2, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT
; ANIM_OBJ_SANDSTORM
	battleanimobj RELATIVE_X | X_FLIP, $00, BATTLEANIMFRAMESET_SANDSTORM, BATTLEANIMFUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_BROWN, ANIM_GFX_POWDER
; ANIM_OBJ_ZAP_CANNON
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_ZAP_CANNON, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING
; ANIM_OBJ_SPITE
	battleanimobj RELATIVE_X | X_FLIP, $40, BATTLEANIMFRAMESET_IMP_U_TURN_RISING, BATTLEANIMFUNC_POWDER, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS
; ANIM_OBJ_CURSE
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_CURSE_NAIL, BATTLEANIMFUNC_CURSE, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_PERISH_SONG
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_MUSIC_NOTE_1, BATTLEANIMFUNC_PERISH_SONG, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE
; ANIM_OBJ_FORESIGHT
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_FORESIGHT_SHINE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHINE
; ANIM_OBJ_RAPID_SPIN
	battleanimobj RELATIVE_X | X_FLIP, $b8, BATTLEANIMFRAMESET_RAPID_SPIN, BATTLEANIMFUNC_RAPID_SPIN, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND
; ANIM_OBJ_SWAGGER
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SWAGGER, BATTLEANIMFUNC_SWAGGER_MORNING_SUN, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND
; ANIM_OBJ_BELLY_DRUM_HAND
	battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_PALM, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_BELLY_DRUM_NOTE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_MUSIC_NOTE_1, BATTLEANIMFUNC_ENCORE_BELLY_DRUM, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE
; ANIM_OBJ_MEAN_LOOK
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_MEAN_LOOK, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_PSYCHIC
; ANIM_OBJ_SHOOTING_SPARKLE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_GROWING_SPARKLE, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_RAIN
	battleanimobj RELATIVE_X | X_FLIP, $00, BATTLEANIMFRAMESET_RAIN, BATTLEANIMFUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_GRAY, ANIM_GFX_WATER
; ANIM_OBJ_B0
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_MIST, BATTLEANIMFUNC_ANIM_OBJ_B0, PAL_BATTLE_OB_RED, ANIM_GFX_HAZE
; ANIM_OBJ_PSYCH_UP
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_PSYCH_UP, BATTLEANIMFUNC_PSYCH_UP, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS
; ANIM_OBJ_ANCIENTPOWER
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_ANCIENT_POWER, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS
; ANIM_OBJ_AEROBLAST
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_AEROBLAST, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_AEROBLAST
; ANIM_OBJ_SHADOW_BALL
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_BARRAGE_BALL, BATTLEANIMFUNC_WAVE_TO_TARGET, PAL_BATTLE_OB_BLUE, ANIM_GFX_EGG
; ANIM_OBJ_ROCK_SMASH
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_ROCK_SMASH, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS
; ANIM_OBJ_FLOWER
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_FLOWER, BATTLEANIMFUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_RED, ANIM_GFX_FLOWER
; ANIM_OBJ_COTTON
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_COTTON, BATTLEANIMFUNC_COTTON, PAL_BATTLE_OB_RED, ANIM_GFX_MISC
; ANIM_OBJ_ENEMYFEET_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_ENEMYFEET_1ROW, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_ENEMY, ANIM_GFX_PLAYERHEAD
; ANIM_OBJ_PLAYERHEAD_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_PLAYERHEAD_1ROW, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_PLAYER, ANIM_GFX_ENEMYFEET
; ANIM_OBJ_ENEMYFEET_2ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_ENEMYFEET_2ROW, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_ENEMY, ANIM_GFX_PLAYERHEAD
; ANIM_OBJ_PLAYERHEAD_2ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_PLAYERHEAD_2ROW, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_PLAYER, ANIM_GFX_ENEMYFEET
; ANIM_OBJ_CHARGE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_CHARGE_ORB_2, BATTLEANIMFUNC_RECOVER, PAL_BATTLE_OB_YELLOW, $12 
; ANIM_OBJ_PALM_XFLIP
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_PALM_XFLIP, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT 
; ANIM_OBJ_STAR_BURST
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_ROCK_SMASH, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STARS
; ANIM_OBJ_AIR_CUTTER
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_SONICBOOM_JP, BATTLEANIMFUNC_AIR_CUTTER, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP 
; ANIM_OBJ_ROCK_TOMB
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_ROCK_TOMB, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS 
; ANIM_OBJ_METEOR
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_PLAYERHEAD_1ROW, BATTLEANIMFUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_BLUE, ANIM_GFX_METEOR 
; ANIM_OBJ_BULLET_SEED
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_LEECH_SEED_1, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GREEN, $1d 
; ANIM_OBJ_ROCK_BLAST
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS 
; ANIM_OBJ_BIG_WAVE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_BIG_WAVE, BATTLEANIMFUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, ANIM_GFX_PSYCHIC 
; ANIM_OBJ_UPROAR
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_UPROAR_NOTE, BATTLEANIMFUNC_RADIAL_MOVE_OUT_SLOW, PAL_BATTLE_OB_RED, ANIM_GFX_NOISE
; ANIM_OBJ_ENERGY_ORB
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_ENERGY_ORB_LONG, BATTLEANIMFUNC_RADIAL_MOVE_IN, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_ENERGY_ORB_OUT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_ENERGY_ORB_LONG, BATTLEANIMFUNC_RADIAL_MOVE_OUT, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_ENERGY_ORB_OUT_YFIX
	battleanimobj RELATIVE_X | X_FLIP, $10, BATTLEANIMFRAMESET_ENERGY_ORB_LONG, BATTLEANIMFUNC_RADIAL_MOVE_OUT, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_HEAT_WAVE
	battleanimobj RELATIVE_X | X_FLIP, $20, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_HAIL
	battleanimobj RELATIVE_X | X_FLIP, $20, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE
; ANIM_OBJ_TORMENT
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_TORMENT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS
; ANIM_OBJ_FLATTER_1
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_RAZOR_LEAF_1, BATTLEANIMFUNC_RAZOR_LEAF, PAL_BATTLE_OB_YELLOW, ANIM_GFX_FLATTER
; ANIM_OBJ_FLATTER_2
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_RAZOR_LEAF_1, BATTLEANIMFUNC_RAZOR_LEAF, PAL_BATTLE_OB_BLUE, ANIM_GFX_FLATTER
; ANIM_OBJ_MEDIUM_HORN
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_MEDIUM_HORN, BATTLEANIMFUNC_NEEDLE, PAL_BATTLE_OB_YELLOW, ANIM_GFX_HORN
; ANIM_OBJ_MINIMIZE
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_MINIMIZE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC_2
; ANIM_OBJ_DAZZLE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_SPARKLE, BATTLEANIMFUNC_HIDDEN_POWER, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED
; ANIM_OBJ_RISING_BUBBLE
	battleanimobj RELATIVE_X, $a0, BATTLEANIMFRAMESET_SMALL_BUBBLE, BATTLEANIMFUNC_FLOAT_UP, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE
; ANIM_OBJ_BUBBLE_SPLASH
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_BUBBLE_SPLASH, BATTLEANIMFUNC_BUBBLE_SPLASH, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE
; ANIM_OBJ_OCTAZOOKA_SMOKE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_OCTAZOOKA_SMOKE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE_PUFF
; ANIM_OBJ_INK_SPLASH
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_INK_SPLASH, BATTLEANIMFUNC_BUBBLE_SPLASH, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON
; ANIM_OBJ_FAKE_OUT_L
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_ENCORE_HAND, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_FAKE_OUT_R
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_ENCORE_HAND_FLIPPED, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_SMELLINGSALT_L
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SMELLINGSALT_L, BATTLEANIMFUNC_RADIAL_MOVE_IN, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_SMELLINGSALT_R
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_SMELLINGSALT_R, BATTLEANIMFUNC_RADIAL_MOVE_IN, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_SMELLINGSALT_SURPRISED
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_SMELLINGSALT_SURPRISED, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS
; ANIM_OBJ_MIST_BALL_BG
	battleanimobj RELATIVE_X | X_FLIP | PRIORITY, $88, BATTLEANIMFRAMESET_MIST, BATTLEANIMFUNC_AGILITY, PAL_BATTLE_OB_YELLOW, ANIM_GFX_HAZE
; ANIM_OBJ_DROPLET_1
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_DROPLET_R, BATTLEANIMFUNC_RADIAL_MOVE_OUT_SLOW, PAL_BATTLE_OB_BLUE, ANIM_GFX_MISC_2
; ANIM_OBJ_DROPLET_L
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_DROPLET_L, BATTLEANIMFUNC_RADIAL_MOVE_OUT_SLOW, PAL_BATTLE_OB_BLUE, ANIM_GFX_MISC_2
; ANIM_OBJ_LONG_PUNCH
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_LONG_PUNCH, BATTLEANIMFUNC_SHAKE, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT 
; ANIM_OBJ_TAUNT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_TAUNT, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_TAUNT 
; ANIM_OBJ_TRICK
	battleanimobj ABSOLUTE_X, $90, BATTLEANIMFRAMESET_ITEM_BAG_SIDEWAYS_PUNCH, BATTLEANIMFUNC_HIDDEN_POWER, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STATUS
; ANIM_OBJ_WISH_1
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_RADIAL_MOVE_OUT_SLOW, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STARS
; ANIM_OBJ_WISH_2
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_SMALL_ROCK_STAR_HEART, BATTLEANIMFUNC_OBJECT_HOVER, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STARS
; ANIM_OBJ_COSMIC_POWER_BG
	battleanimobj ABSOLUTE_X | PRIORITY, $90, BATTLEANIMFRAMESET_COSMIC_POWER_BG, BATTLEANIMFUNC_RADIAL_MOVE_OUT_CP_BG, PAL_BATTLE_OB_GREEN, ANIM_GFX_COSMIC_POWER
; ANIM_OBJ_ASSIST
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_ASSIST, BATTLEANIMFUNC_HIDDEN_POWER, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT 
; ANIM_OBJ_ROOT_L
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_ROOT_L, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROOTS
; ANIM_OBJ_ROOT_R
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_ROOT_R, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROOTS
; ANIM_OBJ_ENERGY_INGRAIN
	battleanimobj RELATIVE_X, $60, BATTLEANIMFRAMESET_ENERGY_ORB_INGRAIN, BATTLEANIMFUNC_SOLAR_BEAM, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_RECYCLE
	battleanimobj RELATIVE_X | X_FLIP, $8a, BATTLEANIMFRAMESET_RECYCLE, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_YELLOW, ANIM_GFX_RECYCLE
; ANIM_OBJ_VERTICAL_CHOP
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_VERTICAL_CHOP, BATTLEANIMFUNC_ROCK_TOMB, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_VERTICAL_CHOP_STILL
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_VERTICAL_CHOP, BATTLEANIMFUNC_SHAKE, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT
; ANIM_OBJ_YAWN_1
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_OCTAZOOKA_SMOKE, BATTLEANIMFUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE_PUFF
; ANIM_OBJ_YAWN_2
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_DROWZINESS, BATTLEANIMFUNC_FLOAT_UP, PAL_BATTLE_OB_GRAY, ANIM_GFX_STARS
; ANIM_OBJ_ERUPTION_BIG_ROCK
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_BIG_ROCK_STAR_HEART, BATTLEANIMFUNC_RADIAL_MOVE_OUT, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS 
; ANIM_OBJ_ERUPTION_SMALL_ROCK
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_SMALL_ROCK_STAR_HEART, BATTLEANIMFUNC_RADIAL_MOVE_OUT, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS 
; ANIM_OBJ_ERUPTION_SMALL_FLAME
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_EMBER, BATTLEANIMFUNC_BUBBLE_SPLASH, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE
; ANIM_OBJ_SKILL_SWAP_1
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_CHARGE_ORB_2,  BATTLEANIMFUNC_ABSORB, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_SKILL_SWAP_2
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_CHARGE_ORB_2,  BATTLEANIMFUNC_THROW_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE
; ANIM_OBJ_IMPRISON_RING
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_IMPRISON_RING, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS
; ANIM_OBJ_RED_X
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_BIG_RED_X_FLASHING, BATTLEANIMFUNC_NULL, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS

	assert_table_length NUM_ANIM_OBJS
