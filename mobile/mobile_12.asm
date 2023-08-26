InitMobileProfile:
	xor a
	set 6, a
	ld [wd002], a
	ld hl, wd003
	set 0, [hl]
	ld a, c
	and a
	call z, InitCrystalData
	call ClearBGPalettes
	call Function48d3d
	ld a, [wd479]
	bit 1, a
	jr z, .not_yet_initialized
	ld a, [wd003]
	set 0, a
	set 1, a
	set 2, a
	set 3, a
	ld [wd003], a
.not_yet_initialized
	call Function486bf
	call LoadFontsExtra
	ld de, MobileUpArrowGFX
	ld hl, vTiles2 tile $10
	lb bc, BANK(MobileUpArrowGFX), 1
	call Request1bpp
	ld de, MobileDownArrowGFX
	ld hl, vTiles2 tile $11
	lb bc, BANK(MobileDownArrowGFX), 1
	call Request1bpp
	call Function4a3a7
	call ClearBGPalettes
	ld a, [wd002]
	bit 6, a
	jr z, .asm_4808a
	call Function48689
	jr .asm_480d7
.asm_4808a
	ld a, $5
	ld [wMusicFade], a
	ld a, LOW(MUSIC_MOBILE_ADAPTER_MENU)
	ld [wMusicFadeID], a
	ld a, HIGH(MUSIC_MOBILE_ADAPTER_MENU)
	ld [wMusicFadeID + 1], a
	ld c, 20
	call DelayFrames
	ld b, CRYSTAL_CGB_MOBILE_1
	call GetCrystalCGBLayout
	call ClearBGPalettes
	hlcoord 0, 0
	lb bc, 2, 20
	call ClearBox
	hlcoord 0, 1
	ld [hl], $c
	ld bc, $13
	add hl, bc
	ld [hl], a
	ld de, MobileProfileString
	hlcoord 1, 1
	call PlaceString
	hlcoord 0, 2
	lb bc, $a, $12
	call Function48cdc
	hlcoord 2, 4
	ld de, MobileString_Gender
	call PlaceString
.asm_480d7
	hlcoord 2, 6
	ld de, MobileString_Age
	call PlaceString
	hlcoord 2, 8
	ld de, MobileString_Address
	call PlaceString
	hlcoord 2, 10
	ld de, MobileString_ZipCode
	call PlaceString
	hlcoord 2, 12
	ld de, MobileString_OK
	call PlaceString
	ld a, [wd002]
	bit 6, a
	jr nz, .asm_48113
	ld a, [wPlayerGender]
	ld hl, Strings_484fb
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 11, 4
	call PlaceString
.asm_48113
	hlcoord 11, 6
	call Function487ec
	ld a, [wd474]
	dec a
	ld hl, Prefectures
	call GetNthString
	ld d, h
	ld e, l
	hlcoord 11, 8
	call PlaceString
	hlcoord 11, 10
	call Function489ea
	hlcoord 0, 14
	lb bc, $2, $12
	call Textbox
	hlcoord 1, 16
	ld de, MobileString_PersonalInfo
	call PlaceString
	call Function48187
	call WaitBGMap2
	call SetPalettes
	call StaticMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
	jr asm_4815f

Function48157:
	call ScrollingMenuJoypad
	ld hl, wMenuCursorY
	ld b, [hl]
	push bc
asm_4815f:
	bit A_BUTTON_F, a
	jmp nz, Function4820d
	ld b, a
	ld a, [wd002]
	bit 6, a
	jr z, .dont_check_b_button
	ld hl, wd479
	bit 1, [hl]
	jr z, .dont_check_b_button
	bit B_BUTTON_F, b
	jr nz, .b_button
.dont_check_b_button
	jmp Function48272

.b_button
	call ClearBGPalettes
	call Function48d30
	pop bc
	call ClearTilemap
	ld a, $ff
	ret

Function48187:
	ld a, [wd479]
	bit 1, a
	jr nz, .asm_481f1
	ld a, [wd003]
	ld d, a
	call Function48725
	jr c, .asm_481a2
	lb bc, 1, 4
	hlcoord 2, 12
	call ClearBox
	jr .asm_481ad
.asm_481a2
	push de
	hlcoord 2, 12
	ld de, MobileString_OK
	call PlaceString
	pop de
.asm_481ad
	ld a, [wd002]
	bit 6, a
	jr nz, .asm_481c1
	bit 0, d
	jr nz, .asm_481c1
	lb bc, 1, 8
	hlcoord 11, 4
	call ClearBox
.asm_481c1
	bit 1, d
	jr nz, .asm_481ce
	lb bc, 1, 8
	hlcoord 11, 6
	call ClearBox
.asm_481ce
	bit 2, d
	jr nz, .asm_481db
	lb bc, 2, 8
	hlcoord 11, 7
	call ClearBox
.asm_481db
	bit 3, d
	jr nz, .asm_481f1
	ld a, [wd479]
	bit 0, a
	jr nz, .asm_481f8
	lb bc, 1, 8
	hlcoord 11, 10
	call ClearBox
	jr .asm_48201
.asm_481f1
	ld a, [wd479]
	bit 0, a
	jr nz, .asm_48201
.asm_481f8
	hlcoord 11, 10
	ld de, .String_TellLater
	call PlaceString
.asm_48201
	ret

.String_TellLater:
	db "Tell Later@"

Function4820d:
	call PlaceHollowCursor
	ld hl, wMenuCursorY
	ld a, [hl]
	push af
	ld a, [wd002]
	bit 6, a
	jr z, .asm_4821f
	pop af
	inc a
	push af
.asm_4821f
	pop af
	cp $1
	jr z, asm_4828d
	cp $2
	jmp z, Function4876f
	cp $3
	jmp z, Function48304
	cp $4
	jmp z, Function488d3
	ld a, $2
	call MenuClickSound
	ld a, [wd002]
	bit 6, a
	jr z, .asm_4825c
	jr .asm_4825c

	hlcoord 1, 15
	lb bc, $2, $12
	call ClearBox
	ld de, MobileString_ProfileChanged
	hlcoord 1, 16
	call PlaceString
	call WaitBGMap
	ld c, 48
	call DelayFrames

.asm_4825c
	call ClearBGPalettes
	call Function48d30
	pop bc
	call ClearTilemap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	ld hl, wd479
	set 1, [hl]
	xor a
	ret

Function48272:
	jmp Function4840c

MobileString_PersonalInfo:
	db "Personal Info@"

Function48283:
	lb bc, 2, 18
	hlcoord 1, 15
	jmp ClearBox

asm_4828d:
	call Function48283
	hlcoord 1, 16
	ld de, MobileDesc_Gender
	call PlaceString
	ld hl, MenuHeader_0x484f1
	call LoadMenuHeader
	call Function4873c
	hlcoord 11, 2
	lb bc, $4, $7
	call Function48cdc
	hlcoord 13, 4
	ld de, String_484fb
	call PlaceString
	hlcoord 13, 6
	ld de, String_484ff
	call PlaceString
	call WaitBGMap
	ld a, [wPlayerGender]
	inc a
	ld [wMenuCursorPosition], a
	call StaticMenuJoypad
	call PlayClickSFX
	call ExitMenu
	bit 0, a
	jmp z, Function4840c
	ld hl, wMenuCursorY
	ld a, [hl]
	ld hl, Strings_484fb
	cp $1
	jr z, .asm_482ed
.asm_482e1
	ld a, [hli]
	cp $50
	jr nz, .asm_482e1
	ld a, 1 << PLAYERGENDER_FEMALE_F
	ld [wPlayerGender], a
	jr .asm_482f1
.asm_482ed
	xor a
	ld [wPlayerGender], a
.asm_482f1
	ld d, h
	ld e, l
	hlcoord 11, 4
	call PlaceString
	ld a, [wd003]
	set 0, a
	ld [wd003], a
	jmp Function4840c

Function48304:
	call Function48283
	hlcoord 1, 16
	ld de, MobileDesc_Address
	call PlaceString
	ld hl, MenuHeader_0x48504
	call LoadMenuHeader
	ld hl, MenuHeader_0x48513
	call LoadMenuHeader
	hlcoord 10, 0
	lb bc, $c, $8
	call Function48cdc
	ld a, [wMenuCursorPosition]
	ld b, a
	ld a, [wMenuScrollPosition]
	ld c, a
	push bc
	ld a, [wd474]
	dec a
	cp $29
	jr c, .asm_4833f
	sub $29
	inc a
	ld [wMenuCursorPosition], a
	ld a, $29
.asm_4833f
	ld [wMenuScrollPosition], a
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
.asm_48348
	call ScrollingMenu
	ld de, $629
	call Function48383
	jr c, .asm_48348
	ld d, a
	pop bc
	ld a, b
	ld [wMenuCursorPosition], a
	ld a, c
	ld [wMenuScrollPosition], a
	ld a, d
	push af
	call ExitMenu
	call ExitMenu
	pop af
	ldh a, [hJoyPressed]
	bit 0, a
	jr z, .asm_48377
	call Function483bb
	ld a, [wd003]
	set 2, a
	ld [wd003], a
.asm_48377
	call Function48187
	farcall Mobile_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	jmp Function4840c

Function48383:
	push bc
	push af
	bit 5, a
	jr nz, .asm_48390
	bit 4, a
	jr nz, .asm_4839f
	and a
	jr .asm_483b7
.asm_48390
	ld a, [wMenuScrollPosition]
	sub d
	ld [wMenuScrollPosition], a
	jr nc, .asm_483af
	xor a
	ld [wMenuScrollPosition], a
	jr .asm_483af
.asm_4839f
	ld a, [wMenuScrollPosition]
	add d
	ld [wMenuScrollPosition], a
	cp e
	jr c, .asm_483af
	ld a, e
	ld [wMenuScrollPosition], a
.asm_483af
	ld hl, wMenuCursorY
	ld a, [hl]
	ld [wMenuCursorPosition], a
	scf
.asm_483b7
	pop bc
	ld a, b
	pop bc
	ret

Function483bb:
	ld hl, wScrollingMenuCursorPosition
	ld a, [hl]
	inc a
	ld [wd474], a
	dec a
	ld b, a
	ld hl, Prefectures
.asm_483c8
	and a
	jr z, .asm_483d5
.asm_483cb
	ld a, [hli]
	cp "@"
	jr nz, .asm_483cb
	ld a, b
	dec a
	ld b, a
	jr .asm_483c8
.asm_483d5
	ld d, h
	ld e, l
	lb bc, $2, $8
	hlcoord 11, 7
	call ClearBox
	hlcoord 11, 8
	jmp PlaceString

Function483e8:
	push de
	ld hl, Prefectures
	ld a, [wMenuSelection]
	cp $ff
	jr nz, .asm_483f8
	ld hl, Wakayama ; last string
	jr .asm_48405

.asm_483f8
	ld d, a
	and a
	jr z, .asm_48405
.asm_483fc
	ld a, [hli]
	cp "@"
	jr nz, .asm_483fc
	ld a, d
	dec a
	jr .asm_483f8

.asm_48405
	ld d, h
	ld e, l
	pop hl
	jmp PlaceString

Function4840c:
	call Function48187
	call Function48283
	hlcoord 1, 16
	ld de, MobileString_PersonalInfo
	call PlaceString
	call Function486bf
	pop bc
	ld hl, wMenuCursorY
	ld [hl], b
	ld a, [wd002]
	bit 6, a
	jr nz, .narrower_box
	lb bc, 9, 1
	hlcoord 1, 4
	call ClearBox
	jmp Function48157

.narrower_box
	lb bc, 7, 1
	hlcoord 1, 6
	call ClearBox
	jmp Function48157

Mobile12_Bin2Dec:
	push bc
	push af
	push de
	push hl
	ld hl, .DigitStrings
.loop
	and a
	jr z, .got_string
	inc hl
	inc hl
	dec a
	jr .loop
.got_string
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	pop de
	pop af
	pop bc
	ret

.DigitStrings:
	db "0@"
	db "1@"
	db "2@"
	db "3@"
	db "4@"
	db "5@"
	db "6@"
	db "7@"
	db "8@"
	db "9@"

MobileProfileString:         db "  Mobile Profile@"
MobileString_Gender:         db "Gender@"
MobileString_Age:            db "Age@"
MobileString_Address:        db "Address@"
MobileString_ZipCode:        db "Zip Code@"
MobileString_OK:             db "OK@"
MobileString_ProfileChanged: db "Profile Changed@"
MobileDesc_Gender:           db "Boy or girl?@"
MobileDesc_Age:              db "How old are you?@"
MobileDesc_Address:          db "Where do you live?@"
MobileDesc_ZipCode:          db "Your zip code?@"

MenuHeader_0x484f1:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 2, SCREEN_WIDTH - 1, 7
	dw MenuData_0x484f9
	db 1 ; default option

MenuData_0x484f9:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 2 ; items
Strings_484fb:
String_484fb: db "Boy@"
String_484ff: db "Girl@"

MenuHeader_0x48504:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1

MenuHeader_0x48509:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 5, SCREEN_WIDTH - 1, 7

MenuHeader_0x4850e:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 9, SCREEN_WIDTH - 1, TEXTBOX_Y - 1

MenuHeader_0x48513:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 1, 18, 12
	dw MenuData_0x4851b
	db 1 ; default option

MenuData_0x4851b:
	db SCROLLINGMENU_DISPLAY_ARROWS | SCROLLINGMENU_ENABLE_RIGHT | SCROLLINGMENU_ENABLE_LEFT | SCROLLINGMENU_CALL_FUNCTION1_CANCEL ; flags
	db 6, 0 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL ; item format
	dba .Items
	dba Function483e8
	dba NULL
	dba NULL

.Items:
	db 46
for x, 46
	db x
endr
	db -1

Prefectures:
Aichi:     db "あいちけん@"   ; Aichi
Aomori:    db "あおもりけん@" ; Aomori
Akita:     db "あきたけん@"   ; Akita
Ishikawa:  db "いしかわけん@" ; Ishikawa
Ibaraki:   db "いばらきけん@" ; Ibaraki
Iwate:     db "いわてけん@"   ; Iwate
Ehime:     db "えひめけん@"   ; Ehime
Oita:      db "おおいたけん@" ; Oita
Osakafu:   db "おおさかふ@"   ; Osakafu
Okayama:   db "おかやまけん@" ; Okayama
Okinawa:   db "おきなわけん@" ; Okinawa
Kagawa:    db "かがわけん@"   ; Kagawa
Kagoshima: db "かごしまけん@" ; Kagoshima
Kanagawa:  db "かながわけん@" ; Kanagawa
Gifu:      db "ぎふけん@"     ; Gifu
Kyotofu:   db "きょうとふ@"   ; Kyotofu
Kumamoto:  db "くまもとけん@" ; Kumamoto
Gunma:     db "ぐんまけん@"   ; Gunma
Kochi:     db "こうちけん@"   ; Kochi
Saitama:   db "さいたまけん@" ; Saitama
Saga:      db "さがけん@"     ; Saga
Shiga:     db "しがけん@"     ; Shiga
Shizuoka:  db "しずおかけん@" ; Shizuoka
Shimane:   db "しまねけん@"   ; Shimane
Chiba:     db "ちばけん@"     ; Chiba
Tokyo:     db "とうきょうと@" ; Tokyo
Tokushima: db "とくしまけん@" ; Tokushima
Tochigi:   db "とちぎけん@"   ; Tochigi
Tottori:   db "とっとりけん@" ; Tottori
Toyama:    db "とやまけん@"   ; Toyama
Nagasaki:  db "ながさきけん@" ; Nagasaki
Nagano:    db "ながのけん@"   ; Nagano
Naraken:   db "ならけん@"     ; Naraken
Niigata:   db "にいがたけん@" ; Niigata
Hyogo:     db "ひょうごけん@" ; Hyogo
Hiroshima: db "ひろしまけん@" ; Hiroshima
Fukui:     db "ふくいけん@"   ; Fukui
Fukuoka:   db "ふくおかけん@" ; Fukuoka
Fukushima: db "ふくしまけん@" ; Fukushima
Hokkaido:  db "ほっかいどう@" ; Hokkaido
Mie:       db "みえけん@"     ; Mie
Miyagi:    db "みやぎけん@"   ; Miyagi
Miyazaki:  db "みやざきけん@" ; Miyazaki
Yamagata:  db "やまがたけん@" ; Yamagata
Yamaguchi: db "やまぐちけん@" ; Yamaguchi
Yamanashi: db "やまなしけん@" ; Yamanashi
Wakayama:  db "わかやまけん@" ; Wakayama

Function48689:
	ld c, 7
	call DelayFrames
	ld b, CRYSTAL_CGB_MOBILE_1
	call GetCrystalCGBLayout
	call ClearBGPalettes
	hlcoord 0, 0
	lb bc, 4, SCREEN_WIDTH
	call ClearBox
	hlcoord 0, 2
	ld [hl], $c
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	ld [hl], a
	ld de, MobileProfileString
	hlcoord 1, 2
	call PlaceString
	hlcoord 0, 4
	lb bc, $8, $12
	jmp Function48cdc

Function486bf:
	ld hl, w2DMenuCursorInitY
	ld a, [wd002]
	bit 6, a
	jr nz, .start_at_6
	ld a, 4
	ld [hli], a
	jr .got_init_y

.start_at_6
	ld a, 6
	ld [hli], a
.got_init_y
	ld a, 1
	ld [hli], a ; init x
	ld a, [wd002]
	bit 6, a
	jr nz, .check_wd479
	call Function48725
	; CVAL  = 5
	; NCVAL = 4
	sbc a
	and 1
	add 4
	ld [hli], a
	jr .got_num_rows_2

.check_wd479
	ld a, [wd479]
	bit 1, a
	jr nz, .four_rows
	call Function48725
	jr c, .four_rows
	ld a, 3
	ld [hli], a
	jr .got_num_rows_2

.four_rows
	ld a, 4
	ld [hli], a
.got_num_rows_2
	ld a, 1
	ld [hli], a ; num cols
	ld [hl], 0 ; flags 1
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a ; flags 2
	ld a, $20
	ld [hli], a ; cursor offsets
	ld a, A_BUTTON
	add D_UP
	add D_DOWN
	push af
	ld a, [wd002]
	bit 6, a
	jr z, .got_joypad_mask
	pop af
	add B_BUTTON
	push af
.got_joypad_mask
	pop af
	ld [hli], a
	ld a, $1
	ld [hli], a ; cursor y
	ld [hli], a ; cursor x
	xor a
	ld [hli], a ; off char
	ld [hli], a ; cursor tile
	ld [hli], a ; cursor tile + 1
	ret

Function48725:
;	 ld a, [wd003]
;	 and $f
;	 cp $f
;	 jr nz, .clear_carry
;	 scf
;	 ret
; .clear_carry
;	 and a
;	 ret

	ld a, [wd003]
	bit 0, a
	jr z, .clear_carry
	bit 1, a
	jr z, .clear_carry
	bit 2, a
	jr z, .clear_carry
	bit 3, a
	jr z, .clear_carry
	scf
	ret

.clear_carry
	and a
	ret

Function4873c:
	ld hl, w2DMenuCursorInitY
	ld a, 4
	ld [hli], a
	ld a, 12
	ld [hli], a ; init x
	ld a, 2
	ld [hli], a ; num rows
	ld a, 1
	ld [hli], a ; num cols
	ld [hl], 0 ; flags 1
	set 5, [hl]
	inc hl
	xor a
	ld [hli], a ; flags 2
	ln a, 2, 0
	ld [hli], a ; cursor offsets
	ld a, A_BUTTON
	add B_BUTTON
	ld [hli], a ; joypad filter
	; ld a, [wPlayerGender]
	; xor 1 << PLAYERGENDER_FEMALE_F
	; inc a
	ld a, [wPlayerGender]
	and a
	ld a, 2
	jr nz, .okay_gender

.male
	ld a, 1
.okay_gender
	ld [hli], a ; cursor y
	ld a, $1
	ld [hli], a ; cursor x
	xor a
	ld [hli], a ; off char
	ld [hli], a ; cursor tile
	ld [hli], a ; cursor tile + 1
	ret

Function4876f:
	call Function48283
	hlcoord 1, 16
	ld de, MobileDesc_Age
	call PlaceString
	ld hl, MenuHeader_0x48509
	call LoadMenuHeader
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	hlcoord 10, 5
	lb bc, $1, $8
	call Function48cdc
	call WaitBGMap
	ld a, [wd473]
	and a
	jr z, .asm_487ab
	cp $64
	jr z, .asm_487b2
	hlcoord 12, 5
	ld [hl], $10
	hlcoord 12, 7
	ld [hl], $11
	jr .asm_487b7
.asm_487ab
	hlcoord 12, 5
	ld [hl], $10
	jr .asm_487b7
.asm_487b2
	hlcoord 12, 7
	ld [hl], $11
.asm_487b7
	hlcoord 11, 6
	call Function487ec
	ld c, 10
	call DelayFrames
	ld a, [wd473]
	push af
.asm_487c6
	call JoyTextDelay
	call Function4880e
	jr nc, .asm_487c6
	ld a, $1
	call MenuClickSound
	pop bc
	jr nz, .asm_487da
	ld a, b
	ld [wd473], a
.asm_487da
	ld a, [wd473]
	call ExitMenu
	hlcoord 11, 6
	call Function487ec
	pop af
	ldh [hInMenu], a
	jmp Function4840c

Function487ec:
	push hl
	ld de, wd473
	call Function487ff
	pop hl
rept 4
	inc hl
endr
	ld de, String_4880d
	jmp PlaceString

Function487ff:
	push hl
	ld a, " "
	ld [hli], a
	ld [hl], a
	pop hl
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	jmp PrintNum

String_4880d:
	db "@"

Function4880e:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jmp nz, Function488b9
	ldh a, [hJoyPressed]
	and B_BUTTON
	jmp nz, Function488b4
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .asm_48843
	ld a, [hl]
	and D_DOWN
	jr nz, .asm_48838
	ld a, [hl]
	and D_LEFT
	jr nz, .asm_4884f
	ld a, [hl]
	and D_RIGHT
	jr nz, .asm_4885f
	call DelayFrame
	and a
	ret
.asm_48838
	ld hl, wd473
	ld a, [hl]
	and a
	jr z, .asm_48840
	dec a
.asm_48840
	ld [hl], a
	jr .asm_4886f
.asm_48843
	ld hl, wd473
	ld a, [hl]
	cp $64
	adc 0
	ld [hl], a
	jr .asm_4886f
.asm_4884f
	ld a, [wd473]
	cp $5b
	jr c, .asm_48858
	ld a, $5a
.asm_48858
	add $a
	ld [wd473], a
	jr .asm_4886f
.asm_4885f
	ld a, [wd473]
	cp $a
	jr nc, .asm_48868
	ld a, $a
.asm_48868
	sub $a
	ld [wd473], a
.asm_4886f
	ld a, [wd473]
	and a
	jr z, .asm_48887
	cp $64
	jr z, .asm_48898
	jr z, .asm_488a7
	hlcoord 12, 5
	ld [hl], $10
	hlcoord 12, 7
	ld [hl], $11
	jr .asm_488a7
.asm_48887
	hlcoord 10, 5
	lb bc, $1, $8
	call Function48cdc
	hlcoord 12, 5
	ld [hl], $10
	jr .asm_488a7
.asm_48898
	hlcoord 10, 5
	lb bc, $1, $8
	call Function48cdc
	hlcoord 12, 7
	ld [hl], $11
.asm_488a7
	hlcoord 11, 6
	call Function487ec
	call WaitBGMap
	ld a, $1
	and a
	ret

Function488b4:
	xor a
	and a
	scf
	ret

Function488b9:
	ld a, [wd003]
	set 1, a
	ld [wd003], a
	scf
	ret

MobileUpArrowGFX:
INCBIN "gfx/mobile/up_arrow.1bpp"

MobileDownArrowGFX:
INCBIN "gfx/mobile/down_arrow.1bpp"

Function488d3:
	call Function48283
	hlcoord 1, 16
	ld de, MobileDesc_ZipCode
	call PlaceString
	call Function48a3a
	jmp c, Function4840c
	ld hl, MenuHeader_0x4850e
	call LoadMenuHeader
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	hlcoord 10, 9
	lb bc, $1, $8
	call Function48cdc
	ld a, [wd475]
	and $f
	ld d, $0
	hlcoord 11, 10
	call Function489ea
	call WaitBGMap
	ld a, [wd475]
	ld b, a
	ld a, [wd476]
	ld c, a
	ld a, [wd477]
	ld d, a
	ld a, [wd478]
	ld e, a
	push de
	push bc
	ld d, $0
	ld b, $0

asm_48922:
	push bc
	call JoyTextDelay
	ldh a, [hJoyDown]
	and a
	jr z, Function4896e
	bit 0, a
	jr nz, Function4896e
	bit 1, a
	jr nz, Function4896e
	ld a, [wd002]
	and %11001111
	res 7, a
	ld [wd002], a
	pop bc
	inc b
	ld a, b
	cp $5
	push bc
	jr c, .asm_4894c
	pop bc
	ld b, $4
	push bc
.asm_4894c
	pop bc
	push bc
	ld a, b
	cp $4
	jr nz, asm_48972
	ld c, 10
	call DelayFrames
	jr asm_48972

.asm_48965
	ldh a, [hJoyLast]
	and a
	jr z, asm_48972

	pop bc
	ld b, $1
	push bc

Function4896e:
	pop bc
	ld b, $0
	push bc

asm_48972:
	call Function48ab5
	push af
	cp $f0
	jr z, .asm_48994
	cp $f
	jr nz, .asm_48988
	ld a, [wd002]
	set 7, a
	and $cf
	ld [wd002], a
.asm_48988
	hlcoord 11, 10
	ld b, $0
	ld c, d
	add hl, bc
	ld b, $3
	call Function48c11
.asm_48994
	call WaitBGMap
	pop af
	pop bc
	jr nc, asm_48922
	jr nz, .asm_489b1
	pop bc
	ld a, b
	ld [wd475], a
	ld a, c
	ld [wd476], a
	pop bc
	ld a, b
	ld [wd477], a
	ld a, c
	ld [wd478], a
	jr .asm_489c5
.asm_489b1
	push af
	ld a, [wd479]
	set 0, a
	ld [wd479], a
	ld a, [wd003]
	set 3, a
	ld [wd003], a
	pop af
	pop bc
	pop bc
.asm_489c5
	push af
	push bc
	push de
	push hl
	ld a, $1
	call MenuClickSound
	pop hl
	pop de
	pop bc
	pop af
	call ExitMenu
	hlcoord 11, 10
	call Function489ea
	hlcoord 11, 9
	lb bc, 1, 8
	call ClearBox
	pop af
	ldh [hInMenu], a
	jmp Function4840c

Function489ea:
	push de
	ld a, [wd475]
	and $f
	call Mobile12_Bin2Dec
	ld a, [wd476]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd476]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	inc hl
	ld de, String_48a38
	call PlaceString
	ld a, [wd477]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd477]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd478]
	and $f0
	swap a
	inc hl
	call Mobile12_Bin2Dec
	ld a, [wd478]
	and $f
	inc hl
	call Mobile12_Bin2Dec
	pop de
	ret

String_48a38:
	db "-@"

Function48a3a:
	ld hl, MenuHeader_0x48a9c
	call LoadMenuHeader
	call Function4873c
	ld a, $a
	ld [w2DMenuCursorInitY], a
	ld a, $b
	ld [w2DMenuCursorInitX], a
	ld a, $1
	ld [wMenuCursorY], a
	hlcoord 10, 8
	lb bc, $4, $8
	call Function48cdc
	hlcoord 12, 10
	ld de, String_48aa1
	call PlaceString
	call StaticMenuJoypad
	push af
	call PlayClickSFX
	call ExitMenu
	pop af
	bit 1, a
	jr nz, Function48a9a
	ld a, [wMenuCursorY]
	cp $1
	jr z, .asm_48a98
	ld a, [wd003]
	set 3, a
	ld [wd003], a
	ld a, [wd479]
	res 0, a
	ld [wd479], a
	xor a
	ld bc, $4
	ld hl, wd475
	call ByteFill
	jr Function48a9a
.asm_48a98
	and a
	ret

Function48a9a:
	scf
	ret

MenuHeader_0x48a9c:
	db MENU_BACKUP_TILES ; flags
	menu_coords 10, 8, SCREEN_WIDTH - 1, 13

String_48aa1:
	db   "Tell Now"
	next "Tell Later@"

Function48ab5:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jmp nz, Function48c0f
	ldh a, [hJoyPressed]
	and B_BUTTON
	jmp nz, Function48c0d
	ld a, d
	and a
	jr z, .asm_48adf
	cp $1
	jr z, .asm_48ae7
	cp $2
	jr z, .asm_48af1
	cp $3
	jr z, .asm_48af9
	cp $4
	jr z, .asm_48b03
	cp $5
	jr z, .asm_48b0b
	cp $6
	jr .asm_48b15
.asm_48adf
	ld hl, wd475
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48ae7
	ld hl, wd476
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48af1
	ld hl, wd476
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48af9
	ld hl, wd477
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48b03
	ld hl, wd477
	ld a, [hl]
	and $f
	jr .asm_48b1d
.asm_48b0b
	ld hl, wd478
	ld a, [hl]
	swap a
	or $f0
	jr .asm_48b1d
.asm_48b15
	ld hl, wd478
	ld a, [hl]
	and $f
.asm_48b1d
	push hl
	push af
	ld e, $0
	hlcoord 11, 10
	ld a, d
.asm_48b25
	and a
	jr z, .asm_48b2c
	inc e
	dec a
	jr .asm_48b25
.asm_48b2c
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .asm_48b8d
	ld a, [hl]
	and D_DOWN
	jr nz, .asm_48b55
	ld a, [hl]
	and D_LEFT
	jmp nz, Function48bd7
	ld a, [hl]
	and D_RIGHT
	jr nz, .asm_48b9d
	hlcoord 11, 10
	call Function489ea
	ld a, [wd002]
	bit 7, a
	jr nz, .asm_48b51
.asm_48b51
	pop bc
	pop bc
	and a
	ret
.asm_48b55
	pop af
	ld b, a
	and $f
	and a
	ld a, b
	jr nz, .asm_48b61
	and $f0
	add $a
.asm_48b61
	dec a
.asm_48b62
	push de
	push af
	hlcoord 10, 9
	lb bc, $1, $8
	call Function48cdc
	pop af
	pop de
	hlcoord 11, 10
	ld b, a
	ld a, d
	cp $3
	jr c, .asm_48b7a
	inc hl
.asm_48b7a
	ld a, b
	pop hl
	bit 7, a
	jr z, .asm_48b85
	call Function48c4d
	jr .asm_48b88
.asm_48b85
	call Function48c5a
.asm_48b88
	ld a, $f0
	jr Function48c00
.asm_48b8d
	pop af
	ld b, a
	and $f
	cp $9
	ld a, b
	jr c, .asm_48b9a
	and $f0
	add $ff
.asm_48b9a
	inc a
	jr .asm_48b62
.asm_48b9d
	push de
	hlcoord 10, 9
	lb bc, $1, $8
	call Function48cdc
	pop de
	ld a, d
	cp $6
	jr nc, .asm_48baf
	inc d
.asm_48baf
	pop af
	pop hl
	ld b, a
	ld a, d
	cp $6
	ld a, b
	jr z, .asm_48bc4
	bit 7, a
	jr nz, .asm_48bc4
	inc hl
	ld a, [hl]
	swap a
	and $f
	jr asm_48bc7
.asm_48bc4
	ld a, [hl]
	and $f

asm_48bc7:
	hlcoord 11, 10
	push af
	ld a, d
	cp $3
	pop bc
	ld a, b
	jr c, .asm_48bd3
	inc hl
.asm_48bd3
	ld a, $f
	jr Function48c00

Function48bd7:
	push de
	hlcoord 10, 9
	lb bc, $1, $8
	call Function48cdc
	pop de
	ld a, d
	and a
	pop af
	pop hl
	ld b, a
	ld a, d
	and a
	ld a, b
	jr z, .asm_48bf3
	bit 7, a
	jr z, .asm_48bf8
	dec d
	dec hl
.asm_48bf3
	ld a, [hl]
	and $f
	jr asm_48bc7
.asm_48bf8
	dec d
	ld a, [hl]
	swap a
	and $f
	jr asm_48bc7

Function48c00:
	push af
	hlcoord 11, 10
	call Function489ea
	ld a, $1
	and a
	pop bc
	ld a, b
	ret

Function48c0d:
	xor a
	and a

Function48c0f:
	scf
	ret

Function48c11:
	ld a, [wd002]
	bit 7, a
	jr z, .asm_48c20
	ld a, d
	cp $3
	jr c, .asm_48c1e
	inc hl
.asm_48c1e
	ld [hl], $7f
.asm_48c20
	ld a, [wd002]
	swap a
	and $3
	inc a
	cp b
	jr nz, .asm_48c40
	ld a, [wd002]
	bit 7, a
	jr z, .asm_48c3a
	res 7, a
	ld [wd002], a
	xor a
	jr .asm_48c40
.asm_48c3a
	set 7, a
	ld [wd002], a
	xor a
.asm_48c40
	swap a
	ld b, a
	ld a, [wd002]
	and $cf
	or b
	ld [wd002], a
	ret

Function48c4d:
	swap a
	and $f0
	push af
	ld a, [hl]
	and $f
	ld [hl], a
	pop af
	or [hl]
	ld [hl], a
	ret

Function48c5a:
	push af
	ld a, [hl]
	and $f0
	ld [hl], a
	pop af
	or [hl]
	ld [hl], a
	ret

Function48c63:
	ld a, "@"
	ld [de], a
	ld a, c
	cp $30
	jr nc, .asm_48c8c
	and a
	jr z, .asm_48c8c
	dec c
	push de
	ld h, d
	ld l, e
	ld a, "@"
	ld b, 7
.asm_48c76
	ld [hli], a
	dec b
	jr nz, .asm_48c76
	ld hl, Prefectures
	ld a, c
	call GetNthString
.asm_48c81
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	cp "@"
	jr nz, .asm_48c81
	and a
	pop de
	ret

.asm_48c8c
	scf
	ret

Function48cda:
	ld h, d
	ld l, e

Function48cdc:
	push bc
	push hl
	call Function48cfd
	pop hl
	pop bc
	ld de, wAttrmap - wTilemap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	xor a
.asm_48ced
	push bc
	push hl
.asm_48cef
	ld [hli], a
	dec c
	jr nz, .asm_48cef
	pop hl
	ld de, $14
	add hl, de
	pop bc
	dec b
	jr nz, .asm_48ced
	ret

Function48cfd:
	push hl
	ld a, $4
	ld [hli], a
	inc a
	call Function48d2a
	inc a
	ld [hl], a
	pop hl
	ld de, $14
	add hl, de
.asm_48d0c
	push hl
	ld a, $7
	ld [hli], a
	ld a, $7f
	call Function48d2a
	ld [hl], $8
	pop hl
	ld de, $14
	add hl, de
	dec b
	jr nz, .asm_48d0c
	ld a, $9
	ld [hli], a
	ld a, $a
	call Function48d2a
	ld [hl], $b
	ret

Function48d2a:
	ld d, c
.asm_48d2b
	ld [hli], a
	dec d
	jr nz, .asm_48d2b
	ret

Function48d30:
	ld hl, wd475
	call Function48d4a
	ld hl, wd477
	jr Function48d4a

Function48d3d:
	ld hl, wd475
	call Function48d94
	ld hl, wd477
	jr Function48d94

Function48d4a:
	inc hl
	ld a, [hl]
	ld b, a
	and $f
	ld c, a
	srl b
	srl b
	srl b
	srl b
	push bc
	ld c, 10
	ld a, b
	call SimpleMultiply
	pop bc
	add c
	ld [hld], a
	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	swap a
	and $f
	ld c, 10
	call SimpleMultiply
	ld b, a
	ld a, [hli]
	and $f
	add b
	ldh [hMultiplicand + 2], a
	ld a, 100
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 2]
	ld b, a
	ldh a, [hProduct + 3]
	ld c, a
	ld e, [hl]
	add e
	ld c, a
	adc b
	sub c
	ld b, a
	ld a, c
	ld [hld], a
	ld [hl], b
	ret

Function48d94:
	xor a
	ldh [hDividend + 0], a
	ldh [hDividend + 1], a
	ld a, [hli]
	ldh [hDividend + 0], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld a, 100
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hRemainder]
	ld c, 10
	call SimpleDivide
	sla b
	sla b
	sla b
	sla b
	or b
	ld [hld], a
	ldh a, [hQuotient + 3]
	ld c, 10
	call SimpleDivide
	sla b
	sla b
	sla b
	sla b
	or b
	ld [hl], a
	ret

MobilePhoneTilesGFX:
INCBIN "gfx/mobile/phone_tiles.2bpp"

MobileCheckOwnMonAnywhere:
; Like CheckOwnMonAnywhere, but only checks for species.
; OT/ID don't matter.

; inputs:
; [wScriptVar] should contain the species we're looking for.

; outputs:
; sets carry if monster matches species.

	; If there are no monsters in the party,
	; the player must not own any yet.

	ld a, [wPartyCount]
	and a
	ret z

	ld d, a
	ld e, 0
	ld hl, wPartyMon1Species
	ld bc, wPartyMonOTs

	; Run .CheckMatch on each Pokémon in the party.

.partymon
	call .CheckMatch
	ret c

	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .AdvanceOTName
	dec d
	jr nz, .partymon

	; Run .CheckMatch on each Pokémon in the PC.

	ld a, BANK(sBoxCount)
	call OpenSRAM
	ld a, [sBoxCount]
	and a
	jr z, .boxes

	ld d, a
	ld hl, sBoxMon1Species
	ld bc, sBoxMonOTs
.openboxmon
	call .CheckMatch

	jmp c, CloseSRAM

; .loop
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .AdvanceOTName
	dec d
	jr nz, .openboxmon

	; Run .CheckMatch on each monster in the other 13 PC boxes.

.boxes
	call CloseSRAM

	ld c, 0
	ld a, [wScriptVar]
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
.box
	; Don't search the current box again.
	ld a, [wCurBox]
	and $f
	cp c
	jr z, .loopbox

	; Load the box.

	ld hl, .BoxAddresses
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; Number of monsters in the box

	ld b, MONS_PER_BOX
.box_search_loop
	ld a, [hli]
	cp e
	ld a, [hli]
	jr nz, .next_box_mon
	cp d
	jr z, .found_in_box
.next_box_mon
	dec b
	jr nz, .box_search_loop

.loopbox
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .box

	call CloseSRAM
	and a
	ret

.found_in_box
	call CloseSRAM
	scf
	ret

.CheckMatch:
	; Check if a Pokémon is of a specific species.
	; We compare the species we are looking for in
	; [wScriptVar] to the species we have in [hl].
	; Sets carry flag if species matches.

	push bc
	push hl
	push de
	ld d, b
	ld e, c

	; check species

	ld a, [wScriptVar]
	ld b, [hl]
	cp b
	jr z, .match

; .no_match
	pop de
	pop hl
	pop bc
	and a
	ret

.match
	pop de
	pop hl
	pop bc
	scf
	ret

.BoxAddresses:
	table_width 3, MobileCheckOwnMonAnywhere.BoxAddresses
for n, 1, NUM_BOXES + 1
	dba sBox{d:n}PokemonIndexes
endr
	assert_table_length NUM_BOXES

.AdvanceOTName:
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret

UnusedFindItemInPCOrBag:
	ld a, [wScriptVar]
	ld [wCurItem], a
	ld hl, wNumPCItems
	call CheckItem
	jr c, .found

	ld a, [wScriptVar]
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr c, .found

	xor a
	ld [wScriptVar], a
	ret

.found
	ld a, 1
	ld [wScriptVar], a
	ret

Function4a94e:
	call FadeToMenu
	ld a, -1
	ld hl, wd002
	ld bc, 3
	call ByteFill
	xor a
	ld [wd018], a
	ld [wd019], a
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	call SetPalettes
	call Function4aa22
	jr c, .asm_4a985
	jr z, .asm_4a9a1
	jr .asm_4a97b

.asm_4a974
	call Function4aa25
	jr c, .asm_4a985
	jr z, .asm_4a9a1

.asm_4a97b
	call Function4ac58
	ld hl, wd019
	res 1, [hl]
	jr .asm_4a974

.asm_4a985
	ld a, [wd018]
	and a
	jr nz, .asm_4a990
	call Function4aba8
	jr c, .asm_4a974

.asm_4a990
	call CloseSubmenu
	ld hl, wd002
	ld a, -1
	ld bc, 3
	call ByteFill
	scf
	jr .asm_4a9af

.asm_4a9a1
	call Function4a9c3
	jr c, .asm_4a9b0
	call Function4a9d7
	jr c, .asm_4a974
	call CloseSubmenu
	and a

.asm_4a9af
	ret

.asm_4a9b0
	ld de, SFX_WRONG
	call PlaySFX
	ld hl, MobilePickThreeMonForBattleText
	call PrintText
	jr .asm_4a974

MobilePickThreeMonForBattleText:
	text_far _MobilePickThreeMonForBattleText
	text_end

Function4a9c3:
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	inc hl
	cp [hl]
	jr z, .asm_4a9d5
	and a
	ret

.asm_4a9d5
	scf
	ret

Function4a9d7:
	ld a, [wd002]
	ld hl, wPartyMonNicknames
	call GetNickname
	ld h, d
	ld l, e
	ld de, wMobileParticipant1Nickname
	ld bc, NAME_LENGTH_JAPANESE
	call CopyBytes
	ld a, [wd003]
	ld hl, wPartyMonNicknames
	call GetNickname
	ld h, d
	ld l, e
	ld de, wMobileParticipant2Nickname
	ld bc, NAME_LENGTH_JAPANESE
	call CopyBytes
	ld a, [wd004]
	ld hl, wPartyMonNicknames
	call GetNickname
	ld h, d
	ld l, e
	ld de, wMobileParticipant3Nickname
	ld bc, NAME_LENGTH_JAPANESE
	call CopyBytes
	ld hl, MobileUseTheseThreeMonText
	call PrintText
	jmp YesNoBox

MobileUseTheseThreeMonText:
	text_far _MobileUseTheseThreeMonText
	text_end

Function4aa22:
	call ClearBGPalettes

Function4aa25:
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	call Function4aad3

Function4aa34:
	ld a, PARTYMENUACTION_MOBILE
	ld [wPartyMenuActionText], a
	farcall WritePartyMenuTilemap
	xor a
	ld [wPartyMenuActionText], a
	farcall PrintPartyMenuText
	call Function4aab6
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	call Function4ab1a
	jr z, .asm_4aa66
	push af
	call Function4aafb
	jr c, .asm_4aa67
	call Function4ab06
	jr c, .asm_4aa67
	pop af

.asm_4aa66
	ret

.asm_4aa67
	ld hl, wd019
	set 1, [hl]
	pop af
	ret

Function4aa7a:
	ld hl, wd002
	ld d, $3
.loop
	ld e, PARTY_LENGTH
	ld a, [hli]
	push de
	push hl
	cp -1
	jr z, .done
	ld hl, wSpriteAnimationStructs
	inc a
	ld d, a
.inner_loop
	ld a, [hl]
	and a
	jr z, .next
	cp d
	jr z, .same_as_d
	jr .next

	ld a, $3
	jr .proceed

.same_as_d
	ld a, $2

.proceed
	push hl
	ld c, l
	ld b, h
	ld hl, $2
	add hl, bc
	ld [hl], a
	pop hl

.next
	ld bc, $10
	add hl, bc
	dec e
	jr nz, .inner_loop
	pop hl
	pop de
	dec d
	jr nz, .loop
	jr .finished

.done
	pop hl
	pop de

.finished
	ret

Function4aab6:
	ld hl, wd002
	ld d, $3
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	push de
	push hl
	hlcoord 0, 1
	ld bc, $28
	call AddNTimes
	ld [hl], $ec
	pop hl
	pop de
	dec d
	jr nz, .loop

.done
	ret

Function4aad3:
	ld hl, wPartyCount
	ld a, [hli]
	and a
	ret z ; Nothing in your party

	ld c, a
	xor a
	ldh [hObjectStructIndex], a
.loop
	push bc
	push hl
	ld e, MONICON_PARTYMENU
	farcall LoadMenuMonIcon
	ldh a, [hObjectStructIndex]
	inc a
	ldh [hObjectStructIndex], a
	pop hl
	pop bc
	dec c
	jr nz, .loop

	call Function4aa7a
	farcall PlaySpriteAnimations
	ret

Function4aafb:
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg
	and a
	ret

.egg
	scf
	ret

Function4ab06:
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1HP
	call AddNTimes
	ld a, [hli]
	ld b, a
	ld a, [hl]
	or b
	jr nz, .NotFainted
	scf

.NotFainted:
	ret

Function4ab1a:
.asm_4ab1a
	ld a, $fb
	ld [wMenuJoypadFilter], a
	ld a, $26
	ld [w2DMenuCursorOffsets], a
	ld a, $2
	ld [w2DMenuNumCols], a
	call Function4adf7
	call StaticMenuJoypad
	call Function4abc3
	jr c, .asm_4ab1a
	push af
	call Function4ab99
	call nc, PlaceHollowCursor
	pop af
	bit 1, a
	jr nz, .asm_4ab6d
	ld a, [wPartyCount]
	inc a
	ld b, a
	ld a, [wMenuCursorY]
	ld [wPartyMenuCursor], a
	cp b
	jr z, .asm_4ab7e
	ld a, [wMenuCursorY]
	dec a
	ld [wCurPartyMon], a
	ld c, a
	ld b, 0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	ld a, $1
	and a
	ret

.asm_4ab6d
	ld a, [wMenuCursorY]
	ld [wPartyMenuCursor], a
.asm_4ab73
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	scf
	ret

.asm_4ab7e
	ld a, $1
	ld [wd018], a
	ld a, [wMenuCursorX]
	cp $2
	jr z, .asm_4ab73
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	xor a
	ld [wd018], a
	and a
	ret

Function4ab99:
	bit 1, a
	jr z, .asm_4aba6
	ld a, [wd002]
	cp $ff
	jr z, .asm_4aba6
	scf
	ret

.asm_4aba6
	and a
	ret

Function4aba8:
	ld hl, wd004
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	dec hl
	ld a, [hl]
	cp $ff
	jr nz, .asm_4abbe
	and a
	ret

.asm_4abbe
	ld [hl], $ff
	scf
	ret

Function4abc3:
	bit 3, a
	jr z, .asm_4abd5
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr .asm_4ac29

.asm_4abd5
	bit 6, a
	jr z, .asm_4abeb
	ld a, [wMenuCursorY]
	ld [wMenuCursorY], a
	and a
	jr nz, .asm_4ac29
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	jr .asm_4ac29

.asm_4abeb
	bit 7, a
	jr z, .asm_4ac08
	ld a, [wMenuCursorY]
	ld [wMenuCursorY], a
	ld a, [wPartyCount]
	inc a
	inc a
	ld b, a
	ld a, [wMenuCursorY]
	cp b
	jr nz, .asm_4ac29
	ld a, $1
	ld [wMenuCursorY], a
	jr .asm_4ac29

.asm_4ac08
	bit 4, a
	jr nz, .asm_4ac10
	bit 5, a
	jr z, .asm_4ac56

.asm_4ac10
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wPartyCount]
	inc a
	cp b
	jr nz, .asm_4ac29
	ld a, [wMenuCursorX]
	cp $1
	jr z, .asm_4ac26
	ld a, $1
	jr .asm_4ac29

.asm_4ac26
	ld [wMenuCursorX], a

.asm_4ac29
	hlcoord 0, 1
	lb bc, 13, 1
	call ClearBox
	call Function4aab6
	ld a, [wPartyCount]
	hlcoord 6, 1
.asm_4ac3b
	ld bc, $28
	add hl, bc
	dec a
	jr nz, .asm_4ac3b
	ld [hl], $7f
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wPartyCount]
	inc a
	cp b
	jr z, .asm_4ac54
	ld a, $1
	ld [wMenuCursorX], a

.asm_4ac54
	scf
	ret

.asm_4ac56
	and a
	ret

Function4ac58:
	lb bc, 2, 18
	hlcoord 1, 15
	call ClearBox
	farcall FreezeMonIcons
	ld hl, MenuHeader_0x4aca2
	call LoadMenuHeader
	ld hl, wd019
	bit 1, [hl]
	jr z, .asm_4ac89
	hlcoord 11, 13
	lb bc, $3, $7
	call Textbox
	hlcoord 13, 14
	ld de, String_4ada7
	call PlaceString
	jr .asm_4ac96

.asm_4ac89
	hlcoord 11, 9
	lb bc, $7, $7
	call Textbox
	call Function4ad68

.asm_4ac96
	ld a, $1
	ldh [hBGMapMode], a
	call Function4acaa
	call ExitMenu
	and a
	ret

MenuHeader_0x4aca2:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 9, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw NULL
	db 1 ; default option

Function4acaa:
.asm_4acaa
	ld a, $a0
	ld [wMenuDataFlags], a
	ld a, [wd019]
	bit 1, a
	jr z, .asm_4acc2
	ld a, $2
	ld [wMenuDataItems], a
	ld a, $c
	ld [wMenuBorderTopCoord], a
	jr .asm_4accc

.asm_4acc2
	ld a, $4
	ld [wMenuDataItems], a
	ld a, $8
	ld [wMenuBorderTopCoord], a

.asm_4accc
	ld a, $b
	ld [wMenuBorderLeftCoord], a
	ld a, $1
	ld [wMenuCursorPosition], a
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	call StaticMenuJoypad
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	ldh a, [hJoyPressed]
	bit 0, a
	jr nz, .asm_4acf4
	bit 1, a
	jr z, .asm_4acaa

.asm_4acf3
	ret

.asm_4acf4
	ld a, [wd019]
	bit 1, a
	jr nz, .asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad17
	cp $2
	jr z, Function4ad56
	cp $3
	jr z, Function4ad60
	; jr .asm_4acf3

.asm_4ad0e
	ld a, [wMenuCursorY]
	cp $1
	jr z, Function4ad56
	; jr .asm_4acf3

Function4ad17:
	call Function4adb2
	jr z, .asm_4ad4a
	ld hl, wd002
	ld a, $ff
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	inc hl
	cp [hl]
	jr z, .asm_4ad39
	ld de, SFX_WRONG
	call WaitPlaySFX
	ld hl, MobileOnlyThreeMonMayEnterText
	jmp PrintText

.asm_4ad39
	ld a, [wCurPartyMon]
	ld [hl], a
	call Function4a9c3
	ret c
	ld a, [wd019]
	set 0, a
	ld [wd019], a
	ret

.asm_4ad4a
	ld [hl], $ff
	jr Function4adc2

MobileOnlyThreeMonMayEnterText:
	text_far _MobileOnlyThreeMonMayEnterText
	text_end

Function4ad56:
	farcall OpenPartyStats
	jmp WaitBGMap2

Function4ad60:
	farcall ManagePokemonMoves
	ret

Function4ad68:
	hlcoord 13, 12
	ld de, String_4ad88
	call PlaceString
	call Function4adb2
	jr c, .asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ada0
	jr .asm_4ad84

.asm_4ad7e
	hlcoord 13, 10
	ld de, String_4ad9a

.asm_4ad84
	jmp PlaceString

String_4ad88:
	db   "つよさをみる"
	next "つかえるわざ"
	next "もどる@"

String_4ad9a:
	db   "さんかする@"

String_4ada0:
	db   "さんかしない@"

String_4ada7:
	db   "つよさをみる"
	next "もどる@" ; BACK

Function4adb2:
	ld hl, wd002
	ld a, [wCurPartyMon]
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	inc hl
	cp [hl]
	ret z
	scf
	ret

Function4adc2:
	ld a, [wd002]
	cp $ff
	jr nz, .skip
	ld a, [wd003]
	cp $ff
	jr nz, .skip2
	ld a, [wd004]
	ld [wd002], a
	ld a, $ff
	ld [wd004], a
	jr .skip

.skip2
	ld [wd002], a
	ld a, $ff
	ld [wd003], a

.skip
	ld a, [wd003]
	cp $ff
	ret nz
	ld b, a
	ld a, [wd004]
	ld [wd003], a
	ld a, b
	ld [wd004], a
	ret

Function4adf7:
	ld a, [wd019]
	bit 0, a
	ret z
	ld a, [wPartyCount]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	ld a, [wd019]
	res 0, a
	ld [wd019], a
	ret
