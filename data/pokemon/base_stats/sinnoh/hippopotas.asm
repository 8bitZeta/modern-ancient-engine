	db 0 ; 449 DEX NO

	db  68,  72,  78,  32,  38,  42
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 140 ; catch rate
	db 95 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/hippopotas/front.dimensions"
	db SAND_STREAM, SAND_STREAM ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
