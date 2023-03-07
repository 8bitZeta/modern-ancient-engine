	db 0 ; 369 DEX NO

	db  100, 90, 130,  55,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 25 ; catch rate
	db 198 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/relicanth/front.dimensions"
	db ROCK_HEAD, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm
	; end
