	db 0 ; 468 DEX NO

	db  85,  50,  95,  80,  120,  115
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sinnoh/togekiss/front.dimensions"
	db SERENE_GRACE, HUSTLE ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end
