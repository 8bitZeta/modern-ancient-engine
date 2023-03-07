	db 0 ; 315 DEX NO

	db  50, 60,  45,  65,  100,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 150 ; catch rate
	db 152 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/roselia/front.dimensions"
	db NATURAL_CURE, POISON_POINT ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm
	; end
