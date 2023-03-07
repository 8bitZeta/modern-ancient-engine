	db 0 ; 366 DEX NO

	db  35, 64, 85,  32,  74,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 255 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/clamperl/front.dimensions"
	db SHELL_ARMOR, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm
	; end
