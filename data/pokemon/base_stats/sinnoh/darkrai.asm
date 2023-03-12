	db 0 ; 491 DEX NO

	db  70, 90, 90,  125,  135,  90
	evs  0,   0,   0,   1,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 3 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/darkrai/front.dimensions"
	db BAD_DREAMS, BAD_DREAMS ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
