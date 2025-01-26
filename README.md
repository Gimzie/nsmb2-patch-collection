# nsmb2-patch-collection
A collection of publicly available code patches for New Super Mario Bros. 2, for use in custom levels.

These patches were not created by me, except for the up/down skewer patch. Credits go to @RicBent for the rest of them.

All patches are created for the US Gold (0004000000137E00) version of the game, but IPS patches for all regions are provided on the Releases page. These patches are best used with [this CoinKiller fork](https://github.com/Gimzie/CoinKiller/releases), which supports features like Layer 0 and additional visualizations for sprites.

# Usage

1) Dump the `code.bin` and `exheader.bin` from your ROM. You can do this using [CTRTool](https://github.com/3DSGuy/Project_CTR/releases?q=ctrtool&expanded=true).
- An example command is: `ctrtool.exe --exheader=out/exheader.bin --exefsdir=out <your ROM file here>` (after making a folder named `out`)
2) Download the patch for your ROM's region from the [releases page](https://github.com/Gimzie/nsmb2-patch-collection/releases). Make sure to download both IPS patches.
3) Using [ROM Patcher JS](https://www.marcrobledo.com/RomPatcher.js/) or similar, patch your `code.bin` and `exheader.bin` with the corresponding IPS patches you downloaded for your region.
4) Place the patched `code.bin` and `exheader.bin` files in the game's mods directory for Citra, or under `luma/titles/<TitleID>` for Luma3DS. Replace `<TitleID>` with the correct one from the table below:

```
NSMB2 Standard Edition:
EUR - 000400000007AF00
USA - 000400000007AE00
JPN - 000400000007AD00
KOR - 00040000000B8900

NSMB2 Gold Edition:
USA - 0004000000137E00

NSMB2 Special Edition:
EUR - 0004000000137F00
JPN - 0000400000137D00
```

NOTE: More regions will be supported in the future, and I will look into directly being able to load IPS patches on Citra/Luma3DS instead of having to patch manually. The current method is simply to get this out there for the time being. Also, any players of your mod will need a patched copy of the game as well.

# Compiling

NOTE: Compiling at the moment only works on Linux (and maybe macOS).

1) Compile (or download) [Magikoopa](https://github.com/RicBent/Magikoopa).
2) Clone this repository.
3) Download a standalone version of the [GNU Arm Embedded Toolchain](https://developer.arm.com/downloads/-/gnu-rm), and unzip it inside this repository. You should have a `gcc-arm-none-eabi` folder next to the `source`, `loader`, etc. folders.
4) Copy your game's `code.bin` and `exheader.bin` into this directory as well.
5) Open Magikoopa, and set the working directory to the respository folder (containing your `code.bin`).
6) Press "Make and Insert". Your code files will now be patched, and a backup of the originals will be kept in `bak`.

# List of Patches
- *romfs2sdmc* - Reads game data from a folder on the SD Card named `nsmb2`. Can be used to reload levels without having to restart the game for filesize changes.
- *Layer 0 Restored* - Restores Layer 0 functionality. Does not have a spotlight effect like in NSMBWii/U, and does not appear on top of the player.
- *Up/Down Skewers Restored* - Restores up/down skewers, which replace sprites 37 and 131, both unused in the base game.
- *Tri-platform Collision Fix* - Fixes the incorrect collision on the small spinning lift.
- *+ Clock in non-Coin Rush* - Allow using the + Clocks in normal gameplay with a setting
