	db 0 ; 483 DEX NO

	db  100, 120, 120,  90,  150,  100
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, DRAGON ; type
	db 3 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/dialga/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
