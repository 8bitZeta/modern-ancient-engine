SECTION "Other Frames", ROMX

OtherFramePointers:
	dw SylveonFrames
	dw RegielekiFrames
	dw RegidragoFrames
.IndirectEnd::

SylveonFrames:       INCLUDE "gfx/pokemon/other/sylveon/frames.asm"
RegielekiFrames:     INCLUDE "gfx/pokemon/other/regieleki/frames.asm"
RegidragoFrames:     INCLUDE "gfx/pokemon/other/regidrago/frames.asm"
