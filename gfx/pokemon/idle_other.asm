SECTION "Other Idle Animations", ROMX

OtherAnimationIdlePointers:
	dw SylveonAnimationIdle
	dw RegielekiAnimationIdle
	dw RegidragoAnimationIdle
.IndirectEnd::

SylveonAnimationIdle:       INCLUDE "gfx/pokemon/other/sylveon/anim_idle.asm"
RegielekiAnimationIdle:     INCLUDE "gfx/pokemon/other/regieleki/anim_idle.asm"
RegidragoAnimationIdle:     INCLUDE "gfx/pokemon/other/regidrago/anim_idle.asm"
