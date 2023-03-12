; Generate the PV
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
