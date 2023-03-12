	db 0 ; 291 DEX NO

	db  61, 90,  45,  160,  50,   50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 120 ; catch rate
	db 155 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/ninjask/front.dimensions"
	db SPEED_BOOST, SPEED_BOOST ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_ERRATIC ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
