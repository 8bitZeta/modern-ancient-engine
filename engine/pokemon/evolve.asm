EvolvePokemon:
	ld hl, wEvolvableFlags
	xor a
	ld [hl], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, SET_FLAG
	call EvoFlagAction
EvolveAfterBattle:
	xor a
	ld [wMonTriedToEvolve], a
	dec a
	ld [wCurPartyMon], a
	push hl
	push bc
	push de
	ld hl, wPartyCount

	push hl

EvolveAfterBattle_MasterLoop:
	ld hl, wCurPartyMon
	inc [hl]

	pop hl

	inc hl
	ld a, [hl]
	cp $ff
	jmp z, .ReturnToMap

	ld [wEvolutionOldSpecies], a

	push hl
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wEvolvableFlags
	ld b, CHECK_FLAG
	call EvoFlagAction
	ld a, c
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld a, [wEvolutionOldSpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a

	push hl
	xor a
	ld [wMonType], a
	predef CopyMonToTempMon
	pop hl

.loop
	call GetNextEvoAttackByte
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld b, a

	cp EVOLVE_TRADE
	jmp z, .trade

	ld a, [wLinkMode]
	and a
	jmp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_ITEM
	jmp z, .item
	cp EVOLVE_ITEM_MALE
	jmp z, .item_male
	cp EVOLVE_ITEM_FEMALE
	jmp z, .item_female

	ld a, [wForceEvolution]
	and a
	jmp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_LEVEL
	jmp z, .level
	cp EVOLVE_LEVEL_MALE
	jmp z, .level_male
	cp EVOLVE_LEVEL_FEMALE
	jmp z, .level_female

	cp EVOLVE_HOLD
	jmp z, .hold

	cp EVOLVE_MOVE
	jr z, .move

	cp EVOLVE_PARTY
	jmp z, .party

	cp EVOLVE_MAP
	jmp z, .map

	cp EVOLVE_GROUP
	jmp z, .group

	cp EVOLVE_PV
	jmp z, .pv

	cp EVOLVE_CREATE_NEW
	jmp z, .create_new

	cp EVOLVE_HAPPINESS
	jr z, .happiness

	cp EVOLVE_HAPPINESS_MOVE_TYPE
	jmp z, .happiness_move_type

; EVOLVE_STAT
	call GetNextEvoAttackByte
	ld c, a
	ld a, [wTempMonLevel]
	cp c
	jmp c, .skip_evolution_species_parameter

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	push hl
	ld de, wTempMonAttack
	ld hl, wTempMonDefense
	ld c, 2
	call CompareBytes
	ld c, ATK_EQ_DEF
	jr z, .got_tyrogue_evo
	ld c, ATK_LT_DEF
	jr c, .got_tyrogue_evo
	ld c, ATK_GT_DEF
.got_tyrogue_evo
	pop hl

	call GetNextEvoAttackByte
	cp c
	jmp nz, .skip_evolution_species
	jmp .proceed

.move
	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	call GetNextEvoAttackByte
	ld c, a
	call GetNextEvoAttackByte
	ld b, a

	push hl
	ld h, b
	ld l, c
	call GetMoveIDFromIndex
	pop hl

	ld b, a
	ld de, wTempMonMoves
	ld c, NUM_MOVES

.move_loop
	ld a, [de]
	cp b
	jmp z, .proceed

	inc de
	dec c
	jr nz, .move_loop

	jmp .skip_evolution_species

.happiness
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jmp c, .skip_evolution_species_parameter

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	call GetNextEvoAttackByte
	cp TR_ANYTIME
	jmp z, .proceed
	cp TR_MORNDAY
	jr z, .happiness_daylight

; TR_NITE
	ld a, [wTimeOfDay]
	cp NITE_F
	jmp nz, .skip_evolution_species
	jmp .proceed

.happiness_daylight
	ld a, [wTimeOfDay]
	cp NITE_F
	jmp z, .skip_evolution_species
	jmp .proceed

.happiness_move_type
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jmp c, .skip_evolution_species_parameter

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	call GetNextEvoAttackByte
	ld b, a
	ld de, wTempMonMoves
	ld c, NUM_MOVES
		
.move_type_loop
	ld a, [de]

	push hl
	ld l, a
	ld a, MOVE_TYPE
	call GetMoveAttribute
	and TYPE_MASK
	pop hl

	cp b
	jmp z, .proceed

	inc de
	dec c
	jr nz, .move_type_loop

	jmp .skip_evolution_species

.trade
	ld a, [wLinkMode]
	and a
	jmp z, .skip_evolution_species_parameter

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	call GetNextEvoAttackByte
	ld b, a
	inc a
	jmp z, .proceed

	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jmp z, .skip_evolution_species

	ld a, [wTempMonItem]
	cp b
	jmp nz, .skip_evolution_species

	xor a
	ld [wTempMonItem], a
	jmp .proceed

.hold
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTempMonItem]
	cp b
	jmp nz, .skip_evolution_species 
	xor a
	ld [wTempMonItem], a

	; Check the time
	call GetNextEvoAttackByte
	cp TR_ANYTIME
	jmp z, .proceed
	cp TR_MORNDAY
	jr z, .hold_daylight

; TR_NITE
	ld a, [wTimeOfDay]
	cp NITE
	jmp nz, .skip_evolution_species
	jmp .proceed

.hold_daylight
	ld a, [wTimeOfDay]
	cp NITE
	jmp z, .skip_evolution_species
	jmp .proceed

.item_male
	ld a, TEMPMON
	ld [wMonType], a
	push hl
	farcall GetGender
	pop hl
	jmp c, .skip_evolution_species_parameter
	jmp z, .skip_evolution_species_parameter
	jr .item

.item_female
	ld a, TEMPMON
	ld [wMonType], a
	push hl
	farcall GetGender
	pop hl
	jmp c, .skip_evolution_species_parameter
	jmp nz, .skip_evolution_species_parameter

.item
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wCurItem]
	cp b
	jmp nz, .skip_evolution_species

	ld a, [wForceEvolution]
	and a
	jmp z, .skip_evolution_species
	ld a, [wLinkMode]
	and a
	jmp nz, .skip_evolution_species
	jmp .proceed

.party
	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter
	
	; Check if any of the party mons are the requested one
	
	call GetNextEvoAttackByte
	ld c, a
	call GetNextEvoAttackByte
	ld b, a

	push hl
	ld h, b
	ld l, c
	call GetPokemonIDFromIndex
	pop hl

	ld b, a
	push hl
	farcall FindThatSpecies
	pop hl
	jmp z, .skip_evolution_species
	jmp .proceed

.map
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wMapNumber]
	cp b
	jmp nz, .skip_evolution_species

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	jmp .proceed

.group
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wMapGroup]
	cp b
	jmp nz, .skip_evolution_species

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter
	jr .proceed

.pv
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jmp c, .skip_evolution_species

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	push hl

	ld hl, wTempMonPersonality
	ld a, [hli]
	ldh [hDividend], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld a, 10
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hRemainder]

	pop hl

	cp 4

	jr c, .proceed ; .low_pv

	call GetNextEvoAttackByte
	call GetNextEvoAttackByte

	jr .proceed

.create_new
	inc hl
	inc hl
	inc hl

	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jmp c, .skip_evolution_species

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter

	jr .proceed

.level_male
	ld a, TEMPMON
	ld [wMonType], a
	push hl
	farcall GetGender
	pop hl
	jmp c, .skip_evolution_species_parameter
	jmp z, .skip_evolution_species_parameter
	jr .level

.level_female
	ld a, TEMPMON
	ld [wMonType], a
	push hl
	farcall GetGender
	pop hl
	jmp c, .skip_evolution_species_parameter
	jmp nz, .skip_evolution_species_parameter

.level
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	jmp c, .skip_evolution_species
	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species

.proceed
	ld a, [wTempMonLevel]
	ld [wCurPartyLevel], a
	ld a, $1
	ld [wMonTriedToEvolve], a

	ldh a, [hTemp]
	call GetFarWord
	call GetPokemonIDFromIndex
	ld [wEvolutionNewSpecies], a
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNickname
	call CopyName1
	ld hl, EvolvingText
	call PrintText

	ld c, 50
	call DelayFrames

	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	lb bc, 12, 20
	call ClearBox

	ld a, $1
	ldh [hBGMapMode], a
	call ClearSprites

	farcall EvolutionAnimation

	push af
	call ClearSprites
	pop af
	jmp c, CancelEvolution

	ld hl, CongratulationsYourPokemonText
	call PrintText

	ld a, [wEvolutionNewSpecies]
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	ld [wNamedObjectIndex], a
	call GetPokemonName

	push hl
	ld hl, EvolvedIntoText
	call PrintTextboxText

	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_CAUGHT_MON
	call PlaySFX
	call WaitSFX

	ld c, 40
	call DelayFrames

	call ClearTilemap
	call UpdateSpeciesNameIfNotNicknamed
	call GetBaseData

	ld hl, wTempMonExp + 2
	ld de, wTempMonMaxHP
	ld b, TRUE
	predef CalcMonStats

	ld a, [wCurPartyMon]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld e, l
	ld d, h
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP + 1
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wTempMonHP + 1
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	ld hl, wTempMonSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld a, [wCurSpecies]
	ld [wTempSpecies], a
	xor a
	ld [wMonType], a
	call LearnLevelMoves
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon

	call CheckCreate

	or a
	call nz, GiveShedinja

.skip_create

	ld a, [wTempSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .skip_unown
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .skip_unown
	ld hl, wTempMonDVs
	predef GetUnownLetter
	farcall UpdateUnownDex

.skip_unown
	pop de
	pop hl
	ld a, [wTempMonSpecies]
	ld [hl], a
	push hl
	ld l, e
	ld h, d
	jmp EvolveAfterBattle_MasterLoop

.dont_evolve_check
	ld a, b
	cp EVOLVE_STAT
	jr nz, .skip_evolution_species_parameter
	inc hl
.skip_evolution_species_parameter
	inc hl
.skip_evolution_species
	inc hl
	inc hl
	jmp .loop

.ReturnToMap:
	pop de
	pop bc
	pop hl
	ld a, [wLinkMode]
	and a
	ret nz
	ld a, [wBattleMode]
	and a
	ret nz
	ld a, [wMonTriedToEvolve]
	and a
	jmp nz, RestartMapMusic
	ret

UpdateSpeciesNameIfNotNicknamed:
	ld a, [wCurSpecies]
	push af
	ld a, [wBaseSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	pop af
	ld [wCurSpecies], a
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz
	cp "@"
	jr nz, .loop

	ld a, [wCurPartyMon]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	call AddNTimes
	push hl
	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, MON_NAME_LENGTH
	jmp CopyBytes

CancelEvolution:
	ld hl, StoppedEvolvingText
	call PrintText
	call ClearTilemap
	jmp EvolveAfterBattle_MasterLoop

IsMonHoldingEverstone:
	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld a, [hl]
	cp EVERSTONE
	pop hl
	ret

CongratulationsYourPokemonText:
	text_far _CongratulationsYourPokemonText
	text_end

EvolvedIntoText:
	text_far _EvolvedIntoText
	text_end

StoppedEvolvingText:
	text_far _StoppedEvolvingText
	text_end

EvolvingText:
	text_far _EvolvingText
	text_end

LearnLevelMoves:
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions

.find_move
	call GetNextEvoAttackByte
	and a
	jr z, .done

	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	call GetNextEvoAttackByte
	ld e, a
	call GetNextEvoAttackByte
	ld d, a
	jr nz, .find_move

	push hl
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes

	ld b, NUM_MOVES
.check_move
	call GetNextEvoAttackByte
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move
	jr .learn
.has_move

	pop hl
	jr .find_move

.learn
	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	pop hl
	jr .find_move

.done
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	ret

FillMoves:
; Fill in moves at de for wCurPartySpecies at wCurPartyLevel

	push hl
	push de
	push bc
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions
	jr .GetLevel

.NextMove:
	pop de
.GetMove:
	inc hl
	inc hl
.GetLevel:
	call GetNextEvoAttackByte
	and a
	jr z, .done
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jr c, .done
	ld a, [wSkipMovesBeforeLevelUp]
	and a
	jr z, .CheckMove
	ld a, [wPrevPartyLevel]
	cp b
	jr nc, .GetMove

.CheckMove:
	push de
	ld c, NUM_MOVES
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
.CheckRepeat:
	ld a, [de]
	inc de
	cp b
	jr z, .NextMove
	dec c
	jr nz, .CheckRepeat
	pop de
	push de
	ld c, NUM_MOVES
.CheckSlot:
	ld a, [de]
	and a
	jr z, .LearnMove
	inc de
	dec c
	jr nz, .CheckSlot
	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call ShiftMoves
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .ShiftedMove
	push de
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES - 1)
	add hl, bc
	ld d, h
	ld e, l
	call ShiftMoves
	pop de

.ShiftedMove:
	pop hl

.LearnMove:
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
	ld [de], a
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .NextMove
	push hl
	ld a, b
	ld hl, MON_PP - MON_MOVES
	add hl, de
	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	pop hl
	ld [hl], a
	pop hl
	jr .NextMove

.done
	pop bc
	pop de
	pop hl
	ret

ShiftMoves:
	ld c, NUM_MOVES - 1
.loop
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, .loop
	ret

EvoFlagAction:
	push de
	ld d, $0
	predef SmallFarFlagAction
	pop de
	ret

GetLowestEvolutionStage:
; Return the first mon to evolve into wCurPartySpecies.
; Instead of looking it up, we just load it from a table. This is a lot more efficient.
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld bc, FirstEvoStages - 2
	add hl, hl
	add hl, bc
	ld a, BANK(FirstEvoStages)
	call GetFarWord
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ret

	SkipEvolutions::
	; Receives a pointer to the evos and attacks for a mon in b:hl, and skips to the attacks.
		ld a, b
		call GetFarByte
		inc hl
		and a
		ret z
		cp EVOLVE_MOVE
		jr z, .inc4
		cp EVOLVE_HOLD
		jr z, .inc4
		cp EVOLVE_PARTY
		jr z, .inc4
		cp EVOLVE_STAT
		jr z, .inc4
		jr .inc3
	
	.inc5
		inc hl
	.inc4
		inc hl
	.inc3
		inc hl
		inc hl
		inc hl
		jr SkipEvolutions

DetermineEvolutionItemResults::
	push bc
	push de
	farcall GetGender
	ld a, -1
	jr c, .got_gender
	ld a, 1
	jr nz, .got_gender
	xor a
.got_gender
	pop de
	pop bc
	ld c, a
; in: b:de: pointer to evos and attacks struct, wCurItem: item
; out: de: species ID or zero; a, b, c, hl: clobbered
	ld h, d
	ld l, e
	ld de, 0
	ld a, b
	ldh [hTemp], a
.loop
	call GetNextEvoAttackByte
	and a
	ret z
	cp EVOLVE_STAT
	jr z, .skip_species_two_parameters
	cp EVOLVE_ITEM
	jr z, .item
	cp EVOLVE_ITEM_FEMALE
	jr z, .item_female
	cp EVOLVE_ITEM_MALE
	jr nz, .skip_species_parameter

.item_male
	ld a, c
	and a
	jr z, .skip_species
	inc a
	jr z, .skip_species
	jr .item

.item_female
	ld a, c
	and a
	jr nz, .skip_species

.item
	call GetNextEvoAttackByte
	ld b, a	
	ld a, [wCurItem]
	cp b
	jr nz, .skip_species
	ldh a, [hTemp]
	call GetFarHalfword
	ld d, h
	ld e, l
	ret

.skip_species_two_parameters
	inc hl
.skip_species_parameter
	inc hl
.skip_species
	inc hl
	inc hl
	jr .loop

GetNextEvoAttackByte:
	ldh a, [hTemp]
	call GetFarByte
	inc hl
	ret

GiveShedinja:

; Generate Current Mon's OT Name
	push hl
	ld a, [wCurPartyMon]
	ld bc, 11
	ld hl, wPartyMonOTs

	call AddNTimes

	ld e, l
	ld d, h
	pop hl
	push de

; Set wMonType to Party
	xor a
	ld [wMonType], a


; Set Mon to be generated as SHEDINJA
; Add to Party
;	call GetNextEvoAttackByte
;	ld c, a
;	call GetNextEvoAttackByte
;	ld b, a
;
;	push hl
;	ld h, b
;	ld l, c
	ld hl, SHEDINJA
	call GetPokemonIDFromIndex
;	pop hl
	ld [wCurPartySpecies], a
	predef TryAddMonToParty

; Get Current Mon's OT Name
; Set the OT Name of the last Mon in party

	pop de

	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOTs
	call SkipNames
	call CopyName2


; Starting at Move 1 in the Pokemon Data Structure,
; transfer the Evolved Mon's next 29 bytes
;  (up to, but not including, Level)

	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	dec a

	ld hl, wPartyMon1Moves
	call AddNTimes

	push hl

	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]

	ld hl, wPartyMon1Moves
	call AddNTimes

	ld e, l
	ld d, h
	
	pop hl
	ld b, 0

.loop

	ld a, [de]
	ld [hl], a

	inc de
	inc hl

	inc b

	ld a, b

	cp 29

	jr nz, .loop

; Set the approprite Caught Data for the new mon
	ld b, 0
	farcall SetGiftPartyMonCaughtData

	ret

CheckCreate:
	ld a, [wPartyCount]
	cp 6

	jr z, .do_not_create

	ld a, [wEvolutionOldSpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a

	call GetNextEvoAttackByte
	cp EVOLVE_CREATE_NEW

	jr nz, .do_not_create

	ld a, [wCurItem]
	ld b, a

	call GetNextEvoAttackByte
	push hl
	ld d, a
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem

	jr c, .takeBall

	ld a, b
	ld [wCurItem], a

	pop hl

	jr .do_not_create

.takeBall

	ld a, d
	ld [wCurItem], a
	ld hl, wNumItems
	ld a, 1
	ld [wItemQuantityChange], a
	call TossItem

	ld a, b
	ld [wCurItem], a

	pop hl

	ld a, 1

	ret

.do_not_create
	xor a

	ret