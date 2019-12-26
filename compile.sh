#!/bin/bash
echo "compiling.."
yasm -Worphan-labels -g dwarf2 -f elf64 ./Src/$1.asm -l ./list-files/$1.lst
echo "linking..."

ld -g $1.o -o ./bin/$1

echo "removing obj files.."
rm $1.o




