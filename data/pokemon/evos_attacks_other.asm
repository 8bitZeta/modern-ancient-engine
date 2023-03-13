SECTION "Other Evolutions and Attacks", ROMX

OtherEvosAttacksPointers::
	dw SylveonEvosAttacks
	dw RegielekiEvosAttacks
	dw RegidragoEvosAttacks
.IndirectEnd::

SylveonEvosAttacks:
	db 0 ; no more evolutions
;	dbw 1, DISARM VOICE
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
;	dbw 1, HELPING_HAND
	dbw 5, SAND_ATTACK
;	dbw 9, FAIRY_WIND
	dbw 13, QUICK_ATTACK
	dbw 17, SWIFT
;	dbw 20, DRAININGKISS
	dbw 25, SKILL_SWAP
;	dbw 29, MISTYTERRAIN
	dbw 33, LIGHT_SCREEN
;	dbw 37, MOONBLAST
	dbw 41, LAST_RESORT
	dbw 45, PSYCH_UP
	db 0 ; no more level-up moves

RegielekiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, RAPID_SPIN
;	dbw 6, ELECTROWEB
	dbw 12, ANCIENTPOWER
	dbw 18, SHOCK_WAVE
	dbw 24, THUNDER_WAVE
	dbw 30, EXTREMESPEED
;	dbw 36, THUNDER_CAGE
	dbw 42, THUNDERBOLT
	dbw 48, MAGNET_RISE
	dbw 54, THRASH
	dbw 60, LOCK_ON
	dbw 66, ZAP_CANNON
	dbw 72, HYPER_BEAM 
	dbw 78, EXPLOSION
	db 0 ; no more level-up moves

RegidragoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TWISTER
	dbw 1, VICEGRIP
	dbw 6, BITE
	dbw 12, ANCIENTPOWER
	dbw 18, DRAGONBREATH
	dbw 24, FOCUS_ENERGY
	dbw 30, CRUNCH
	dbw 36, DRAGON_CLAW
	dbw 42, HAMMER_ARM
	dbw 48, DRAGON_DANCE
	dbw 54, THRASH
;	dbw 60, LASER_FOCUS
;	dbw 66, DRAGON_ENERGY
	dbw 72, HYPER_BEAM 
	dbw 78, EXPLOSION
	db 0 ; no more level-up moves
