Function49f0a:
	call ClearBGPalettes
	call Function4a3a7
	call Function4a492
	call ClearBGPalettes
Function49f16:
	call MobileMenu_InitMenuBuffers
	ld c, 12
	call DelayFrames
	hlcoord 4, 0
	lb bc, 10, 10
	call Function48cdc
	hlcoord 6, 2
	ld de, MobileString1
	call PlaceString
	hlcoord 0, 12
	lb bc, 4, SCREEN_HEIGHT
	call Textbox
	xor a
	ld de, String_0x49fe9
	hlcoord 1, 14
	call PlaceString
	call WaitBGMap2
	call SetPalettes
	call StaticMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	jr .check_buttons

.joy_loop
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc

.check_buttons
	bit A_BUTTON_F, a
	jr nz, .a_button
	bit B_BUTTON_F, a
	jr nz, .b_button
	jr .next

.a_button
	ld hl, wMenuCursorY
	ld a, [hl]
	cp 1
	jmp z, Function4a098
	cp 2
	jmp z, Function4a0b9
	cp 3
	jmp z, Function4a0c2
	cp 4
	jmp z, Function4a100
	ld a, 1
	call MenuClickSound
.b_button
	pop bc
	call ClearBGPalettes
	call ClearTilemap
	ld a, MUSIC_MAIN_MENU
	ld [wMapMusic], a
	ld de, MUSIC_MAIN_MENU
	jmp Function4a6c5

.next
	ld hl, wMenuCursorY
	ld a, [hl]
	dec a
	ld hl, MobileStrings2
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 13
	lb bc, 4, SCREEN_HEIGHT
	call ClearBox
	hlcoord 1, 14
	call PlaceString

; .useless_jump
	call MobileMenu_InitMenuBuffers
	pop bc
	ld hl, wMenuCursorY
	ld [hl], b
	lb bc, $a, $1
	hlcoord 5, 1
	call ClearBox
	jr .joy_loop

MobileString1:
	db   "めいしフォルダー"
	next "あいさつ"
	next "プロフィール"
	next "せ<TTE>い"
	next "もどる"
	db   "@"

MobileStrings2:
; string 0
String_0x49fe9:
	db   "めいし¯つくったり"
	next "ほぞんしておける　フォルダーです@"
; string 1
	db   "モバイルたいせんや　じぶんのめいしで"
	next "つかう　あいさつ¯つくります@"
; string 2
	db   "あなた<NO>じゅうしょや　ねんれいの"
	next "せ<TTE>い¯かえられます@"
; string 3
	db  "モバイルセンター<NI>せつぞくするとき"
	next "ひつような　こと¯きめます@"
; string 4
	db   "まえ<NO>がめん　<NI>もどります"
	next "@"

MobileMenu_InitMenuBuffers:
	ld hl, w2DMenuCursorInitY
	ld a, 2
	ld [hli], a
	ld a, 5 ; w2DMenuCursorInitX
	ld [hli], a
	ld a, 5 ; w2DMenuNumRows
	ld [hli], a
	ld a, 1 ; w2DMenuNumCols
	ld [hli], a
	ld [hl], $0 ; w2DMenuFlags1
	set 5, [hl]
	inc hl
	xor a ; w2DMenuFlags2
	ld [hli], a
	ld a, $20 ; w2DMenuCursorOffsets
	ld [hli], a
	; could have done "ld a, A_BUTTON | D_UP | D_DOWN | B_BUTTON" instead
	ld a, A_BUTTON
	add D_UP
	add D_DOWN
	add B_BUTTON
	ld [hli], a ; wMenuJoypadFilter
	ld a, 1
	ld [hli], a ; wMenuCursorY, wMenuCursorX
	ld [hli], a ; wMenuCursorY, wMenuCursorX
	ret

Function4a098:
	ld a, 2
	call MenuClickSound
	call PlaceHollowCursor
	call WaitBGMap
	call LoadStandardMenuHeader
	farcall Function89de0
	call ExitMenu
	call MG_Mobile_Layout_LoadPals
	call Function4a485
	pop bc
	jmp Function49f16

Function4a0b9:
	ld a, 2
	call MenuClickSound
	pop bc
	jmp Function4a4c4

Function4a0c2:
	ld a, 2
	call MenuClickSound
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + wPlayerName - wPlayerData
	ld de, wPlayerName
	ld bc, NAME_LENGTH_JAPANESE
	call CopyBytes
	call CloseSRAM
	ld c, 2
	call DelayFrames
	ld c, $1
	call InitMobileProfile
	push af
	call ClearBGPalettes
	pop af
	and a
	jr nz, .skip_save
.skip_save
	ld c, 5
	call DelayFrames
	jr asm_4a111

Function4a100:
	ld a, 2
	call MenuClickSound
	call ClearBGPalettes
	call Function4a13b
	call ClearBGPalettes
	call ClearTilemap

asm_4a111:
	pop bc
	call LoadFontsExtra
	jmp Function49f0a

Function4a118:
	ld hl, w2DMenuCursorInitY
	ld a, $1
	ld [hli], a
	ld a, $d
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	ret

Function4a13b:
	call Function4a3a7
	call Function4a492
	call Function4a373
	ld c, 10
	call DelayFrames

Function4a149:
	hlcoord 1, 2
	lb bc, $6, $10
	call Function48cdc
	hlcoord 3, 4
	ld de, String_4a1ef
	call PlaceString
	hlcoord 0, 12
	lb bc, $4, $12
	call Textbox
	ld a, [wMenuCursorY]
	dec a
	ld hl, Strings_4a23d
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 13
	lb bc, $4, $12
	call ClearBox
	hlcoord 1, 14
	call PlaceString
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	call SetPalettes
	call StaticMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	jr asm_4a19d

Function4a195:
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc

asm_4a19d:
	bit 0, a
	jr nz, .asm_4a1a7
	bit 1, a
	jr nz, .asm_4a1ba
	jr .asm_4a1bc
.asm_4a1a7
	ld hl, wMenuCursorY
	ld a, [hl]
	cp $1
	jr z, Function4a20e
	cp $2
	jr z, Function4a221
	ld a, $1
	call MenuClickSound
.asm_4a1ba
	pop bc
	ret
.asm_4a1bc
	ld hl, wMenuCursorY
	ld a, [hl]
	dec a
	ld hl, Strings_4a23d
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 13
	lb bc, $4, $12
	call ClearBox
	hlcoord 1, 14
	call PlaceString
; .asm_4a1db
	call Function4a373
	pop bc
	ld hl, wMenuCursorY
	ld [hl], b
	lb bc, 6, 1
	hlcoord 2, 3
	call ClearBox
	jr Function4a195

String_4a1ef:
	db   "モバイルセンター¯えらぶ"
	next "ログインパスワード¯いれる"
	next "もどる@"

Function4a20e:
	ld a, $1
	call MenuClickSound
	farcall Function1719c8
	call ClearBGPalettes
	call DelayFrame
	jr Function4a239

Function4a221:
	ld a, $1
	call MenuClickSound
	jr c, Function4a239
	call Function4a373
	ld a, $2
	ld [wMenuCursorY], a
; .asm_4a235
	pop bc
	jmp Function4a149

Function4a239:
	pop bc
	jmp Function4a13b

Strings_4a23d:
	db   "いつも　せつぞく¯する"
	next "モバイルセンター¯えらびます@"

	db   "モバイルセンター<NI>せつぞくするとき"
	next "つかうパスワード¯ほぞんできます@"

	db   "まえ<NO>がめん　<NI>もどります@"

	db   "@"

String_4a34b:
	db   "いれなおす"
	next "けす"
	next "もどる@"

DeleteSavedLoginPasswordText:
	text_far _DeleteSavedLoginPasswordText
	text_end

DeletedTheLoginPasswordText:
	text_far _DeletedTheLoginPasswordText
	text_end

DeletePassword_YesNo_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 14, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw MenuData_0x4a36a
	db 2 ; default option

MenuData_0x4a36a:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING | STATICMENU_WRAP ; flags
	db 2 ; items
	db "はい@"
	db "いいえ@"

Function4a373:
	ld hl, w2DMenuCursorInitY
	ld a, $4
	ld [hli], a
	ld a, $2
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $40
	add $80
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	ret

Function4a3a7:
	call Function4a485
Function4a3aa:
	hlcoord 0, 0
	lb bc, 3, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	call Function4a6d8
	hlcoord 1, 0
	ld a, $1
	lb bc, 3, 18
	call Function4a6d8
	lb bc, 1, 18
	xor a
	call Function4a6d8
	lb bc, 1, 18
	ld a, $1
	call Function4a6d8
	lb bc, 1, 18
	ld a, $2
	call Function4a6d8
	lb bc, 11, 18
	ld a, " "
	call Function4a6d8
	hlcoord 19, 0
	lb bc, 3, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 1, 1
	xor a
	call Function4a6d8
	lb bc, 1, 1
	ld a, $1
	call Function4a6d8
	lb bc, 4, 1
	ld a, $2
	call Function4a6d8
	lb bc, 1, 1
	ld a, $3
	call Function4a6d8
	lb bc, 1, 1
	ld a, " "
	jmp Function4a6d8

Function4a485:
	ld de, MobileMenuGFX
	ld hl, vTiles2 tile $00
	lb bc, BANK(MobileMenuGFX), 13
	jmp Get2bpp

Function4a492:
	jmp _CrystalCGB_MobileLayout0

Function4a4c4:
	call ClearBGPalettes
	call Function4a3a7
	call Function4a492
	call Function4a680
	call ClearBGPalettes
	ld c, 20
	call DelayFrames
	hlcoord 2, 0
	lb bc, $a, $e
	call Function48cdc
	hlcoord 4, 2
	ld de, String_4a5c5
	call PlaceString
	hlcoord 4, 4
	ld de, String_4a5cd
	call PlaceString
	hlcoord 4, 6
	ld de, String_4a5da
	call PlaceString
	hlcoord 4, 8
	ld de, String_4a5e6
	call PlaceString
	hlcoord 4, 10
	ld de, String_4a5f2
	call PlaceString
	hlcoord 0, 12
	lb bc, $4, $12
	call Textbox
	xor a
	ld hl, Strings_4a5f6
	ld d, h
	ld e, l
	hlcoord 1, 14
	call PlaceString
	ld a, $1
	ld hl, Strings_4a5f6
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 16
	call PlaceString
	call WaitBGMap2
	call SetPalettes
	call StaticMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	jr asm_4a54d

Function4a545:
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc

asm_4a54d:
	bit 0, a
	jr nz, .asm_4a557
	bit 1, a
	jr nz, .asm_4a574
	jr .asm_4a57e
.asm_4a557
	ld hl, wMenuCursorY
	ld a, [hl]
	cp $1
	jmp z, Function4a6ab
	cp $2
	jmp z, Function4a6ab
	cp $3
	jmp z, Function4a6ab
	cp $4
	jmp z, Function4a6ab
	ld a, $1
	call MenuClickSound
.asm_4a574
	pop bc
	call ClearBGPalettes
	call ClearTilemap
	jmp Function49f0a
.asm_4a57e
	ld hl, wMenuCursorY
	ld a, [hl]
	dec a
	add a
	push af
	ld hl, Strings_4a5f6
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 13
	lb bc, $4, $12
	call ClearBox
	hlcoord 1, 14
	call PlaceString
	pop af
	inc a
	ld hl, Strings_4a5f6
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 1, 16
	call PlaceString

; Function4a5b0:
	call Function4a680
	pop bc
	ld hl, wMenuCursorY
	ld [hl], b
	lb bc, $a, $1
	hlcoord 3, 1
	call ClearBox
	jr Function4a545

String_4a5c5:
	db "じこしょうかい@"
String_4a5cd:
	db "たいせん　<GA>はじまるとき@"
String_4a5da:
	db "たいせん　<NI>かったとき@"
String_4a5e6:
	db "たいせん　<NI>まけたとき@"
String_4a5f2:
	db "もどる@"

Strings_4a5f6:
	db "めいし　や　ニュース　<NI>のせる@"
	db "あなた<NO>あいさつです@"
	db "モバイル　たいせん<GA>はじまるとき@"
	db "あいて<NI>みえる　あいさつです@"
	db "モバイル　たいせんで　かったとき@"
	db "あいて<NI>みえる　あいさつです@"
	db "モバイル　たいせんで　まけたとき@"
	db "あいて<NI>みえる　あいさつです@"
	db "まえ<NO>がめん　<NI>もどります@"
	db "@"

Function4a680:
	ld hl, w2DMenuCursorInitY
	ld a, $2
	ld [hli], a
	ld a, $3
	ld [hli], a
	ld a, $5
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hl], $0
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a
	ld a, $20
	ld [hli], a
	ld a, $1
	add $40
	add $80
	add $2
	ld [hli], a
	ld a, $1
	ld [hli], a
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret

Function4a6ab:
	; unreachable
	ld a, $2
	call MenuClickSound
	call ClearBGPalettes
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	pop bc
	call LoadFontsExtra
	jmp Function4a4c4

Function4a6c5:
	ld a, $5
	ld [wMusicFade], a
	ld a, e
	ld [wMusicFadeID], a
	ld a, d
	ld [wMusicFadeID + 1], a
	ld c, 22
	jmp DelayFrames

Function4a6d8:
	push bc
	push hl
.asm_4a6da
	ld [hli], a
	dec c
	jr nz, .asm_4a6da
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, Function4a6d8
	ret

if DEF(_DEBUG)
MainMenu_DebugRoom:
	farcall _DebugRoom
	ret
endc
