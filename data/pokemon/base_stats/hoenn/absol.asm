	db 0 ; 359 DEX NO

	db  65, 130, 60,  75,  75,  60
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 30 ; catch rate
	db 174 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/absol/front.dimensions"
	db SUPER_LUCK, PRESSURE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
