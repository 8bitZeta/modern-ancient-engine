	db 0 ; 324 DEX NO

	db  70, 85,  140,  20,  85,  70
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 90 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/torkoal/front.dimensions"
	db WHITE_SMOKE, WHITE_SMOKE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
