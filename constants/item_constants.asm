; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
    const POKE_BALL    ; 01
    const GREAT_BALL   ; 02
    const ULTRA_BALL   ; 03
    const MASTER_BALL  ; 04
    const LEVEL_BALL   ; 05
    const LURE_BALL    ; 06
    const MOON_BALL    ; 07
    const FRIEND_BALL  ; 08
    const FAST_BALL    ; 09
    const HEAVY_BALL   ; 0a
    const LOVE_BALL    ; 0b
    const PARK_BALL    ; 0c
	const BRIGHTPOWDER ; 0d
	const TOWN_MAP     ; 0e
	const BICYCLE      ; 0f
	const MOON_STONE   ; 10
	const ANTIDOTE     ; 11
	const BURN_HEAL    ; 12
	const ICE_HEAL     ; 13
	const AWAKENING    ; 14
	const PARLYZ_HEAL  ; 15
	const FULL_RESTORE ; 16
	const MAX_POTION   ; 17
	const HYPER_POTION ; 18
	const SUPER_POTION ; 19
	const POTION       ; 1a
	const ESCAPE_ROPE  ; 1b
	const REPEL        ; 1c
	const MAX_ELIXER   ; 1d
	const FIRE_STONE   ; 1e
	const THUNDERSTONE ; 1f
	const WATER_STONE  ; 20
	const ITEM_19      ; 21
	const HP_UP        ; 22
	const PROTEIN      ; 23
	const IRON         ; 24
	const CARBOS       ; 25
	const LUCKY_PUNCH  ; 26
	const CALCIUM      ; 27
	const RARE_CANDY   ; 28
	const X_ACCURACY   ; 29
	const LEAF_STONE   ; 2a
	const METAL_POWDER ; 2b
	const NUGGET       ; 2c
	const POKE_DOLL    ; 2d
	const FULL_HEAL    ; 2e
	const REVIVE       ; 2f
	const MAX_REVIVE   ; 30
	const GUARD_SPEC   ; 31
	const SUPER_REPEL  ; 32
	const MAX_REPEL    ; 33
	const DIRE_HIT     ; 34
	const ITEM_2D      ; 35
	const FRESH_WATER  ; 36
	const SODA_POP     ; 37
	const LEMONADE     ; 38
	const X_ATTACK     ; 39
	const ITEM_32      ; 3a
	const X_DEFEND     ; 3b
	const X_SPEED      ; 3c
	const X_SPECIAL    ; 3d
	const COIN_CASE    ; 3e
	const ITEMFINDER   ; 3f
	const POKE_FLUTE   ; 40
	const EXP_SHARE    ; 41
	const OLD_ROD      ; 42
	const GOOD_ROD     ; 43
	const SILVER_LEAF  ; 44
	const SUPER_ROD    ; 45
	const PP_UP        ; 46
	const ETHER        ; 47
	const MAX_ETHER    ; 48
	const ELIXER       ; 49
	const RED_SCALE    ; 4a
	const SECRETPOTION ; 4b
	const S_S_TICKET   ; 4c
	const MYSTERY_EGG  ; 4d
	const CLEAR_BELL   ; 4e
	const SILVER_WING  ; 4f
	const MOOMOO_MILK  ; 50
	const QUICK_CLAW   ; 51
	const PSNCUREBERRY ; 52
	const GOLD_LEAF    ; 53
	const SOFT_SAND    ; 54
	const SHARP_BEAK   ; 55
	const PRZCUREBERRY ; 56
	const BURNT_BERRY  ; 57
	const ICE_BERRY    ; 58
	const POISON_BARB  ; 59
	const KINGS_ROCK   ; 5a
	const BITTER_BERRY ; 5b
	const MINT_BERRY   ; 5c
	const RED_APRICORN ; 5d
	const TINYMUSHROOM ; 5e
	const BIG_MUSHROOM ; 5f
	const SILVERPOWDER ; 60
	const BLU_APRICORN ; 61
	const ITEM_5A      ; 62
	const AMULET_COIN  ; 63
	const YLW_APRICORN ; 64
	const GRN_APRICORN ; 65
	const CLEANSE_TAG  ; 66
	const MYSTIC_WATER ; 67
	const TWISTEDSPOON ; 68
	const WHT_APRICORN ; 69
	const BLACKBELT_I  ; 6a
	const BLK_APRICORN ; 6b
	const ITEM_64      ; 6c
	const PNK_APRICORN ; 6d
	const BLACKGLASSES ; 6e
	const SLOWPOKETAIL ; 6f
	const PINK_BOW     ; 70
	const STICK        ; 71
	const SMOKE_BALL   ; 72
	const NEVERMELTICE ; 73
	const MAGNET       ; 74
	const MIRACLEBERRY ; 75
	const PEARL        ; 76
	const BIG_PEARL    ; 77
	const EVERSTONE    ; 78
	const SPELL_TAG    ; 79
	const RAGECANDYBAR ; 7a
	const GS_BALL      ; 7b
	const BLUE_CARD    ; 7c
	const MIRACLE_SEED ; 7d
	const THICK_CLUB   ; 7e
	const FOCUS_BAND   ; 7f
	const ITEM_78      ; 80
	const ENERGYPOWDER ; 81
	const ENERGY_ROOT  ; 82
	const HEAL_POWDER  ; 83
	const REVIVAL_HERB ; 84
	const HARD_STONE   ; 85
	const LUCKY_EGG    ; 86
	const CARD_KEY     ; 87
	const MACHINE_PART ; 88
	const EGG_TICKET   ; 89
	const LOST_ITEM    ; 8a
	const STARDUST     ; 8b
	const STAR_PIECE   ; 8c
	const BASEMENT_KEY ; 8d
	const PASS         ; 8e
	const ITEM_87      ; 8f
	const ITEM_88      ; 90
	const ITEM_89      ; 91
	const CHARCOAL     ; 92
	const BERRY_JUICE  ; 93
	const SCOPE_LENS   ; 94
	const ITEM_8D      ; 95
	const ITEM_8E      ; 96
	const METAL_COAT   ; 97
	const DRAGON_FANG  ; 98
	const ITEM_91      ; 99
	const LEFTOVERS    ; 9a
	const ITEM_93      ; 9b
	const ITEM_94      ; 9c
	const ITEM_95      ; 9d
	const MYSTERYBERRY ; 9e
	const DRAGON_SCALE ; 9f
	const BERSERK_GENE ; a0
	const ITEM_99      ; a1
	const ITEM_9A      ; a2
	const ITEM_9B      ; a3
	const SACRED_ASH   ; a4
	const FLOWER_MAIL  ; a5
	const ITEM_A2      ; a6
	const LIGHT_BALL   ; a7
	const NORMAL_BOX   ; a8
	const GORGEOUS_BOX ; a9
	const SUN_STONE    ; aa
	const POLKADOT_BOW ; ab
	const ITEM_AB      ; ac
	const UP_GRADE     ; ad
	const BERRY        ; ae
	const GOLD_BERRY   ; af
	const SQUIRTBOTTLE ; b0
	const ITEM_B0      ; b1
	const RAINBOW_WING ; b2
	const ITEM_B3      ; b3
	const BRICK_PIECE  ; b4
	const SURF_MAIL    ; b5
	const LITEBLUEMAIL ; b6
	const PORTRAITMAIL ; b7
	const LOVELY_MAIL  ; b8
	const EON_MAIL     ; b9
	const MORPH_MAIL   ; ba
	const BLUESKY_MAIL ; bb
	const MUSIC_MAIL   ; bc
	const MIRAGE_MAIL  ; bd
	const ITEM_BE      ; be
	const ITEM_DC      ; bf
	const ITEM_C3      ; c0
	const ITEM_FA      ; c1
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; c2
	add_tm HEADBUTT     ; c3
	add_tm CURSE        ; c4
	add_tm ROLLOUT      ; c5
	add_tm ROAR         ; c6
	add_tm TOXIC        ; c7
	add_tm ZAP_CANNON   ; c8
	add_tm ROCK_SMASH   ; c9
	add_tm PSYCH_UP     ; ca
	add_tm HIDDEN_POWER ; cb
	add_tm SUNNY_DAY    ; cc
	add_tm SWEET_SCENT  ; cd
	add_tm SNORE        ; ce
	add_tm BLIZZARD     ; cf
	add_tm HYPER_BEAM   ; d0
	add_tm ICY_WIND     ; d1
	add_tm PROTECT      ; d2
	add_tm RAIN_DANCE   ; d3
	add_tm GIGA_DRAIN   ; d4
	add_tm ENDURE       ; d5
	add_tm FRUSTRATION  ; d6
	add_tm SOLARBEAM    ; d7
	add_tm IRON_TAIL    ; d8
	add_tm DRAGONBREATH ; d9
	add_tm THUNDER      ; da
	add_tm EARTHQUAKE   ; db
	add_tm RETURN       ; dc
	add_tm DIG          ; dd
	add_tm PSYCHIC_M    ; de
	add_tm SHADOW_BALL  ; df
	add_tm MUD_SLAP     ; e0
	add_tm DOUBLE_TEAM  ; e1
	add_tm ICE_PUNCH    ; e2
	add_tm SWAGGER      ; e3
	add_tm SLEEP_TALK   ; e4
	add_tm SLUDGE_BOMB  ; e5
	add_tm SANDSTORM    ; e6
	add_tm FIRE_BLAST   ; e7
	add_tm SWIFT        ; e8
	add_tm DEFENSE_CURL ; e9
	add_tm THUNDERPUNCH ; ea
	add_tm DREAM_EATER  ; eb
	add_tm DETECT       ; ec
	add_tm REST         ; ed
	add_tm ATTRACT      ; ee
	add_tm THIEF        ; ef
	add_tm STEEL_WING   ; f0
	add_tm FIRE_PUNCH   ; f1
	add_tm FURY_CUTTER  ; f2
	add_tm NIGHTMARE    ; f3
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; f4
	add_hm FLY          ; f5
	add_hm SURF         ; f6
	add_hm STRENGTH     ; f7
	add_hm FLASH        ; f8
	add_hm WHIRLPOOL    ; f9
	add_hm WATERFALL    ; fa
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
