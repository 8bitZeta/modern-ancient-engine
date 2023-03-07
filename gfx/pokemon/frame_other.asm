SECTION "Other Frames", ROMX

OtherFramePointers:
	dba SylveonFrames
	dba RegielekiFrames
	dba RegidragoFrames
.IndirectEnd::

SylveonFrames:       INCLUDE "gfx/pokemon/other/sylveon/frames.asm"
RegielekiFrames:     INCLUDE "gfx/pokemon/other/regieleki/frames.asm"
RegidragoFrames:     INCLUDE "gfx/pokemon/other/regidrago/frames.asm"
