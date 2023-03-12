TrainerClassPVs:
    ; entries correspond to trainer classes (see constants/trainer_constants.asm)
        table_width 2, TrainerClassPVs
        ; Literally only the gender, nature and ability byte, and the form byte.
        db 0, 0 ; FALKNER
        db 0, 0 ; WHITNEY
        db 0, 0 ; BUGSY
        db 0, 0 ; MORTY
        db 0, 0 ; PRYCE
        db 0, 0 ; JASMINE
        db 0, 0 ; CHUCK
        db 0, 0 ; CLAIR
        db 0, 0 ; RIVAL1
        db 0, 0 ; POKEMON_PROF
        db 0, 0 ; WILL
        db 0, 0 ; CAL
        db 0, 0 ; BRUNO
        db 0, 0 ; KAREN
        db 0, 0 ; KOGA
        db 0, 0 ; CHAMPION
        db 0, 0 ; BROCK
        db 0, 0 ; MISTY
        db 0, 0 ; LT_SURGE
        db 0, 0 ; SCIENTIST
        db 0, 0 ; ERIKA
        db 0, 0 ; YOUNGSTER
        db 0, 0 ; SCHOOLBOY
        db 0, 0 ; BIRD_KEEPER
        db 0, 0 ; LASS
        db 0, 0 ; JANINE
        db 0, 0 ; COOLTRAINERM
        db 0, 0 ; COOLTRAINERF
        db 0, 0 ; BEAUTY
        db 0, 0 ; POKEMANIAC
        db 0, 0 ; GRUNTM
        db 0, 0 ; GENTLEMAN
        db 0, 0 ; SKIER
        db 0, 0 ; TEACHER
        db 0, 0 ; SABRINA
        db 0, 0 ; BUG_CATCHER
        db 0, 0 ; FISHER
        db 0, 0 ; SWIMMERM
        db 0, 0 ; SWIMMERF
        db 0, 0 ; SAILOR
        db 0, 0 ; SUPER_NERD
    ; BUG: RIVAL2 has lower DVs than RIVAL1 (see docs/bugs_and_glitches.md)
        db 0, 0 ; RIVAL2
        db 0, 0 ; GUITARIST
        db 0, 0 ; HIKER
        db 0, 0 ; BIKER
        db 0, 0 ; BLAINE
        db 0, 0 ; BURGLAR
        db 0, 0 ; FIREBREATHER
        db 0, 0 ; JUGGLER
        db 0, 0 ; BLACKBELT_T
        db 0, 0 ; EXECUTIVEM
        db 0, 0 ; PSYCHIC_T
        db 0, 0 ; PICNICKER
        db 0, 0 ; CAMPER
        db 0, 0 ; EXECUTIVEF
        db 0, 0 ; SAGE
        db 0, 0 ; MEDIUM
        db 0, 0 ; BOARDER
        db 0, 0 ; POKEFANM
        db 0, 0 ; KIMONO_GIRL
        db 0, 0 ; TWINS
        db 0, 0 ; POKEFANF
        db 0, 0 ; RED
        db 0, 0 ; BLUE
        db 0, 0 ; OFFICER
        db 0, 0 ; GRUNTF
        db 0, 0 ; MYSTICALMAN
        assert_table_length NUM_TRAINER_CLASSES
    