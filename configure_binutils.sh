#!/bin/sh
cd binutils-2.30
if [ x$HOST=x"" ]; then
  _HOST=$(./config.guess)
else
  _HOST=$HOST
fi
if [ x$PREFIX != x"" ]; then
  _PREFIX="-prefix=$PREFIX"
fi

./configure --host=$_HOST --target=stm8-none-elf32 $_PREFIX --program-prefix=stm8-
