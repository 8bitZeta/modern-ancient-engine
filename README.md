# 16-bit index expansion for Crystal

This repository contains a modified Pokémon Crystal game, updated to handle 16-bit indexes. The main goal of this
project is to create a reusable system that ROM hacks can use to bring 16-bit indexes into their games.  
It is *not* within scope to create a new game, or to add additional features beyond 16-bit indexes.

The `master` branch of this repository is intended to perform identically to the original Pokémon Crystal, with
minimal changes to support further development on it. Other branches will implement more features on top of it; the
intention is that the necessary changes can be readily seen by comparing said branches to `master` (or between each
other). Therefore, these other branches will never be merged into `master`, even though they will always be directly
descended from it (i.e., in Git terminology, a merge would be a fast-forward).

Since this repository is intended to be used as a reference, the commit history is intentionally kept clean to make
changes clearly visible. Therefore, modifications (such as bug fixes) will often be merged into whichever commit is
more suitable for them, with the remainder of the commit tree rebased on top of the updated commit. **Please do not
fork this repository to build a new game on top** (unless you intend to contribute to it), as the publicly-visible
history will be repeatedly rewritten, making merges impossible. If you do want to contribute to the repository, let
me know in advance so I can notify you of history rewrites.

For further documentation, check out the [wiki].

## Branches

* `master`: (status: **stable**, last update: **2023-07-18**) Base branch. This branch contains a slightly modified
  version of Pokémon Crystal, with some quality-of-life improvements intended to make development easier. These
  improvements have been taken from the documentation in the [main disassembly repository][pokecrystal]. This branch
  contains no 16-bit features and it is only intended as a reference.
* `base-components`: (status: **stable**, last update: **2023-07-18**) This branch defines the basic components that
  will comprise the 16-bit index table system, on top of which the remaining branches will be built. Since it only
  defines macros (and a handful of WRAM locations to be shared by all index tables), it should build the same ROM as
  `master`.
* `expand-mon-ID`: (status: **stable**, last update: **2023-07-18**) This branch implements 16-bit indexes for Pokémon
  species, thus allowing more than 253 species to be included in a single game.
* `expand-move-ID`: (status: **stable**, last update: **2023-07-18**) This branch implements 16-bit indexes for moves,
  on top of the existing 16-bit support for Pokémon species from the previous branch. (Interaction between the
  branches is kept to a minimum, though.)
* `newbox`: (status: **experimental**, last update: **2023-07-18**) This branch ports Rangi & FIQ's "newbox" from
  Polished Crystal. Newbox is a complete overhaul to Bill's PC, and this branch ports the functionality on
  top of the previous branches.
* `pokecrystal`: (status: **N/A**, last update **2023-07-18**) This branch contains pret's vanilla pokecrystal and
  should only be used to compare with the previous branches to view pokecrystal16 changes. **DO NOT USE THIS BRANCH!**

To view the differences between any two branches (or any two commits in the repository), you can use GitHub's [tree
comparison][compare] tool.

## FAQs

Thanks to ax6 and Vulcandth for their awesome work with 16-bit implementations. Code will be used from various creators such as Rangi, FIQ, Pfero.
Updated credits will come later.
