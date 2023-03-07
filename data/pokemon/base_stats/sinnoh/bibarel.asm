	db 0 ; 400 DEX NO

	db  79,  85,  60,  71,  55,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, WATER ; type
	db 127 ; catch rate
	db 116 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/bibarel/front.dimensions"
	db SIMPLE, UNAWARE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
