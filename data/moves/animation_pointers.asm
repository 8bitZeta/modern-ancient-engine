BattleAnimations::
	indirect_table 2, 0
	indirect_entries BEAT_UP, MoveAnimations1
	indirect_entries DEFOG, MoveAnimations2
	indirect_entries NUM_ATTACKS, MoveAnimations3
	indirect_entries SPECIAL_ANIM_OFFSET - NUM_SPECIAL_ANIMS - 1
	indirect_entries SPECIAL_ANIM_OFFSET - 1, SpecialAnimations
	indirect_table_end


INCLUDE "data/moves/animations_1.asm"
INCLUDE "data/moves/animations_2.asm"
INCLUDE "data/moves/animations_3.asm"
INCLUDE "data/moves/special_animations.asm"