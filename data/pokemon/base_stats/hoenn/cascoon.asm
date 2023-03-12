	db 0 ; 268 DEX NO

	db  50, 35,  55,  15,  25,   25
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 120 ; catch rate
	db 72 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/cascoon/front.dimensions"
	db SHED_SKIN, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
