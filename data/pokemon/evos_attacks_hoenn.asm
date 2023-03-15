SECTION "Hoenn Evolutions and Attacks", ROMX

HoennEvosAttacksPointers::
	dw TreeckoEvosAttacks
	dw GrovyleEvosAttacks
	dw SceptileEvosAttacks
	dw TorchicEvosAttacks
	dw CombuskenEvosAttacks
	dw BlazikenEvosAttacks
	dw MudkipEvosAttacks
	dw MarshtompEvosAttacks
	dw SwampertEvosAttacks
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks
	dw ZigzagoonEvosAttacks
	dw LinooneEvosAttacks
	dw WurmpleEvosAttacks
	dw SilcoonEvosAttacks
	dw BeautiflyEvosAttacks
	dw CascoonEvosAttacks
	dw DustoxEvosAttacks
	dw LotadEvosAttacks
	dw LombreEvosAttacks
	dw LudicoloEvosAttacks
	dw SeedotEvosAttacks
	dw NuzleafEvosAttacks
	dw ShiftryEvosAttacks
	dw TaillowEvosAttacks
	dw SwellowEvosAttacks
	dw WingullEvosAttacks
	dw PelipperEvosAttacks
	dw RaltsEvosAttacks
	dw KirliaEvosAttacks
	dw GardevoirEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw ShroomishEvosAttacks
	dw BreloomEvosAttacks
	dw SlakothEvosAttacks
	dw VigorothEvosAttacks
	dw SlakingEvosAttacks
	dw NincadaEvosAttacks
	dw NinjaskEvosAttacks
	dw ShedinjaEvosAttacks
	dw WhismurEvosAttacks
	dw LoudredEvosAttacks
	dw ExploudEvosAttacks
	dw MakuhitaEvosAttacks
	dw HariyamaEvosAttacks
	dw AzurillEvosAttacks
	dw NosepassEvosAttacks
	dw SkittyEvosAttacks
	dw DelcattyEvosAttacks
	dw SableyeEvosAttacks
	dw MawileEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw MedititeEvosAttacks
	dw MedichamEvosAttacks
	dw ElectrikeEvosAttacks
	dw ManectricEvosAttacks
	dw PlusleEvosAttacks
	dw MinunEvosAttacks
	dw VolbeatEvosAttacks
	dw IllumiseEvosAttacks
	dw RoseliaEvosAttacks
	dw GulpinEvosAttacks
	dw SwalotEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw WailmerEvosAttacks
	dw WailordEvosAttacks
	dw NumelEvosAttacks
	dw CameruptEvosAttacks
	dw TorkoalEvosAttacks
	dw SpoinkEvosAttacks
	dw GrumpigEvosAttacks
	dw SpindaEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw CacneaEvosAttacks
	dw CacturneEvosAttacks
	dw SwabluEvosAttacks
	dw AltariaEvosAttacks
	dw ZangooseEvosAttacks
	dw SeviperEvosAttacks
	dw LunatoneEvosAttacks
	dw SolrockEvosAttacks
	dw BarboachEvosAttacks
	dw WhiscashEvosAttacks
	dw CorphishEvosAttacks
	dw CrawdauntEvosAttacks
	dw BaltoyEvosAttacks
	dw ClaydolEvosAttacks
	dw LileepEvosAttacks
	dw CradilyEvosAttacks
	dw AnorithEvosAttacks
	dw ArmaldoEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw CastformEvosAttacks
	dw KecleonEvosAttacks
	dw ShuppetEvosAttacks
	dw BanetteEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw TropiusEvosAttacks
	dw ChimechoEvosAttacks
	dw AbsolEvosAttacks
	dw WynautEvosAttacks
	dw SnoruntEvosAttacks
	dw GlalieEvosAttacks
	dw SphealEvosAttacks
	dw SealeoEvosAttacks
	dw WalreinEvosAttacks
	dw ClamperlEvosAttacks
	dw HuntailEvosAttacks
	dw GorebyssEvosAttacks
	dw RelicanthEvosAttacks
	dw LuvdiscEvosAttacks
	dw BagonEvosAttacks
	dw ShelgonEvosAttacks
	dw SalamenceEvosAttacks
	dw BeldumEvosAttacks
	dw MetangEvosAttacks
	dw MetagrossEvosAttacks
	dw RegirockEvosAttacks
	dw RegiceEvosAttacks
	dw RegisteelEvosAttacks
	dw LatiasEvosAttacks
	dw LatiosEvosAttacks
	dw KyogreEvosAttacks
	dw GroudonEvosAttacks
	dw RayquazaEvosAttacks
	dw JirachiEvosAttacks
	dw DeoxysEvosAttacks
.IndirectEnd::

TreeckoEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, GROVYLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, PURSUIT
	dbw 21, SCREECH
	dbw 26, MEGA_DRAIN
	dbw 31, AGILITY
	dbw 36, SLAM
	dbw 41, DETECT
	dbw 46, GIGA_DRAIN
	dbw 51, ENERGY_BALL
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SCEPTILE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_CUTTER
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, LEAF_BLADE
	dbw 35, AGILITY
	dbw 41, SLAM
	dbw 47, DETECT
	dbw 53, FALSE_SWIPE
	dbw 59, LEAF_STORM
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, X_SCISSOR
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, LEAF_BLADE
	dbw 35, AGILITY
	dbw 43, SLAM
	dbw 51, DETECT
	dbw 59, FALSE_SWIPE
	dbw 67, LEAF_STORM
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, COMBUSKEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, FOCUS_ENERGY
	dbw 10, EMBER
	dbw 16, PECK
	dbw 19, SAND_ATTACK
	dbw 25, FIRE_SPIN
	dbw 28, QUICK_ATTACK
	dbw 34, SLASH
	dbw 37, MIRROR_MOVE
	dbw 43, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLAZIKEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, FOCUS_ENERGY
	dbw 1, EMBER
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, BULK_UP
	dbw 32, QUICK_ATTACK
	dbw 39, SLASH
	dbw 43, MIRROR_MOVE
	dbw 50, SKY_UPPERCUT
	dbw 54, FLARE_BLITZ
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, FOCUS_ENERGY
	dbw 1, EMBER
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, BULK_UP
	dbw 32, QUICK_ATTACK
	dbw 36, BLAZE_KICK
	dbw 42, SLASH
	dbw 49, BRAVE_BIRD
	dbw 59, SKY_UPPERCUT
	dbw 66, FLARE_BLITZ
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 19, FORESIGHT
	dbw 24, MUD_SPORT
	dbw 28, TAKE_DOWN
	dbw 33, WHIRLPOOL
	dbw 37, PROTECT
	dbw 42, HYDRO_PUMP
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_SHOT
	dbw 20, FORESIGHT
	dbw 25, MUD_BOMB
	dbw 31, TAKE_DOWN
	dbw 37, MUDDY_WATER
	dbw 42, PROTECT
	dbw 46, EARTHQUAKE
	dbw 53, ENDEAVOR
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_SHOT
	dbw 20, FORESIGHT
	dbw 25, MUD_BOMB
	dbw 31, TAKE_DOWN
	dbw 39, MUDDY_WATER
	dbw 46, PROTECT
	dbw 52, EARTHQUAKE
	dbw 61, ENDEAVOR
	dbw 69, HAMMER_ARM
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, ASSURANCE
	dbw 33, SCARY_FACE
	dbw 37, TAUNT
	dbw 41, EMBARGO
	dbw 45, TAKE_DOWN
	dbw 49, SUCKER_PUNCH
	dbw 53, CRUNCH
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, ASSURANCE
	dbw 37, SCARY_FACE
	dbw 42, TAUNT
	dbw 47, EMBARGO
	dbw 52, TAKE_DOWN
	dbw 57, THIEF
	dbw 62, SUCKER_PUNCH
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 21, MUD_SPORT
	dbw 25, PIN_MISSILE
	dbw 29, COVET
	dbw 33, FLAIL
	dbw 37, REST
	dbw 41, BELLY_DRUM
	dbw 45, FLING
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWITCHEROO
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, HEADBUTT
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 23, MUD_SPORT
	dbw 29, FURY_SWIPES
	dbw 35, COVET
	dbw 41, SLASH
	dbw 47, REST
	dbw 53, BELLY_DRUM
	dbw 59, FLING
	db 0 ; no more level-up moves

WurmpleEvosAttacks:
	;dbbw EVOLVE_DV, 7, 0, SILCOON
	;dbbw EVOLVE_DV, 7, 1, CASCOON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 5, POISON_STING
	dbw 15, BUG_BITE
	db 0 ; no more level-up moves

SilcoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEAUTIFLY
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

BeautiflyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 10, ABSORB
	dbw 13, GUST
	dbw 17, STUN_SPORE
	dbw 20, MORNING_SUN
	dbw 24, MEGA_DRAIN
	dbw 27, WHIRLWIND
	dbw 31, ATTRACT
	dbw 34, SILVER_WIND
	dbw 38, GIGA_DRAIN
	dbw 41, BUG_BUZZ
	db 0 ; no more level-up moves

CascoonEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, DUSTOX
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

DustoxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 10, CONFUSION
	dbw 13, GUST
	dbw 17, PROTECT
	dbw 20, MOONLIGHT
	dbw 24, PSYBEAM
	dbw 27, WHIRLWIND
	dbw 31, LIGHT_SCREEN
	dbw 34, SILVER_WIND
	dbw 38, TOXIC
	dbw 41, BUG_BUZZ
	db 0 ; no more level-up moves

LotadEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 5, ABSORB
	dbw 7, NATURE_POWER
	dbw 11, MIST
	dbw 15, NATURAL_GIFT
	dbw 19, MEGA_DRAIN
	dbw 25, BUBBLEBEAM
	dbw 31, ZEN_HEADBUTT
	dbw 37, RAIN_DANCE
	dbw 45, ENERGY_BALL
	db 0 ; no more level-up moves

LombreEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 5, ABSORB
	dbw 7, NATURE_POWER
	dbw 11, FAKE_OUT
	dbw 15, FURY_SWIPES
	dbw 19, WATER_SPORT
	dbw 25, BUBBLEBEAM
	dbw 31, ZEN_HEADBUTT
	dbw 37, UPROAR
	dbw 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, GROWL
	dbw 1, MEGA_DRAIN
	dbw 1, NATURE_POWER
	db 0 ; no more level-up moves

SeedotEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, NUZLEAF
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 3, HARDEN
	dbw 7, GROWTH
	dbw 13, NATURE_POWER
	dbw 21, SYNTHESIS
	dbw 31, SUNNY_DAY
	dbw 43, EXPLOSION
	db 0 ; no more level-up moves

NuzleafEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, SHIFTRY
	db 0 ; no more evolutions
	dbw 1, RAZOR_LEAF
	dbw 1, POUND
	dbw 3, HARDEN
	dbw 7, GROWTH
	dbw 13, NATURE_POWER
	dbw 19, FAKE_OUT
	dbw 25, TORMENT
	dbw 31, FAINT_ATTACK
	dbw 37, RAZOR_WIND
	dbw 43, SWAGGER
	dbw 49, EXTRASENSORY
	db 0 ; no more level-up moves

ShiftryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FAINT_ATTACK
	dbw 1, WHIRLWIND
	dbw 1, NASTY_PLOT
	dbw 1, RAZOR_LEAF
	dbw 49, LEAF_STORM
	db 0 ; no more level-up moves

TaillowEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SWELLOW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, FOCUS_ENERGY
	dbw 8, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 26, ENDEAVOR
	dbw 34, AERIAL_ACE
	dbw 43, AGILITY
	dbw 53, AIR_SLASH
	db 0 ; no more level-up moves

SwellowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, FOCUS_ENERGY
	dbw 1, QUICK_ATTACK
	dbw 4, FOCUS_ENERGY
	dbw 8, QUICK_ATTACK
	dbw 13, WING_ATTACK
	dbw 19, DOUBLE_TEAM
	dbw 28, ENDEAVOR
	dbw 38, AERIAL_ACE
	dbw 49, AGILITY
	dbw 61, AIR_SLASH
	db 0 ; no more level-up moves

WingullEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, PELIPPER
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, QUICK_ATTACK
	dbw 29, ROOST
	dbw 34, PURSUIT
	dbw 37, AGILITY
	dbw 42, AERIAL_ACE
	dbw 47, AIR_SLASH
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, WATER_SPORT
	dbw 1, WING_ATTACK
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, PAYBACK
	dbw 25, PROTECT
	dbw 31, ROOST
	dbw 38, STOCKPILE
	dbw 38, SWALLOW
	dbw 38, SPIT_UP
	dbw 43, FLING
	dbw 50, TAILWIND
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 21, MAGICAL_LEAF
	dbw 23, CALM_MIND
	dbw 28, PSYCHIC_M
	dbw 32, IMPRISON
	dbw 34, FUTURE_SIGHT
	dbw 39, CHARM
	dbw 43, HYPNOSIS
	dbw 45, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GARDEVOIR
	dbbw EVOLVE_ITEM_MALE, WATER_STONE, GALLADE ;DAWN_STONE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 31, PSYCHIC_M
	dbw 36, IMPRISON
	dbw 39, FUTURE_SIGHT
	dbw 45, CHARM
	dbw 50, HYPNOSIS
	dbw 53, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEALING_WISH
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, WISH
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 33, PSYCHIC_M
	dbw 40, IMPRISON
	dbw 45, FUTURE_SIGHT
	dbw 53, CAPTIVATE
	dbw 60, HYPNOSIS
	dbw 65, DREAM_EATER
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, WATER_SPORT
	dbw 25, BUBBLEBEAM
	dbw 31, AGILITY
	dbw 37, MIST
	dbw 37, HAZE
	dbw 43, BATON_PASS
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, OMINOUS_WIND
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, SWEET_SCENT
	dbw 1, WATER_SPORT
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, WATER_SPORT
	dbw 22, GUST
	dbw 26, SCARY_FACE
	dbw 33, STUN_SPORE
	dbw 40, SILVER_WIND
	dbw 47, AIR_SLASH
	dbw 54, WHIRLWIND
	dbw 61, BUG_BUZZ
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 25, POISONPOWDER
	dbw 29, WORRY_SEED
	dbw 33, GROWTH
	dbw 37, GIGA_DRAIN
	dbw 41, SEED_BOMB
	dbw 45, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, TACKLE
	dbw 1, STUN_SPORE
	dbw 1, LEECH_SEED
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 23, MACH_PUNCH
	dbw 25, COUNTER
	dbw 29, FORCE_PALM
	dbw 33, SKY_UPPERCUT
	dbw 37, MIND_READER
	dbw 41, SEED_BOMB
	dbw 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

SlakothEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, VIGOROTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, YAWN
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 37, COUNTER
	dbw 43, FLAIL
	db 0 ; no more level-up moves

VigorothEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SLAKING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FOCUS_ENERGY
	dbw 1, ENCORE
	dbw 1, UPROAR
	dbw 7, ENCORE
	dbw 13, UPROAR
	dbw 19, FURY_SWIPES
	dbw 25, ENDURE
	dbw 31, SLASH
	dbw 37, COUNTER
	dbw 43, FOCUS_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

SlakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, YAWN
	dbw 1, ENCORE
	dbw 1, SLACK_OFF
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 36, SWAGGER
	dbw 37, COUNTER
	dbw 43, FLAIL
	dbw 49, FLING
	dbw 55, PUNISHMENT
	dbw 61, HAMMER_ARM
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	;dbbwbw EVOLVE_CREATE_NEW, POKE_BALL, SHEDINJA, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, FALSE_SWIPE
	dbw 31, MUD_SLAP
	dbw 38, METAL_CLAW
	dbw 45, DIG
	db 0 ; no more level-up moves

NinjaskEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUG_BITE
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 4, SPACIAL_REND
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 20, DOUBLE_TEAM
	dbw 20, FURY_CUTTER
	dbw 20, SCREECH
	dbw 25, SWORDS_DANCE
	dbw 31, SLASH
	dbw 38, AGILITY
	dbw 45, BATON_PASS
	dbw 52, X_SCISSOR
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_SNEAK
	dbw 45, GRUDGE
	dbw 52, HEAL_BLOCK
	dbw 59, SHADOW_BALL
	db 0 ; no more level-up moves

WhismurEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LOUDRED
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, HOWL
	dbw 21, SUPERSONIC
	dbw 25, STOMP
	dbw 31, SCREECH
	dbw 35, ROAR
	dbw 41, REST
	dbw 41, SLEEP_TALK
	dbw 45, HYPER_VOICE
	db 0 ; no more level-up moves

LoudredEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, EXPLOUD
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, HOWL
	dbw 20, BITE
	dbw 23, SUPERSONIC
	dbw 29, STOMP
	dbw 37, SCREECH
	dbw 43, ROAR
	dbw 51, REST
	dbw 51, SLEEP_TALK
	dbw 57, HYPER_VOICE
	db 0 ; no more level-up moves

ExploudEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, HOWL
	dbw 20, BITE
	dbw 23, SUPERSONIC
	dbw 29, STOMP
	dbw 37, SCREECH
	dbw 40, CRUNCH
	dbw 45, ROAR
	dbw 55, REST
	dbw 55, SLEEP_TALK
	dbw 63, HYPER_VOICE
	dbw 71, HYPER_BEAM
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 10, VITAL_THROW
	dbw 13, FAKE_OUT
	dbw 16, WHIRLWIND
	dbw 19, KNOCK_OFF
	dbw 22, SMELLINGSALT
	dbw 25, BELLY_DRUM
	dbw 28, FORCE_PALM
	dbw 31, SEISMIC_TOSS
	dbw 34, WAKE_UP_SLAP
	dbw 37, ENDURE
	dbw 40, CLOSE_COMBAT
	dbw 43, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BRINE
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, ARM_THRUST
	dbw 4, SAND_ATTACK
	dbw 7, ARM_THRUST
	dbw 10, VITAL_THROW
	dbw 13, FAKE_OUT
	dbw 16, WHIRLWIND
	dbw 19, KNOCK_OFF
	dbw 22, SMELLINGSALT
	dbw 27, BELLY_DRUM
	dbw 32, FORCE_PALM
	dbw 37, SEISMIC_TOSS
	dbw 42, WAKE_UP_SLAP
	dbw 47, ENDURE
	dbw 52, CLOSE_COMBAT
	dbw 57, REVERSAL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 2, CHARM
	dbw 7, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 18, WATER_GUN
	db 0 ; no more level-up moves

NosepassEvosAttacks:
	dbbw EVOLVE_GROUP, GROUP_PLAYERS_HOUSE_1F, PROBOPASS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, HARDEN
	dbw 13, ROCK_THROW
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

SkittyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0 ; no more evolutions
	dbw 1, FAKE_OUT
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 4, FORESIGHT
	dbw 8, ATTRACT
	dbw 11, SING
	dbw 15, DOUBLESLAP
	dbw 18, COPYCAT
	dbw 22, ASSIST
	dbw 25, CHARM
	dbw 29, FAINT_ATTACK
	dbw 32, WAKE_UP_SLAP
	dbw 36, COVET
	dbw 39, HEAL_BELL
	dbw 42, DOUBLE_EDGE
	dbw 46, CAPTIVATE
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FAKE_OUT
	dbw 1, ATTRACT
	dbw 1, SING
	dbw 1, DOUBLESLAP
	db 0 ; no more level-up moves

SableyeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 4, FORESIGHT
	dbw 8, NIGHT_SHADE
	dbw 11, ASTONISH
	dbw 15, FURY_SWIPES
	dbw 18, FAKE_OUT
	dbw 22, DETECT
	dbw 25, SHADOW_SNEAK
	dbw 29, KNOCK_OFF
	dbw 32, FAINT_ATTACK
	dbw 36, PUNISHMENT
	dbw 39, SHADOW_CLAW
	dbw 43, POWER_GEM
	dbw 46, CONFUSE_RAY
	dbw 50, ZEN_HEADBUTT
	dbw 53, SHADOW_BALL
	dbw 57, MEAN_LOOK
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 6, FAKE_TEARS
	dbw 11, BITE
	dbw 16, SWEET_SCENT
	dbw 21, VICEGRIP
	dbw 26, FAINT_ATTACK
	dbw 31, BATON_PASS
	dbw 36, CRUNCH
	dbw 41, IRON_DEFENSE
	dbw 46, SUCKER_PUNCH
	dbw 51, STOCKPILE
	dbw 51, SWALLOW
	dbw 51, SPIT_UP
	dbw 56, IRON_HEAD
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 32, PROTECT
	dbw 36, METAL_SOUND
	dbw 39, IRON_TAIL
	dbw 43, DOUBLE_EDGE
	dbw 46, METAL_BURST
	db 0 ; no more level-up moves

LaironEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 45, IRON_TAIL
	dbw 51, DOUBLE_EDGE
	dbw 56, METAL_BURST
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 48, IRON_TAIL
	dbw 57, DOUBLE_EDGE
	dbw 65, METAL_BURST
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, MEDICHAM
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 4, MEDITATE
	dbw 8, CONFUSION
	dbw 11, DETECT
	dbw 15, HIDDEN_POWER
	dbw 18, MIND_READER
	dbw 22, FEINT
	dbw 25, CALM_MIND
	dbw 29, FORCE_PALM
	dbw 32, HI_JUMP_KICK
	dbw 36, PSYCH_UP
	dbw 39, POWER_TRICK
	dbw 43, REVERSAL
	dbw 46, RECOVER
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, ICE_PUNCH
	dbw 1, BIDE
	dbw 1, MEDITATE
	dbw 1, CONFUSION
	dbw 1, DETECT
	dbw 4, MEDITATE
	dbw 8, CONFUSION
	dbw 11, DETECT
	dbw 15, HIDDEN_POWER
	dbw 18, MIND_READER
	dbw 22, FEINT
	dbw 25, CALM_MIND
	dbw 29, FORCE_PALM
	dbw 32, HI_JUMP_KICK
	dbw 36, PSYCH_UP
	dbw 42, POWER_TRICK
	dbw 49, REVERSAL
	dbw 55, RECOVER
	db 0 ; no more level-up moves

ElectrikeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, MANECTRIC
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, THUNDER_WAVE
	dbw 9, LEER
	dbw 12, HOWL
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 28, BITE
	dbw 33, THUNDER_FANG
	dbw 36, ROAR
	dbw 41, DISCHARGE
	dbw 44, CHARGE
	dbw 49, THUNDER
	db 0 ; no more level-up moves

ManectricEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, TACKLE
	dbw 1, THUNDER_WAVE
	dbw 1, LEER
	dbw 1, HOWL
	dbw 4, THUNDER_WAVE
	dbw 9, LEER
	dbw 12, HOWL
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 30, BITE
	dbw 37, THUNDER_FANG
	dbw 42, ROAR
	dbw 49, DISCHARGE
	dbw 54, CHARGE
	dbw 61, THUNDER
	db 0 ; no more level-up moves

PlusleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 3, THUNDER_WAVE
	dbw 7, QUICK_ATTACK
;	dbw 10, HELPING_HAND
	dbw 15, SPARK
	dbw 17, ENCORE
	dbw 21, FAKE_TEARS
	dbw 24, COPYCAT
	dbw 29, SWIFT
	dbw 31, FAKE_TEARS
	dbw 35, CHARGE
	dbw 38, THUNDER
	dbw 42, BATON_PASS
	dbw 44, AGILITY
	dbw 48, LAST_RESORT
	dbw 51, NASTY_PLOT
	db 0 ; no more level-up moves

MinunEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 3, THUNDER_WAVE
	dbw 7, QUICK_ATTACK
;	dbw 10, HELPING_HAND
	dbw 15, SPARK
	dbw 17, ENCORE
	dbw 21, CHARM
	dbw 24, COPYCAT
	dbw 29, SWIFT
	dbw 31, FAKE_TEARS
	dbw 35, CHARGE
	dbw 38, THUNDER
	dbw 42, BATON_PASS
	dbw 44, AGILITY
	dbw 48, TRUMP_CARD
	dbw 51, NASTY_PLOT
	db 0 ; no more level-up moves

VolbeatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLASH
	dbw 1, TACKLE
	dbw 5, DOUBLE_TEAM
	dbw 9, CONFUSE_RAY
	dbw 13, MOONLIGHT
	dbw 17, QUICK_ATTACK
	dbw 21, TAIL_GLOW
	dbw 25, SIGNAL_BEAM
	dbw 29, PROTECT
;	dbw 33, HELPING_HAND
	dbw 37, ZEN_HEADBUTT
	dbw 41, BUG_BUZZ
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

IllumiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SWEET_SCENT
	dbw 9, CHARM
	dbw 13, MOONLIGHT
	dbw 17, QUICK_ATTACK
	dbw 21, WISH
	dbw 25, ENCORE
	dbw 29, FLATTER
;	dbw 33, HELPING_HAND
	dbw 37, ZEN_HEADBUTT
	dbw 41, BUG_BUZZ
	dbw 45, COVET
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, ROSERADE ;SHINY_STONE
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 7, POISON_STING
	dbw 10, STUN_SPORE
	dbw 13, MEGA_DRAIN
	dbw 16, LEECH_SEED
	dbw 19, MAGICAL_LEAF
	dbw 22, GRASSWHISTLE
	dbw 25, GIGA_DRAIN
	dbw 28, TOXIC_SPIKES
	dbw 31, SWEET_SCENT
	dbw 34, INGRAIN
	dbw 37, TOXIC
	dbw 40, PETAL_DANCE
	dbw 43, AROMATHERAPY
	dbw 46, SYNTHESIS
	db 0 ; no more level-up moves

GulpinEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, SWALOT
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 6, YAWN
	dbw 9, POISON_GAS
	dbw 14, SLUDGE
	dbw 17, AMNESIA
	dbw 23, ENCORE
	dbw 28, TOXIC
	dbw 34, STOCKPILE
	dbw 34, SPIT_UP
	dbw 34, SWALLOW
	dbw 39, SLUDGE_BOMB
	dbw 44, GASTRO_ACID
	dbw 49, WRING_OUT
	dbw 54, GUNK_SHOT
	db 0 ; no more level-up moves

SwalotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, YAWN
	dbw 1, POISON_GAS
	dbw 1, SLUDGE
	dbw 6, YAWN
	dbw 9, POISON_GAS
	dbw 14, SLUDGE
	dbw 17, AMNESIA
	dbw 23, ENCORE
	dbw 26, BODY_SLAM
	dbw 30, TOXIC
	dbw 38, STOCKPILE
	dbw 38, SPIT_UP
	dbw 38, SWALLOW
	dbw 45, SLUDGE_BOMB
	dbw 52, GASTRO_ACID
	dbw 59, WRING_OUT
	dbw 66, GUNK_SHOT
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, BITE
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 31, AQUA_JET
	dbw 36, AGILITY
	dbw 38, TAKE_DOWN
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FEINT
	dbw 1, LEER
	dbw 1, BITE
	dbw 1, RAGE
	dbw 1, FOCUS_ENERGY
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 30, SLASH
	dbw 34, AQUA_JET
	dbw 40, TAUNT
	dbw 45, AGILITY
	dbw 50, SKULL_BASH
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, WAILORD
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 41, DIVE
	dbw 44, BOUNCE
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ROLLOUT
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 46, DIVE
	dbw 54, BOUNCE
	dbw 62, HYDRO_PUMP
	db 0 ; no more level-up moves

NumelEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 35, EARTH_POWER
	dbw 41, EARTHQUAKE
	dbw 45, FLAMETHROWER
	dbw 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, EMBER
	dbw 1, MAGNITUDE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 33, ROCK_SLIDE
	dbw 39, EARTH_POWER
	dbw 49, EARTHQUAKE
	dbw 57, ERUPTION
	dbw 67, FISSURE
	db 0 ; no more level-up moves

TorkoalEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 4, SMOG
	dbw 7, WITHDRAW
	dbw 12, CURSE
	dbw 17, FIRE_SPIN
	dbw 20, SMOKESCREEN
	dbw 23, RAPID_SPIN
	dbw 28, FLAMETHROWER
	dbw 33, BODY_SLAM
	dbw 36, PROTECT
	dbw 39, LAVA_PLUME
	dbw 44, IRON_DEFENSE
	dbw 49, AMNESIA
	dbw 52, FLAIL
	dbw 55, HEAT_WAVE
	db 0 ; no more level-up moves

SpoinkEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, GRUMPIG
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 34, PAYBACK
	dbw 41, PSYCHIC_M
	dbw 46, POWER_GEM
	dbw 48, BOUNCE
	db 0 ; no more level-up moves

GrumpigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, PSYWAVE
	dbw 1, ODOR_SLEUTH
	dbw 1, PSYBEAM
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 37, PAYBACK
	dbw 47, PSYCHIC_M
	dbw 55, POWER_GEM
	dbw 60, BOUNCE
	db 0 ; no more level-up moves

SpindaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, UPROAR
	dbw 10, COPYCAT
	dbw 14, FAINT_ATTACK
	dbw 19, PSYBEAM
	dbw 23, HYPNOSIS
	dbw 28, DIZZY_PUNCH
	dbw 32, SUCKER_PUNCH
	dbw 37, TEETER_DANCE
	dbw 41, PSYCH_UP
	dbw 46, DOUBLE_EDGE
	dbw 50, FLAIL
	dbw 55, THRASH
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	dbw 65, EARTH_POWER
	dbw 73, EARTHQUAKE
	dbw 81, FEINT
	dbw 89, FISSURE
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 45, DRAGON_CLAW
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

CacneaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, CACTURNE
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 5, ABSORB
	dbw 9, GROWTH
	dbw 13, LEECH_SEED
	dbw 17, SAND_ATTACK
	dbw 21, PIN_MISSILE
	dbw 25, INGRAIN
	dbw 29, FAINT_ATTACK
	dbw 33, SPIKES
	dbw 37, SUCKER_PUNCH
	dbw 41, PAYBACK
	dbw 45, NEEDLE_ARM
	dbw 49, COTTON_SPORE
	dbw 53, SANDSTORM
	dbw 57, DESTINY_BOND
	db 0 ; no more level-up moves

CacturneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 5, ABSORB
	dbw 9, GROWTH
	dbw 13, LEECH_SEED
	dbw 17, SAND_ATTACK
	dbw 21, PIN_MISSILE
	dbw 25, INGRAIN
	dbw 29, FAINT_ATTACK
	dbw 35, SPIKES
	dbw 41, SUCKER_PUNCH
	dbw 47, PAYBACK
	dbw 53, NEEDLE_ARM
	dbw 59, COTTON_SPORE
	dbw 65, SANDSTORM
	dbw 71, DESTINY_BOND
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 36, MIRROR_MOVE
	dbw 40, REFRESH
	dbw 45, DRAGON_PULSE
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, ASTONISH
	dbw 1, SING
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 35, DRAGONBREATH
	dbw 39, DRAGON_DANCE
	dbw 46, REFRESH
	dbw 54, DRAGON_PULSE
	dbw 62, PERISH_SONG
	dbw 70, SKY_ATTACK
	db 0 ; no more level-up moves

ZangooseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 9, SWORDS_DANCE
	dbw 14, FURY_CUTTER
	dbw 18, SLASH
	dbw 22, PURSUIT
	dbw 27, EMBARGO
	dbw 31, CRUSH_CLAW
	dbw 35, TAUNT
	dbw 40, DETECT
	dbw 44, FALSE_SWIPE
	dbw 48, X_SCISSOR
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

SeviperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 7, LICK
	dbw 10, BITE
	dbw 16, POISON_TAIL
	dbw 19, SCREECH
	dbw 25, GLARE
	dbw 28, CRUNCH
	dbw 34, POISON_FANG
	dbw 37, SWAGGER
	dbw 43, HAZE
	dbw 46, NIGHT_SLASH
	dbw 52, POISON_JAB
	dbw 55, WRING_OUT
	db 0 ; no more level-up moves

LunatoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, CONFUSION
	dbw 9, ROCK_THROW
	dbw 12, HYPNOSIS
	dbw 20, ROCK_POLISH
	dbw 23, PSYWAVE
	dbw 31, EMBARGO
	dbw 34, COSMIC_POWER
	dbw 42, HEAL_BLOCK
	dbw 45, PSYCHIC_M
	dbw 53, FUTURE_SIGHT
	dbw 56, EXPLOSION
	db 0 ; no more level-up moves

SolrockEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, CONFUSION
	dbw 9, ROCK_THROW
	dbw 12, FIRE_SPIN
	dbw 20, ROCK_POLISH
	dbw 23, PSYWAVE
	dbw 31, EMBARGO
	dbw 34, COSMIC_POWER
	dbw 42, HEAL_BLOCK
	dbw 45, ROCK_SLIDE
	dbw 53, SOLARBEAM
	dbw 56, EXPLOSION
	db 0 ; no more level-up moves

BarboachEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, WHISCASH
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 6, MUD_SPORT
	dbw 6, WATER_SPORT
	dbw 10, WATER_GUN
	dbw 14, MUD_BOMB
	dbw 18, AMNESIA
	dbw 22, WATER_PULSE
	dbw 26, MAGNITUDE
	dbw 31, REST
	dbw 31, SNORE
	dbw 35, AQUA_TAIL
	dbw 39, EARTHQUAKE
	dbw 43, FUTURE_SIGHT
	dbw 47, FISSURE
	db 0 ; no more level-up moves

WhiscashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ZEN_HEADBUTT
	dbw 1, TICKLE
	dbw 1, MUD_SLAP
	dbw 1, MUD_SPORT
	dbw 1, WATER_SPORT
	dbw 6, MUD_SPORT
	dbw 6, WATER_SPORT
	dbw 10, WATER_GUN
	dbw 14, MUD_BOMB
	dbw 18, AMNESIA
	dbw 22, WATER_PULSE
	dbw 26, MAGNITUDE
	dbw 33, REST
	dbw 33, SNORE
	dbw 39, AQUA_TAIL
	dbw 45, EARTHQUAKE
	dbw 51, FUTURE_SIGHT
	dbw 57, FISSURE
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HARDEN
	dbw 10, VICEGRIP
	dbw 13, LEER
	dbw 20, BUBBLEBEAM
	dbw 23, PROTECT
	dbw 26, KNOCK_OFF
	dbw 32, TAUNT
	dbw 35, NIGHT_SLASH
	dbw 38, CRABHAMMER
	dbw 44, SWORDS_DANCE
	dbw 47, CRUNCH
	dbw 53, GUILLOTINE
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HARDEN
	dbw 1, VICEGRIP
	dbw 1, LEER
	dbw 7, HARDEN
	dbw 10, VICEGRIP
	dbw 13, LEER
	dbw 20, BUBBLEBEAM
	dbw 23, PROTECT
	dbw 26, KNOCK_OFF
	dbw 30, SWIFT
	dbw 34, TAUNT
	dbw 39, NIGHT_SLASH
	dbw 44, CRABHAMMER
	dbw 52, SWORDS_DANCE
	dbw 57, CRUNCH
	dbw 65, GUILLOTINE
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, POWER_TRICK
	dbw 37, SANDSTORM
	dbw 45, COSMIC_POWER
	dbw 53, EARTH_POWER
	dbw 61, HEAL_BLOCK
	dbw 71, EXPLOSION
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, CONFUSION
	dbw 1, HARDEN
	dbw 1, RAPID_SPIN
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, POWER_TRICK
	dbw 36, HYPER_BEAM
	dbw 40, SANDSTORM
	dbw 51, COSMIC_POWER
	dbw 62, EARTH_POWER
	dbw 73, HEAL_BLOCK
	dbw 86, EXPLOSION
	db 0 ; no more level-up moves

LileepEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, CRADILY
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CONSTRICT
	dbw 8, ACID
	dbw 15, INGRAIN
	dbw 22, CONFUSE_RAY
	dbw 29, AMNESIA
	dbw 36, GASTRO_ACID
	dbw 43, ANCIENTPOWER
	dbw 50, ENERGY_BALL
	dbw 57, STOCKPILE
	dbw 57, SPIT_UP
	dbw 57, SWALLOW
	dbw 64, WRING_OUT
	db 0 ; no more level-up moves

CradilyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CONSTRICT
	dbw 1, ACID
	dbw 1, INGRAIN
	dbw 8, ACID
	dbw 15, INGRAIN
	dbw 22, CONFUSE_RAY
	dbw 29, AMNESIA
	dbw 36, ANCIENTPOWER
	dbw 46, GASTRO_ACID
	dbw 56, ENERGY_BALL
	dbw 66, STOCKPILE
	dbw 66, SPIT_UP
	dbw 66, SWALLOW
	dbw 76, WRING_OUT
	db 0 ; no more level-up moves

AnorithEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, ARMALDO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 7, MUD_SPORT
	dbw 13, WATER_GUN
	dbw 19, METAL_CLAW
	dbw 25, PROTECT
	dbw 31, ANCIENTPOWER
	dbw 37, FURY_CUTTER
	dbw 43, SLASH
	dbw 49, ROCK_BLAST
	dbw 55, CRUSH_CLAW
	dbw 61, X_SCISSOR
	db 0 ; no more level-up moves

ArmaldoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, MUD_SPORT
	dbw 1, WATER_GUN
	dbw 7, MUD_SPORT
	dbw 13, WATER_GUN
	dbw 19, METAL_CLAW
	dbw 25, PROTECT
	dbw 31, ANCIENTPOWER
	dbw 37, FURY_CUTTER
	dbw 46, SLASH
	dbw 55, ROCK_BLAST
	dbw 67, CRUSH_CLAW
	dbw 73, X_SCISSOR
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, MILOTIC ;PRISM_SCALE
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WRAP
	dbw 5, WATER_SPORT
	dbw 9, REFRESH
	dbw 13, WATER_PULSE
	dbw 17, TWISTER
	dbw 21, RECOVER
	dbw 25, CAPTIVATE
	dbw 29, AQUA_TAIL
	dbw 33, RAIN_DANCE
	dbw 37, HYDRO_PUMP
	dbw 41, ATTRACT
	dbw 45, SAFEGUARD
	dbw 49, AQUA_RING
	db 0 ; no more level-up moves

CastformEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, WATER_GUN
	dbw 10, EMBER
	dbw 10, POWDER_SNOW
	dbw 20, RAIN_DANCE
	dbw 20, SUNNY_DAY
	dbw 20, HAIL
	dbw 30, WEATHER_BALL
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THIEF
	dbw 1, TAIL_WHIP
	dbw 1, ASTONISH
	dbw 1, LICK
	dbw 1, SCRATCH
	dbw 4, BIND
	dbw 7, FAINT_ATTACK
	dbw 10, FURY_SWIPES
	dbw 14, FEINT
	dbw 18, PSYBEAM
	dbw 22, SHADOW_SNEAK
	dbw 27, SLASH
	dbw 32, SCREECH
	dbw 37, SUBSTITUTE
	dbw 43, SUCKER_PUNCH
	dbw 49, SHADOW_CLAW
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 5, SCREECH
	dbw 8, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 38, EMBARGO
	dbw 43, SNATCH
	dbw 46, GRUDGE
	dbw 50, TRICK
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 1, SCREECH
	dbw 1, NIGHT_SHADE
	dbw 1, CURSE
	dbw 8, SCREECH
	dbw 5, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 42, EMBARGO
	dbw 51, SNATCH
	dbw 58, GRUDGE
	dbw 66, TRICK
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 38, MEAN_LOOK
	dbw 41, PAYBACK
	dbw 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, DUSKNOIR ;REAPER_CLOTH
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
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

TropiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, GUST
	dbw 7, GROWTH
	dbw 11, RAZOR_LEAF
	dbw 17, STOMP
	dbw 21, SWEET_SCENT
	dbw 27, WHIRLWIND
	dbw 31, MAGICAL_LEAF
	dbw 37, BODY_SLAM
	dbw 41, SYNTHESIS
	dbw 47, AIR_SLASH
	dbw 51, SOLARBEAM
	dbw 57, NATURAL_GIFT
	dbw 61, LEAF_STORM
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, TAKE_DOWN
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, DOUBLE_EDGE
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, EXTRASENSORY
	dbw 49, HEALING_WISH
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FEINT
	dbw 4, LEER
	dbw 9, TAUNT
	dbw 12, QUICK_ATTACK
	dbw 17, RAZOR_WIND
	dbw 20, PURSUIT
	dbw 25, SWORDS_DANCE
	dbw 28, BITE
	dbw 33, DOUBLE_TEAM
	dbw 36, SLASH
	dbw 41, FUTURE_SIGHT
	dbw 44, SUCKER_PUNCH
	dbw 49, DETECT
	dbw 52, NIGHT_SLASH
	dbw 57, ME_FIRST
	dbw 60, PSYCHO_CUT
	dbw 65, PERISH_SONG
	db 0 ; no more level-up moves

WynautEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, CHARM
	dbw 1, ENCORE
	dbw 15, COUNTER
	dbw 15, MIRROR_COAT
	dbw 15, SAFEGUARD
	dbw 15, DESTINY_BOND
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, GLALIE
	dbbw EVOLVE_ITEM_FEMALE, WATER_STONE, FROSLASS ;DAWN_STONE
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 46, BLIZZARD
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, BITE
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_BEAM
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, SHEER_COLD
	db 0 ; no more level-up moves

SphealEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, BLIZZARD
	dbw 49, SHEER_COLD
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	dbbw EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 47, BLIZZARD
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CRUNCH
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 44, ICE_FANG
	dbw 52, BLIZZARD
	dbw 65, SHEER_COLD
	db 0 ; no more level-up moves

ClamperlEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_FANG, HUNTAIL ;DEEPSEATOOTH
	dbbw EVOLVE_TRADE, DRAGON_SCALE, GOREBYSS ;DEEPSEASCALE
	db 0 ; no more evolutions
	dbw 1, CLAMP
	dbw 1, WATER_GUN
	dbw 1, WHIRLPOOL
	dbw 1, IRON_DEFENSE
	db 0 ; no more level-up moves

HuntailEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLPOOL
	dbw 6, BITE
	dbw 10, SCREECH
	dbw 15, WATER_PULSE
	dbw 19, SCARY_FACE
	dbw 24, ICE_FANG
	dbw 28, BRINE
	dbw 33, BATON_PASS
	dbw 37, DIVE
	dbw 42, CRUNCH
	dbw 46, AQUA_TAIL
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GorebyssEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLPOOL
	dbw 6, CONFUSION
	dbw 10, AGILITY
	dbw 15, WATER_PULSE
	dbw 19, AMNESIA
	dbw 24, AQUA_RING
	dbw 28, CAPTIVATE
	dbw 33, BATON_PASS
	dbw 37, DIVE
	dbw 42, PSYCHIC_M
	dbw 46, AQUA_TAIL
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, MUD_SPORT
	dbw 43, ANCIENTPOWER
	dbw 50, DOUBLE_EDGE
	dbw 57, DIVE
	dbw 64, REST
	dbw 71, HYDRO_PUMP
	dbw 78, HEAD_SMASH
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 7, WATER_GUN
	dbw 9, AGILITY
	dbw 14, TAKE_DOWN
	dbw 17, LUCKY_CHANT
	dbw 22, ATTRACT
	dbw 27, SWEET_KISS
	dbw 31, WATER_PULSE
	dbw 37, AQUA_RING
	dbw 40, CAPTIVATE
	dbw 46, FLAIL
	dbw 51, SAFEGUARD
	db 0 ; no more level-up moves

BagonEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHELGON
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 5, BITE
	dbw 10, LEER
	dbw 16, HEADBUTT
	dbw 20, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 31, DRAGONBREATH
	dbw 35, ZEN_HEADBUTT
	dbw 40, SCARY_FACE
	dbw 46, CRUNCH
	dbw 50, DRAGON_CLAW
	dbw 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

ShelgonEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, SALAMENCE
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 5, BITE
	dbw 10, LEER
	dbw 16, HEADBUTT
	dbw 20, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 30, PROTECT
	dbw 32, DRAGONBREATH
	dbw 37, ZEN_HEADBUTT
	dbw 43, SCARY_FACE
	dbw 50, CRUNCH
	dbw 55, DRAGON_CLAW
	dbw 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

SalamenceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, RAGE
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 5, BITE
	dbw 10, LEER
	dbw 16, HEADBUTT
	dbw 20, FOCUS_ENERGY
	dbw 25, EMBER
	dbw 30, PROTECT
	dbw 32, DRAGONBREATH
	dbw 37, ZEN_HEADBUTT
	dbw 43, SCARY_FACE
	dbw 50, FLY
	dbw 53, CRUNCH
	dbw 61, DRAGON_CLAW
	dbw 70, DOUBLE_EDGE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	dbw 1, MAGNET_RISE
	dbw 1, TAKE_DOWN
	dbw 1, METAL_CLAW
	dbw 1, CONFUSION
	dbw 20, METAL_CLAW
	dbw 20, CONFUSION
	dbw 24, SCARY_FACE
	dbw 28, PURSUIT
	dbw 32, BULLET_PUNCH
	dbw 36, PSYCHIC_M
	dbw 40, IRON_DEFENSE
	dbw 44, AGILITY
	dbw 48, METEOR_MASH
	dbw 52, ZEN_HEADBUTT
	dbw 56, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MAGNET_RISE
	dbw 1, TAKE_DOWN
	dbw 1, METAL_CLAW
	dbw 1, CONFUSION
	dbw 20, METAL_CLAW
	dbw 20, CONFUSION
	dbw 24, SCARY_FACE
	dbw 28, PURSUIT
	dbw 32, BULLET_PUNCH
	dbw 36, PSYCHIC_M
	dbw 40, IRON_DEFENSE
	dbw 44, AGILITY
	dbw 45, HAMMER_ARM
	dbw 53, METEOR_MASH
	dbw 62, ZEN_HEADBUTT
	dbw 71, HYPER_BEAM
	db 0 ; no more level-up moves

RegirockEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 1, STOMP
	dbw 9, ROCK_THROW
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, IRON_DEFENSE
	dbw 49, CHARGE_BEAM
	dbw 57, LOCK_ON
	dbw 65, ZAP_CANNON
	dbw 73, STONE_EDGE
	dbw 81, HAMMER_ARM
	dbw 89, HYPER_BEAM
	db 0 ; no more level-up moves

RegiceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 1, STOMP
	dbw 9, ICY_WIND
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, AMNESIA
	dbw 49, CHARGE_BEAM
	dbw 57, LOCK_ON
	dbw 65, ZAP_CANNON
	dbw 73, ICE_BEAM
	dbw 81, HAMMER_ARM
	dbw 89, HYPER_BEAM
	db 0 ; no more level-up moves

RegisteelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 1, STOMP
	dbw 9, METAL_CLAW
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, IRON_DEFENSE
	dbw 41, AMNESIA
	dbw 49, CHARGE_BEAM
	dbw 57, LOCK_ON
	dbw 65, ZAP_CANNON
	dbw 73, IRON_HEAD
	dbw 73, FLASH_CANNON
	dbw 81, HAMMER_ARM
	dbw 89, HYPER_BEAM
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
;	dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, WATER_SPORT
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, CHARM
	dbw 60, HEALING_WISH
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, HEAL_BLOCK
;	dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, DRAGON_DANCE
	dbw 60, MEMENTO
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves

KyogreEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_PULSE
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, BODY_SLAM
	dbw 30, CALM_MIND
	dbw 35, ICE_BEAM
	dbw 45, HYDRO_PUMP
	dbw 50, REST
	dbw 60, SHEER_COLD
	dbw 65, DOUBLE_EDGE
	dbw 75, AQUA_TAIL
	dbw 80, WATER_SPOUT
	db 0 ; no more level-up moves

GroudonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SHOT
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, SLASH
	dbw 30, BULK_UP
	dbw 35, EARTHQUAKE
	dbw 45, FIRE_BLAST
	dbw 50, REST
	dbw 60, FISSURE
	dbw 65, SOLARBEAM
	dbw 75, EARTH_POWER
	dbw 80, ERUPTION
	db 0 ; no more level-up moves

RayquazaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TWISTER
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, DRAGON_CLAW
	dbw 30, DRAGON_DANCE
	dbw 35, CRUNCH
	dbw 45, FLY
	dbw 50, REST
	dbw 60, EXTREMESPEED
	dbw 65, HYPER_BEAM
	dbw 75, DRAGON_PULSE
	dbw 80, OUTRAGE
	db 0 ; no more level-up moves

JirachiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WISH
	dbw 1, CONFUSION
	dbw 5, REST
	dbw 10, SWIFT
;	dbw 15, HELPING_HAND
	dbw 20, PSYCHIC_M
	dbw 25, REFRESH
	dbw 30, REST
	dbw 35, ZEN_HEADBUTT
	dbw 40, DOUBLE_EDGE
	dbw 45, GRAVITY
	dbw 50, HEALING_WISH
	dbw 55, FUTURE_SIGHT
	dbw 60, COSMIC_POWER
	dbw 65, LAST_RESORT
	dbw 70, DOOM_DESIRE
	db 0 ; no more level-up moves

DeoxysEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, WRAP
	dbw 9, NIGHT_SHADE
	dbw 17, TELEPORT
	dbw 25, KNOCK_OFF
	dbw 33, PURSUIT
	dbw 41, PSYCHIC_M
	dbw 49, SNATCH
	dbw 57, PSYCHO_SHIFT
	dbw 65, ZEN_HEADBUTT
	dbw 73, COSMIC_POWER
	dbw 81, RECOVER
	dbw 89, PSYCHO_BOOST
	dbw 97, HYPER_BEAM
	db 0 ; no more level-up moves
