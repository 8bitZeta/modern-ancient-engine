	db 0 ; 425 DEX NO

	db  90,  50,  34,  70,  60,  44
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 125 ; catch rate
	db 127 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/drifloon/front.dimensions"
	db UNBURDEN, AFTERMATH ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
