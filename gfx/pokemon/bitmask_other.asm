SECTION "Other Bitmasks", ROMX

OtherBitmaskPointers:
	dw SylveonBitmasks
	dw RegielekiBitmasks
	dw RegidragoBitmasks
.IndirectEnd::

SylveonBitmasks:       INCLUDE "gfx/pokemon/other/sylveon/bitmask.asm"
RegielekiBitmasks:     INCLUDE "gfx/pokemon/other/regieleki/bitmask.asm"
RegidragoBitmasks:     INCLUDE "gfx/pokemon/other/regidrago/bitmask.asm"
