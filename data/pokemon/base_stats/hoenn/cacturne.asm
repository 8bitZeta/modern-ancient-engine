	db 0 ; 332 DEX NO

	db  70, 115,  60,  55,  115,  60
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 60 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/cacturne/front.dimensions"
	db SAND_VEIL, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
