	db 0 ; 451 DEX NO

	db  40,  50,  90,  65,  30,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, BUG ; type
	db 120 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/skorupi/front.dimensions"
	db BATTLE_ARMOR, SNIPER ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm
	; end
