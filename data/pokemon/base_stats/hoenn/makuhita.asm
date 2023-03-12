	db 0 ; 296 DEX NO

	db  72, 60,  30,  25,  20,  30
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 87 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/makuhita/front.dimensions"
	db THICK_FAT, GUTS ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
