SECTION "Sinnoh Evolutions and Attacks", ROMX

SinnohEvosAttacksPointers::
	dw TurtwigEvosAttacks
	dw GrotleEvosAttacks
	dw TorterraEvosAttacks
	dw ChimcharEvosAttacks
	dw MonfernoEvosAttacks
	dw InfernapeEvosAttacks
	dw PiplupEvosAttacks
	dw PrinplupEvosAttacks
	dw EmpoleonEvosAttacks
	dw StarlyEvosAttacks
	dw StaraviaEvosAttacks
	dw StaraptorEvosAttacks
	dw BidoofEvosAttacks
	dw BibarelEvosAttacks
	dw KricketotEvosAttacks
	dw KricketuneEvosAttacks
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
	dw BudewEvosAttacks
	dw RoseradeEvosAttacks
	dw CranidosEvosAttacks
	dw RampardosEvosAttacks
	dw ShieldonEvosAttacks
	dw BastiodonEvosAttacks
	dw BurmyEvosAttacks
	dw WormadamEvosAttacks
	dw MothimEvosAttacks
	dw CombeeEvosAttacks
	dw VespiquenEvosAttacks
	dw PachirisuEvosAttacks
	dw BuizelEvosAttacks
	dw FloatzelEvosAttacks
	dw CherubiEvosAttacks
	dw CherrimEvosAttacks
	dw ShellosEvosAttacks
	dw GastrodonEvosAttacks
	dw AmbipomEvosAttacks
	dw DrifloonEvosAttacks
	dw DrifblimEvosAttacks
	dw BunearyEvosAttacks
	dw LopunnyEvosAttacks
	dw MismagiusEvosAttacks
	dw HonchkrowEvosAttacks
	dw GlameowEvosAttacks
	dw PuruglyEvosAttacks
	dw ChinglingEvosAttacks
	dw StunkyEvosAttacks
	dw SkuntankEvosAttacks
	dw BronzorEvosAttacks
	dw BronzongEvosAttacks
	dw BonslyEvosAttacks
	dw MimeJrEvosAttacks
	dw HappinyEvosAttacks
	dw ChatotEvosAttacks
	dw SpiritombEvosAttacks
	dw GibleEvosAttacks
	dw GabiteEvosAttacks
	dw GarchompEvosAttacks
	dw MunchlaxEvosAttacks
	dw RioluEvosAttacks
	dw LucarioEvosAttacks
	dw HippopotasEvosAttacks
	dw HippowdonEvosAttacks
	dw SkorupiEvosAttacks
	dw DrapionEvosAttacks
	dw CroagunkEvosAttacks
	dw ToxicroakEvosAttacks
	dw CarnivineEvosAttacks
	dw FinneonEvosAttacks
	dw LumineonEvosAttacks
	dw MantykeEvosAttacks
	dw SnoverEvosAttacks
	dw AbomasnowEvosAttacks
	dw WeavileEvosAttacks
	dw MagnezoneEvosAttacks
	dw LickilickyEvosAttacks
	dw RhyperiorEvosAttacks
	dw TangrowthEvosAttacks
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw TogekissEvosAttacks
	dw YanmegaEvosAttacks
	dw LeafeonEvosAttacks
	dw GlaceonEvosAttacks
	dw GliscorEvosAttacks
	dw MamoswineEvosAttacks
	dw PorygonZEvosAttacks
	dw GalladeEvosAttacks
	dw ProbopassEvosAttacks
	dw DusknoirEvosAttacks
	dw FroslassEvosAttacks
	dw RotomEvosAttacks
	dw UxieEvosAttacks
	dw MespritEvosAttacks
	dw AzelfEvosAttacks
	dw DialgaEvosAttacks
	dw PalkiaEvosAttacks
	dw HeatranEvosAttacks
	dw RegigigasEvosAttacks
	dw GiratinaEvosAttacks
	dw CresseliaEvosAttacks
	dw PhioneEvosAttacks
	dw ManaphyEvosAttacks
	dw DarkraiEvosAttacks
	dw ShayminEvosAttacks
	dw ArceusEvosAttacks
.IndirectEnd::

TurtwigEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, GROTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, WITHDRAW
	dbw 9, ABSORB
	dbw 13, RAZOR_LEAF
	dbw 17, CURSE
	dbw 21, BITE
	dbw 25, MEGA_DRAIN
	dbw 29, LEECH_SEED
	dbw 33, SYNTHESIS
	dbw 37, CRUNCH
	dbw 41, GIGA_DRAIN
	dbw 45, LEAF_STORM
	db 0 ; no more level-up moves

GrotleEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, TORTERRA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 5, WITHDRAW
	dbw 9, ABSORB
	dbw 13, RAZOR_LEAF
	dbw 17, CURSE
	dbw 22, BITE
	dbw 27, MEGA_DRAIN
	dbw 32, LEECH_SEED
	dbw 37, SYNTHESIS
	dbw 42, CRUNCH
	dbw 47, GIGA_DRAIN
	dbw 52, LEAF_STORM
	db 0 ; no more level-up moves

TorterraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WOOD_HAMMER
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 1, ABSORB
	dbw 1, RAZOR_LEAF
	dbw 5, WITHDRAW
	dbw 9, ABSORB
	dbw 13, RAZOR_LEAF
	dbw 17, CURSE
	dbw 22, BITE
	dbw 27, MEGA_DRAIN
	dbw 32, EARTHQUAKE
	dbw 33, LEECH_SEED
	dbw 39, SYNTHESIS
	dbw 45, CRUNCH
	dbw 51, GIGA_DRAIN
	dbw 57, LEAF_STORM
	db 0 ; no more level-up moves

ChimcharEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, MONFERNO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, EMBER
	dbw 9, TAUNT
	dbw 15, FURY_SWIPES
	dbw 17, FLAME_WHEEL
	dbw 23, NASTY_PLOT
	dbw 25, TORMENT
	dbw 31, FACADE
	dbw 33, FIRE_SPIN
	dbw 39, SLACK_OFF
	dbw 41, FLAMETHROWER
	db 0 ; no more level-up moves

MonfernoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, INFERNAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, EMBER
	dbw 9, TAUNT
	dbw 14, MACH_PUNCH
	dbw 16, FURY_SWIPES
	dbw 19, FLAME_WHEEL
	dbw 26, FEINT
	dbw 29, TORMENT
	dbw 36, CLOSE_COMBAT
	dbw 39, FIRE_SPIN
	dbw 46, SLACK_OFF
	dbw 49, FLARE_BLITZ
	db 0 ; no more level-up moves

InfernapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, TAUNT
	dbw 7, EMBER
	dbw 9, TAUNT
	dbw 14, MACH_PUNCH
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 29, FEINT
	dbw 33, PUNISHMENT
	dbw 41, CLOSE_COMBAT
	dbw 45, FIRE_SPIN
	dbw 53, CALM_MIND
	dbw 57, FLARE_BLITZ
	db 0 ; no more level-up moves

PiplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, PRINPLUP
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, WATER_SPORT
	dbw 15, PECK
	dbw 18, BUBBLEBEAM
	dbw 22, BIDE
	dbw 25, FURY_ATTACK
	dbw 29, BRINE
	dbw 32, WHIRLPOOL
	dbw 36, MIST
	dbw 39, DRILL_PECK
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PrinplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, EMPOLEON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, WATER_SPORT
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BUBBLEBEAM
	dbw 24, BIDE
	dbw 28, FURY_ATTACK
	dbw 33, BRINE
	dbw 37, WHIRLPOOL
	dbw 42, MIST
	dbw 46, DRILL_PECK
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, BUBBLE
	dbw 4, GROWL
	dbw 8, BUBBLE
	dbw 11, SWORDS_DANCE
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BUBBLEBEAM
	dbw 24, SWAGGER
	dbw 28, FURY_ATTACK
	dbw 33, BRINE
	dbw 36, AQUA_JET
	dbw 39, WHIRLPOOL
	dbw 46, MIST
	dbw 52, DRILL_PECK
	dbw 59, HYDRO_PUMP
	db 0 ; no more level-up moves

StarlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, STARAVIA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 9, WING_ATTACK
	dbw 13, DOUBLE_TEAM
	dbw 17, ENDEAVOR
	dbw 21, WHIRLWIND
	dbw 25, AERIAL_ACE
	dbw 29, TAKE_DOWN
	dbw 33, AGILITY
	dbw 37, BRAVE_BIRD
	db 0 ; no more level-up moves

StaraviaEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, STARAPTOR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, QUICK_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, WING_ATTACK
	dbw 13, DOUBLE_TEAM
	dbw 18, ENDEAVOR
	dbw 23, WHIRLWIND
	dbw 28, AERIAL_ACE
	dbw 33, TAKE_DOWN
	dbw 38, AGILITY
	dbw 43, BRAVE_BIRD
	db 0 ; no more level-up moves

StaraptorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, QUICK_ATTACK
	dbw 1, WING_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, WING_ATTACK
	dbw 13, DOUBLE_TEAM
	dbw 18, ENDEAVOR
	dbw 23, WHIRLWIND
	dbw 28, AERIAL_ACE
	dbw 33, TAKE_DOWN
	dbw 34, CLOSE_COMBAT
	dbw 41, AGILITY
	dbw 49, BRAVE_BIRD
	db 0 ; no more level-up moves

BidoofEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, BIBAREL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, ROLLOUT
	dbw 17, HEADBUTT
	dbw 21, HYPER_FANG
	dbw 25, YAWN
	dbw 29, AMNESIA
	dbw 33, TAKE_DOWN
	dbw 37, SUPER_FANG
	dbw 41, SUPERPOWER
	dbw 45, CURSE
	db 0 ; no more level-up moves

BibarelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, ROLLOUT
	dbw 15, WATER_GUN
	dbw 18, HEADBUTT
	dbw 23, HYPER_FANG
	dbw 28, YAWN
	dbw 33, AMNESIA
	dbw 38, TAKE_DOWN
	dbw 43, SUPER_FANG
	dbw 48, SUPERPOWER
	dbw 53, CURSE
	db 0 ; no more level-up moves

KricketotEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, KRICKETUNE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, BIDE
	dbw 16, BUG_BITE
	db 0 ; no more level-up moves

KricketuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, BIDE
	dbw 10, FURY_CUTTER
	dbw 14, LEECH_LIFE
	dbw 18, SING
	dbw 22, FOCUS_ENERGY
	dbw 26, SLASH
	dbw 30, X_SCISSOR
	dbw 34, SCREECH
	dbw 38, TAUNT
	dbw 42, NIGHT_SLASH
	dbw 46, BUG_BUZZ
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 17, BITE
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, THUNDER_FANG
	dbw 33, CRUNCH
	dbw 37, SCARY_FACE
	dbw 41, DISCHARGE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 33, THUNDER_FANG
	dbw 38, CRUNCH
	dbw 43, SCARY_FACE
	dbw 48, DISCHARGE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, CHARGE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 35, THUNDER_FANG
	dbw 42, CRUNCH
	dbw 49, SCARY_FACE
	dbw 56, DISCHARGE
	db 0 ; no more level-up moves

BudewEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ROSELIA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 7, WATER_SPORT
	dbw 10, STUN_SPORE
	dbw 13, MEGA_DRAIN
	dbw 16, WORRY_SEED
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WEATHER_BALL
	dbw 1, POISON_STING
	dbw 1, MEGA_DRAIN
	dbw 1, MAGICAL_LEAF
	dbw 1, SWEET_SCENT
	db 0 ; no more level-up moves

CranidosEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, RAMPARDOS
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 15, TAKE_DOWN
	dbw 19, SCARY_FACE
	dbw 24, ASSURANCE
	dbw 28, ANCIENTPOWER
	dbw 33, ZEN_HEADBUTT
	dbw 37, SCREECH
	dbw 43, HEAD_SMASH
	db 0 ; no more level-up moves

RampardosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 15, TAKE_DOWN
	dbw 19, SCARY_FACE
	dbw 24, ASSURANCE
	dbw 28, ANCIENTPOWER
	dbw 30, ENDEAVOR
	dbw 36, ZEN_HEADBUTT
	dbw 43, SCREECH
	dbw 52, HEAD_SMASH
	db 0 ; no more level-up moves

ShieldonEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, BASTIODON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 6, TAUNT
	dbw 10, METAL_SOUND
	dbw 15, TAKE_DOWN
	dbw 19, IRON_DEFENSE
	dbw 24, SWAGGER
	dbw 28, ANCIENTPOWER
	dbw 33, ENDURE
	dbw 37, METAL_BURST
	dbw 43, IRON_HEAD
	db 0 ; no more level-up moves

BastiodonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 1, TAUNT
	dbw 1, METAL_SOUND
	dbw 6, TAUNT
	dbw 10, METAL_SOUND
	dbw 15, TAKE_DOWN
	dbw 19, IRON_DEFENSE
	dbw 24, SWAGGER
	dbw 28, ANCIENTPOWER
	dbw 30, BLOCK
	dbw 36, ENDURE
	dbw 43, METAL_BURST
	dbw 52, IRON_HEAD
	db 0 ; no more level-up moves

BurmyEvosAttacks:
	dbbw EVOLVE_LEVEL_FEMALE, 20, WORMADAM
	dbbw EVOLVE_LEVEL_MALE, 20, MOTHIM
	db 0 ; no more evolutions
	dbw 1, PROTECT
	dbw 10, TACKLE
	dbw 15, BUG_BITE
	dbw 20, HIDDEN_POWER
	db 0 ; no more level-up moves

WormadamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, PROTECT
	dbw 15, BUG_BITE
	dbw 20, HIDDEN_POWER
	dbw 23, CONFUSION
	dbw 26, RAZOR_LEAF
	dbw 29, GROWTH
	dbw 32, PSYBEAM
	dbw 35, CAPTIVATE
	dbw 38, FLAIL
	dbw 41, ATTRACT
	dbw 44, PSYCHIC_M
	dbw 47, LEAF_STORM
	db 0 ; no more level-up moves

MothimEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, PROTECT
	dbw 15, BUG_BITE
	dbw 20, HIDDEN_POWER
	dbw 23, CONFUSION
	dbw 26, GUST
	dbw 29, POISONPOWDER
	dbw 32, PSYBEAM
	dbw 35, CAMOUFLAGE
	dbw 38, SILVER_WIND
	dbw 41, AIR_SLASH
	dbw 44, PSYCHIC_M
	dbw 47, BUG_BUZZ
	db 0 ; no more level-up moves

CombeeEvosAttacks:
	dbbw EVOLVE_LEVEL_FEMALE, 21, VESPIQUEN
	db 0 ; no more evolutions
	dbw 1, SWEET_SCENT
	dbw 1, GUST
	dbw 13, BUG_BITE
	db 0 ; no more level-up moves

VespiquenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWEET_SCENT
	dbw 1, GUST
	dbw 3, POISON_STING
	dbw 7, CONFUSE_RAY
	dbw 9, FURY_CUTTER
	dbw 13, DEFEND_ORDER
	dbw 15, PURSUIT
	dbw 19, FURY_SWIPES
	dbw 21, POWER_GEM
	dbw 25, HEAL_ORDER
	dbw 27, TOXIC
	dbw 31, SLASH
	dbw 33, CAPTIVATE
	dbw 37, ATTACK_ORDER
	dbw 39, SWAGGER
	dbw 43, DESTINY_BOND
	db 0 ; no more level-up moves

PachirisuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, BIDE
	dbw 5, QUICK_ATTACK
	dbw 9, CHARM
	dbw 13, SPARK
	dbw 17, ENDURE
	dbw 21, SWIFT
	dbw 25, SWEET_KISS
	dbw 29, DISCHARGE
	dbw 33, SUPER_FANG
	dbw 37, LAST_RESORT
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, FLOATZEL
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, GROWL
	dbw 1, WATER_SPORT
	dbw 3, QUICK_ATTACK
	dbw 6, WATER_GUN
	dbw 10, PURSUIT
	dbw 15, SWIFT
	dbw 21, AQUA_JET
	dbw 28, AGILITY
	dbw 36, WHIRLPOOL
	dbw 45, RAZOR_WIND
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, SONICBOOM
	dbw 1, GROWL
	dbw 1, WATER_SPORT
	dbw 1, QUICK_ATTACK
	dbw 3, QUICK_ATTACK
	dbw 6, WATER_GUN
	dbw 10, PURSUIT
	dbw 15, SWIFT
	dbw 21, AQUA_JET
	dbw 26, CRUNCH
	dbw 29, AGILITY
	dbw 39, WHIRLPOOL
	dbw 50, RAZOR_WIND
	db 0 ; no more level-up moves

CherubiEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, CHERRIM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
;	dbw 13, HELPING_HAND
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 28, WORRY_SEED
	dbw 31, TAKE_DOWN
	dbw 37, SOLARBEAM
	dbw 40, LUCKY_CHANT
	db 0 ; no more level-up moves

CherrimEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
;	dbw 13, HELPING_HAND
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 25, PETAL_DANCE
	dbw 30, WORRY_SEED
	dbw 35, TAKE_DOWN
	dbw 43, SOLARBEAM
	dbw 48, LUCKY_CHANT
	db 0 ; no more level-up moves

ShellosEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GASTRODON
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 2, MUD_SPORT
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 29, BODY_SLAM
	dbw 37, MUDDY_WATER
	dbw 46, RECOVER
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 1, MUD_SPORT
	dbw 1, HARDEN
	dbw 1, WATER_PULSE
	dbw 2, MUD_SPORT
	dbw 4, HARDEN
	dbw 7, WATER_PULSE
	dbw 11, MUD_BOMB
	dbw 16, HIDDEN_POWER
	dbw 22, RAIN_DANCE
	dbw 29, BODY_SLAM
	dbw 41, MUDDY_WATER
	dbw 54, RECOVER
	db 0 ; no more level-up moves

AmbipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, SAND_ATTACK
	dbw 1, ASTONISH
	dbw 4, SAND_ATTACK
	dbw 8, ASTONISH
	dbw 11, BATON_PASS
	dbw 15, TICKLE
	dbw 18, FURY_SWIPES
	dbw 22, SWIFT
	dbw 25, SCREECH
	dbw 29, AGILITY
	dbw 32, DOUBLE_HIT
	dbw 36, FLING
	dbw 39, NASTY_PLOT
	dbw 43, LAST_RESORT
	db 0 ; no more level-up moves

DrifloonEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, DRIFBLIM
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, MINIMIZE
	dbw 6, ASTONISH
	dbw 11, GUST
	dbw 14, FOCUS_ENERGY
	dbw 17, PAYBACK
	dbw 22, STOCKPILE
	dbw 27, SWALLOW
	dbw 27, SPIT_UP
	dbw 30, OMINOUS_WIND
	dbw 33, BATON_PASS
	dbw 38, SHADOW_BALL
	dbw 43, EXPLOSION
	db 0 ; no more level-up moves

DrifblimEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, MINIMIZE
	dbw 1, ASTONISH
	dbw 1, GUST
	dbw 6, ASTONISH
	dbw 11, GUST
	dbw 14, FOCUS_ENERGY
	dbw 17, PAYBACK
	dbw 22, STOCKPILE
	dbw 27, SWALLOW
	dbw 27, SPIT_UP
	dbw 32, OMINOUS_WIND
	dbw 37, BATON_PASS
	dbw 44, SHADOW_BALL
	dbw 51, EXPLOSION
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, FRUSTRATION
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, BOUNCE
	dbw 53, HEALING_WISH
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MIRROR_COAT
	dbw 1, MAGIC_COAT
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, FORESIGHT
	dbw 6, ENDURE
	dbw 13, RETURN
	dbw 16, QUICK_ATTACK
	dbw 23, JUMP_KICK
	dbw 26, BATON_PASS
	dbw 33, AGILITY
	dbw 36, DIZZY_PUNCH
	dbw 43, CHARM
	dbw 46, BOUNCE
	dbw 53, HEALING_WISH
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LUCKY_CHANT
	dbw 1, MAGICAL_LEAF
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 1, SPITE
	dbw 1, ASTONISH
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, PURSUIT
	dbw 1, HAZE
	dbw 1, WING_ATTACK
	dbw 25, SWAGGER
	dbw 35, NASTY_PLOT
	dbw 45, NIGHT_SLASH
	dbw 55, DARK_PULSE
	db 0 ; no more level-up moves

GlameowEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, PURUGLY
	db 0 ; no more evolutions
	dbw 1, FAKE_OUT
	dbw 5, SCRATCH
	dbw 8, GROWL
	dbw 13, HYPNOSIS
	dbw 17, FAINT_ATTACK
	dbw 20, FURY_SWIPES
	dbw 25, CHARM
	dbw 29, ASSIST
	dbw 32, CAPTIVATE
	dbw 37, SLASH
	dbw 41, SUCKER_PUNCH
	dbw 45, ATTRACT
	db 0 ; no more level-up moves

PuruglyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FAKE_OUT
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 5, SCRATCH
	dbw 8, GROWL
	dbw 13, HYPNOSIS
	dbw 17, FAINT_ATTACK
	dbw 20, FURY_SWIPES
	dbw 25, CHARM
	dbw 29, ASSIST
	dbw 32, CAPTIVATE
	dbw 37, SLASH
	dbw 38, SWAGGER
	dbw 45, BODY_SLAM
	dbw 53, ATTRACT
	db 0 ; no more level-up moves

ChinglingEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_NITE, CHIMECHO
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, LAST_RESORT
	db 0 ; no more level-up moves

StunkyEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, SKUNTANK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FOCUS_ENERGY
	dbw 4, POISON_GAS
	dbw 7, SCREECH
	dbw 10, FURY_SWIPES
	dbw 14, SMOKESCREEN
	dbw 18, FEINT
	dbw 22, SLASH
	dbw 27, TOXIC
	dbw 32, NIGHT_SLASH
	dbw 38, MEMENTO
	dbw 44, EXPLOSION
	db 0 ; no more level-up moves

SkuntankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FOCUS_ENERGY
	dbw 1, POISON_GAS
	dbw 4, POISON_GAS
	dbw 7, SCREECH
	dbw 10, FURY_SWIPES
	dbw 14, SMOKESCREEN
	dbw 18, FEINT
	dbw 22, SLASH
	dbw 27, TOXIC
	dbw 32, NIGHT_SLASH
	dbw 34, FLAMETHROWER
	dbw 42, MEMENTO
	dbw 52, EXPLOSION
	db 0 ; no more level-up moves

BronzorEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, BRONZONG
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONFUSION
	dbw 7, HYPNOSIS
	dbw 12, IMPRISON
	dbw 14, CONFUSE_RAY
	dbw 19, EXTRASENSORY
	dbw 26, IRON_DEFENSE
	dbw 30, SAFEGUARD
	dbw 35, GYRO_BALL
	dbw 37, FUTURE_SIGHT
	dbw 41, FAINT_ATTACK
	dbw 49, PAYBACK
	dbw 52, HEAL_BLOCK
	db 0 ; no more level-up moves

BronzongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SUNNY_DAY
	dbw 1, RAIN_DANCE
	dbw 1, TACKLE
	dbw 1, CONFUSION
	dbw 1, HYPNOSIS
	dbw 1, IMPRISON
	dbw 7, HYPNOSIS
	dbw 12, IMPRISON
	dbw 14, CONFUSE_RAY
	dbw 19, EXTRASENSORY
	dbw 26, IRON_DEFENSE
	dbw 30, SAFEGUARD
	dbw 33, BLOCK
	dbw 38, GYRO_BALL
	dbw 43, FUTURE_SIGHT
	dbw 50, FAINT_ATTACK
	dbw 61, PAYBACK
	dbw 67, HEAL_BLOCK
	db 0 ; no more level-up moves

BonslyEvosAttacks:
 	dbww EVOLVE_MOVE, MIMIC, SUDOWOODO
	db 0 ; no more evolutions
	dbw 1, FAKE_TEARS
	dbw 1, COPYCAT
	dbw 6, FLAIL
	dbw 9, LOW_KICK
	dbw 14, ROCK_THROW
	dbw 17, MIMIC
	dbw 22, BLOCK
	dbw 25, FAINT_ATTACK
	dbw 30, ROCK_TOMB
	dbw 33, ROCK_SLIDE
	dbw 38, SLAM
	dbw 41, SUCKER_PUNCH
	dbw 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

MimeJrEvosAttacks:
 	dbww EVOLVE_MOVE, MIMIC, MR__MIME
	db 0 ; no more evolutions
	dbw 1, TICKLE
	dbw 1, BARRIER
	dbw 1, CONFUSION
	dbw 4, COPYCAT
	dbw 8, MEDITATE
	dbw 11, ENCORE
	dbw 15, DOUBLESLAP
	dbw 18, MIMIC
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, PSYBEAM
	dbw 29, SUBSTITUTE
	dbw 32, RECYCLE
	dbw 36, TRICK
	dbw 39, PSYCHIC_M
	dbw 43, ROLE_PLAY
	dbw 46, BATON_PASS
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

HappinyEvosAttacks:
 	dbbw EVOLVE_HOLD, RARE_CANDY, TR_MORNDAY, CHANSEY ;OVAL_STONE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 5, COPYCAT
	dbw 9, REFRESH
	dbw 12, SWEET_KISS
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, MIRROR_MOVE
	dbw 13, SING
	dbw 17, FURY_ATTACK
	dbw 21, CHATTER
	dbw 25, TAUNT
	dbw 29, MIMIC
	dbw 33, ROOST
	dbw 37, UPROAR
	dbw 41, FEATHER_DANCE
	dbw 45, HYPER_VOICE
	db 0 ; no more level-up moves

SpiritombEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, PURSUIT
	dbw 1, CONFUSE_RAY
	dbw 1, SPITE
	dbw 1, SHADOW_SNEAK
	dbw 7, FAINT_ATTACK
	dbw 13, HYPNOSIS
	dbw 19, DREAM_EATER
	dbw 25, OMINOUS_WIND
	dbw 31, SUCKER_PUNCH
	dbw 37, NASTY_PLOT
	dbw 43, MEMENTO
	dbw 49, DARK_PULSE
	db 0 ; no more level-up moves

GibleEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, GABITE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, SAND_ATTACK
	dbw 7, DRAGON_RAGE
	dbw 13, SANDSTORM
	dbw 15, TAKE_DOWN
	dbw 19, SAND_TOMB
	dbw 25, SLASH
	dbw 27, DRAGON_CLAW
	dbw 31, DIG
	dbw 37, DRAGON_RUSH
	db 0 ; no more level-up moves

GabiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 3, SAND_ATTACK
	dbw 7, DRAGON_RAGE
	dbw 13, SANDSTORM
	dbw 15, TAKE_DOWN
	dbw 19, SAND_TOMB
	dbw 28, SLASH
	dbw 33, DRAGON_CLAW
	dbw 40, DIG
	dbw 49, DRAGON_RUSH
	db 0 ; no more level-up moves

GarchompEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, DRAGON_RAGE
	dbw 1, SANDSTORM
	dbw 3, SAND_ATTACK
	dbw 7, DRAGON_RAGE
	dbw 13, SANDSTORM
	dbw 15, TAKE_DOWN
	dbw 19, SAND_TOMB
	dbw 28, SLASH
	dbw 33, DRAGON_CLAW
	dbw 40, DIG
	dbw 48, CRUNCH
	dbw 55, DRAGON_RUSH
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	dbw 1, METRONOME
	dbw 1, ODOR_SLEUTH
	dbw 1, TACKLE
	dbw 4, DEFENSE_CURL
	dbw 9, AMNESIA
	dbw 12, LICK
	dbw 17, RECYCLE
	dbw 20, SCREECH
	dbw 25, STOCKPILE
	dbw 28, SWALLOW
	dbw 33, BODY_SLAM
	dbw 36, FLING
	dbw 41, ROLLOUT
	dbw 44, NATURAL_GIFT
	dbw 49, LAST_RESORT
	db 0 ; no more level-up moves

RioluEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, LUCARIO
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, ENDURE
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, REVERSAL
	dbw 24, SCREECH
	dbw 29, COPYCAT
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, DETECT
	dbw 1, METAL_CLAW
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, BONE_RUSH
	dbw 24, METAL_SOUND
	dbw 29, ME_FIRST
	dbw 33, SWORDS_DANCE
	dbw 37, AURA_SPHERE
	dbw 42, CLOSE_COMBAT
	dbw 47, DRAGON_PULSE
	dbw 51, EXTREMESPEED
	db 0 ; no more level-up moves

HippopotasEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, HIPPOWDON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 7, BITE
	dbw 13, YAWN
	dbw 19, TAKE_DOWN
	dbw 25, SAND_TOMB
	dbw 31, CRUNCH
	dbw 37, EARTHQUAKE
	dbw 44, DOUBLE_EDGE
	dbw 50, FISSURE
	db 0 ; no more level-up moves

HippowdonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 1, YAWN
	dbw 7, BITE
	dbw 13, YAWN
	dbw 19, TAKE_DOWN
	dbw 25, SAND_TOMB
	dbw 31, CRUNCH
	dbw 40, EARTHQUAKE
	dbw 50, DOUBLE_EDGE
	dbw 60, FISSURE
	db 0 ; no more level-up moves

SkorupiEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, DRAPION
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 6, KNOCK_OFF
	dbw 12, PIN_MISSILE
	dbw 17, ACUPRESSURE
	dbw 23, SCARY_FACE
	dbw 28, TOXIC_SPIKES
	dbw 34, BUG_BITE
	dbw 39, POISON_FANG
	dbw 45, CRUNCH
	dbw 50, CROSS_POISON
	db 0 ; no more level-up moves

DrapionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, BITE
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 1, KNOCK_OFF
	dbw 6, KNOCK_OFF
	dbw 12, PIN_MISSILE
	dbw 17, ACUPRESSURE
	dbw 23, SCARY_FACE
	dbw 28, TOXIC_SPIKES
	dbw 34, BUG_BITE
	dbw 39, POISON_FANG
	dbw 49, CRUNCH
	dbw 58, CROSS_POISON
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 38, POISON_JAB
	dbw 43, SLUDGE_BOMB
	dbw 45, FLATTER
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, MUD_SLAP
	dbw 1, POISON_STING
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 41, POISON_JAB
	dbw 49, SLUDGE_BOMB
	dbw 54, FLATTER
	db 0 ; no more level-up moves

CarnivineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, GROWTH
	dbw 7, BITE
	dbw 11, VINE_WHIP
	dbw 17, SWEET_SCENT
	dbw 21, INGRAIN
	dbw 27, FAINT_ATTACK
	dbw 31, STOCKPILE
	dbw 31, SPIT_UP
	dbw 31, SWALLOW
	dbw 37, CRUNCH
	dbw 41, WRING_OUT
	dbw 47, POWER_WHIP
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, LUMINEON
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 33, AQUA_RING
	dbw 38, WHIRLPOOL
	dbw 42, U_TURN
	dbw 45, BOUNCE
	dbw 49, SILVER_WIND
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, WATER_GUN
	dbw 1, ATTRACT
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 35, AQUA_RING
	dbw 42, WHIRLPOOL
	dbw 48, U_TURN
	dbw 53, BOUNCE
	dbw 59, SILVER_WIND
	db 0 ; no more level-up moves

MantykeEvosAttacks:
	dbbw EVOLVE_PARTY, REMORAID, MANTINE
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 10, BUBBLEBEAM
	dbw 13, HEADBUTT
	dbw 19, AGILITY
	dbw 22, WING_ATTACK
	dbw 28, WATER_PULSE
	dbw 31, TAKE_DOWN
	dbw 37, CONFUSE_RAY
	dbw 40, BOUNCE
	dbw 46, AQUA_RING
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, ABOMASNOW
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 5, RAZOR_LEAF
	dbw 9, ICY_WIND
	dbw 13, GRASSWHISTLE
	dbw 17, SWAGGER
	dbw 21, MIST
	dbw 26, ICE_SHARD
	dbw 31, INGRAIN
	dbw 36, WOOD_HAMMER
	dbw 41, BLIZZARD
	dbw 46, SHEER_COLD
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_PUNCH
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, RAZOR_LEAF
	dbw 1, ICY_WIND
	dbw 5, RAZOR_LEAF
	dbw 9, ICY_WIND
	dbw 13, GRASSWHISTLE
	dbw 17, SWAGGER
	dbw 21, MIST
	dbw 26, ICE_SHARD
	dbw 31, INGRAIN
	dbw 36, WOOD_HAMMER
	dbw 47, BLIZZARD
	dbw 58, SHEER_COLD
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASSURANCE
	dbw 1, EMBARGO
	dbw 1, REVENGE
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, TAUNT
	dbw 1, QUICK_ATTACK
	dbw 8, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 14, FAINT_ATTACK
	dbw 21, FURY_SWIPES
	dbw 24, NASTY_PLOT
	dbw 28, ICY_WIND
	dbw 35, NIGHT_SLASH
	dbw 38, FLING
	dbw 42, METAL_CLAW
	dbw 49, DARK_PULSE
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MIRROR_COAT
	dbw 1, BARRIER
	dbw 1, METAL_SOUND
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 17, THUNDER_WAVE
	dbw 22, SPARK
	dbw 27, LOCK_ON
	dbw 30, MAGNET_BOMB
	dbw 34, SCREECH
	dbw 40, DISCHARGE
	dbw 46, MIRROR_SHOT
	dbw 50, MAGNET_RISE
	dbw 54, GYRO_BALL
	dbw 60, ZAP_CANNON
	db 0 ; no more level-up moves

LickilickyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 5, SUPERSONIC
	dbw 9, DEFENSE_CURL
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 33, ROLLOUT
	dbw 37, ME_FIRST
	dbw 41, REFRESH
	dbw 45, SCREECH
	dbw 49, POWER_WHIP
	dbw 53, WRING_OUT
	dbw 57, GYRO_BALL
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, STOMP
	dbw 1, FURY_ATTACK
	dbw 9, STOMP
	dbw 13, FURY_ATTACK
	dbw 21, SCARY_FACE
	dbw 25, ROCK_BLAST
	dbw 33, TAKE_DOWN
	dbw 37, HORN_DRILL
	dbw 42, HAMMER_ARM
	dbw 45, STONE_EDGE
	dbw 49, EARTHQUAKE
	dbw 57, MEGAHORN
	dbw 61, ROCK_WRECKER
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, INGRAIN
	dbw 1, CONSTRICT
	dbw 5, SLEEP_POWDER
	dbw 8, ABSORB
	dbw 12, GROWTH
	dbw 15, POISONPOWDER
	dbw 19, VINE_WHIP
	dbw 22, BIND
	dbw 26, MEGA_DRAIN
	dbw 29, STUN_SPORE
	dbw 33, ANCIENTPOWER
	dbw 36, KNOCK_OFF
	dbw 40, NATURAL_GIFT
	dbw 43, SLAM
	dbw 47, TICKLE
	dbw 50, WRING_OUT
	dbw 54, POWER_WHIP
	dbw 57, BLOCK
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 1, LOW_KICK
	dbw 7, THUNDERSHOCK
	dbw 10, LOW_KICK
	dbw 16, SWIFT
	dbw 19, SHOCK_WAVE
	dbw 25, LIGHT_SCREEN
	dbw 28, THUNDERPUNCH
	dbw 37, DISCHARGE
	dbw 43, THUNDERBOLT
	dbw 52, SCREECH
	dbw 58, THUNDER
	dbw 67, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERPUNCH
	dbw 1, SMOG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, FAINT_ATTACK
	dbw 19, FIRE_SPIN
	dbw 25, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 37, LAVA_PLUME
	dbw 43, FLAMETHROWER
	dbw 52, SUNNY_DAY
	dbw 58, FIRE_BLAST
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, EXTREMESPEED
	dbw 1, AURA_SPHERE
	dbw 1, AIR_SLASH
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, BUG_BITE
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 1, QUICK_ATTACK
	dbw 1, DOUBLE_TEAM
	dbw 6, QUICK_ATTACK
	dbw 11, DOUBLE_TEAM
	dbw 14, SONICBOOM
	dbw 17, DETECT
	dbw 22, SUPERSONIC
	dbw 27, UPROAR
	dbw 30, PURSUIT
	dbw 33, ANCIENTPOWER
	dbw 38, FEINT
	dbw 43, SLASH
	dbw 46, SCREECH
	dbw 49, U_TURN
	dbw 54, AIR_SLASH
	dbw 57, BUG_BUZZ
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
;	dbw 1, HELPING_HAND
	dbw 1, SAND_ATTACK
	dbw 15, RAZOR_LEAF
	dbw 22, QUICK_ATTACK
	dbw 29, SYNTHESIS
	dbw 36, MAGICAL_LEAF
	dbw 43, GIGA_DRAIN
	dbw 50, LAST_RESORT
	dbw 57, GRASSWHISTLE
	dbw 64, SUNNY_DAY
	dbw 71, LEAF_BLADE
	dbw 78, SWORDS_DANCE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
;	dbw 1, HELPING_HAND
	dbw 1, SAND_ATTACK
	dbw 15, ICY_WIND
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, ICE_SHARD
	dbw 43, ICE_FANG
	dbw 50, LAST_RESORT
	dbw 57, MIRROR_COAT
	dbw 64, HAIL
	dbw 71, BLIZZARD
	dbw 78, BARRIER
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, FIRE_FANG
	dbw 1, ICE_FANG
	dbw 1, POISON_JAB
	dbw 1, SAND_ATTACK
	dbw 1, HARDEN
	dbw 1, KNOCK_OFF
	dbw 5, SAND_ATTACK
	dbw 9, HARDEN
	dbw 12, KNOCK_OFF
	dbw 16, QUICK_ATTACK
	dbw 20, FURY_CUTTER
	dbw 23, FAINT_ATTACK
	dbw 27, SCREECH
	dbw 31, NIGHT_SLASH
	dbw 34, SWORDS_DANCE
	dbw 38, U_TURN
	dbw 42, X_SCISSOR
	dbw 45, GUILLOTINE
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ANCIENTPOWER
	dbw 1, PECK
	dbw 1, ODOR_SLEUTH
	dbw 1, MUD_SPORT
	dbw 1, POWDER_SNOW
	dbw 4, MUD_SPORT
	dbw 8, POWDER_SNOW
	dbw 13, MUD_SLAP
	dbw 16, ENDURE
	dbw 20, MUD_BOMB
	dbw 25, HAIL
	dbw 28, ICE_FANG
	dbw 32, TAKE_DOWN
	dbw 33, DOUBLE_HIT
	dbw 40, EARTHQUAKE
	dbw 48, MIST
	dbw 56, BLIZZARD
	dbw 65, SCARY_FACE
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRICK_ROOM
	dbw 1, TACKLE
	dbw 1, NASTY_PLOT
	dbw 1, CONVERSION
	dbw 1, CONVERSION2
	dbw 7, PSYBEAM
	dbw 12, AGILITY
	dbw 18, RECOVER
	dbw 23, MAGNET_RISE
	dbw 29, SIGNAL_BEAM
	dbw 34, EMBARGO
	dbw 40, DISCHARGE
	dbw 45, LOCK_ON
	dbw 51, TRI_ATTACK
	dbw 56, MAGIC_COAT
	dbw 62, ZAP_CANNON
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

GalladeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, LEAF_BLADE
	dbw 1, LEER
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, FURY_CUTTER
	dbw 22, SLASH
	dbw 25, SWORDS_DANCE
	dbw 31, PSYCHO_CUT
;	dbw 36, HELPING_HAND ;Doesnt Exist
	dbw 39, FEINT
	dbw 45, FALSE_SWIPE
	dbw 50, PROTECT
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

ProbopassEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GRAVITY
	dbw 1, MAGNET_RISE
	dbw 1, TACKLE
	dbw 1, IRON_DEFENSE
	dbw 1, MAGNET_BOMB
	dbw 1, BLOCK
	dbw 7, IRON_DEFENSE
	dbw 13, MAGNET_BOMB
	dbw 19, BLOCK
	dbw 25, THUNDER_WAVE
	dbw 31, ROCK_SLIDE
	dbw 37, SANDSTORM
	dbw 43, REST
	dbw 49, POWER_GEM
	dbw 55, DISCHARGE
	dbw 61, STONE_EDGE
	dbw 67, ZAP_CANNON
	dbw 73, LOCK_ON
	dbw 79, EARTH_POWER
	db 0 ; no more level-up moves

DusknoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERPUNCH
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, GRAVITY
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 37, SHADOW_PUNCH
	dbw 43, MEAN_LOOK
	dbw 51, PAYBACK
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, ASTONISH
	dbw 4, DOUBLE_TEAM
	dbw 10, ASTONISH
	dbw 13, ICY_WIND
	dbw 19, CONFUSE_RAY
	dbw 22, OMINOUS_WIND
	dbw 28, WAKE_UP_SLAP
	dbw 31, CAPTIVATE
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, DESTINY_BOND
	db 0 ; no more level-up moves

RotomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRICK
	dbw 1, ASTONISH
	dbw 1, THUNDER_WAVE
	dbw 1, THUNDERSHOCK ;Changes Upon form
;	dbw 1, OVERHEAT ;Heat
;	dbw 1, HYDRO_PUMP ;Wash
;	dbw 1, BLIZZARD ;Frost
;	dbw 1, AIR_SLASH ;Fan
;	dbw 1, LEAF_STORM ;Mow
	dbw 1, THUNDERSHOCK
	dbw 1, CONFUSE_RAY
	dbw 8, UPROAR
	dbw 15, DOUBLE_TEAM
	dbw 22, SHOCK_WAVE
	dbw 29, OMINOUS_WIND
	dbw 36, SUBSTITUTE
	dbw 43, CHARGE
	dbw 50, DISCHARGE
	db 0 ; no more level-up moves

UxieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REST
	dbw 1, CONFUSION
	dbw 6, IMPRISON
	dbw 16, ENDURE
	dbw 21, SWIFT
	dbw 31, YAWN
	dbw 36, FUTURE_SIGHT
	dbw 46, AMNESIA
	dbw 51, EXTRASENSORY
	dbw 61, FLAIL
	dbw 66, NATURAL_GIFT
	dbw 76, MEMENTO
	db 0 ; no more level-up moves

MespritEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REST
	dbw 1, CONFUSION
	dbw 6, IMPRISON
	dbw 16, PROTECT
	dbw 21, SWIFT
	dbw 31, LUCKY_CHANT
	dbw 36, FUTURE_SIGHT
	dbw 46, CHARM
	dbw 51, EXTRASENSORY
	dbw 61, COPYCAT
	dbw 66, NATURAL_GIFT
	dbw 76, HEALING_WISH
	db 0 ; no more level-up moves

AzelfEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REST
	dbw 1, CONFUSION
	dbw 6, IMPRISON
	dbw 16, DETECT
	dbw 21, SWIFT
	dbw 31, UPROAR
	dbw 36, FUTURE_SIGHT
	dbw 46, NASTY_PLOT
	dbw 51, EXTRASENSORY
	dbw 61, LAST_RESORT
	dbw 66, NATURAL_GIFT
	dbw 76, EXPLOSION
	db 0 ; no more level-up moves

DialgaEvosAttacks:
	db 0 ; no more evolutions
;	dbw 19, POWER_GEM ;HGSS Only
;	dbw 42, METAL_BURST ;HGSS Only
	dbw 1, DRAGONBREATH
	dbw 1, SCARY_FACE
	dbw 10, METAL_CLAW
	dbw 20, ANCIENTPOWER
	dbw 30, DRAGON_CLAW
	dbw 40, ROAR_OF_TIME
	dbw 50, HEAL_BLOCK
	dbw 60, EARTH_POWER
	dbw 70, SLASH
	dbw 80, FLASH_CANNON
	dbw 90, AURA_SPHERE
	db 0 ; no more level-up moves

PalkiaEvosAttacks:
	db 0 ; no more evolutions
;	dbw 19, POWER_GEM ;HGSS Only
;	dbw 42, HYDRO_PUMP ;HGSS Only
	dbw 1, DRAGONBREATH
	dbw 1, SCARY_FACE
	dbw 10, WATER_PULSE
	dbw 20, ANCIENTPOWER
	dbw 30, DRAGON_CLAW
	dbw 40, SPACIAL_REND
	dbw 50, HEAL_BLOCK
	dbw 60, EARTH_POWER
	dbw 70, SLASH
	dbw 80, AQUA_TAIL
	dbw 90, AURA_SPHERE
	db 0 ; no more level-up moves

HeatranEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ANCIENTPOWER
	dbw 9, LEER
	dbw 17, FIRE_FANG
	dbw 25, METAL_SOUND
	dbw 33, CRUNCH
	dbw 41, SCARY_FACE
	dbw 49, LAVA_PLUME
	dbw 57, FIRE_SPIN
	dbw 65, IRON_HEAD
	dbw 73, EARTH_POWER
	dbw 81, HEAT_WAVE
	dbw 88, STONE_EDGE
	dbw 96, MAGMA_STORM
	db 0 ; no more level-up moves

RegigigasEvosAttacks:
	db 0 ; no more evolutions
;	dbw 1, MEGA_PUNCH ;DP Only
;	dbw 1, STOMP ;DP Only
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, DIZZY_PUNCH
	dbw 1, KNOCK_OFF
	dbw 1, FORESIGHT
	dbw 1, CONFUSE_RAY
;	dbw 25, SUPERPOWER ;DP Only
	dbw 25, REVENGE
	dbw 50, ZEN_HEADBUTT
	dbw 75, CRUSH_GRIP
	dbw 100, GIGA_IMPACT
	db 0 ; no more level-up moves

GiratinaEvosAttacks:
	db 0 ; no more evolutions
;	dbw 19, SHADOW_SNEAK ;HGSS Only
;	dbw 24, DESTINY_BOND ;HGSS Only
	dbw 1, DRAGONBREATH
	dbw 1, SCARY_FACE
	dbw 10, OMINOUS_WIND
	dbw 20, ANCIENTPOWER
	dbw 30, DRAGON_CLAW
	dbw 40, SHADOW_FORCE
	dbw 50, HEAL_BLOCK
	dbw 60, EARTH_POWER
	dbw 70, SLASH
	dbw 80, SHADOW_CLAW
	dbw 90, AURA_SPHERE
	db 0 ; no more level-up moves

CresseliaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 11, SAFEGUARD
	dbw 20, MIST
	dbw 29, AURORA_BEAM
	dbw 38, FUTURE_SIGHT
	dbw 47, SLASH
	dbw 57, MOONLIGHT
	dbw 66, PSYCHO_CUT
	dbw 75, PSYCHO_SHIFT
	dbw 84, LUNAR_DANCE
	dbw 93, PSYCHIC_M
	db 0 ; no more level-up moves

PhioneEvosAttacks:
;	dbbw EVOLVE_ITEM, MOON_STONE_RED, MANAPHY
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, WATER_SPORT
	dbw 9, CHARM
	dbw 16, SUPERSONIC
	dbw 24, BUBBLEBEAM
	dbw 31, ACID_ARMOR
	dbw 39, WHIRLPOOL
	dbw 46, WATER_PULSE
	dbw 54, AQUA_RING
	dbw 61, DIVE
	dbw 69, RAIN_DANCE
	db 0 ; no more level-up moves

ManaphyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_GLOW
	dbw 1, BUBBLE
	dbw 1, WATER_SPORT
	dbw 9, CHARM
	dbw 16, SUPERSONIC
	dbw 24, BUBBLEBEAM
	dbw 31, ACID_ARMOR
	dbw 39, WHIRLPOOL
	dbw 46, WATER_PULSE
	dbw 54, AQUA_RING
	dbw 61, DIVE
	dbw 69, RAIN_DANCE
	dbw 76, HEART_SWAP
	db 0 ; no more level-up moves

DarkraiEvosAttacks: 
	db 0 ; no more evolutions
	dbw 1, DISABLE
;	dbw 1, NIGHT_SHADE ;DP Only
	dbw 1, OMINOUS_WIND
	dbw 11, QUICK_ATTACK
	dbw 20, HYPNOSIS
;	dbw 29, PURSUIT ;DP Only
	dbw 29, FAINT_ATTACK
	dbw 38, NIGHTMARE
	dbw 47, DOUBLE_TEAM
	dbw 57, HAZE
	dbw 66, DARK_VOID
;	dbw 75, EMBARGO ;DP Only
	dbw 75, NASTY_PLOT
	dbw 84, DREAM_EATER
	dbw 93, DARK_PULSE
	db 0 ; no more level-up moves

ShayminEvosAttacks:
	db 0 ; no more evolutions
;	dbw 1, DEFENSE_CURL ;DP Only
	dbw 1, GROWTH
	dbw 10, MAGICAL_LEAF
	dbw 19, LEECH_SEED
	dbw 28, SYNTHESIS
	dbw 37, SWEET_SCENT
	dbw 46, NATURAL_GIFT
	dbw 55, WORRY_SEED
	dbw 64, AROMATHERAPY
	dbw 73, ENERGY_BALL
;	dbw 82, GRASSWHISTLE ;DP Only
	dbw 82, SWEET_KISS
;	dbw 91, LUCKY_CHANT ;DP Only
	dbw 91, HEALING_WISH
	dbw 100, SEED_FLARE
	db 0 ; no more level-up moves
	
; ShayminSkyFormeEvosAttacks:
;   db 0 ; no more evolutions
; 	dbw 1, GROWTH
; 	dbw 10, MAGICAL_LEAF
; 	dbw 19, LEECH_SEED
; 	dbw 28, QUICK_ATTACK
; 	dbw 37, SWEET_SCENT
; 	dbw 46, NATURAL_GIFT
; 	dbw 55, WORRY_SEED
; 	dbw 64, AIR_SLASH
; 	dbw 73, ENERGY_BALL
; 	dbw 82, SWEET_KISS
; 	dbw 91, LEAF_STORM
; 	dbw 100, SEED_FLARE
; 	db 0 ; no more level-up moves

ArceusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SEISMIC_TOSS
	dbw 1, COSMIC_POWER
	dbw 1, NATURAL_GIFT
	dbw 1, PUNISHMENT
	dbw 10, GRAVITY
	dbw 20, EARTH_POWER
	dbw 30, HYPER_VOICE
	dbw 40, EXTREMESPEED
	dbw 50, REFRESH
	dbw 60, FUTURE_SIGHT
	dbw 70, RECOVER
	dbw 80, HYPER_BEAM
	dbw 90, PERISH_SONG
	dbw 100, JUDGEMENT
	db 0 ; no more level-up moves
