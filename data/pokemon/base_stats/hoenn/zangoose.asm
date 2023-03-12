	db 0 ; 335 DEX NO

	db  73, 115,  60,  90,  60,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/zangoose/front.dimensions"
	db IMMUNITY, IMMUNITY ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_ERRATIC ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
