AnimationPointers::
    indirect_table 2, 1
    indirect_entries MEW, AnimationPointers1
    indirect_entries CELEBI, AnimationPointers2
    indirect_entries NUM_POKEMON, AnimationPointers3
    indirect_table_end

INCLUDE "gfx/pokemon/anim_kanto.asm"
INCLUDE "gfx/pokemon/anim_johto.asm"
INCLUDE "gfx/pokemon/anim_new.asm"

EggAnimation:        INCLUDE "gfx/pokemon/egg/anim.asm"
