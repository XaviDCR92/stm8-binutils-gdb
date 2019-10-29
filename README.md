# stm8-binutils-gdb
## Overview
This repository implements, via some patches, STM8 support for the GNU binutils package.
It has been forked from https://stm8-binutils-gdb.sourceforge.io/ in order to add support
for unused code elimination at link-time via `--gc-sections`. On the other hand, new relocation
opcodes `hi8()`, `lo8()` and `hh8()` have been implemented for the STM8 port of GNU `as`.

This is meant to be used with a fork of SDCC I created which generates GNU `as`-compatible assembly
files via the new `--gas`, `--function-sections` and `--data-sections` switches. These changes have not been integrated into SDCC's main branch, so you
can find them at https://github.com/XaviDCR92/sdcc-gas .
## Usage
```
./patch_binutils.sh
./configure_binutils.sh
cd binutils-2.30/
make
sudo make install
```
## Examples
You can find a small working code example of the new capabilities provided by this fork at
https://github.com/XaviDCR92/stm8-dce-example .
## Thanks
Thanks to **arehnman**, who created the original package and helped me out **a lot** to get this working.
Also, thanks to the SDCC developers to their hard work in providing an interesting alternative to
existing STM8 propietary compilers.
