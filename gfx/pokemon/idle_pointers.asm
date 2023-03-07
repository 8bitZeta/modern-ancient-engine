AnimationIdlePointers::
    indirect_table 2, 1
    indirect_entries MEW, AnimationIdlePointers1
    indirect_entries CELEBI, AnimationIdlePointers2
    indirect_entries NUM_POKEMON, AnimationIdlePointers3
    indirect_table_end

INCLUDE "gfx/pokemon/idle_kanto.asm"
INCLUDE "gfx/pokemon/idle_johto.asm"
INCLUDE "gfx/pokemon/idle_new.asm"

EggAnimationIdle:        INCLUDE "gfx/pokemon/egg/anim_idle.asm"
