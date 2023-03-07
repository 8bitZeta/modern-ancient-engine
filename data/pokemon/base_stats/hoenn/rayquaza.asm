	db 0 ; 384 DEX NO

	db  105, 150, 90,  95,  150,  90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hoenn/rayquaza/front.dimensions"
	db AIR_LOCK, AIR_LOCK ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm
	; end
