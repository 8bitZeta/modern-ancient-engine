; Generate the PV
GeneratePV:
; Top 2 are for shiny.
	push hl
	ld hl, wEnemyMonPersonality
	call BattleRandom
	ld [hli], a
	call BattleRandom
	ld [hli], a
; BY DEFAULT, NO POKEMON HAS A SPECIAL FORM OR LOCATION DATA. This is important to realize that you will need to edit this eventually.
	xor a
	ld [hli], a
; BY DEFAULT THERE IS NO HIDDEN ABILITY AND GENDER IS MANUALLY CALCULATED.
	call BattleRandom
	sla a ; Skip Hidden Ability
	sla a ; Leave this for the Gender
	ld [hl], a
	pop hl
	ret
