	db 0 ; 331 DEX NO

	db  50, 85,  40,  35,  85,  40
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190 ; catch rate
	db 97 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/cacnea/front.dimensions"
	db SAND_VEIL, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
