; Functions dealing with VRAM.

DMATransfer::
; Return carry if the transfer is completed.

	ldh a, [hDMATransfer]
	and a
	ret z

; Start transfer
	ldh [rHDMA5], a

; Execution is halted until the transfer is complete.

	xor a
	ldh [hDMATransfer], a
	scf
	ret

UpdateBGMapBuffer::
; Copy [hBGMapTileCount] 16x8 tiles from wBGMapBuffer
; to bg map addresses in wBGMapBufferPointers.

; [hBGMapTileCount] must be even since this is done in pairs.

; Return carry on success.

	ldh a, [hBGMapUpdate]
	and a
	ret z

	ldh a, [rVBK]
	push af

; Relocate the stack pointer to wBGMapBufferPointers
	ld [hSPBuffer], sp
	ld hl, wBGMapBufferPointers
	ld sp, hl

; We can now pop the addresses of affected spots on the BG Map

	ld hl, wBGMapPalBuffer
	ld de, wBGMapBuffer

.next
; Copy a pair of 16x8 blocks (one 16x16 block)

rept 2
; Get our BG Map address
	pop bc

; Palettes
	ld a, 1
	ldh [rVBK], a

	ld a, [hli]
	ld [bc], a
	inc c
	ld a, [hli]
	ld [bc], a
	dec c

; Tiles
	xor a
	ldh [rVBK], a

	ld a, [de]
	inc de
	ld [bc], a
	inc c
	ld a, [de]
	inc de
	ld [bc], a
endr

; We've done 2 16x8 blocks
	ldh a, [hBGMapTileCount]
	dec a
	dec a
	ldh [hBGMapTileCount], a

	jr nz, .next

; Restore the stack pointer
	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl

	pop af
	ldh [rVBK], a

	xor a
	ldh [hBGMapUpdate], a
	scf
	ret

WaitTop::
; Wait until the top third of the BG Map is being updated.

	ldh a, [hBGMapMode]
	and a
	ret z

	ldh a, [hBGMapThird]
	and a
	jr z, .done

	call DelayFrame
	jr WaitTop

.done
	xor a
	ldh [hBGMapMode], a
	ret

UpdateBGMap::
; Update the BG Map, in thirds, from wTilemap and wAttrmap.

	ldh a, [hBGMapMode]
	and a ; 0
	ret z

; BG Map 0
	dec a ; 1
	jr z, .Tiles0
	dec a ; 2
	jr z, .Attr0

; BG Map 1
	ld hl, vBGMap1
	dec a ; 3
	jr z, .Tiles1
	dec a ; 4
	jr z, .Attr1
	ret

.Attr0:
	ldh a, [hBGMapAddress]
	ld l, a
	ldh a, [hBGMapAddress + 1]
	ld h, a

.Attr1:
	ld a, 1
	ldh [rVBK], a

	call .update

	xor a
	ldh [rVBK], a
	ret

.update
	ld [hSPBuffer], sp

; Which third?
	ldh a, [hBGMapThird]
	and a ; 0
	jr z, .attr_top
	dec a ; 1
	jr z, .attr_middle
	; 2

DEF THIRD_HEIGHT EQU SCREEN_HEIGHT / 3

.attr_bottom
	coord sp, 0, 2 * THIRD_HEIGHT, wAttrmap

	ld de, 2 * THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: top third
	xor a
	jr .start

.attr_middle
	coord sp, 0, THIRD_HEIGHT, wAttrmap

	ld de, THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: bottom third
	ld a, 2
	jr .start

.attr_top
	coord sp, 0, 0, wAttrmap

; Next time: middle third
	jr .continue

.Tiles0:
	ldh a, [hBGMapAddress]
	ld l, a
	ldh a, [hBGMapAddress + 1]
	ld h, a

.Tiles1:
	ld [hSPBuffer], sp

; Which third?
	ldh a, [hBGMapThird]
	and a ; 0
	jr z, .tiles_top
	dec a ; 1
	jr z, .tiles_middle
	; 2

.tiles_bottom
	coord sp, 0, 2 * THIRD_HEIGHT

	ld de, 2 * THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: top third
	xor a
	jr .start

.tiles_middle
	coord sp, 0, THIRD_HEIGHT

	ld de, THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: bottom third
	ld a, 2
	jr .start

.tiles_top
	coord sp, 0, 0

; Next time: middle third

.continue
	inc a

.start
; Which third to update next time
	ldh [hBGMapThird], a

; Rows of tiles in a third
	ld a, THIRD_HEIGHT

; Discrepancy between wTilemap and BGMap
	ld bc, BG_MAP_WIDTH - (SCREEN_WIDTH - 1)

.row
; Copy a row of 20 tiles
rept SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	add hl, bc
	dec a
	jr nz, .row

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Serve1bppRequest::
; Only call during the first fifth of VBlank

	ld a, [wRequested1bppSize]
	and a
	ret z

; Back out if we're too far into VBlank
	ldh a, [rLY]
	cp LY_VBLANK
	ret c
	cp LY_VBLANK + 2
	ret nc

; Copy [wRequested1bppSize] 1bpp tiles from [wRequested1bppSource] to [wRequested1bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested1bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested1bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested1bppSize]
	ld b, a

	xor a
	ld [wRequested1bppSize], a

.next

rept 3
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld a, d
	ld [hli], a
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested1bppDest], a
	ld a, h
	ld [wRequested1bppDest + 1], a

	ld [wRequested1bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Serve2bppRequest::
; Only call during the first fifth of VBlank

	ld a, [wRequested2bppSize]
	and a
	ret z

; Back out if we're too far into VBlank
	ldh a, [rLY]
	cp LY_VBLANK
	ret c
	cp LY_VBLANK + 2
	ret nc
	jr _Serve2bppRequest

Serve2bppRequest_VBlank::
	ld a, [wRequested2bppSize]
	and a
	ret z

_Serve2bppRequest::
; Copy [wRequested2bppSize] 2bpp tiles from [wRequested2bppSource] to [wRequested2bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested2bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested2bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested2bppSize]
	ld b, a

	xor a
	ld [wRequested2bppSize], a

.next

rept 7
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld a, d
	ld [hli], a
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested2bppDest], a
	ld a, h
	ld [wRequested2bppDest + 1], a

	ld [wRequested2bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

AnimateTileset::
; Only call during the first fifth of VBlank

	ldh a, [hMapAnims]
	and a
	ret z

; Back out if we're too far into VBlank
	ldh a, [rLY]
	cp LY_VBLANK
	ret c
	cp LY_VBLANK + 7
	ret nc

	ldh a, [hROMBank]
	push af
	ld a, BANK(_AnimateTileset)
	rst Bankswitch

	ldh a, [rSVBK]
	push af
	ld a, BANK(wTilesetAnim)
	ldh [rSVBK], a

	ldh a, [rVBK]
	push af
	xor a
	ldh [rVBK], a

	call _AnimateTileset

	pop af
	ldh [rVBK], a
	pop af
	ldh [rSVBK], a
	pop af
	rst Bankswitch
	ret
