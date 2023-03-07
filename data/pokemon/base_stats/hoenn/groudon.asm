	db 0 ; 383 DEX NO

	db  100, 150, 140,  90,  100,  90
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 3 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/groudon/front.dimensions"
	db DROUGHT, DROUGHT ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
