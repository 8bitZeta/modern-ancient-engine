GetTrainerDVs:
; Return the DVs of wOtherTrainerClass in bc

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc

	ld a, [hli]
	ld b, a
	ld c, [hl]

	pop hl
	ret
INCLUDE "data/trainers/dvs.asm"

GetTrainerPVs:
; Return the relevant PVs of wOtherTrainerClass in bc
	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerClassPVs
	; 1 instead of 2 since the portion of the PV we need to generate is literally just the last byte
	add hl, bc
	add hl, bc

	; Fill-er up!
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	pop hl
	ret
INCLUDE "data/trainers/pvs.asm"
