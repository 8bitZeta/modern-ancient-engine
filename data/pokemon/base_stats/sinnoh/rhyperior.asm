	db 0 ; 464 DEX NO

	db  115,  140,  130,  40,  55,  55
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 241 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/rhyperior/front.dimensions"
	db LIGHTNING_ROD, SOLID_ROCK ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
