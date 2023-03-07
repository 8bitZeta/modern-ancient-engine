	db 0 ; 493 DEX NO BASE FORM

	db  120, 120, 120,  120,  120,  120
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/arceus/front.dimensions"
	db MULTITYPE, MULTITYPE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
