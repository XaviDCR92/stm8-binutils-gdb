#!/bin/sh
wget -nc https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.xz
wget -nc https://ftp.gnu.org/gnu/gdb/gdb-8.1.tar.xz
mkdir -p binutils-2.30
tar -xvf gdb-8.1.tar.xz --strip-components=1 --directory=binutils-2.30
tar -xvf binutils-2.30.tar.xz
for f in ./binutils_patches/*.patch
do
patch -N -p 1 -d binutils-2.30 <$f
done
