	db 0 ; 475 DEX NO

	db  68,  125,  65,  80,  65,  115
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FIGHTING ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sinnoh/gallade/front.dimensions"
	db STEADFAST, STEADFAST ; wBaseAbility1, wBaseAbility2
	db 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
