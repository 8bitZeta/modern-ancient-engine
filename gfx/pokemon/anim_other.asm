SECTION "Other Animations", ROMX

OtherAnimationPointers:
	dw SylveonAnimation
	dw RegielekiAnimation
	dw RegidragoAnimation
.IndirectEnd::

SylveonAnimation:       INCLUDE "gfx/pokemon/other/sylveon/anim.asm"
RegielekiAnimation:     INCLUDE "gfx/pokemon/other/regieleki/anim.asm"
RegidragoAnimation:     INCLUDE "gfx/pokemon/other/regidrago/anim.asm"
