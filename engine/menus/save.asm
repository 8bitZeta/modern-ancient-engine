SaveMenu:
	call LoadStandardMenuHeader
	farcall DisplaySaveInfoOnSave
	call SpeechTextbox
	call UpdateSprites
	farcall SaveMenu_CopyTilemapAtOnce
	ld hl, WouldYouLikeToSaveTheGameText
	call SaveTheGame_yesorno
	jr nz, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	call ExitMenu
	and a
	ret

.refused
	call ExitMenu
	farcall SaveMenu_CopyTilemapAtOnce
	scf
	ret

SaveAfterLinkTrade:
	call PauseGameLogic
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	farcall BackupPartyMonMail
	farcall SaveRTC
	jmp ResumeGameLogic

ChangeBoxSaveGame:
	push de
	ld hl, ChangeBoxSaveText
	call MenuTextbox
	call YesNoBox
	call ExitMenu
	jr c, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	call LoadBox
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret
.refused
	pop de
	ret

Link_SaveGame:
	call AskOverwriteSaveFile
	ret c
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret

MoveMonWOMail_SaveGame:
	call PauseGameLogic
	push de
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	call LoadBox
	jr ResumeGameLogic

MoveMonWOMail_InsertMon_SaveGame:
	call PauseGameLogic
	push de
	call SaveBox
	pop de
	ld a, e
	ld [wCurBox], a
	ld a, TRUE
	ld [wSaveFileExists], a
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	farcall BackupPartyMonMail
	farcall BackupMobileEventIndex
	farcall SaveRTC
	call LoadBox
	call ResumeGameLogic
	ld de, SFX_SAVE
	jmp PlaySFX

StartMoveMonWOMail_SaveGame:
	ld hl, MoveMonWOMailSaveText
	call MenuTextbox
	call YesNoBox
	call ExitMenu
	jr c, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret

.refused
	scf
	ret

PauseGameLogic:
	ld a, TRUE
	ld [wGameLogicPaused], a
	ret

ResumeGameLogic:
	xor a ; FALSE
	ld [wGameLogicPaused], a
	ret

AddHallOfFameEntry:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame + HOF_LENGTH * (NUM_HOF_TEAMS - 1) - 1
	ld de, sHallOfFame + HOF_LENGTH * NUM_HOF_TEAMS - 1
	ld bc, HOF_LENGTH * (NUM_HOF_TEAMS - 1)
.loop
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ld hl, wHallOfFamePokemonList
	ld de, sHallOfFame
	ld bc, HOF_LENGTH
	call CopyBytes
	jmp CloseSRAM

AskOverwriteSaveFile:
	ld a, [wSaveFileExists]
	and a
	jr z, .erase
	call CompareLoadedAndSavedPlayerID
	ret z
	ld hl, AnotherSaveFileText
	call SaveTheGame_yesorno
	jr nz, .refused

.erase
	call ErasePreviousSave
	and a
	ret

.refused
	scf
	ret

SaveTheGame_yesorno:
	ld b, BANK(WouldYouLikeToSaveTheGameText)
	call MapTextbox
	call LoadMenuTextbox
	lb bc, 0, 7
	call PlaceYesNoBox
	ld a, [wMenuCursorY]
	dec a
	call CloseWindow
	and a
	ret

CompareLoadedAndSavedPlayerID:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + (wPlayerID - wPlayerData)
	ld a, [hli]
	ld c, [hl]
	ld b, a
	call CloseSRAM
	ld a, [wPlayerID]
	cp b
	ret nz
	ld a, [wPlayerID + 1]
	cp c
	ret

SavedTheGame:
	ld hl, wOptions
	set NO_TEXT_SCROLL, [hl]
	push hl
	ld hl, .saving_text
	call PrintText
	pop hl
	res NO_TEXT_SCROLL, [hl]
	call SaveGameData
	; <PLAYER> saved the game!
	ld hl, SavedTheGameText
	call PrintText
	ld de, SFX_SAVE
	call WaitPlaySFX
	jmp WaitSFX

.saving_text
	text "Saving…"
	done

SaveGameData:
	ld a, TRUE
	ld [wSaveFileExists], a
	farcall StageRTCTimeForSave
	farcall BackupMysteryGift
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveBox
	call SaveChecksum
	farcall BackupPartyMonMail
	farcall BackupMobileEventIndex
	farcall SaveRTC
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .ok
	xor a
	ld [sBattleTowerChallengeState], a
.ok
	jmp CloseSRAM

ErasePreviousSave:
	call EraseBoxes
	call EraseHallOfFame
	call EraseLinkBattleStats
	call EraseMysteryGift
	call EraseBattleTowerStatus
	ld a, 1
	ld [wSavedAtLeastOnce], a
	ret

EraseLinkBattleStats:
	ld a, BANK(sLinkBattleStats)
	call OpenSRAM
	ld hl, sLinkBattleStats
	ld bc, sLinkBattleStatsEnd - sLinkBattleStats
	xor a
	call ByteFill
	jmp CloseSRAM

EraseMysteryGift:
	ld a, BANK(sBackupMysteryGiftItem)
	call OpenSRAM
	ld hl, sBackupMysteryGiftItem
	ld bc, sBackupMysteryGiftItemEnd - sBackupMysteryGiftItem
	xor a
	call ByteFill
	jmp CloseSRAM

EraseHallOfFame:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame
	ld bc, sHallOfFameEnd - sHallOfFame
	xor a
	call ByteFill
	jmp CloseSRAM

EraseBattleTowerStatus:
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	xor a
	ld [sBattleTowerChallengeState], a
	jmp CloseSRAM

HallOfFame_InitSaveIfNeeded:
	ld a, [wSavedAtLeastOnce]
	and a
	ret nz
	jr ErasePreviousSave

ValidateSave:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, SAVE_CHECK_VALUE_1
	ld [sCheckValue1], a
	ld a, SAVE_CHECK_VALUE_2
	ld [sCheckValue2], a
	jmp CloseSRAM

SaveOptions:
	ld a, BANK(sOptions)
	call OpenSRAM
	ld hl, wOptions
	ld de, sOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	ld a, [wOptions]
	and ~(1 << NO_TEXT_SCROLL)
	ld [sOptions], a
	jmp CloseSRAM

SavePlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, wPlayerData
	ld de, sPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, wCurMapData
	ld de, sCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	jmp CloseSRAM

SavePokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, wPokemonData
	ld de, sPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	jmp CloseSRAM

SaveIndexTables:
	; saving is already a long operation, so take the chance to GC the table
	farcall ForceGarbageCollection
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, wPokemonIndexTable
	ld de, sPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, wMoveIndexTable
	ld de, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

SaveBox:
	call GetBoxAddress
	push de
	push af
	call SaveBoxAddress
	pop af
	call OpenSRAM
	pop hl
	call ComputeSavedBoxIndexTable
	call GetBoxPokemonIndexesAddress
	call OpenSRAM
	ld d, h
	ld e, l
	ld hl, wBoxPartialData
	ld bc, 2 * MONS_PER_BOX
	call CopyBytes
	call GetBoxAddress
	ld b, a
	ld c, 0
	farcall BillsPC_ConvertBoxData
	jmp CloseSRAM

SaveChecksum:
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	ld a, BANK(sSaveData)
	call OpenSRAM
	ld hl, sConversionTableChecksum
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	call Checksum
	ld a, e
	ld [sChecksum + 0], a
	ld a, d
	ld [sChecksum + 1], a
	jmp CloseSRAM

TryLoadSaveFile:
	call VerifyChecksum
	jr nz, .corrupt
	call LoadPlayerData
	call LoadPokemonData
	call LoadIndexTables
	call LoadBox
	farcall RestorePartyMonMail
	farcall RestoreMobileEventIndex
	farcall RestoreMysteryGift
	and a
	ret

.corrupt
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	ld hl, SaveFileCorruptedText
	call PrintText
	pop af
	ld [wOptions], a
	scf
	ret

TryLoadSaveData:
	xor a ; FALSE
	ld [wSaveFileExists], a
	call CheckPrimarySaveFile
	ld a, [wSaveFileExists]
	and a
	jr z, .corrupt

	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + wStartDay - wPlayerData
	ld de, wStartDay
	ld bc, 8
	call CopyBytes
	ld hl, sPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	jmp CloseSRAM

.corrupt
	ld hl, DefaultOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	jmp ClearClock

INCLUDE "data/default_options.asm"

CheckPrimarySaveFile:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, [sCheckValue1]
	cp SAVE_CHECK_VALUE_1
	jr nz, .nope
	ld a, [sCheckValue2]
	cp SAVE_CHECK_VALUE_2
	jr nz, .nope
	ld hl, sOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	call CopyBytes
	call CloseSRAM
	ld a, TRUE
	ld [wSaveFileExists], a

.nope
	jmp CloseSRAM

LoadPlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData
	ld de, wPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	call CopyBytes
	ld hl, sCurMapData
	ld de, wCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .not_4
	ld a, BATTLETOWER_WON_CHALLENGE
	ld [sBattleTowerChallengeState], a
.not_4
	jmp CloseSRAM

LoadPokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, sPokemonData
	ld de, wPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	call CopyBytes
	jmp CloseSRAM

LoadIndexTables:
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, sPokemonIndexTable
	ld de, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	call CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld de, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

LoadBox:
	call GetBoxAddress
	call LoadBoxAddress
	lb bc, BANK(sBox), 1
	ld de, sBox
	farcall BillsPC_ConvertBoxData
	call GetBoxPokemonIndexesAddress
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, 2 * MONS_PER_BOX
	call CopyBytes
	ld a, BANK(sBox)
	call OpenSRAM
	call ClearIndexesForLoadedBox
	; GC the table now that lots of entries are free
	farcall ForceGarbageCollection
	call UpdateIndexesForLoadedBox
	jmp CloseSRAM

VerifyChecksum:
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	ld a, BANK(sSaveData)
	call OpenSRAM
	call Checksum
	ld a, [sChecksum + 0]
	cp e
	jr nz, .fail
	ld a, [sChecksum + 1]
	cp d
	jr nz, .fail
	ld hl, sConversionTableChecksum
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	pop hl
	ld a, d
	cp h
	jr nz, .fail
	ld a, e
	cp l
.fail
	push af
	call CloseSRAM
	pop af
	ret

GetBoxAddress:
	ld a, [wCurBox]
	cp NUM_BOXES
	jr c, .ok
	xor a
	ld [wCurBox], a

.ok
	ld e, a
	ld d, 0
	ld hl, BoxAddresses
rept 5
	add hl, de
endr
	ld a, [hli]
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ret

GetBoxPokemonIndexesAddress:
	ld a, [wCurBox]
	ld e, a
	ld d, 0
	ld hl, BoxAddresses + 5 * NUM_BOXES
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ret

SaveBoxAddress:
; Save box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sBox.
	push hl
; Load the first part of the active box.
	push af
	push de
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop de
	pop af
; Save it to the target box.
	push af
	push de
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM

; Load the second part of the active box.
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox + (wBoxPartialDataEnd - wBoxPartialData)
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop de
	pop af

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h
; Save it to the next part of the target box.
	push af
	push de
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM

; Load the third and final part of the active box.
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld de, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM
	pop de
	pop af

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h
; Save it to the final part of the target box.
	call OpenSRAM
	ld hl, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM

	pop hl
	ret

ComputeSavedBoxIndexTable:
	push hl
	ld a, [hl]
	ld de, wBoxPartialData
	and a
	jr z, .empty_box
	cp MONS_PER_BOX
	jr c, .valid_count
	ld a, MONS_PER_BOX
.valid_count
	ld bc, sBoxMons - sBox
	add hl, bc
	ld [wTempLoopCounter], a
	ld c, BOXMON_STRUCT_LENGTH
.loop
	ld a, [hl]
	add hl, bc
	push hl
	call GetPokemonIndexFromID
	ld a, l
	ld [de], a
	inc de
	ld a, h
	ld [de], a
	inc de
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop
.empty_box
	pop hl
	ld a, MONS_PER_BOX
	sub [hl]
	ret c
	add a
	ld h, d
	ld l, e
	ld c, a
	xor a
	ld b, a
	jmp ByteFill

LoadBoxAddress:
; Load box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sBox.
	push hl
	ld l, e
	ld h, d
; Load part 1
	push af
	push hl
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop hl
	pop af

	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
; Load part 2
	push af
	push hl
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox + (wBoxPartialDataEnd - wBoxPartialData)
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyBytes
	call CloseSRAM
	pop hl
	pop af
; Load part 3
	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	call OpenSRAM
	ld de, wBoxPartialData
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM
	ld a, BANK(sBox)
	call OpenSRAM
	ld hl, wBoxPartialData
	ld de, sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld bc, sBoxEnd - (sBox + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyBytes
	call CloseSRAM

	pop hl
	ret

ClearIndexesForLoadedBox:
	ld hl, sBoxMon1Species
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, MONS_PER_BOX
.loop
	ld [hl], 0
	add hl, bc
	dec a
	jr nz, .loop
	ret

UpdateIndexesForLoadedBox:
	ld de, sBox
	ld a, [de]
	cp MONS_PER_BOX
	jr c, .count_OK
	ld a, MONS_PER_BOX
	ld [de], a
.count_OK
	inc de
	and a
	jr z, .done
	ld [wTempLoopCounter], a
	ld bc, sBoxMon1Species
	ld hl, wBoxPartialData - 1
.loop
	inc hl
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	ld [bc], a
	ld a, [de]
	cp EGG
	jr z, .is_egg
	ld a, [bc]
	ld [de], a
.is_egg
	ld hl, BOXMON_STRUCT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	inc de
	ld hl, wTempLoopCounter
	dec [hl]
	pop hl
	jr nz, .loop
.done
	ld a, -1
	ld [de], a
	ret

EraseBoxes:
	ld hl, BoxAddresses
	ld c, NUM_BOXES
.next
	push bc
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	xor a
	ld [de], a
	inc de
	ld a, -1
	ld [de], a
	inc de
	ld bc, sBoxEnd - (sBox + 2)
.clear
	xor a
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .clear
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, -1
	ld [de], a
	inc de
	xor a
	ld [de], a
	call CloseSRAM
	pop bc
	dec c
	jr nz, .next
	ld e, NUM_BOXES
.index_loop
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld b, a
	ld a, [hli]
	push hl
	ld h, a
	ld l, b
	xor a
	ld bc, 2 * MONS_PER_BOX
	call ByteFill
	pop hl
	dec e
	jr nz, .index_loop
	ret

BoxAddresses:
	table_width 5, BoxAddresses
for n, 1, NUM_BOXES + 1
	db BANK(sBox{d:n}) ; aka BANK(sBox{d:n}End)
	dw sBox{d:n}, sBox{d:n}End
endr
	assert_table_length NUM_BOXES

	; index addresses
BoxIndexAddresses:
	table_width 3, BoxIndexAddresses
	dba sBox1PokemonIndexes
	dba sBox2PokemonIndexes
	dba sBox3PokemonIndexes
	dba sBox4PokemonIndexes
	dba sBox5PokemonIndexes
	dba sBox6PokemonIndexes
	dba sBox7PokemonIndexes
	dba sBox8PokemonIndexes
	dba sBox9PokemonIndexes
	dba sBox10PokemonIndexes
	dba sBox11PokemonIndexes
	dba sBox12PokemonIndexes
	dba sBox13PokemonIndexes
	dba sBox14PokemonIndexes
	assert_table_length NUM_BOXES

Checksum:
	ld de, 0
.loop
	ld a, [hli]
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

WouldYouLikeToSaveTheGameText:
	text_far _WouldYouLikeToSaveTheGameText
	text_end

SavedTheGameText:
	text_far _SavedTheGameText
	text_end

AnotherSaveFileText:
	text_far _AnotherSaveFileText
	text_end

SaveFileCorruptedText:
	text_far _SaveFileCorruptedText
	text_end

ChangeBoxSaveText:
	text_far _ChangeBoxSaveText
	text_end

MoveMonWOMailSaveText:
	text_far _MoveMonWOMailSaveText
	text_end
