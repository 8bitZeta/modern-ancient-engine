	db 0 ; 329 DEX NO

	db  50, 70,  50,  70,  50,  50
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 120 ; catch rate
	db 126 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/vibrava/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
