	db 0 ; 454 DEX NO

	db  83,  106,  65,  85,  86,  65
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 75 ; catch rate
	db 181 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/toxicroak/front.dimensions"
	db DRY_SKIN, ANTICIPATION ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
