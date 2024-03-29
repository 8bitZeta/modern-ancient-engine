Function170000:
	ld a, [wOfferSpecies]
	ld [wPlayerTrademonSpecies], a
	ld hl, wOfferMonSender
	ld de, wPlayerTrademonSenderName
	ld bc, NAME_LENGTH_JAPANESE - 1
	call CopyBytes
	ld a, "@"
	ld [de], a
	ld hl, wOfferMonOT
	ld de, wPlayerTrademonOTName
	ld bc, NAME_LENGTH_JAPANESE - 1
	call CopyBytes
	ld a, "@"
	ld [de], a
	ld hl, wOfferMonDVs
	ld a, [hli]
	ld [wPlayerTrademonDVs], a
	ld a, [hl]
	ld [wPlayerTrademonDVs + 1], a
	ld hl, wOfferMonID
	ld a, [hli]
	ld [wPlayerTrademonID], a
	ld a, [hl]
	ld [wPlayerTrademonID + 1], a
	ld bc, wOfferMon
	farcall GetCaughtGender
	ld a, c
	ld [wPlayerTrademonCaughtData], a
	ld a, [wcd81]
	ld [wc74e], a
	ld hl, wc608
	ld de, $d800
	ld bc, TRADE_CORNER_REQUEST_LENGTH
	jmp CopyBytes

Function170c8b:
	ld hl, wLastEnemyCounterMove
	ld b, $5
.asm_170c90
	ld a, [hl]
	cpl
	ld [hli], a
	dec b
	jr nz, .asm_170c90
	ret

CheckBTMonMovesForErrors:
	ld c, BATTLETOWER_PARTY_LENGTH
	ld hl, wBT_OTTempMon1Moves
.loop
	push hl
	ld a, [hl]
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .okay
	push hl
	ld hl, POUND
	call GetMoveIDFromIndex
	pop hl
	ld [hl], a

.okay
	inc hl
	ld b, NUM_MOVES - 1
.loop2
	ld a, [hl]
	and a
	jr z, .loop3
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .next

.loop3
	xor a
	ld [hli], a
	dec b
	jr nz, .loop3
	jr .done

.next
	inc hl
	dec b
	jr nz, .loop2

.done
	pop hl
	ld de, NICKNAMED_MON_STRUCT_LENGTH
	add hl, de
	dec c
	jr nz, .loop
	ret

Function1719c8:
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	call Function1719d6
	pop af
	ldh [hInMenu], a
	ret

Function1719d6:
	call Function1719ed
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	call Function171a11
	pop af
	ldh [rSVBK], a
	ret

Function1719ed:
	xor a
	ld [wcd49], a
	ld [wcd4a], a
	dec a
	ld [wcd4b], a
	call ClearBGPalettes
	call ClearSprites
	farcall ReloadMapPart
	farjp ClearSpriteAnims

Function171a11:
.loop
	call JoyTextDelay
	ld a, [wcd49]
	bit 7, a
	jr nz, .done
	call Function171a36
	farcall PlaySpriteAnimations
	farcall ReloadMapPart
	jr .loop
.done
	farcall ClearSpriteAnims
	jmp ClearSprites

Function171a36:
	jumptable Jumptable_171a45, wcd49

Jumptable_171a45:
	dw Function171a95
	dw Function171ac9
	dw Function171a5d
	dw Function171ad7
	dw Function171a5d
	dw Function171aec
	dw Function171b4b
	dw Function171b85
	dw Function171bcc
	dw Function171c2c
	dw Function171c39
	dw Function171c41

Function171a5d:
	ld a, [wc821]
	bit 1, a
	jr nz, .asm_171a6a
	bit 0, a
	ret nz
	jmp Function171c66

.asm_171a6a
	ld a, MOBILEAPI_00
	call MobileAPI
	ld [wMobileErrorCodeBuffer], a
	ld a, l
	ld [wMobileErrorCodeBuffer + 1], a
	ld a, h
	ld [wMobileErrorCodeBuffer + 2], a
	ld a, MOBILEAPI_05
	call MobileAPI
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	farcall BattleTowerRoomMenu_Cleanup
	pop af
	ldh [rSVBK], a
	ld a, $a
	ld [wcd49], a
	ret

Function171a95:
	hlcoord 2, 8
	ld de, String_171aa7
	call PlaceString
	jmp Function171c66

String_171aa7:
	db   "モバイルアダプタに"
	next "せつぞく　しています"
	next "しばらく　おまちください"
	db   "@"

Function171ac9:
	ld de, wcd81
	ld hl, $5c
	ld a, MOBILEAPI_01
	call MobileAPI
	jmp Function171c66

Function171ad7:
	xor a
	ld hl, wc608
	ld bc, $66
	call ByteFill
	ld de, wc608
	ld a, MOBILEAPI_06
	call MobileAPI
	jmp Function171c66

Function171aec:
	ldh a, [rSVBK]
	push af
	ld a, $1
	ldh [rSVBK], a
	farcall BattleTowerRoomMenu_Cleanup
	pop af
	ldh [rSVBK], a
	hlcoord 2, 6
	ld a, $8
.asm_171b01
	push af
	push hl
	xor a
	ld bc, $10
	call ByteFill
	pop hl
	ld de, $14
	add hl, de
	pop af
	dec a
	jr nz, .asm_171b01
	hlcoord 2, 7
	ld a, $3
	ld de, wc608
.asm_171b1b
	push af
	push hl
	ld a, [de]
	and a
	jr z, .asm_171b34
	ld a, [wcd4b]
	inc a
	ld [wcd4b], a
	push hl
	call Function171b42
	pop hl
	ld bc, $ffec
	add hl, bc
	call Function171b42
.asm_171b34
	pop hl
	ld bc, $14
	add hl, bc
	add hl, bc
	add hl, bc
	pop af
	dec a
	jr nz, .asm_171b1b
	jmp Function171c66

Function171b42:
	ld a, [de]
	inc de
	and a
	ret z
	sub $20
	ld [hli], a
	jr Function171b42

Function171b4b:
	depixel 8, 2
	ld a, SPRITE_ANIM_INDEX_EZCHAT_CURSOR
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $8

	depixel 8, 19
	ld a, SPRITE_ANIM_INDEX_EZCHAT_CURSOR
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $9

	depixel 17, 14, 2, 0
	ld a, SPRITE_ANIM_INDEX_EZCHAT_CURSOR
	call InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], $a

	ld a, $4
	ld [wcd23], a
	ld a, $8
	ld [wcd24], a
	jmp Function171c66

Function171b85:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, Function171b9f
	ld a, [hl]
	and A_BUTTON
	jr nz, Function171bbd
	ld a, [hl]
	and D_UP
	jr nz, asm_171ba5
	ld a, [hl]
	and D_DOWN
	jr nz, asm_171baf
	ret

Function171b9f:
	ld a, $80
	ld [wcd49], a
	ret

asm_171ba5:
	ld a, [wcd4a]
	and a
	ret z
	dec a
	ld [wcd4a], a
	ret

asm_171baf:
	ld a, [wcd4b]
	ld c, a
	ld a, [wcd4a]
	cp c
	ret z
	inc a
	ld [wcd4a], a
	ret

Function171bbd:
	call PlayClickSFX
	ld a, $8
	ld [wcd23], a
	xor a
	ld [wcd24], a
	jr Function171c66

Function171bcc:
	ld hl, hJoyPressed
	ld a, [hl]
	and B_BUTTON
	jr nz, Function171bdc
	ld a, [hl]
	and A_BUTTON
	ret

Function171bdc:
	ld a, $4
	ld [wcd23], a
	ld a, $8
	ld [wcd24], a
	ld hl, wcd49
	dec [hl]
	ret

Function171c2c:
	ld hl, wcd4c
	dec [hl]
	ret nz
	call ExitMenu
	call ClearBGPalettes
	jr asm_171c60

Function171c39:
	ld a, $28
	ld [wcd4c], a
	call Function171c66

Function171c41:
	ld hl, wcd4c
	dec [hl]
	ret nz
	call ClearBGPalettes
	ld a, $2
	ld [wc303], a
asm_171c60:
	ld a, $80
	ld [wcd49], a
	ret

Function171c66:
	ld hl, wcd49
	inc [hl]
	ret

MenuHeader_171c6b:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw NULL
	db 0 ; default option

String_171c73:
	db   "モバイルセンターを　けってい"
	next "しました@"

String_172e31:
	db "パスワード<WO>いれてください@"
String_172e3f:
	db "きりかえ　やめる　　けってい@"
String_172e4e:
	db "きりかえ　やめる　　"
String_172e58:
	db "けってい@"
String_172e5d:
	db "せつぞくする　モバイルセンターを"
	next "えらんで　ください@"

Function172eb9:
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, Palette_172edf
	ld de, wBGPals1
	ld bc, 8 palettes
	call CopyBytes
	ld hl, Palette_172edf
	ld de, wBGPals2
	ld bc, 8 palettes
	call CopyBytes
	call SetPalettes
	pop af
	ldh [rSVBK], a
	ret

Palette_172edf:
	RGB  5, 12, 17
	RGB 31, 31, 31
	RGB 18, 25, 28
	RGB 10, 17, 21
	RGB  6, 13, 18
	RGB 31, 31, 31
	RGB 20, 26, 28
	RGB 12, 19, 23
	RGB  3, 10, 16
	RGB 31, 31, 31
	RGB  6, 13, 18
	RGB 20, 26, 28
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  5,  5, 16
	RGB  8, 19, 28
	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB  0,  0,  0
	RGB  0,  0,  0
	RGB  0,  0,  0
