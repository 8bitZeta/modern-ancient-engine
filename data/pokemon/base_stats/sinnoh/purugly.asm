	db 0 ; 432 DEX NO

	db  71,  82,  64,  112,  64,  59
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 75 ; catch rate
	db 183 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/purugly/front.dimensions"
	db OWN_TEMPO, THICK_FAT ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
