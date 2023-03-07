; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d
	const KAKUNA     ; 0e
	const BEEDRILL   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOP     ; 42
	const MACHOKE    ; 43
	const MACHAMP    ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const FARFETCH_D ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const DEWGONG    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60
	const HYPNO      ; 61
	const KRABBY     ; 62
	const KINGLER    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const HITMONLEE  ; 6a
	const HITMONCHAN ; 6b
	const LICKITUNG  ; 6c
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const CHANSEY    ; 71
	const TANGELA    ; 72
	const KANGASKHAN ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const GOLDEEN    ; 76
	const SEAKING    ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const JYNX       ; 7c
	const ELECTABUZZ ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const OMANYTE    ; 8a
	const OMASTAR    ; 8b
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
JOHTO_POKEMON EQU const_value
	const CHIKORITA  ; 98
	const BAYLEEF    ; 99
	const MEGANIUM   ; 9a
	const CYNDAQUIL  ; 9b
	const QUILAVA    ; 9c
	const TYPHLOSION ; 9d
	const TOTODILE   ; 9e
	const CROCONAW   ; 9f
	const FERALIGATR ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const LEDYBA     ; a5
	const LEDIAN     ; a6
	const SPINARAK   ; a7
	const ARIADOS    ; a8
	const CROBAT     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const CLEFFA     ; ad
	const IGGLYBUFF  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const FLAAFFY    ; b4
	const AMPHAROS   ; b5
	const BELLOSSOM  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba
	const HOPPIP     ; bb
	const SKIPLOOM   ; bc
	const JUMPLUFF   ; bd
	const AIPOM      ; be
	const SUNKERN    ; bf
	const SUNFLORA   ; c0
	const YANMA      ; c1
	const WOOPER     ; c2
	const QUAGSIRE   ; c3
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const SLOWKING   ; c7
	const MISDREAVUS ; c8
	const UNOWN      ; c9
	const WOBBUFFET  ; ca
	const GIRAFARIG  ; cb
	const PINECO     ; cc
	const FORRETRESS ; cd
	const DUNSPARCE  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const SCIZOR     ; d4
	const SHUCKLE    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const SLUGMA     ; da
	const MAGCARGO   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const CORSOLA    ; de
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const DELIBIRD   ; e1
	const MANTINE    ; e2
	const SKARMORY   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const PORYGON2   ; e9
	const STANTLER   ; ea
	const SMEARGLE   ; eb
	const TYROGUE    ; ec
	const HITMONTOP  ; ed
	const SMOOCHUM   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const BLISSEY    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
;HOENN_POKEMON EQU const_value
	const TREECKO
	const GROVYLE
	const SCEPTILE
	const TORCHIC
	const COMBUSKEN
	const BLAZIKEN
	const MUDKIP
	const MARSHTOMP
	const SWAMPERT
	const POOCHYENA
	const MIGHTYENA
	const ZIGZAGOON
	const LINOONE
	const WURMPLE
	const SILCOON
	const BEAUTIFLY
	const CASCOON
	const DUSTOX
	const LOTAD
	const LOMBRE
	const LUDICOLO
	const SEEDOT
	const NUZLEAF
	const SHIFTRY
	const TAILLOW
	const SWELLOW
	const WINGULL
	const PELIPPER
	const RALTS
	const KIRLIA
	const GARDEVOIR
	const SURSKIT
	const MASQUERAIN
	const SHROOMISH
	const BRELOOM
	const SLAKOTH
	const VIGOROTH
	const SLAKING
	const NINCADA
	const NINJASK
	const SHEDINJA
	const WHISMUR
	const LOUDRED
	const EXPLOUD
	const MAKUHITA
	const HARIYAMA
	const AZURILL
	const NOSEPASS
	const SKITTY
	const DELCATTY
	const SABLEYE
	const MAWILE
	const ARON
	const LAIRON
	const AGGRON
	const MEDITITE
	const MEDICHAM
	const ELECTRIKE
	const MANECTRIC
	const PLUSLE
	const MINUN
	const VOLBEAT
	const ILLUMISE
	const ROSELIA
	const GULPIN
	const SWALOT
	const CARVANHA
	const SHARPEDO
	const WAILMER
	const WAILORD
	const NUMEL
	const CAMERUPT
	const TORKOAL
	const SPOINK
	const GRUMPIG
	const SPINDA
	const TRAPINCH
	const VIBRAVA
	const FLYGON
	const CACNEA
	const CACTURNE
	const SWABLU
	const ALTARIA
	const ZANGOOSE
	const SEVIPER
	const LUNATONE
	const SOLROCK
	const BARBOACH
	const WHISCASH
	const CORPHISH
	const CRAWDAUNT
	const BALTOY
	const CLAYDOL
	const LILEEP
	const CRADILY
	const ANORITH
	const ARMALDO
	const FEEBAS
	const MILOTIC
	const CASTFORM
	const KECLEON
	const SHUPPET
	const BANETTE
	const DUSKULL
	const DUSCLOPS
	const TROPIUS
	const CHIMECHO
	const ABSOL
	const WYNAUT
	const SNORUNT
	const GLALIE
	const SPHEAL
	const SEALEO
	const WALREIN
	const CLAMPERL
	const HUNTAIL
	const GOREBYSS
	const RELICANTH
	const LUVDISC
	const BAGON
	const SHELGON
	const SALAMENCE
	const BELDUM
	const METANG
	const METAGROSS
	const REGIROCK
	const REGICE
	const REGISTEEL
	const LATIAS
	const LATIOS
	const KYOGRE
	const GROUDON
	const RAYQUAZA
	const JIRACHI
	const DEOXYS
;SINNOH_POKEMON EQU const_value
	const TURTWIG
	const GROTLE
	const TORTERRA
	const CHIMCHAR
	const MONFERNO
	const INFERNAPE
	const PIPLUP
	const PRINPLUP
	const EMPOLEON
	const STARLY
	const STARAVIA
	const STARAPTOR
	const BIDOOF
	const BIBAREL
	const KRICKETOT
	const KRICKETUNE
	const SHINX
	const LUXIO
	const LUXRAY
	const BUDEW
	const ROSERADE
	const CRANIDOS
	const RAMPARDOS
	const SHIELDON
	const BASTIODON
	const BURMY
	const WORMADAM
	const MOTHIM
	const COMBEE
	const VESPIQUEN
	const PACHIRISU
	const BUIZEL
	const FLOATZEL
	const CHERUBI
	const CHERRIM
	const SHELLOS
	const GASTRODON
	const AMBIPOM
	const DRIFLOON
	const DRIFBLIM
	const BUNEARY
	const LOPUNNY
	const MISMAGIUS
	const HONCHKROW
	const GLAMEOW
	const PURUGLY
	const CHINGLING
	const STUNKY
	const SKUNTANK
	const BRONZOR
	const BRONZONG
	const BONSLY
	const MIME_JR
	const HAPPINY
	const CHATOT
	const SPIRITOMB
	const GIBLE
	const GABITE
	const GARCHOMP
	const MUNCHLAX
	const RIOLU
	const LUCARIO
	const HIPPOPOTAS
	const HIPPOWDON
	const SKORUPI
	const DRAPION
	const CROAGUNK
	const TOXICROAK
	const CARNIVINE
	const FINNEON
	const LUMINEON
	const MANTYKE
	const SNOVER
	const ABOMASNOW
	const WEAVILE
	const MAGNEZONE
	const LICKILICKY
	const RHYPERIOR
	const TANGROWTH
	const ELECTIVIRE
	const MAGMORTAR
	const TOGEKISS
	const YANMEGA
	const LEAFEON
	const GLACEON
	const GLISCOR
	const MAMOSWINE
	const PORYGON_Z
	const GALLADE
	const PROBOPASS
	const DUSKNOIR
	const FROSLASS
	const ROTOM
	const UXIE
	const MESPRIT
	const AZELF
	const DIALGA
	const PALKIA
	const HEATRAN
	const REGIGIGAS
	const GIRATINA
	const CRESSELIA
	const PHIONE
	const MANAPHY
	const DARKRAI
	const SHAYMIN
	const ARCEUS
;SECRET_POKEMON EQU const_value
	const SYLVEON
	const REGIELEKI
	const REGIDRAGO
NUM_POKEMON EQU const_value - 1

EGG EQU -3

; limits:
; 999: everything that prints dex counts
; 1407: size of wPokedexOrder
; 4095: hard limit; would require serious redesign to increase
if NUM_POKEMON > 999
	fail "Too many Pokémon defined!"
endc

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
	const UNOWN_EXCLAMATION
	const UNOWN_QUESTION
NUM_UNOWN EQU const_value - 1 ; 28

UNOWN_OFFSET EQU NUM_POKEMON + NUM_UNOWN
