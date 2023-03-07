	db 0 ; 485 DEX NO

	db  91, 90, 106,  77,  130,  106
	;   hp  atk  def  spd  sat  sdf

	db FIRE, STEEL ; type
	db 3 ; catch rate
	db 215 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/heatran/front.dimensions"
	db FLASH_FIRE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
