	db 0 ; 341 DEX NO

	db  43, 80,  65,  35,  50,  35
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 205 ; catch rate
	db 111 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/corphish/front.dimensions"
	db SHELL_ARMOR, HYPER_CUTTER ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm
	; end
