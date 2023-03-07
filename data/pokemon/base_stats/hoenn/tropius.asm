	db 0 ; 357 DEX NO

	db  99, 68, 83,  51,  72,  87
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 200 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/tropius/front.dimensions"
	db CHLOROPHYLL, SOLAR_POWER ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm
	; end
