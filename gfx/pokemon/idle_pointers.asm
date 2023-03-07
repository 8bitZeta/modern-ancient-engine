AnimationIdlePointers::
    indirect_table 2, 1
    indirect_entries MEW, KantoAnimationIdlePointers
    indirect_entries CELEBI, JohtoAnimationIdlePointers
    indirect_entries DEOXYS, HoennAnimationIdlePointers
    indirect_entries ARCEUS, SinnohAnimationIdlePointers
    indirect_entries NUM_POKEMON, OtherAnimationIdlePointers
    indirect_table_end

INCLUDE "gfx/pokemon/idle_kanto.asm"
INCLUDE "gfx/pokemon/idle_johto.asm"
INCLUDE "gfx/pokemon/idle_hoenn.asm"
INCLUDE "gfx/pokemon/idle_sinnoh.asm"
INCLUDE "gfx/pokemon/idle_other.asm"

EggAnimationIdle:        INCLUDE "gfx/pokemon/egg/anim_idle.asm"
