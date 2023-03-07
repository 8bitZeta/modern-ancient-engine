	db 0 ; 316 DEX NO

	db  70, 43,  53,  40,  43,  53
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 225 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/gulpin/front.dimensions"
	db LIQUID_OOZE, STICKY_HOLD ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
