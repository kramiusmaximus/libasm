# libasm

## Introduction
Libasm is a C-language library which implements functions written in Assembler code (Intel x64).

The library implements the following builtin functions:
- strcpy
- strcpy
- strcmp
- write
- read
- strdup

## Prerequisites
1. _nasm_ assembler
2. _gcc_ compiler

## Usage
1. Clone the repository
2. In the root direcotry, execute the command `make` to compile the static Library
3. Import the library using the command `#include <Libasm.a>`
4. Congrats! You now now have access to 6 awesome functions, which you already had access to through native libraries, but you can feel a sense of greater satisfaction, knowing that these functions were assembled, compiled, and linked from home-made, fresh out the over, assembly code, as opposed to assembly code made through the cold and heartless automated process offered by the gcc compiler. You're welcome.
