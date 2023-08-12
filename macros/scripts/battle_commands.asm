MACRO command
	const \1_command
	DEF \1 EQUS "db \1_command"
ENDM

; BattleCommandPointers indexes (see data/battle/effect_command_pointers.asm)
	const_def 1
	command checkturn               ; 01
	command checkobedience          ; 02
	command usedmovetext            ; 03
	command doturn                  ; 04
	command critical                ; 05
	command damagestats             ; 06
	command stab                    ; 07
	command damagevariation         ; 08
	command checkhit                ; 09
	command lowersub                ; 0a
	command moveanimnosub           ; 0b
	command raisesub                ; 0c
	command failuretext             ; 0d
	command applydamage             ; 0e
	command criticaltext            ; 0f
	command supereffectivetext      ; 10
	command checkfaint              ; 11
	command buildopponentrage       ; 12
	command poisontarget            ; 13
	command sleeptarget             ; 14
	command draintarget             ; 15
	command eatdream                ; 16
	command burntarget              ; 17
	command freezetarget            ; 18
	command paralyzetarget          ; 19
	command selfdestruct            ; 1a
	command mirrormove              ; 1b
	command statup                  ; 1c
	command statdown                ; 1d
	command payday                  ; 1e
	command conversion              ; 1f
	command resetstats              ; 20
	command storeenergy             ; 21
	command unleashenergy           ; 22
	command forceswitch             ; 23
	command endloop                 ; 24
	command flinchtarget            ; 25
	command ohko                    ; 26
	command recoil                  ; 27
	command mist                    ; 28
	command focusenergy             ; 29
	command confuse                 ; 2a
	command confusetarget           ; 2b
	command heal                    ; 2c
	command transform               ; 2d
	command screen                  ; 2e
	command poison                  ; 2f
	command paralyze                ; 30
	command substitute              ; 31
	command rechargenextturn        ; 32
	command mimic                   ; 33
	command metronome               ; 34
	command leechseed               ; 35
	command splash                  ; 36
	command disable                 ; 37
	command cleartext               ; 38
	command charge                  ; 39
	command checkcharge             ; 3a
	command traptarget              ; 3b
	command rampage                 ; 3c
	command checkrampage            ; 3d
	command constantdamage          ; 3e
	command counter                 ; 3f
	command encore                  ; 40
	command painsplit               ; 41
	command snore                   ; 42
	command conversion2             ; 43
	command lockon                  ; 44
	command sketch                  ; 45
	command defrostopponent         ; 46
	command sleeptalk               ; 47
	command destinybond             ; 48
	command spite                   ; 49
	command falseswipe              ; 4a
	command healbell                ; 4b
	command kingsrock               ; 4c
	command triplekick              ; 4d
	command kickcounter             ; 4e
	command thief                   ; 4f
	command arenatrap               ; 50
	command nightmare               ; 51
	command defrost                 ; 52
	command curse                   ; 53
	command protect                 ; 54
	command spikes                  ; 55
	command foresight               ; 56
	command perishsong              ; 57
	command startsandstorm          ; 58
	command endure                  ; 59
	command checkcurl               ; 5a
	command rolloutpower            ; 5b
	command furycutter              ; 5c
	command attract                 ; 5d
	command happinesspower          ; 5e
	command present                 ; 5f
	command damagecalc              ; 60
	command frustrationpower        ; 61
	command safeguard               ; 62
	command checksafeguard          ; 63
	command getmagnitude            ; 64
	command batonpass               ; 65
	command pursuit                 ; 66
	command clearhazards            ; 67
	command healmorn                ; 68
	command healday                 ; 69
	command healnite                ; 6a
	command hiddenpower             ; 6b
	command startrain               ; 6c
	command startsun                ; 6d
	command attackup                ; 6e
	command defenseup               ; 6f
	command speedup                 ; 70
	command specialattackup         ; 71
	command specialdefenseup        ; 72
	command accuracyup              ; 73
	command evasionup               ; 74
	command attackup2               ; 75
	command defenseup2              ; 76
	command speedup2                ; 77
	command specialattackup2        ; 78
	command specialdefenseup2       ; 79
	command accuracyup2             ; 7a
	command evasionup2              ; 7b
	command attackdown              ; 7c
	command defensedown             ; 7d
	command speeddown               ; 7e
	command specialattackdown       ; 7f
	command specialdefensedown      ; 80
	command accuracydown            ; 81
	command evasiondown             ; 82
	command attackdown2             ; 83
	command defensedown2            ; 84
	command speeddown2              ; 85
	command specialattackdown2      ; 86
	command specialdefensedown2     ; 87
	command accuracydown2           ; 88
	command evasiondown2            ; 89
	command statupmessage           ; 8a
	command statdownmessage         ; 8b
	command statupfailtext          ; 8c
	command statdownfailtext        ; 8d
	command effectchance            ; 8e
	command statdownanim            ; 8f
	command statupanim              ; 90
	command switchturn              ; 91
	command fakeout                 ; 92
	command bellydrum               ; 93
	command psychup                 ; 94
	command rage                    ; 95
	command doubleflyingdamage      ; 96
	command doubleundergrounddamage ; 97
	command mirrorcoat              ; 98
	command checkfuturesight        ; 99
	command futuresight             ; 9a
	command doubleminimizedamage    ; 9b
	command skipsuncharge           ; 9c
	command thunderaccuracy         ; 9d
	command teleport                ; 9e
	command beatup                  ; 9f
	command ragedamage              ; a0
	command resettypematchup        ; a1
	command allstatsup              ; a2
	command bidefailtext            ; a3
	command raisesubnoanim          ; a4
	command lowersubnoanim          ; a5
	command beatupfailtext          ; a6
	command clearmissdamage         ; a7
	command movedelay               ; a8
	command moveanim                ; a9
	command tristatuschance         ; aa
	command supereffectivelooptext  ; ab
	command startloop               ; ac
	command curl                    ; ad
;==========================
;	New Moves Start Here
;==========================
	command starthail               ; ae
	command snatch                  ; af
	command checksnatch             ; b0
	command secretpower             ; b1

DEF NUM_EFFECT_COMMANDS EQU const_value - 1

	const_def -1, -1
	command endmove                 ; ff
	command endturn                 ; fe
