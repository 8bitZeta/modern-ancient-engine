	db 0 ; 453 DEX NO

	db  48,  61,  40,  50,  61,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 140 ; catch rate
	db 83 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/croagunk/front.dimensions"
	db DRY_SKIN, ANTICIPATION ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
