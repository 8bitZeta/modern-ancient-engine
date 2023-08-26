; Far calls to another bank

MACRO farcall ; bank, address
	rst FarCall
	dbw BANK(\1), \1
	assert !(\1 & $8000), "farcall cannot call things above ROMX"
;	assert warn, BANK(\1) != 0 && BANK(\1) != BANK(@), "unnecessary `farcall \1`"
ENDM

MACRO farjp ; bank, address
	rst FarCall
	dbw BANK(\1), \1 | $8000
	assert !(\1 & $8000), "farjp cannot call things above ROMX"
;	assert warn, BANK(\1) != 0 && BANK(\1) != BANK(@), "unnecessary `farjp \1`"
ENDM

MACRO homecall ; bank, address
	ldh a, [hROMBank]
	push af
	if _NARG == 2
		if STRIN("\2", "[h") == 1 || STRIN("\2", "[r") == 1
			ldh a, \2
		else
			ld a, \2
		endc
	else
		ld a, BANK(\1)
	endc
	rst Bankswitch
	call \1
	pop af
	rst Bankswitch
	if _NARG == 1
;		assert warn, BANK(\1) != 0, "unnecessary `homecall \1`"
	endc
ENDM