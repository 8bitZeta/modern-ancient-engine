; We need a fair bit of masks.
DEF EVOLUTION_MASK   EQU %11110000 ; AND the top byte of the PV for evolution.
DEF SHINY_TOP_MASK   EQU %00001111 ; AND for Shiny part 1. At least the bottom 4 must be signed (the value must equal 15)                                     ; We do not need a shiny mask for the bottom byte. It must be equal to 255.
DEF ENCOUNTER_MASK   EQU %11100000 ; AND the top byte of the bottom word of the PV
DEF FORM_MASK        EQU %00011111 ; AND the top byte of the bottom word of the PV
DEF ABILITY_MASK     EQU %00000100 ; AND the bottom byte of the PV for the ability
DEF NATURE_MASK      EQU %11111000 ; AND the bottom byte of the PV for the nature
DEF DUMMIED_BIT_MASK EQU %00000010 ; Dummied out for us currently, but here in case someone wants to do hidden abilities
DEF GENDER_MASK      EQU %00000001 ; AND the bottom byte of the PV for the gender (it's skipped if the mon is genderless)

; Generate a Wild Pokémon's PV
GenerateEnemyPV:
; Top 2 are for shiny.
	push de
	push hl
	ld hl, wEnemyMonPersonality
	ld de, wEnemyBackupPV
	call BattleRandom
	ld [hli], a
	ld [de], a
	inc de
	call BattleRandom
	ld [hli], a
	ld [de], a
	inc de
; BY DEFAULT, NO POKEMON HAS A SPECIAL FORM OR LOCATION DATA. This is important to realize that you will need to edit this eventually.
	xor a
	ld [hli], a
	ld [de], a
	inc de
; BY DEFAULT THERE IS NO HIDDEN ABILITY AND GENDER IS MANUALLY CALCULATED.
	call BattleRandom
	sla a ; Skip Hidden Ability
	sla a ; Leave this for the Gender
	ld [hl], a
	ld [de], a
	pop hl
	pop de
	ret


; Stubby ability function prototypes below.
/*
	This function is called to snag the ability of a Pokémon given a personality value in bc. It will then return the
	ability in bc, which in turn is stored in either [wPlayerAbility] or [wEnemyAbility] outside of this function.

	These RAM bytes need to be reserved for futureproofing, as the ability of a Pokémon can change through Trace,
	Gastro Acid, Simple Beam, Mummy, Skill Swap, etc. As a note, these abilities, WITH SOME EXCEPTIONS, are in a Gen
	IV state. Guides on how to implement later generation ability logic will eventually be posted on the Wiki pages
	located at https://github.com/8bitZeta/modern-ancient-engine/
*/
CalcBattleAbility:
	ret

/*
	For ALL of these functions below, the current Pokémon's ability is usually loaded in bc, and the opposing Pokémon's 
	ability is loaded into de. There are some exceptions to the rule:
		- For HP activated abilities, the current Pokémon's HP is stored in de instead of the opposing mon's ability.
		- For Guts, Marvel Scale, and Tangled Feet, the user status is stored in de.
		- For Steadfast and Anger Point, a 1-bit flag is stored in de if the user flinched or suffered a critical hit,
		  respectively.
		- For Color Change, the damaging move type is loaded into de instead of the opposing mon's ability.
		- For Shadow Tag and Arena Trap, the opposing mon types are stored in de, and the opposing mon ability is
		  pushed onto the stack.
		- Pickup and Honey Gather care about the [wPartyMonX] abilities, and compare all party Pokémon abilities.
		  Understandably, this means all calculations are done locally and nothing needs to be presumed.
		- For passive abilities outside of battle, the calculation is done inside of that function on [wPartyMon1].
		  Understandably, this means all calculations are done locally and nothing needs to be presumed.
*/
; Checks for abilities that activate on entrance
CheckEntranceAbility:
	ret

; Forecast is it's own thing
CheckForecastAbility:
	ret

; Checks abilities that passibely boost stats
CheckStatBoostPassiveAbilities:
	ret

; Checks for weather activated abilities that boost stats
CheckStatBoostWeatherAbilities:
	ret

; Checks for abilities that block stat drops
CheckStatProtectionAbility:
	ret

; Checks for abilities that block status effects
CheckStatusBlockAbility:
	ret

; Check for abilities that prevent additional effects
CheckPreventEffectAbility:
	ret

; Check for abilities that activate on lower HP
CheckHPLevelAbility:
	ret

; Checks for abilities that active on status effects
CheckStatusActivatedAbility:
	ret

; Checks for abilities that prevent moves from working
CheckMovePreventionAbility:
	ret

; Checks for moves that have an effect before the move is used
CheckPreMoveUsageAbility:
	ret

; Checks for abilities that activate on contact
CheckContactAbility:
	ret

; Color Change is it's own thing
CheckColorChangeAbility:
	ret

; Wonder Guard is it's own thing
CheckWonderGuardAbility:
	ret

; Serene Grace is it's own thing
CheckSereneGraceAbility:
	ret

; Checks for abilities that occur at the end of a turn
CheckTurnAbility:
	ret

; Checks for abilities that activate on exit / attempted exit
CheckExitAbility:
	ret

; Suction Cups is it's own thing
CheckSuctionCups:
	ret

; Checks for abilities that activate at the end of a battle
CheckEndAbility:
	ret

; Checks for abilities that passively do things outside of battle
; Note this only works for the FIRST MON in the party.
CheckPassive1stPartyMonAbility:
	ret