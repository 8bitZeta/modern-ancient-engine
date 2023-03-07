	db 0 ; 368 DEX NO

	db  55, 84, 105,  52,  114,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/gorebyss/front.dimensions"
	db SWIFT_SWIM, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm
	; end
