	db 0 ; 351 DEX NO

	db  70, 70, 70,  70,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 145 ; base exp
	db MYSTIC_WATER, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/castform/front.dimensions"
	db FORECAST, FORECAST ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
