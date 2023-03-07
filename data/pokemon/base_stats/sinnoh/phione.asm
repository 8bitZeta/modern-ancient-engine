	db 0 ; 489 DEX NO

	db  80, 80, 80,  80,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 30 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/phione/front.dimensions"
	db HYDRATION, HYDRATION ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end
