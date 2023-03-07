	db 0 ; 292 DEX NO

	db  1, 90,  45,  40,  30,   30
	;   hp  atk  def  spd  sat  sdf

	db BUG, GHOST ; type
	db 45 ; catch rate
	db 95 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/shedinja/front.dimensions"
	db WONDER_GUARD, WONDER_GUARD ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_ERRATIC ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm
	; end
