# nsmb2-patch-collection
A collection of publicly available code patches for New Super Mario Bros. 2, for use in custom levels.

These patches were not created by me, except for the up/down skewer patch. Credits go to @RicBent for the rest of them.

All patches are created for the US Gold (0004000000137E00) version of the game, but IPS patches for all regions are provided on the Releases page.

# Compiling

NOTE: Compiling at the moment only works on Linux (and maybe macOS).

1) Compile (or download) [Magikoopa](https://github.com/RicBent/Magikoopa).
2) Clone this repository.
3) Download a standalone version of the [GNU Arm Embedded Toolchain](https://developer.arm.com/downloads/-/gnu-rm), and unzip it inside this repository. You should have a `gcc-arm-none-eabi` folder next to the `source`, `loader`, etc. folders.
4) Copy your game's `code.bin` and `exheader.bin` into this directory as well.
5) Open Magikoopa, and set the working directory to the respository folder (containing your `code.bin`).
6) Press "Make and Insert". Your code files will now be patched, and a backup of the originals will be kept in `bak`.
