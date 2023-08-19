GetBattleAnimOAMPointer:
	ld h, d
	ld l, e
	ld de, BattleAnimOAMData
	ld a, [wBattleAnimTempFrameOAMFlags]
	add a
	jr nc, .ok
	ld de, BattleAnimOAMData + 4 * NUM_BATTLEANIMOAMSETS
.ok
	add hl, hl
	add hl, hl
	add hl, de
	ret

LoadBattleAnimGFX:
    push hl
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl
    ld de, AnimObjGFX
    add hl, de
    ld a, [hli]
    ld c, a
.got_ball
    ld b, [hl]
    ld a, b
    and a ; bank 0 means it's a poke ball
    jr z, .ball
    inc hl
    ld a, [hli]
    ld h, [hl]
    ld l, a
    pop de
    push bc
    call DecompressRequest2bpp
    pop bc
    ret

.ball
    ldh a, [rSVBK]
    push af

    ; which ball?
    ld a, BANK(wCurItem)
    ldh [rSVBK], a
    ld a, [wCurItem]
    ld e, a
    ld d, 0
    pop af
    ldh [rSVBK], a
    ; get the gfx pointer
    ld hl, .ball_gfx
    add hl, de
    add hl, de
    add hl, de
    jr .got_ball

.ball_gfx:
    dba AnimObjPokeBallGFX
    dba AnimObjPokeBallGFX
    dba AnimObjGreatBallGFX
    dba AnimObjUltraBallGFX
    dba AnimObjMasterBallGFX
    dba AnimObjLevelBallGFX
    dba AnimObjLureBallGFX
    dba AnimObjMoonBallGFX
    dba AnimObjFriendBallGFX
    dba AnimObjFastBallGFX
    dba AnimObjHeavyBallGFX
    dba AnimObjLoveBallGFX
    dba AnimObjParkBallGFX
