UpdateTimeAndPals::
; update time and time-sensitive palettes

; rtc enabled?
	ld a, [wSpriteUpdatesEnabled]
	or a
	ret z

	call UpdateTime

; obj update on?
	ld a, [wVramState]
	bit 0, a ; obj update
	ret z

TimeOfDayPals::
	farjp _TimeOfDayPals

UpdateTimePals::
	farjp _UpdateTimePals
