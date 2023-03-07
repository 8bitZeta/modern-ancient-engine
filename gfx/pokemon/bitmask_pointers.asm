BitmasksPointers::
    indirect_table 2, 1
    indirect_entries MEW, KantoBitmaskPointers
    indirect_entries CELEBI, JohtoBitmaskPointers
    indirect_entries DEOXYS, HoennBitmaskPointers
    indirect_entries ARCEUS, SinnohBitmaskPointers
    indirect_entries NUM_POKEMON, OtherBitmaskPointers
    indirect_table_end

INCLUDE "gfx/pokemon/bitmask_kanto.asm"
INCLUDE "gfx/pokemon/bitmask_johto.asm"
INCLUDE "gfx/pokemon/bitmask_hoenn.asm"
INCLUDE "gfx/pokemon/bitmask_sinnoh.asm"
INCLUDE "gfx/pokemon/bitmask_other.asm"

EggBitmasks:        INCLUDE "gfx/pokemon/egg/bitmask.asm"