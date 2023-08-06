_HandlePlayerStep::
	ld a, [wPlayerStepFlags]
	and a
	ret z
	bit PLAYERSTEP_START_F, a
	jr nz, .update_overworld_map
	bit PLAYERSTEP_STOP_F, a
	jr nz, .update_player_coords
	bit PLAYERSTEP_CONTINUE_F, a
	jr nz, .finish
	ret

.update_overworld_map
	ld a, 4
	ld [wHandlePlayerStep], a
	call UpdateOverworldMap
	jr .finish

.update_player_coords
	call UpdatePlayerCoords

.finish
	call HandlePlayerStep
	ld a, [wPlayerStepVectorX]
	ld d, a
	ld a, [wPlayerStepVectorY]
	ld e, a
	ld a, [wPlayerBGMapOffsetX]
	sub d
	ld [wPlayerBGMapOffsetX], a
	ld a, [wPlayerBGMapOffsetY]
	sub e
	ld [wPlayerBGMapOffsetY], a
	ret

ScrollScreen::
	ld a, [wPlayerStepVectorX]
	ld d, a
	ld a, [wPlayerStepVectorY]
	ld e, a
	ldh a, [hSCX]
	add d
	ldh [hSCX], a
	ldh a, [hSCY]
	add e
	ldh [hSCY], a
	ret

HandlePlayerStep:
	ld hl, wHandlePlayerStep
	ld a, [hl]
	and a
	ret z
	dec [hl]
	ld a, [hl]
	ld hl, .Jumptable
	rst JumpTable
	ret

.Jumptable:
	dw GetMovementPermissions
	dw BufferScreen
	dw DoNothingFunction
	dw DoNothingFunction

UpdatePlayerCoords:
	ld a, [wPlayerStepDirection]
	and a
	jr nz, .check_step_down
	ld hl, wYCoord
	inc [hl]
	ret

.check_step_down
	cp UP
	jr nz, .check_step_left
	ld hl, wYCoord
	dec [hl]
	ret

.check_step_left
	cp LEFT
	jr nz, .check_step_right
	ld hl, wXCoord
	dec [hl]
	ret

.check_step_right
	cp RIGHT
	ret nz
	ld hl, wXCoord
	inc [hl]
	ret

UpdateOverworldMap:
	ld a, [wPlayerStepDirection]
	and a
	jr z, .step_down
	cp UP
	jr z, .step_up
	cp LEFT
	jr z, .step_left
	cp RIGHT
	jr z, .step_right
	ret

.step_down
	call .ScrollOverworldMapDown
	call LoadMapPart
	jmp ScrollMapDown

.step_up
	call .ScrollOverworldMapUp
	call LoadMapPart
	jmp ScrollMapUp

.step_left
	call .ScrollOverworldMapLeft
	call LoadMapPart
	jmp ScrollMapLeft

.step_right
	call .ScrollOverworldMapRight
	call LoadMapPart
	jmp ScrollMapRight

.ScrollOverworldMapDown:
	ld a, [wBGMapAnchor]
	add 2 * BG_MAP_WIDTH
	ld [wBGMapAnchor], a
	jr nc, .not_overflowed
	ld a, [wBGMapAnchor + 1]
	inc a
	and %11
	or HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
.not_overflowed
	ld hl, wPlayerMetatileY
	inc [hl]
	ld a, [hl]
	cp 2 ; was 1
	ret nz
	ld [hl], 0

.ScrollMapDataDown:
	ld hl, wOverworldMapAnchor
	ld a, [wMapWidth]
	add 3 * 2 ; surrounding tiles
	add [hl]
	ld [hli], a
	ret nc
	inc [hl]
	ret

.ScrollOverworldMapUp:
	ld a, [wBGMapAnchor]
	sub 2 * BG_MAP_WIDTH
	ld [wBGMapAnchor], a
	jr nc, .not_underflowed
	ld a, [wBGMapAnchor + 1]
	dec a
	and %11
	or HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
.not_underflowed
	ld hl, wPlayerMetatileY
	dec [hl]
	ld a, [hl]
	cp -1 ; was 0
	ret nz
	ld [hl], $1

.ScrollMapDataUp:
	ld hl, wOverworldMapAnchor
	ld a, [wMapWidth]
	add 3 * 2 ; surrounding tiles
	ld b, a
	ld a, [hl]
	sub b
	ld [hli], a
	ret nc
	dec [hl]
	ret

.ScrollOverworldMapLeft:
	ld a, [wBGMapAnchor]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	sub $2
	and $1f
	or d
	ld [wBGMapAnchor], a
	ld hl, wPlayerMetatileX
	dec [hl]
	ld a, [hl]
	cp -1
	ret nz
	ld [hl], 1

.ScrollMapDataLeft:
	ld hl, wOverworldMapAnchor
	ld a, [hl]
	sub 1 ; no-optimize a++|a--
	ld [hli], a
	ret nc
	dec [hl]
	ret

.ScrollOverworldMapRight:
	ld a, [wBGMapAnchor]
	ld e, a
	and $e0
	ld d, a
	ld a, e
	add $2
	and $1f
	or d
	ld [wBGMapAnchor], a
	ld hl, wPlayerMetatileX
	inc [hl]
	ld a, [hl]
	cp 2
	ret nz
	ld [hl], 0

.ScrollMapDataRight:
	ld hl, wOverworldMapAnchor
	ld a, [hl]
	add 1 ; no-optimize a++|a--
	ld [hli], a
	ret nc
	inc [hl]
	ret
