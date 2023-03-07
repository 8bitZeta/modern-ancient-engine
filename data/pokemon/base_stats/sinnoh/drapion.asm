	db 0 ; 452 DEX NO

	db  70,  90,  110,  95,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 45 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/drapion/front.dimensions"
	db BATTLE_ARMOR, SNIPER ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm
	; end
