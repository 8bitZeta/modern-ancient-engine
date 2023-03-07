AnimationPointers::
    indirect_table 2, 1
    indirect_entries MEW, KantoAnimationPointers
    indirect_entries CELEBI, JohtoAnimationPointers
    indirect_entries DEOXYS, HoennAnimationPointers
    indirect_entries ARCEUS, SinnohAnimationPointers
    indirect_entries NUM_POKEMON, OtherAnimationPointers
    indirect_entries UNOWN_OFFSET, UnownAnimationPointers
    indirect_table_end

INCLUDE "gfx/pokemon/anim_kanto.asm"
INCLUDE "gfx/pokemon/anim_johto.asm"
INCLUDE "gfx/pokemon/anim_hoenn.asm"
INCLUDE "gfx/pokemon/anim_sinnoh.asm"
INCLUDE "gfx/pokemon/anim_other.asm"
INCLUDE "gfx/pokemon/anim_unown.asm"

EggAnimation:        INCLUDE "gfx/pokemon/egg/anim.asm"
