; Eggs are negative now
INCBIN "gfx/pokemon/egg/front.gbcpal", middle_colors
INCLUDE "gfx/pokemon/egg/shiny.pal"

; -2
	RGB 30, 26, 11
	RGB 23, 16, 00
; -2 shiny
	RGB 30, 26, 11
	RGB 23, 16, 00

; -1
	RGB 23, 23, 23
	RGB 17, 17, 17
; -1 shiny
	RGB 23, 23, 23
	RGB 17, 17, 17

PokemonPalettes:
; entries correspond to Pokémon species, two apiece

; Each front.gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.
; Shiny palettes are defined directly, not generated.

	; 2 middle palettes, front and shiny, with 2 colors each
	table_width PAL_COLOR_SIZE * 2 * 2, PokemonPalettes

; 000
	RGB 30, 22, 17
	RGB 16, 14, 19
; 000 shiny
	RGB 30, 22, 17
	RGB 16, 14, 19

	INCBIN "gfx/pokemon/bulbasaur/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/bulbasaur/shiny.pal"
	INCBIN "gfx/pokemon/ivysaur/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ivysaur/shiny.pal"
	INCBIN "gfx/pokemon/venusaur/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/venusaur/shiny.pal"
	INCBIN "gfx/pokemon/charmander/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/charmander/shiny.pal"
	INCBIN "gfx/pokemon/charmeleon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/charmeleon/shiny.pal"
	INCBIN "gfx/pokemon/charizard/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/charizard/shiny.pal"
	INCBIN "gfx/pokemon/squirtle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/squirtle/shiny.pal"
	INCBIN "gfx/pokemon/wartortle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/wartortle/shiny.pal"
	INCBIN "gfx/pokemon/blastoise/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/blastoise/shiny.pal"
	INCBIN "gfx/pokemon/caterpie/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/caterpie/shiny.pal"
	INCBIN "gfx/pokemon/metapod/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/metapod/shiny.pal"
	INCBIN "gfx/pokemon/butterfree/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/butterfree/shiny.pal"
	INCBIN "gfx/pokemon/weedle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/weedle/shiny.pal"
	INCBIN "gfx/pokemon/kakuna/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kakuna/shiny.pal"
	INCBIN "gfx/pokemon/beedrill/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/beedrill/shiny.pal"
	INCBIN "gfx/pokemon/pidgey/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pidgey/shiny.pal"
	INCBIN "gfx/pokemon/pidgeotto/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pidgeotto/shiny.pal"
	INCBIN "gfx/pokemon/pidgeot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pidgeot/shiny.pal"
	INCBIN "gfx/pokemon/rattata/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/rattata/shiny.pal"
	INCBIN "gfx/pokemon/raticate/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/raticate/shiny.pal"
	INCBIN "gfx/pokemon/spearow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/spearow/shiny.pal"
	INCBIN "gfx/pokemon/fearow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/fearow/shiny.pal"
	INCBIN "gfx/pokemon/ekans/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ekans/shiny.pal"
	INCBIN "gfx/pokemon/arbok/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/arbok/shiny.pal"
	INCBIN "gfx/pokemon/pikachu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pikachu/shiny.pal"
	INCBIN "gfx/pokemon/raichu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/raichu/shiny.pal"
	INCBIN "gfx/pokemon/sandshrew/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sandshrew/shiny.pal"
	INCBIN "gfx/pokemon/sandslash/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sandslash/shiny.pal"
	INCBIN "gfx/pokemon/nidoran_f/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidoran_f/shiny.pal"
	INCBIN "gfx/pokemon/nidorina/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidorina/shiny.pal"
	INCBIN "gfx/pokemon/nidoqueen/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidoqueen/shiny.pal"
	INCBIN "gfx/pokemon/nidoran_m/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidoran_m/shiny.pal"
	INCBIN "gfx/pokemon/nidorino/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidorino/shiny.pal"
	INCBIN "gfx/pokemon/nidoking/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/nidoking/shiny.pal"
	INCBIN "gfx/pokemon/clefairy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/clefairy/shiny.pal"
	INCBIN "gfx/pokemon/clefable/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/clefable/shiny.pal"
	INCBIN "gfx/pokemon/vulpix/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/vulpix/shiny.pal"
	INCBIN "gfx/pokemon/ninetales/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ninetales/shiny.pal"
	INCBIN "gfx/pokemon/jigglypuff/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/jigglypuff/shiny.pal"
	INCBIN "gfx/pokemon/wigglytuff/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/wigglytuff/shiny.pal"
	INCBIN "gfx/pokemon/zubat/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/zubat/shiny.pal"
	INCBIN "gfx/pokemon/golbat/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/golbat/shiny.pal"
	INCBIN "gfx/pokemon/oddish/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/oddish/shiny.pal"
	INCBIN "gfx/pokemon/gloom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/gloom/shiny.pal"
	INCBIN "gfx/pokemon/vileplume/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/vileplume/shiny.pal"
	INCBIN "gfx/pokemon/paras/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/paras/shiny.pal"
	INCBIN "gfx/pokemon/parasect/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/parasect/shiny.pal"
	INCBIN "gfx/pokemon/venonat/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/venonat/shiny.pal"
	INCBIN "gfx/pokemon/venomoth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/venomoth/shiny.pal"
	INCBIN "gfx/pokemon/diglett/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/diglett/shiny.pal"
	INCBIN "gfx/pokemon/dugtrio/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dugtrio/shiny.pal"
	INCBIN "gfx/pokemon/meowth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/meowth/shiny.pal"
	INCBIN "gfx/pokemon/persian/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/persian/shiny.pal"
	INCBIN "gfx/pokemon/psyduck/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/psyduck/shiny.pal"
	INCBIN "gfx/pokemon/golduck/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/golduck/shiny.pal"
	INCBIN "gfx/pokemon/mankey/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mankey/shiny.pal"
	INCBIN "gfx/pokemon/primeape/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/primeape/shiny.pal"
	INCBIN "gfx/pokemon/growlithe/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/growlithe/shiny.pal"
	INCBIN "gfx/pokemon/arcanine/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/arcanine/shiny.pal"
	INCBIN "gfx/pokemon/poliwag/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/poliwag/shiny.pal"
	INCBIN "gfx/pokemon/poliwhirl/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/poliwhirl/shiny.pal"
	INCBIN "gfx/pokemon/poliwrath/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/poliwrath/shiny.pal"
	INCBIN "gfx/pokemon/abra/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/abra/shiny.pal"
	INCBIN "gfx/pokemon/kadabra/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kadabra/shiny.pal"
	INCBIN "gfx/pokemon/alakazam/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/alakazam/shiny.pal"
	INCBIN "gfx/pokemon/machop/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/machop/shiny.pal"
	INCBIN "gfx/pokemon/machoke/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/machoke/shiny.pal"
	INCBIN "gfx/pokemon/machamp/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/machamp/shiny.pal"
	INCBIN "gfx/pokemon/bellsprout/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/bellsprout/shiny.pal"
	INCBIN "gfx/pokemon/weepinbell/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/weepinbell/shiny.pal"
	INCBIN "gfx/pokemon/victreebel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/victreebel/shiny.pal"
	INCBIN "gfx/pokemon/tentacool/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tentacool/shiny.pal"
	INCBIN "gfx/pokemon/tentacruel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tentacruel/shiny.pal"
	INCBIN "gfx/pokemon/geodude/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/geodude/shiny.pal"
	INCBIN "gfx/pokemon/graveler/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/graveler/shiny.pal"
	INCBIN "gfx/pokemon/golem/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/golem/shiny.pal"
	INCBIN "gfx/pokemon/ponyta/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ponyta/shiny.pal"
	INCBIN "gfx/pokemon/rapidash/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/rapidash/shiny.pal"
	INCBIN "gfx/pokemon/slowpoke/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/slowpoke/shiny.pal"
	INCBIN "gfx/pokemon/slowbro/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/slowbro/shiny.pal"
	INCBIN "gfx/pokemon/magnemite/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magnemite/shiny.pal"
	INCBIN "gfx/pokemon/magneton/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magneton/shiny.pal"
	INCBIN "gfx/pokemon/farfetch_d/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/farfetch_d/shiny.pal"
	INCBIN "gfx/pokemon/doduo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/doduo/shiny.pal"
	INCBIN "gfx/pokemon/dodrio/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dodrio/shiny.pal"
	INCBIN "gfx/pokemon/seel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/seel/shiny.pal"
	INCBIN "gfx/pokemon/dewgong/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dewgong/shiny.pal"
	INCBIN "gfx/pokemon/grimer/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/grimer/shiny.pal"
	INCBIN "gfx/pokemon/muk/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/muk/shiny.pal"
	INCBIN "gfx/pokemon/shellder/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/shellder/shiny.pal"
	INCBIN "gfx/pokemon/cloyster/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/cloyster/shiny.pal"
	INCBIN "gfx/pokemon/gastly/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/gastly/shiny.pal"
	INCBIN "gfx/pokemon/haunter/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/haunter/shiny.pal"
	INCBIN "gfx/pokemon/gengar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/gengar/shiny.pal"
	INCBIN "gfx/pokemon/onix/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/onix/shiny.pal"
	INCBIN "gfx/pokemon/drowzee/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/drowzee/shiny.pal"
	INCBIN "gfx/pokemon/hypno/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hypno/shiny.pal"
	INCBIN "gfx/pokemon/krabby/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/krabby/shiny.pal"
	INCBIN "gfx/pokemon/kingler/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kingler/shiny.pal"
	INCBIN "gfx/pokemon/voltorb/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/voltorb/shiny.pal"
	INCBIN "gfx/pokemon/electrode/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/electrode/shiny.pal"
	INCBIN "gfx/pokemon/exeggcute/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/exeggcute/shiny.pal"
	INCBIN "gfx/pokemon/exeggutor/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/exeggutor/shiny.pal"
	INCBIN "gfx/pokemon/cubone/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/cubone/shiny.pal"
	INCBIN "gfx/pokemon/marowak/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/marowak/shiny.pal"
	INCBIN "gfx/pokemon/hitmonlee/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hitmonlee/shiny.pal"
	INCBIN "gfx/pokemon/hitmonchan/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hitmonchan/shiny.pal"
	INCBIN "gfx/pokemon/lickitung/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/lickitung/shiny.pal"
	INCBIN "gfx/pokemon/koffing/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/koffing/shiny.pal"
	INCBIN "gfx/pokemon/weezing/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/weezing/shiny.pal"
	INCBIN "gfx/pokemon/rhyhorn/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/rhyhorn/shiny.pal"
	INCBIN "gfx/pokemon/rhydon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/rhydon/shiny.pal"
	INCBIN "gfx/pokemon/chansey/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/chansey/shiny.pal"
	INCBIN "gfx/pokemon/tangela/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tangela/shiny.pal"
	INCBIN "gfx/pokemon/kangaskhan/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kangaskhan/shiny.pal"
	INCBIN "gfx/pokemon/horsea/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/horsea/shiny.pal"
	INCBIN "gfx/pokemon/seadra/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/seadra/shiny.pal"
	INCBIN "gfx/pokemon/goldeen/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/goldeen/shiny.pal"
	INCBIN "gfx/pokemon/seaking/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/seaking/shiny.pal"
	INCBIN "gfx/pokemon/staryu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/staryu/shiny.pal"
	INCBIN "gfx/pokemon/starmie/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/starmie/shiny.pal"
	INCBIN "gfx/pokemon/mr__mime/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mr__mime/shiny.pal"
	INCBIN "gfx/pokemon/scyther/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/scyther/shiny.pal"
	INCBIN "gfx/pokemon/jynx/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/jynx/shiny.pal"
	INCBIN "gfx/pokemon/electabuzz/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/electabuzz/shiny.pal"
	INCBIN "gfx/pokemon/magmar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magmar/shiny.pal"
	INCBIN "gfx/pokemon/pinsir/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pinsir/shiny.pal"
	INCBIN "gfx/pokemon/tauros/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tauros/shiny.pal"
	INCBIN "gfx/pokemon/magikarp/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magikarp/shiny.pal"
	INCBIN "gfx/pokemon/gyarados/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/gyarados/shiny.pal"
	INCBIN "gfx/pokemon/lapras/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/lapras/shiny.pal"
	INCBIN "gfx/pokemon/ditto/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ditto/shiny.pal"
	INCBIN "gfx/pokemon/eevee/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/eevee/shiny.pal"
	INCBIN "gfx/pokemon/vaporeon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/vaporeon/shiny.pal"
	INCBIN "gfx/pokemon/jolteon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/jolteon/shiny.pal"
	INCBIN "gfx/pokemon/flareon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/flareon/shiny.pal"
	INCBIN "gfx/pokemon/porygon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/porygon/shiny.pal"
	INCBIN "gfx/pokemon/omanyte/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/omanyte/shiny.pal"
	INCBIN "gfx/pokemon/omastar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/omastar/shiny.pal"
	INCBIN "gfx/pokemon/kabuto/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kabuto/shiny.pal"
	INCBIN "gfx/pokemon/kabutops/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kabutops/shiny.pal"
	INCBIN "gfx/pokemon/aerodactyl/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/aerodactyl/shiny.pal"
	INCBIN "gfx/pokemon/snorlax/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/snorlax/shiny.pal"
	INCBIN "gfx/pokemon/articuno/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/articuno/shiny.pal"
	INCBIN "gfx/pokemon/zapdos/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/zapdos/shiny.pal"
	INCBIN "gfx/pokemon/moltres/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/moltres/shiny.pal"
	INCBIN "gfx/pokemon/dratini/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dratini/shiny.pal"
	INCBIN "gfx/pokemon/dragonair/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dragonair/shiny.pal"
	INCBIN "gfx/pokemon/dragonite/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dragonite/shiny.pal"
	INCBIN "gfx/pokemon/mewtwo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mewtwo/shiny.pal"
	INCBIN "gfx/pokemon/mew/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mew/shiny.pal"
	INCBIN "gfx/pokemon/chikorita/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/chikorita/shiny.pal"
	INCBIN "gfx/pokemon/bayleef/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/bayleef/shiny.pal"
	INCBIN "gfx/pokemon/meganium/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/meganium/shiny.pal"
	INCBIN "gfx/pokemon/cyndaquil/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/cyndaquil/shiny.pal"
	INCBIN "gfx/pokemon/quilava/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/quilava/shiny.pal"
	INCBIN "gfx/pokemon/typhlosion/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/typhlosion/shiny.pal"
	INCBIN "gfx/pokemon/totodile/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/totodile/shiny.pal"
	INCBIN "gfx/pokemon/croconaw/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/croconaw/shiny.pal"
	INCBIN "gfx/pokemon/feraligatr/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/feraligatr/shiny.pal"
	INCBIN "gfx/pokemon/sentret/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sentret/shiny.pal"
	INCBIN "gfx/pokemon/furret/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/furret/shiny.pal"
	INCBIN "gfx/pokemon/hoothoot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoothoot/shiny.pal"
	INCBIN "gfx/pokemon/noctowl/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/noctowl/shiny.pal"
	INCBIN "gfx/pokemon/ledyba/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ledyba/shiny.pal"
	INCBIN "gfx/pokemon/ledian/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ledian/shiny.pal"
	INCBIN "gfx/pokemon/spinarak/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/spinarak/shiny.pal"
	INCBIN "gfx/pokemon/ariados/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ariados/shiny.pal"
	INCBIN "gfx/pokemon/crobat/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/crobat/shiny.pal"
	INCBIN "gfx/pokemon/chinchou/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/chinchou/shiny.pal"
	INCBIN "gfx/pokemon/lanturn/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/lanturn/shiny.pal"
	INCBIN "gfx/pokemon/pichu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pichu/shiny.pal"
	INCBIN "gfx/pokemon/cleffa/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/cleffa/shiny.pal"
	INCBIN "gfx/pokemon/igglybuff/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/igglybuff/shiny.pal"
	INCBIN "gfx/pokemon/togepi/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/togepi/shiny.pal"
	INCBIN "gfx/pokemon/togetic/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/togetic/shiny.pal"
	INCBIN "gfx/pokemon/natu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/natu/shiny.pal"
	INCBIN "gfx/pokemon/xatu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/xatu/shiny.pal"
	INCBIN "gfx/pokemon/mareep/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mareep/shiny.pal"
	INCBIN "gfx/pokemon/flaaffy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/flaaffy/shiny.pal"
	INCBIN "gfx/pokemon/ampharos/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ampharos/shiny.pal"
	INCBIN "gfx/pokemon/bellossom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/bellossom/shiny.pal"
	INCBIN "gfx/pokemon/marill/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/marill/shiny.pal"
	INCBIN "gfx/pokemon/azumarill/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/azumarill/shiny.pal"
	INCBIN "gfx/pokemon/sudowoodo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sudowoodo/shiny.pal"
	INCBIN "gfx/pokemon/politoed/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/politoed/shiny.pal"
	INCBIN "gfx/pokemon/hoppip/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoppip/shiny.pal"
	INCBIN "gfx/pokemon/skiploom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/skiploom/shiny.pal"
	INCBIN "gfx/pokemon/jumpluff/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/jumpluff/shiny.pal"
	INCBIN "gfx/pokemon/aipom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/aipom/shiny.pal"
	INCBIN "gfx/pokemon/sunkern/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sunkern/shiny.pal"
	INCBIN "gfx/pokemon/sunflora/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sunflora/shiny.pal"
	INCBIN "gfx/pokemon/yanma/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/yanma/shiny.pal"
	INCBIN "gfx/pokemon/wooper/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/wooper/shiny.pal"
	INCBIN "gfx/pokemon/quagsire/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/quagsire/shiny.pal"
	INCBIN "gfx/pokemon/espeon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/espeon/shiny.pal"
	INCBIN "gfx/pokemon/umbreon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/umbreon/shiny.pal"
	INCBIN "gfx/pokemon/murkrow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/murkrow/shiny.pal"
	INCBIN "gfx/pokemon/slowking/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/slowking/shiny.pal"
	INCBIN "gfx/pokemon/misdreavus/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/misdreavus/shiny.pal"
	INCLUDE "gfx/pokemon/unown/normal.pal" ; not front.gbcpal
	INCLUDE "gfx/pokemon/unown/shiny.pal"
	INCBIN "gfx/pokemon/wobbuffet/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/wobbuffet/shiny.pal"
	INCBIN "gfx/pokemon/girafarig/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/girafarig/shiny.pal"
	INCBIN "gfx/pokemon/pineco/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pineco/shiny.pal"
	INCBIN "gfx/pokemon/forretress/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/forretress/shiny.pal"
	INCBIN "gfx/pokemon/dunsparce/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/dunsparce/shiny.pal"
	INCBIN "gfx/pokemon/gligar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/gligar/shiny.pal"
	INCBIN "gfx/pokemon/steelix/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/steelix/shiny.pal"
	INCBIN "gfx/pokemon/snubbull/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/snubbull/shiny.pal"
	INCBIN "gfx/pokemon/granbull/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/granbull/shiny.pal"
	INCBIN "gfx/pokemon/qwilfish/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/qwilfish/shiny.pal"
	INCBIN "gfx/pokemon/scizor/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/scizor/shiny.pal"
	INCBIN "gfx/pokemon/shuckle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/shuckle/shiny.pal"
	INCBIN "gfx/pokemon/heracross/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/heracross/shiny.pal"
	INCBIN "gfx/pokemon/sneasel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sneasel/shiny.pal"
	INCBIN "gfx/pokemon/teddiursa/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/teddiursa/shiny.pal"
	INCBIN "gfx/pokemon/ursaring/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ursaring/shiny.pal"
	INCBIN "gfx/pokemon/slugma/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/slugma/shiny.pal"
	INCBIN "gfx/pokemon/magcargo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magcargo/shiny.pal"
	INCBIN "gfx/pokemon/swinub/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/swinub/shiny.pal"
	INCBIN "gfx/pokemon/piloswine/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/piloswine/shiny.pal"
	INCBIN "gfx/pokemon/corsola/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/corsola/shiny.pal"
	INCBIN "gfx/pokemon/remoraid/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/remoraid/shiny.pal"
	INCBIN "gfx/pokemon/octillery/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/octillery/shiny.pal"
	INCBIN "gfx/pokemon/delibird/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/delibird/shiny.pal"
	INCBIN "gfx/pokemon/mantine/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/mantine/shiny.pal"
	INCBIN "gfx/pokemon/skarmory/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/skarmory/shiny.pal"
	INCBIN "gfx/pokemon/houndour/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/houndour/shiny.pal"
	INCBIN "gfx/pokemon/houndoom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/houndoom/shiny.pal"
	INCBIN "gfx/pokemon/kingdra/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/kingdra/shiny.pal"
	INCBIN "gfx/pokemon/phanpy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/phanpy/shiny.pal"
	INCBIN "gfx/pokemon/donphan/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/donphan/shiny.pal"
	INCBIN "gfx/pokemon/porygon2/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/porygon2/shiny.pal"
	INCBIN "gfx/pokemon/stantler/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/stantler/shiny.pal"
	INCBIN "gfx/pokemon/smeargle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/smeargle/shiny.pal"
	INCBIN "gfx/pokemon/tyrogue/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tyrogue/shiny.pal"
	INCBIN "gfx/pokemon/hitmontop/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hitmontop/shiny.pal"
	INCBIN "gfx/pokemon/smoochum/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/smoochum/shiny.pal"
	INCBIN "gfx/pokemon/elekid/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/elekid/shiny.pal"
	INCBIN "gfx/pokemon/magby/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/magby/shiny.pal"
	INCBIN "gfx/pokemon/miltank/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/miltank/shiny.pal"
	INCBIN "gfx/pokemon/blissey/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/blissey/shiny.pal"
	INCBIN "gfx/pokemon/raikou/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/raikou/shiny.pal"
	INCBIN "gfx/pokemon/entei/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/entei/shiny.pal"
	INCBIN "gfx/pokemon/suicune/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/suicune/shiny.pal"
	INCBIN "gfx/pokemon/larvitar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/larvitar/shiny.pal"
	INCBIN "gfx/pokemon/pupitar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/pupitar/shiny.pal"
	INCBIN "gfx/pokemon/tyranitar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/tyranitar/shiny.pal"
	INCBIN "gfx/pokemon/lugia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/lugia/shiny.pal"
	INCBIN "gfx/pokemon/ho_oh/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/ho_oh/shiny.pal"
	INCBIN "gfx/pokemon/celebi/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/celebi/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/treecko/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/treecko/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/grovyle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/grovyle/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/sceptile/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/sceptile/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/torchic/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/torchic/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/combusken/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/combusken/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/blaziken/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/blaziken/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/mudkip/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/mudkip/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/marshtomp/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/marshtomp/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/swampert/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/swampert/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/poochyena/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/poochyena/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/mightyena/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/mightyena/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/zigzagoon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/zigzagoon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/linoone/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/linoone/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/wurmple/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/wurmple/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/silcoon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/silcoon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/beautifly/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/beautifly/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/cascoon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/cascoon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/dustox/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/dustox/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/lotad/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/lotad/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/lombre/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/lombre/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/ludicolo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/ludicolo/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/seedot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/seedot/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/nuzleaf/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/nuzleaf/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/shiftry/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/shiftry/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/taillow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/taillow/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/swellow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/swellow/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/wingull/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/wingull/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/pelipper/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/pelipper/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/ralts/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/ralts/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/kirlia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/kirlia/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/gardevoir/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/gardevoir/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/surskit/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/surskit/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/masquerain/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/masquerain/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/shroomish/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/shroomish/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/breloom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/breloom/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/slakoth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/slakoth/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/vigoroth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/vigoroth/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/slaking/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/slaking/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/nincada/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/nincada/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/ninjask/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/ninjask/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/shedinja/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/shedinja/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/whismur/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/whismur/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/loudred/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/loudred/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/exploud/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/exploud/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/makuhita/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/makuhita/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/hariyama/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/hariyama/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/azurill/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/azurill/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/nosepass/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/nosepass/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/skitty/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/skitty/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/delcatty/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/delcatty/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/sableye/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/sableye/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/mawile/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/mawile/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/aron/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/aron/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/lairon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/lairon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/aggron/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/aggron/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/meditite/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/meditite/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/medicham/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/medicham/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/electrike/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/electrike/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/manectric/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/manectric/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/plusle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/plusle/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/minun/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/minun/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/volbeat/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/volbeat/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/illumise/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/illumise/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/roselia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/roselia/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/gulpin/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/gulpin/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/swalot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/swalot/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/carvanha/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/carvanha/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/sharpedo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/sharpedo/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/wailmer/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/wailmer/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/wailord/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/wailord/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/numel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/numel/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/camerupt/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/camerupt/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/torkoal/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/torkoal/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/spoink/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/spoink/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/grumpig/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/grumpig/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/spinda/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/spinda/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/trapinch/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/trapinch/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/vibrava/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/vibrava/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/flygon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/flygon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/cacnea/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/cacnea/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/cacturne/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/cacturne/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/swablu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/swablu/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/altaria/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/altaria/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/zangoose/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/zangoose/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/seviper/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/seviper/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/lunatone/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/lunatone/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/solrock/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/solrock/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/barboach/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/barboach/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/whiscash/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/whiscash/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/corphish/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/corphish/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/crawdaunt/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/crawdaunt/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/baltoy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/baltoy/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/claydol/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/claydol/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/lileep/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/lileep/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/cradily/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/cradily/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/anorith/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/anorith/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/armaldo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/armaldo/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/feebas/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/feebas/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/milotic/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/milotic/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/castform/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/castform/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/kecleon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/kecleon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/shuppet/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/shuppet/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/banette/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/banette/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/duskull/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/duskull/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/dusclops/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/dusclops/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/tropius/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/tropius/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/chimecho/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/chimecho/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/absol/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/absol/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/wynaut/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/wynaut/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/snorunt/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/snorunt/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/glalie/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/glalie/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/spheal/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/spheal/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/sealeo/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/sealeo/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/walrein/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/walrein/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/clamperl/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/clamperl/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/huntail/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/huntail/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/gorebyss/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/gorebyss/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/relicanth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/relicanth/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/luvdisc/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/luvdisc/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/bagon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/bagon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/shelgon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/shelgon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/salamence/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/salamence/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/beldum/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/beldum/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/metang/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/metang/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/metagross/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/metagross/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/regirock/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/regirock/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/regice/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/regice/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/registeel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/registeel/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/latias/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/latias/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/latios/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/latios/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/kyogre/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/kyogre/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/groudon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/groudon/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/rayquaza/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/rayquaza/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/jirachi/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/jirachi/shiny.pal"
	INCBIN "gfx/pokemon/hoenn/deoxys/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/hoenn/deoxys/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/turtwig/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/turtwig/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/grotle/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/grotle/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/torterra/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/torterra/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/chimchar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/chimchar/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/monferno/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/monferno/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/infernape/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/infernape/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/piplup/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/piplup/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/prinplup/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/prinplup/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/empoleon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/empoleon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/starly/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/starly/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/staravia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/staravia/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/staraptor/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/staraptor/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bidoof/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bidoof/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bibarel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bibarel/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/kricketot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/kricketot/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/kricketune/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/kricketune/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/shinx/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/shinx/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/luxio/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/luxio/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/luxray/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/luxray/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/budew/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/budew/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/roserade/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/roserade/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/cranidos/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/cranidos/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/rampardos/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/rampardos/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/shieldon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/shieldon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bastiodon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bastiodon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/burmy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/burmy/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/wormadam/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/wormadam/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mothim/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mothim/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/combee/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/combee/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/vespiquen/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/vespiquen/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/pachirisu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/pachirisu/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/buizel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/buizel/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/floatzel/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/floatzel/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/cherubi/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/cherubi/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/cherrim/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/cherrim/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/shellos/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/shellos/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/gastrodon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/gastrodon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/ambipom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/ambipom/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/drifloon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/drifloon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/drifblim/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/drifblim/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/buneary/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/buneary/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/lopunny/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/lopunny/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mismagius/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mismagius/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/honchkrow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/honchkrow/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/glameow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/glameow/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/purugly/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/purugly/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/chingling/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/chingling/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/stunky/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/stunky/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/skuntank/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/skuntank/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bronzor/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bronzor/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bronzong/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bronzong/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/bonsly/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/bonsly/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mime_jr/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mime_jr/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/happiny/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/happiny/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/chatot/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/chatot/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/spiritomb/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/spiritomb/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/gible/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/gible/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/gabite/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/gabite/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/garchomp/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/garchomp/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/munchlax/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/munchlax/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/riolu/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/riolu/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/lucario/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/lucario/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/hippopotas/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/hippopotas/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/hippowdon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/hippowdon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/skorupi/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/skorupi/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/drapion/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/drapion/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/croagunk/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/croagunk/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/toxicroak/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/toxicroak/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/carnivine/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/carnivine/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/finneon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/finneon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/lumineon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/lumineon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mantyke/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mantyke/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/snover/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/snover/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/abomasnow/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/abomasnow/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/weavile/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/weavile/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/magnezone/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/magnezone/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/lickilicky/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/lickilicky/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/rhyperior/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/rhyperior/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/tangrowth/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/tangrowth/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/electivire/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/electivire/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/magmortar/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/magmortar/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/togekiss/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/togekiss/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/yanmega/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/yanmega/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/leafeon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/leafeon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/glaceon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/glaceon/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/gliscor/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/gliscor/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mamoswine/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mamoswine/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/porygon_z/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/porygon_z/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/gallade/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/gallade/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/probopass/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/probopass/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/dusknoir/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/dusknoir/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/froslass/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/froslass/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/rotom/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/rotom/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/uxie/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/uxie/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/mesprit/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/mesprit/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/azelf/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/azelf/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/dialga/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/dialga/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/palkia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/palkia/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/heatran/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/heatran/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/regigigas/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/regigigas/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/giratina/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/giratina/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/cresselia/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/cresselia/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/phione/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/phione/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/manaphy/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/manaphy/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/darkrai/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/darkrai/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/shaymin/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/shaymin/shiny.pal"
	INCBIN "gfx/pokemon/sinnoh/arceus/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/sinnoh/arceus/shiny.pal"
	INCBIN "gfx/pokemon/other/sylveon/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/other/sylveon/shiny.pal"
	INCBIN "gfx/pokemon/other/regieleki/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/other/regieleki/shiny.pal"
	INCBIN "gfx/pokemon/other/regidrago/front.gbcpal", middle_colors
	INCLUDE "gfx/pokemon/other/regidrago/shiny.pal"	

	assert_table_length NUM_POKEMON + 1
