BattleAnimations::
	indirect_table 2, 0
	indirect_entries BEAT_UP, MoveAnimations1
	indirect_entries NUM_ATTACKS, MoveAnimations2
	indirect_entries SPECIAL_ANIM_OFFSET - NUM_SPECIAL_ANIMS - 1
	indirect_entries SPECIAL_ANIM_OFFSET - 1, SpecialAnimations
	indirect_table_end


INCLUDE "data/moves/animations.asm"
INCLUDE "data/moves/animations_new.asm"
INCLUDE "data/moves/special_animations.asm"