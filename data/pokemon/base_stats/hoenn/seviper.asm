	db 0 ; 336 DEX NO

	db  73, 100,  60,  65,  100,  60
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/seviper/front.dimensions"
	db SHED_SKIN, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
