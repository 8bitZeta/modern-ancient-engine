	db 0 ; 323 DEX NO

	db  70, 100,  70,  40,  105,  75
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND ; type
	db 150 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/camerupt/front.dimensions"
	db MAGMA_ARMOR, SOLID_ROCK ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
