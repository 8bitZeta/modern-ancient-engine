	db 0 ; 297 DEX NO

	db  144, 120,  60,  50,  40,  60
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 200 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/hariyama/front.dimensions"
	db THICK_FAT, GUTS ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm
	; end
