	db 0 ; 413 DEX NO

	db  60,  59,  85,  36,  79,  105
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 45 ; catch rate
	db 159 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/wormadam/front.dimensions"
	db ANTICIPATION, ANTICIPATION ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
