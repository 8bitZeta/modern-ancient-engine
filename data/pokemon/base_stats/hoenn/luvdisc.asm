	db 0 ; 370 DEX NO

	db  43, 30, 55,  97,  40,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 110 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/luvdisc/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm
	; end
