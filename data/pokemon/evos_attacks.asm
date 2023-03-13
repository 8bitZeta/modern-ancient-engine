; Evolutions and attacks are grouped together since they're both checked at level-up.

SECTION "Evolutions and Attacks Pointers", ROMX

; How many "parameters" each evolution type has
EvoTypeSizes::
	db 2 ; EVOLVE_LEVEL
	db 3 ; EVOLVE_ITEM
	db 2 ; EVOLVE_TRADE
	db 2 ; EVOLVE_HAPPINESS
	db 3 ; EVOLVE_STAT

; Evos+attacks data structure:
; - Evolution methods:
;    * dbbw EVOLVE_LEVEL, level, species
;    * dbbw EVOLVE_ITEM, used item, species
;    * dbbw EVOLVE_TRADE, held item (or -1 for none), species
;    * dbbw EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * dbbbw EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * dbw level, move
; - db 0 ; no more level-up moves

EvosAttacksPointers::
	indirect_table 2, 1
	indirect_entries MEW, KantoEvosAttacksPointers
	indirect_entries CELEBI, JohtoEvosAttacksPointers
	indirect_entries DEOXYS, HoennEvosAttacksPointers
	indirect_entries ARCEUS, SinnohEvosAttacksPointers
	indirect_entries NUM_POKEMON, OtherEvosAttacksPointers
	indirect_table_end

INCLUDE "data/pokemon/evos_attacks_kanto.asm"
INCLUDE "data/pokemon/evos_attacks_johto.asm"
INCLUDE "data/pokemon/evos_attacks_hoenn.asm"
INCLUDE "data/pokemon/evos_attacks_sinnoh.asm"
INCLUDE "data/pokemon/evos_attacks_other.asm"
